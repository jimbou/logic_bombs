#!/usr/bin/env bash
set -euo pipefail

# ============================
# USAGE
# ============================
# ./run_fdlibm_klee_coverage.sh file.bc file.c [z3|stp] [timeout_seconds] [results.json]
# Example:
# ./run_fdlibm_klee_coverage.sh \
#   /home/jim/logic_bombs/fdlibm/fdlibm_main_float/s_sin_float.bc \
#   /home/jim/logic_bombs/fdlibm/fdlibm_float/s_sin.c \
#   z3 30 results_fdlibm_float_z3_linked_external_temp.json

if [ $# -lt 2 ]; then
  echo "Usage: $0 <file.bc> <file.c> [solver=z3|stp] [timeout_seconds] [results.json]"
  exit 1
fi

BC_PATH="$1"
SRC_PATH="$2"
SOLVER="${3:-z3}"
TIME_BUDGET="${4:-20}"
RESULTS_JSON="${5:-fdlibm_coverage_results.json}"

if [[ "$SOLVER" != "z3" && "$SOLVER" != "stp" ]]; then
  echo "❌ Invalid solver: $SOLVER (must be z3 or stp)"
  exit 1
fi

command -v jq >/dev/null || { echo "jq is required"; exit 1; }

[ -f "$BC_PATH" ]  || { echo "❌ BC not found: $BC_PATH"; exit 1; }
[ -f "$SRC_PATH" ] || { echo "❌ Source not found: $SRC_PATH"; exit 1; }

# Create results file if missing
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
  local fname="$1"
  for f in "${BLACKLIST[@]}"; do
    [[ "$fname" == "$f" ]] && return 0
  done
  return 1
}


# ============================
# PATH MAPPING (host → container)
# ============================

