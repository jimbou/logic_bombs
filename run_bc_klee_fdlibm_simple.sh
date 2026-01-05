#!/usr/bin/env bash
set -euo pipefail

# ============================
# USAGE
# ============================
# ./run_fdlibm_klee_coverage.sh file.bc [z3|stp] [timeout_seconds]

if [ $# -lt 1 ]; then
  echo "Usage: $0 <file.bc> [solver=z3|stp] [timeout_seconds]"
  exit 1
fi

BC_PATH="$1"
SOLVER="${2:-z3}"
TIME_BUDGET="${3:-60}"
KLEE_BIN="${KLEE_BIN:-klee}"
RESULTS_JSON="${RESULTS_JSON:-fdlibm_coverage_results.json}"

if [[ "$SOLVER" != "z3" && "$SOLVER" != "stp" ]]; then
  echo "❌ Invalid solver: $SOLVER"
  exit 1
fi

command -v jq >/dev/null || { echo "jq is required"; exit 1; }
[ -f "$RESULTS_JSON" ] || echo "{}" > "$RESULTS_JSON"

# ============================
# BLACKLIST
# ============================

BLACKLIST=(
  "s_lib_version.c"
  "s_signgam.c"
  "k_rem_pio2.c"
)

is_blacklisted() {
  for f in "${BLACKLIST[@]}"; do
    [[ "$1" == "$f" ]] && return 0
  done
  return 1
}

# ============================
# JSON HELPER
# ============================

update_json_atomic() {
  local jq_filter="$1"
  local tmp
  tmp="$(mktemp "${RESULTS_JSON}.tmp.XXXXX")"
  jq "$jq_filter" "$RESULTS_JSON" > "$tmp" && mv "$tmp" "$RESULTS_JSON"
}

# ============================
# COVERABLE LINE EXTRACTION
# ============================

extract_coverable_lines() {
  awk '
    BEGIN { in_main=0 }
    /^[[:space:]]*int[[:space:]]+main[[:space:]]*\(/ { in_main=1 }
    in_main==1 { next }

    /^[[:space:]]*#/ { next }
    /^[[:space:]]*\/\// { next }
    /^[[:space:]]*\/\*/,/\*\// { next }
    /^[[:space:]]*$/ { next }

    { print FNR }
  ' "$1"
}

# ============================
# COVERED LINE EXTRACTION
# ============================

extract_covered_lines() {
  grep -h "^$1:" "$2"/*.cov 2>/dev/null \
    | sed "s|^$1:||" \
    | sort -n | uniq || true
}

# ============================
# PROCESS ONE FILE
# ============================

run_one_file() {
  local bc="$1"
  local src="${bc%.bc}.c"
  local base
  base="$(basename "$bc" .bc)"

  local stamp
  stamp="$(date -u +%Y%m%d-%H%M%S)-$$"
  local OUTDIR="klee-results/${base}-${SOLVER}-${stamp}"

  mkdir -p klee-results

  echo "==> KLEE: $base  solver=$SOLVER  time=${TIME_BUDGET}s"

  timeout "${TIME_BUDGET}s" "$KLEE_BIN" \
    --solver-backend="$SOLVER" \
    --output-dir="$OUTDIR" \
    --max-time="$TIME_BUDGET"s \
    --emit-all-errors \
    --write-cov \
    "$bc" || true

  # ----- Coverage Analysis -----

  mapfile -t COVERABLE < <(extract_coverable_lines "$src")
  mapfile -t COVERED < <(extract_covered_lines "$src" "$OUTDIR")

  local total="${#COVERABLE[@]}"
  local covered="${#COVERED[@]}"

  local percent="0.00"
  if (( total > 0 )); then
    percent=$(awk "BEGIN { printf \"%.2f\", ($covered/$total)*100 }")
  fi

  update_json_atomic "
    .\"$base\" = {
      source: \"$src\",
      bc: \"$bc\",
      solver: \"$SOLVER\",
      outdir: \"$OUTDIR\",
      total_coverable: $total,
      covered: $covered,
      coverage_percent: $percent,
      coverable_lines: $(printf '%s\n' "${COVERABLE[@]}" | jq -R . | jq -s .),
      covered_lines: $(printf '%s\n' "${COVERED[@]}" | jq -R . | jq -s .)
    }
  "

  echo "✔ $base → $percent% coverage ($covered / $total)"
}

# ============================
# VALIDATION
# ============================

bc="$BC_PATH"
src="${bc%.bc}.c"

[ -f "$bc" ] || { echo "❌ BC not found: $bc"; exit 1; }
[ -f "$src" ] || { echo "❌ Source not found: $src"; exit 1; }

if is_blacklisted "$(basename "$src")"; then
  echo "⏭ Skipping blacklisted: $src"
  exit 0
fi

run_one_file "$bc"

echo "✅ Result saved to $RESULTS_JSON"
