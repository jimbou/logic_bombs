#!/usr/bin/env bash
set -euo pipefail

############################################
# Usage:
# ./replay_and_collect_jq_coverage.sh \
#   <REPLAY_EXE> \
#   <KLEE_OUT_DIR> \
#   <OUT_DIR>
############################################

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <REPLAY_EXE> <KLEE_OUT_DIR> <OUT_DIR>"
  exit 1
fi

REPLAY_EXE="$(realpath "$1")"
KLEE_DIR="$(realpath "$2")"
OUT_DIR="$(realpath "$3")"

############################################
# Project root (UPDATED)
############################################
WORKDIR="/home/klee/logic_bombs/jq_normal"

############################################
# Sanity checks
############################################
[[ -x "$REPLAY_EXE" ]] || { echo "[ERROR] Replay exe not found"; exit 1; }
[[ -d "$KLEE_DIR" ]] || { echo "[ERROR] KLEE dir not found"; exit 1; }

mkdir -p "$OUT_DIR"
cd "$OUT_DIR"

############################################
# Clean old coverage
############################################
rm -f *.profraw coverage.profdata llvm_cov_output.txt

############################################
# Replay all .ktest files
############################################
echo "[INFO] Replaying testcases from $KLEE_DIR"

for ktest in "$KLEE_DIR"/*.ktest; do
  [[ -e "$ktest" ]] || continue
  base="$(basename "$ktest")"

  echo "  [replay] $base"

  LLVM_PROFILE_FILE="cov_${base}.profraw" \
  KTEST_FILE="$ktest" \
  timeout 30s "$REPLAY_EXE" || true
done

############################################
# Merge coverage
############################################
llvm-profdata merge -sparse cov_*.profraw -o coverage.profdata

############################################
# Coverage targets (UPDATED, complete jq closure)
############################################
mapfile -t COVERAGE_FILES < <(
  printf "%s\n" \
    "$WORKDIR/src/jv.c" \
    "$WORKDIR/src/jv_parse.c" \
    "$WORKDIR/src/jv_dtoa.c" \
    "$WORKDIR/src/jv_dtoa_tsd.c" \
    "$WORKDIR/src/jv_alloc.c" \
    "$WORKDIR/src/jv_unicode.c" \
    "$WORKDIR/src/jv_aux.c" \
    "$WORKDIR/src/util.c" \
    "$WORKDIR/src/execute.c" \
    "$WORKDIR/src/jv_file.c" \
    "$WORKDIR/src/locfile.c" \
    "$WORKDIR/src/linker.c" \
    "$WORKDIR/src/jv_print.c" \
    "$WORKDIR/src/parser.c" \
    "$WORKDIR/src/lexer.c" \
    "$WORKDIR/src/compile.c" \
    "$WORKDIR/src/bytecode.c" \
    "$WORKDIR/src/builtin.c"
)

############################################
# Extract coverage
############################################
llvm-cov show "$REPLAY_EXE" \
  -instr-profile=coverage.profdata \
  -format=text \
  "${COVERAGE_FILES[@]}" \
  > llvm_cov_output.txt

echo "[DONE] Coverage written to:"
echo "  $OUT_DIR/llvm_cov_output.txt"
