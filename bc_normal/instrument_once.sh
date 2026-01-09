#!/usr/bin/env bash
set -euo pipefail
KLEE_INC="/tmp/klee_build130stp_z3/include"
WORKDIR="/home/klee/logic_bombs/bc_normal"
OUT="$WORKDIR/build/lib_instr"

mkdir -p "$OUT/gen" "$OUT/src"

COMMON="-I./include -I$KLEE_INC \
-DVERSION=7.1.0 \
-DBC_ENABLED=1 -DDC_ENABLED=1 \
-DBUILD_TYPE=A -DEXECPREFIX= -DMAINEXEC=bc \
-DBC_ENABLE_NLS=0 \
-DBC_ENABLE_EXTRA_MATH=1 -DBC_ENABLE_HISTORY=1 \
-DBC_ENABLE_LIBRARY=0 -DBC_ENABLE_MEMCHECK=0 \
-DBC_ENABLE_AFL=0 -DBC_ENABLE_OSSFUZZ=0 \
-D_POSIX_C_SOURCE=200809L -D_XOPEN_SOURCE=700"

COVFLAGS="-O0 -g \
-fprofile-instr-generate \
-fcoverage-mapping \
-Xclang -disable-O0-optnone \
-fno-inline -fno-builtin"

cd "$WORKDIR"

# gen/
for f in gen/dc_help.c gen/bc_help.c gen/lib.c gen/lib2.c; do
  clang $COVFLAGS $COMMON -c "$f" -o "$OUT/gen/$(basename "${f%.c}.o")"
done

# src/ (exclude main + fuzz)
for f in src/*.c; do
  case "$f" in
    src/main_old.c|src/*fuzz*.c) continue ;;
  esac
  clang $COVFLAGS $COMMON -c "$f" -o "$OUT/src/$(basename "${f%.c}.o")"
done

echo "✅ Instrumented library built in $OUT"
