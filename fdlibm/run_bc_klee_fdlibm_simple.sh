#!/usr/bin/env bash
set -euo pipefail

# ============================
# USAGE
# ============================
# ./run_fdlibm_klee_coverage.sh file.bc [z3|stp] [timeout_seconds] [results.json]

if [ $# -lt 1 ]; then
  echo "Usage: $0 <file.bc> [solver=z3|stp] [timeout_seconds] [results.json]"
  exit 1
fi

BC_PATH="$1"
SOLVER="${2:-z3}"
TIME_BUDGET="${3:-20}"
RESULTS_JSON="${4:-fdlibm_coverage_results.json}"
KLEE_BIN="${KLEE_BIN:-klee}"

if [[ "$SOLVER" != "z3" && "$SOLVER" != "stp" ]]; then
  echo "❌ Invalid solver: $SOLVER (must be z3 or stp)"
  exit 1
fi

command -v jq >/dev/null || { echo "jq is required"; exit 1; }

# Create results file if missing (DOES NOT overwrite)
[ -f "$RESULTS_JSON" ] || echo "{}" > "$RESULTS_JSON"

# ============================
# BLACKLIST
# ============================

BLACKLIST=(
  "s_matherr.c"
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

  if jq "$jq_filter" "$RESULTS_JSON" > "$tmp"; then
    mv "$tmp" "$RESULTS_JSON"
  else
    echo "❌ jq failed — JSON NOT updated"
    rm -f "$tmp"
  fi
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
  local src="$1"
  local outdir="$2"

  local src_abs
  src_abs="$(realpath -m "$src")"

  grep -h ":" "$outdir"/*.cov 2>/dev/null \
    | sed 's|^\(.*\)\.c:|\1.c:|' \
    | while read -r line; do
        file="${line%%:*}"
        lineno="${line##*:}"
        norm_file="$(realpath -m "$file" 2>/dev/null || true)"

        if [[ "$norm_file" == "$src_abs" ]]; then
          echo "$lineno"
        fi
      done \
    | sort -n | uniq || true
}

# ============================
# PROCESS ONE FILE
# ============================

run_one_file() {
  local bc="$1"
  local src="${bc%.bc}.c"
  src="${src//_float/}"
  local base
  base="$(basename "$bc" .bc)"

  local stamp
  stamp="$(date -u +%Y%m%d-%H%M%S-%N)-$$"

  local OUTDIR="klee-results/${base}-${SOLVER}-${stamp}"

  mkdir -p klee-results

  echo "==> KLEE: $base  solver=$SOLVER  time=${TIME_BUDGET}s"

  
(
  set -x
  cd "$(dirname "$bc")"
  set -m

  trap "echo 'INT received, terminating KLEE...'; pkill -TERM -P $$; exit 1" INT

  if [[ "$bc" == *_float.bc ]]; then
    echo "[MODE] allow-external-sym-calls"

    timeout "${TIME_BUDGET}s" "$KLEE_BIN" \
      --solver-backend="$SOLVER" \
      --output-dir="$OUTDIR" \
      --allow-external-sym-calls \
      --watchdog \
      --max-time="${TIME_BUDGET}" \
      --emit-all-errors \
      --write-cov \
      "$(basename "$bc")"

  else
    echo "[MODE] external-calls=all"

    timeout "${TIME_BUDGET}s" "$KLEE_BIN" \
      --solver-backend="$SOLVER" \
      --output-dir="$OUTDIR" \
      --external-calls=all \
      --watchdog \
      --max-time="${TIME_BUDGET}" \
      --emit-all-errors \
      --write-cov \
      "$(basename "$bc")"
  fi

  KLEE_RC=$?
  echo "$KLEE_RC" > "$OUTDIR/exit_code"
  exit 0

) 2>&1 | stdbuf -oL -eL tee "$OUTDIR/runner_stdout.log" || true
  




  KLEE_RC="$(cat "$OUTDIR/exit_code" 2>/dev/null || echo 1)"

  # ----- Coverage Analysis -----

  mapfile -t COVERABLE < <(extract_coverable_lines "$src")
  mapfile -t COVERED   < <(extract_covered_lines "$src" "$OUTDIR")

  local total="${#COVERABLE[@]}"
  local covered="${#COVERED[@]}"

  local percent="0.00"
  if (( total > 0 )); then
    percent=$(awk "BEGIN { printf \"%.2f\", ($covered/$total)*100 }")
  fi

  # ----- JSON-safe arrays -----

  local coverable_json covered_json

  if (( ${#COVERABLE[@]} == 0 )); then
    coverable_json="[]"
  else
    coverable_json="$(printf '%s\n' "${COVERABLE[@]}" | jq -R . | jq -s .)"
  fi

  if (( ${#COVERED[@]} == 0 )); then
    covered_json="[]"
  else
    covered_json="$(printf '%s\n' "${COVERED[@]}" | jq -R . | jq -s .)"
  fi

  TS="$(date -u +%Y-%m-%dT%H:%M:%SZ)"

  update_json_atomic "
    .\"$base\" = (.\"$base\" // []) + [{
      solver: \"$SOLVER\",
      timestamp: \"$TS\",
      status: \"$( (( KLEE_RC == 0 )) && echo ok || echo klee_error )\",
      source: \"$src\",
      bc: \"$bc\",
      outdir: \"$OUTDIR\",
      total_coverable: $total,
      covered: $covered,
      coverage_percent: $percent,
      coverable_lines: $coverable_json,
      covered_lines: $covered_json
    }]
  "

  echo "✔ $base → $percent% coverage ($covered / $total)"
}

# ============================
# VALIDATION
# ============================

bc="$BC_PATH"
src="${bc%.bc}.c"
src="${src//_float/}"

[ -f "$bc" ]  || { echo "❌ BC not found: $bc"; exit 1; }
[ -f "$src" ] || { echo "❌ Source not found: $src"; exit 1; }

if is_blacklisted "$(basename "$src")"; then
  echo "⏭ Skipping blacklisted: $src"
  exit 0
fi

run_one_file "$bc"

echo "✅ Result saved to $RESULTS_JSON"
