#!/usr/bin/env bash
set -euo pipefail

# ------------------------------------------------------------
# Usage:
#   ./build_bc_with_harness.sh \
#       /abs/path/to/harness_main.c \
#       /abs/path/to/output/bc_klee.bc
# ------------------------------------------------------------

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <HARNESS_MAIN_C> <OUTPUT_BC_PATH>"
  exit 1
fi

HARNESS_SRC="$(realpath "$1")"
OUTPUT_BC="$(realpath "$2")"

WORKDIR="/home/klee/logic_bombs/bc_float"

# ------------------------------------------------------------
# Sanity checks
# ------------------------------------------------------------
if [ ! -f "$HARNESS_SRC" ]; then
  echo " Harness source not found: $HARNESS_SRC"
  exit 1
fi

if [ ! -d "$WORKDIR" ]; then
  echo " Working directory not found: $WORKDIR"
  exit 1
fi

# ------------------------------------------------------------
# Enter working directory
# ------------------------------------------------------------
cd "$WORKDIR"

echo "▶ Working directory: $PWD"
echo "▶ Harness source:    $HARNESS_SRC"
echo "▶ Output bitcode:    $OUTPUT_BC"

# ------------------------------------------------------------
# Toolchain + flags (EXACTLY what you validated)
# ------------------------------------------------------------
export COPT="-O0"

export COMMON="-I./include -I${KLEE_INC:-/tmp/klee_src/include} \
-DVERSION=7.1.0 \
-DBC_ENABLED=1 -DDC_ENABLED=1 \
-DBUILD_TYPE=A -DEXECPREFIX= -DMAINEXEC=bc \
-DBC_NUM_KARATSUBA_LEN=32 \
-DBC_ENABLE_NLS=0 \
-DBC_ENABLE_EXTRA_MATH=1 -DBC_ENABLE_HISTORY=1 \
-DBC_ENABLE_LIBRARY=0 -DBC_ENABLE_MEMCHECK=0 \
-DBC_ENABLE_AFL=0 -DBC_ENABLE_OSSFUZZ=0 \
-D_POSIX_C_SOURCE=200809L -D_XOPEN_SOURCE=700"

# TARGET intentionally unset (matches your working setup)
# export TARGET=""

# ------------------------------------------------------------
# Clean only harness artifacts
# ------------------------------------------------------------
rm -f harness_main.o

# ------------------------------------------------------------
# Compile harness
# ------------------------------------------------------------
echo "▶ Compiling harness..."

clang ${TARGET:-} -emit-llvm $COPT $COMMON \
  -c "$HARNESS_SRC" \
  -o harness_main.o

# ------------------------------------------------------------
# Verify required objects exist
# ------------------------------------------------------------
if ! ls gen/*.o >/dev/null 2>&1; then
  echo " gen/*.o not found — expected precompiled objects"
  exit 1
fi

if ! ls src/*.o >/dev/null 2>&1; then
  echo " src/*.o not found — expected precompiled objects"
  exit 1
fi

# ------------------------------------------------------------
# Link
# ------------------------------------------------------------
echo "▶ Linking bc_klee.bc..."

llvm-link gen/*.o src/*.o harness_main.o -o "$OUTPUT_BC"

# ------------------------------------------------------------
# Final checks
# ------------------------------------------------------------
echo "▶ Sanity checks:"
llvm-nm "$OUTPUT_BC" | grep bc_fuzzer_data && {
  echo " Fuzzer symbols detected!"
  exit 1
} || echo "  ✓ No fuzzer symbols"

llvm-nm "$OUTPUT_BC" | grep " T main" || {
  echo " main symbol missing!"
  exit 1
}

echo " Build complete:"
echo "   $OUTPUT_BC"

echo "klee --libc=uclibc --posix-runtime --allow-external-sym-calls --max-time=900 --emit-all-errors --max-solver-time=60 --solver-backend=z3  $OUTPUT_BC"