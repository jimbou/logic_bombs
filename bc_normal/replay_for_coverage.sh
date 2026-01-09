#!/usr/bin/env bash
set -euo pipefail

############################################
# Usage
############################################
# ./replay_and_collect_coverage.sh \
#   <REPLAY_EXE> \
#   <KTEST_DIR> \
#   <OUT_DIR>
#
# Example:
# ./replay_and_collect_coverage.sh \
#   replay_bc \
#   klee-out-13 \
#   coverage_run_1
############################################

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <REPLAY_EXE> <KTEST_DIR> <OUT_DIR>"
  exit 1
fi

REPLAY_EXE="$(realpath "$1")"
KTEST_DIR="$(realpath "$2")"
OUT_DIR="$(realpath "$3")"

############################################
# Paths
############################################
WORKDIR="/home/klee/logic_bombs/bc_normal"

############################################
# Sanity checks
############################################
if [[ ! -x "$REPLAY_EXE" ]]; then
  echo "[ERROR] Replay executable not found or not executable: $REPLAY_EXE"
  exit 1
fi

if [[ ! -d "$KTEST_DIR" ]]; then
  echo "[ERROR] KTEST directory not found: $KTEST_DIR"
  exit 1
fi

mkdir -p "$OUT_DIR"
cd "$OUT_DIR"

############################################
# Clean old coverage
############################################
rm -f *.profraw coverage.profdata llvm_cov_output.txt

############################################
# Replay all .ktest files
############################################
echo "[INFO] Replaying KLEE testcases from $KTEST_DIR"

for ktest in "$KTEST_DIR"/*.ktest; do
  [[ -e "$ktest" ]] || continue
  base="$(basename "$ktest")"

  echo "  [replay] $base"

  LLVM_PROFILE_FILE="cov_${base}.profraw" \
  KTEST_FILE="$ktest" \
  timeout 30s "$REPLAY_EXE" || true
done

############################################
# Merge coverage data
############################################
echo "[INFO] Merging coverage data"

llvm-profdata merge -sparse cov_*.profraw -o coverage.profdata

############################################
# Coverage targets (FIXED, intentional)
############################################
############################################
# Coverage targets: ALL src/*.c files
############################################
mapfile -t COVERAGE_FILES < <(ls "$WORKDIR/src/"*.c)

############################################
# Extract coverage
############################################
echo "[INFO] Extracting coverage for bc parser core"

llvm-cov show "$REPLAY_EXE" \
  -instr-profile=coverage.profdata \
  -format=text \
  "${COVERAGE_FILES[@]}" \
  > llvm_cov_output.txt

############################################
# Done
############################################
echo "[DONE] Coverage report written to:"
echo "  $OUT_DIR/llvm_cov_output.txt"