path_in_container() {
  local host_path="$1"
  # Map /home/jim/... → /home/klee/...
  echo "${host_path/\/home\/jim/\/home\/klee}"
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

# extract_coverable_lines() {
#   local src="$1"
#   awk '
#     BEGIN { in_main=0 }
#     /^[[:space:]]*int[[:space:]]+main[[:space:]]*\(/ { in_main=1 }
#     in_main==1 { next }

#     /^[[:space:]]*#/ { next }
#     /^[[:space:]]*\/\// { next }
#     /^[[:space:]]*\/\*/,/\*\// { next }
#     /^[[:space:]]*$/ { next }

#     { print FNR }
#   ' "$src"
# }
extract_coverable_lines() {
    local src="$1"
    local json="/home/jim/logic_bombs/fdlibm/fdlibm_coverable_lines_no_brace.json"
    local base
    base=$(basename "$src")

    jq -r --arg base "$base" '
      to_entries[]
      | select(.key | endswith($base))
      | .value.coverable_lines[]
    ' "$json"
}

extract_covered_lines() {
  local src="$1"
  local outdir="$2"
  local src_base
  src_base="$(basename "$src")"

  # If no outdir yet (e.g., KLEE failed early), just return empty.
  [[ -d "$outdir" ]] || return 0

  # Use a group to protect against set -e / pipefail due to find.
  {
    find "$outdir" -type f -name "*.cov" 2>/dev/null || true
  } | while read -r covfile; do
      while IFS= read -r line; do
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
# MAIN KLEE EXECUTION (ONE FILE)
# ============================

run_one_file() {
  # Disable "exit on error" inside this function; we handle errors manually.
  set +e

  local bc="$1"
  local src="$2"

  local base
  base="$(basename "$bc" .bc)"
  local stamp
  stamp="$(date -u +%Y%m%d-%H%M%S-%N)-$$"
  local BC_DIR
  BC_DIR="$(cd "$(dirname "$bc")" && pwd)"
  local OUTDIR="$BC_DIR/klee-results/${base}-${SOLVER}-${stamp}"
  local watchdog_timeout=$(( TIME_BUDGET + 10 ))

  mkdir -p "$BC_DIR/klee-results"  # DO NOT pre-create $OUTDIR (KLEE creates it)

  echo "==> KLEE: $base  solver=$SOLVER  timeout=${TIME_BUDGET}s"

  # -------------------------
  # Pick container + KLEE bin
  # -------------------------
  local container klee_bin mode_flag

  if [[ "$bc" == *float.bc ]]; then
    container="logic_float"
    klee_bin="/usr/local/bin/klee"
    mode_flag="--allow-external-sym-calls"
  else
    container="klee_logic_bombs"
    klee_bin="/tmp/klee_build130stp_z3/bin/klee"
    mode_flag="--external-calls=all"
  fi

  # Translate host paths → container paths
  local bc_container outdir_container
  bc_container=$(path_in_container "$bc")
  outdir_container=$(path_in_container "$OUTDIR")

  # Ensure container is running
  docker inspect -f '{{.State.Running}}' "$container" 2>/dev/null | grep -q true
  if [[ $? -ne 0 ]]; then
    echo "[INFO] Starting container: $container"
    docker start "$container" >/dev/null
  fi

  # Build KLEE command as a single string
  local klee_cmd
  klee_cmd="\
$klee_bin \
  --solver-backend=$SOLVER \
  --output-dir=$outdir_container \
  --watchdog \
  --max-time=$TIME_BUDGET \
  --max-solver-time=20 \
  --emit-all-errors \
  --write-cov \
  $mode_flag \
  $bc_container"

  # -------------------------
  # External watchdog
  # -------------------------
  (
    sleep "$watchdog_timeout"
    echo "⏳ TIMEOUT ($watchdog_timeout s) — stopping container $container"
    docker stop "$container" >/dev/null 2>&1 || true
  ) &
  local watchdog_pid=$!

  # -------------------------
  # Run KLEE synchronously inside container
  # -------------------------
  docker exec "$container" bash -c "$klee_cmd"
  local klee_rc=$?

  # Kill watchdog if still running
  kill "$watchdog_pid" 2>/dev/null || true
  wait "$watchdog_pid" 2>/dev/null || true

  # Ensure container is stopped after this run
  docker stop "$container" >/dev/null 2>&1 || true

  # Record exit code to OUTDIR (even if OUTDIR might not exist yet)
  mkdir -p "$OUTDIR"
  echo "$klee_rc" > "$OUTDIR/exit_code"

  echo "[DEBUG] KLEE exit code for $base: $klee_rc"
  echo "[DEBUG] OUTDIR used: $OUTDIR"

  # ============================
  # COVERAGE CALCULATION
  # ============================
  echo "[DEBUG] Reached JSON write stage for $base"

  local COVERABLE COVERED
  mapfile -t COVERABLE < <(extract_coverable_lines "$src")
  mapfile -t COVERED   < <(extract_covered_lines "$src" "$OUTDIR")

  echo "[DEBUG] Extracted COVERABLE (${#COVERABLE[@]}) and COVERED (${#COVERED[@]}) lines for $OUTDIR"

  # Keep only lines that are coverable
  mapfile -t COVERED < <(
    printf "%s\n" "${COVERED[@]}" |
      grep -Fx -f <(printf "%s\n" "${COVERABLE[@]}") || true
  )

  local total covered percent
  total="${#COVERABLE[@]}"
  covered="${#COVERED[@]}"
  percent="0.00"

  if (( total > 0 )); then
    percent=$(awk "BEGIN { printf \"%.2f\", ($covered/$total)*100 }")
  fi

  local coverable_json covered_json TS
  coverable_json="$(printf "%s\n" "${COVERABLE[@]}" | jq -R . | jq -s .)"
  covered_json="$(printf "%s\n" "${COVERED[@]}"   | jq -R . | jq -s .)"

  TS="$(date -u +%Y-%m-%dT%H:%M:%SZ)"

  # Re-enable `set -e` for the outer script, but after we've computed everything.
  set -e

  update_json_atomic "
    .\"$base\" = (.\"$base\" // []) + [{
      solver: \"$SOLVER\",
      timestamp: \"$TS\",
      status: \"$( (( klee_rc == 0 )) && echo ok || echo klee_error )\",
      exit_code: $klee_rc,
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
# VALIDATION + ENTRY POINT
# ============================

if is_blacklisted "$(basename "$SRC_PATH")"; then
  echo "⏭ Skipping blacklisted: $SRC_PATH"
  exit 0
fi

run_one_file "$BC_PATH" "$SRC_PATH"

echo "Result saved to $RESULTS_JSON"
