#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   export KLEE_BIN="klee --watchdog"   # optional; defaults to "klee"
#   ./run_bc_local.sh path/to/file.bc [timeout_seconds]
#
# Example:
#   ./run_bc_local.sh src/buffer_overflow/heap_bo_l1_klee_annotated.bc 900

if [ $# -lt 1 ]; then
  echo "Usage: $0 <file.bc> [timeout_seconds]" >&2
  exit 1
fi

BC_PATH="$1"
TIME_BUDGET="${2:-900}"   # default 15 min
KLEE_BIN="${KLEE_BIN:-klee}"
SOLVERS=(z3)
TRIGGER_PHRASE='Logic bomb triggered'

# Where to store results JSON (override by RESULTS_JSON env var if you like)
RESULTS_JSON="${RESULTS_JSON:-klee_matrix_results_float.json}"

command -v jq >/dev/null || { echo "Please install 'jq'."; exit 1; }
[ -f "$BC_PATH" ] || { echo "BC not found: $BC_PATH"; exit 1; }

BC_DIR="$(cd "$(dirname "$BC_PATH")" && pwd)"
BC_BASE="$(basename "$BC_PATH")"
BASE_NOEXT="${BC_BASE%.*}"

mkdir -p "logs/$BASE_NOEXT" 2>/dev/null || true
[ -f "$RESULTS_JSON" ] || echo "{}" > "$RESULTS_JSON"

update_json_atomic() {
  local jq_filter="$1"
  local tmp; tmp="$(mktemp "${RESULTS_JSON}.tmp.XXXXX")"
  jq "$jq_filter" "$RESULTS_JSON" > "$tmp" && mv "$tmp" "$RESULTS_JSON"
}

detect_trigger_type_from_klee_out() {
  local outdir_path="$1"
  local bomb_phrase='Logic bomb triggered'
  local nobomb_phrase='Path without the bomb'
  local bomb_found=0
  local nobomb_found=0

  # Search both messages in messages.txt and .err files
  if [ -f "$outdir_path/messages.txt" ]; then
    grep -Fq "$bomb_phrase" "$outdir_path/messages.txt" && bomb_found=1
    grep -Fq "$nobomb_phrase" "$outdir_path/messages.txt" && nobomb_found=1
  fi

  shopt -s nullglob
  for f in "$outdir_path"/*.err "$outdir_path"/errors/*.err; do
    grep -Fq "$bomb_phrase" "$f" && bomb_found=1
    grep -Fq "$nobomb_phrase" "$f" && nobomb_found=1
  done
  shopt -u nullglob

  if (( bomb_found && nobomb_found )); then
    echo "triggered_both"
  elif (( bomb_found )); then
    echo "triggered_only_bomb"
  elif (( nobomb_found )); then
    echo "triggered_only_no_bomb"
  else
    echo "no_trigger"
  fi
}

run_one_solver() {
  local solver="$1"
  local stamp; stamp="$(date -u +%Y%m%d-%H%M%S)-$$-$RANDOM"
  local outdir="klee-out-${BASE_NOEXT}-${solver}-${stamp}"
  local logdir="logs/$BASE_NOEXT/$solver"
  mkdir -p "$logdir"

  echo "==> KLEE ($solver) on $BC_PATH (budget=${TIME_BUDGET}s)"
(
  set -x
  cd "$BC_DIR"

  # Create new process group
  set -m

  # Trap Ctrl-C inside subshell and kill whole group
  trap "echo 'INT received, killing KLEE...'; pkill -TERM -P $$; exit 1" INT

  # Run KLEE in background so trap can kill it
  timeout "${TIME_BUDGET}s" $KLEE_BIN \
      --output-dir="$outdir" \
      --solver-backend="$solver" \
      --libc=uclibc \
      --posix-runtime \
      --allow-external-sym-calls \
      --watchdog \
      --max-time="$TIME_BUDGET" \
      --emit-all-errors \
      --max-solver-time=60 \
      "$BC_BASE" &

  KPID=$!

  # Wait for KLEE — BUT DO NOT FAIL IF timeout kills it.
  wait $KPID || true
) 2>&1 | tee "$logdir/runner_stdout.log"




  local abs_outdir="$BC_DIR/$outdir"
  local status
  status="$(detect_trigger_type_from_klee_out "$abs_outdir")"

  update_json_atomic ".\"$BC_PATH\".\"$solver\" = {status:\"$status\", ts:\"$(date -u +%Y-%m-%dT%H:%M:%SZ)\", outdir:\"$abs_outdir\", log:\"$logdir/runner_stdout.log\"}"
  echo "[$solver] => $status"
  echo "  outdir: $abs_outdir"
  echo "  log:    $logdir/runner_stdout.log"
}


for s in "${SOLVERS[@]}"; do
  run_one_solver "$s"
done

echo "✅ Done. Results -> $RESULTS_JSON"
