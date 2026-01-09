#!/usr/bin/env bash
set -euo pipefail

############################################
# Usage:
# ./build_jq_replay.sh <HARNESS.c> <RUN_ID> <OUT_EXE>
############################################

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 <HARNESS.c> <RUN_ID> <OUT_EXE>"
  exit 1
fi

KLEE_ROOT="/tmp/klee_build130stp_z3"
KLEE_INC="$KLEE_ROOT/include"
KLEE_LIB="$KLEE_ROOT/lib"

HARNESS_SRC="$(realpath "$1")"
RUN_ID="$2"
OUT_EXE="$(realpath "$3")"

WORKDIR="/home/klee/logic_bombs/jq_normal"
LIB="$WORKDIR/build/jq_instr"
HARNESS_OBJ="$WORKDIR/build/harness/jq_harness_${RUN_ID}.o"

mkdir -p "$WORKDIR/build/harness"
cd "$WORKDIR"

############################################
# Coverage flags
############################################
COVFLAGS="-O0 -g \
-fprofile-instr-generate \
-fcoverage-mapping \
-Xclang -disable-O0-optnone \
-fno-inline -fno-builtin"

############################################
# Compile harness
############################################
clang $COVFLAGS \
  -I./src -I$KLEE_INC \
  -c "$HARNESS_SRC" \
  -o "$HARNESS_OBJ"

############################################
# Link replay binary
############################################
clang $COVFLAGS \
  "$LIB"/src/*.o \
  "$HARNESS_OBJ" \
  -L"$KLEE_LIB" \
  -lkleeRuntest \
  -lpthread -lm \
  -o "$OUT_EXE"

echo "✅ Replay binary built: $OUT_EXE"
