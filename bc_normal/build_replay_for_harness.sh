#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <HARNESS.c> <RUN_ID> <OUTPUT_EXE>"
  exit 1
fi
KLEE_ROOT=${KLEE_ROOT:-/tmp/klee_build130stp_z3}
KLEE_INC=${KLEE_INC:-$KLEE_ROOT/include}
KLEE_LIB=${KLEE_LIB:-$KLEE_ROOT/lib}
HARNESS_SRC="$(realpath "$1")"
RUN_ID="$2"
OUT_EXE="$(realpath "$3")"

WORKDIR="/home/klee/logic_bombs/bc_normal"
LIB="$WORKDIR/build/lib_instr"
HARNESS_OBJ="$WORKDIR/build/harness/harness_${RUN_ID}.o"

mkdir -p "$WORKDIR/build/harness"

COMMON="-I./include -I$KLEE_INC \
-DVERSION=7.1.0 \
-DBC_ENABLED=1 -DDC_ENABLED=1 \
-DBC_ENABLE_NLS=0"

COVFLAGS="-O0 -g \
-fprofile-instr-generate \
-fcoverage-mapping \
-Xclang -disable-O0-optnone \
-fno-inline -fno-builtin"

cd "$WORKDIR"

# Compile harness
clang $COVFLAGS $COMMON -c "$HARNESS_SRC" -o "$HARNESS_OBJ"

# Link replay binary
clang $COVFLAGS \
  "$LIB"/gen/*.o \
  "$LIB"/src/*.o \
  "$HARNESS_OBJ" \
  -lkleeRuntest -lpthread -lm \
  -I/tmp/klee_build130stp_z3/include \
  -L/tmp/klee_build130stp_z3/lib \
  -o "$OUT_EXE"


# clang -O0 -g \
#   -fprofile-instr-generate -fcoverage-mapping \
#   -Xclang -disable-O0-optnone \
#   -fno-inline -fno-builtin -fno-builtin-memcpy -fno-builtin-memset \
#   -I/tmp/klee_build130stp_z3/include \
#   -L/tmp/klee_build130stp_z3/lib \
#   <sources> \
#   -lkleeRuntest \
#   -lpthread -lm \
echo "Replay binary built: $OUT_EXE"
