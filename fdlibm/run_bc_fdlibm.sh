#!/usr/bin/env bash
set -euo pipefail

# ============================
# USAGE
# ============================
# ./run_fdlibm_klee_coverage.sh file.bc file.c [z3|stp] [timeout_seconds] [results.json]

if [ $# -lt 2 ]; then
  echo "Usage: $0 <file.bc> <file.c> [solver=z3|stp] [timeout_seconds] [results.json]"
  exit 1
fi

BC_PATH="$1"
SRC_PATH="$2"
SOLVER="${3:-z3}"
TIME_BUDGET="${4:-20}"
RESULTS_JSON="${5:-fdlibm_coverage_results.json}"
KLEE_BIN="${KLEE_BIN:-klee}"

if [[ "$SOLVER" != "z3" && "$SOLVER" != "stp" ]]; then
  echo "❌ Invalid solver: $SOLVER (must be z3 or stp)"
  exit 1
fi

command -v jq >/dev/null || { echo "jq is required"; exit 1; }

[ -f "$BC_PATH" ]  || { echo "❌ BC not found: $BC_PATH"; exit 1; }
[ -f "$SRC_PATH" ] || { echo "❌ Source not found: $SRC_PATH"; exit 1; }

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

extract_covered_lines() {
  local src="$1"
  local outdir="$2"

  local src_base
  src_base="$(basename "$src")"

  find "$outdir" -type f -name "*.cov" 2>/dev/null \
    | while read -r covfile; do
        while read -r line; do
          file="${line%%:*}"
          lineno="${line##*:}"
          file_base="$(basename "$file")"

          if [[ "$file_base" == "$src_base" ]]; then
            echo "$lineno"
          fi
        done < "$covfile"
      done \
    | grep -E '^[0-9]+$' \
    | sort -n \
    | uniq
}



# ============================
# PROCESS ONE FILE
# ============================

run_one_file() {
  local bc="$1"
  local src="$2"
  local base
  base="$(basename "$bc" .bc)"

  local stamp   
  stamp="$(date -u +%Y%m%d-%H%M%S-%N)-$$"

  local BC_DIR
    BC_DIR="$(cd "$(dirname "$bc")" && pwd)"

    local OUTDIR="$BC_DIR/klee-results/${base}-${SOLVER}-${stamp}"


  mkdir -p "$BC_DIR/klee-results"


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
      --max-solver-time=20 \
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
      --max-solver-time=20 \
      --emit-all-errors \
      --write-cov \
      "$(basename "$bc")"
  fi

  KLEE_RC=$?
  echo "$KLEE_RC" > "$OUTDIR/exit_code"
  exit 0

) 2>&1 | stdbuf -oL -eL tee "$OUTDIR/runner_stdout.log" || true

  KLEE_RC="$(cat "$OUTDIR/exit_code" 2>/dev/null || echo 1)"

  mapfile -t COVERABLE < <(extract_coverable_lines "$src")
  mapfile -t COVERED   < <(extract_covered_lines "$src" "$OUTDIR")

# Intersect COVERED with COVERABLE only
mapfile -t COVERED < <(
  printf "%s\n" "${COVERED[@]}" \
  | grep -Fx -f <(printf "%s\n" "${COVERABLE[@]}") || true
)


  local total="${#COVERABLE[@]}"
  local covered="${#COVERED[@]}"

  local percent="0.00"
  if (( total > 0 )); then
    percent=$(awk "BEGIN { printf \"%.2f\", ($covered/$total)*100 }")
  fi

  local coverable_json covered_json

  coverable_json="$(printf '%s\n' "${COVERABLE[@]}" | jq -R . | jq -s .)"
  covered_json="$(printf '%s\n' "${COVERED[@]}"   | jq -R . | jq -s .)"

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

if is_blacklisted "$(basename "$SRC_PATH")"; then
  echo "⏭ Skipping blacklisted: $SRC_PATH"
  exit 0
fi

run_one_file "$BC_PATH" "$SRC_PATH"

echo " Result saved to $RESULTS_JSON"
