#!/usr/bin/env bash
set -euo pipefail

KLEE_ROOT="/tmp/klee_build130stp_z3"
KLEE_INC="$KLEE_ROOT/include"

WORKDIR="/home/klee/logic_bombs/jq_normal"
OUT="$WORKDIR/build/jq_instr"

mkdir -p "$OUT/src"

############################################
# Coverage flags
############################################
COVFLAGS="-O0 -g \
-fprofile-instr-generate \
-fcoverage-mapping \
-Xclang -disable-O0-optnone \
-fno-inline -fno-builtin"

############################################
# jq compile flags (minimal)
############################################
COMMON="-I. -I./src -I$KLEE_INC -DIEEE_8087 -D_POSIX_C_SOURCE=200809L"



cd "$WORKDIR"

############################################
# Instrument jq source files
# (EXPLICIT list — intentional)
############################################
JQ_FILES=(
  src/jv.c
  src/jv_parse.c
  src/jv_dtoa.c
  src/jv_dtoa_tsd.c
  src/jv_alloc.c
  src/jv_unicode.c
  src/jv_aux.c
  src/util.c
  src/execute.c
  src/jv_file.c
  src/locfile.c
  src/linker.c
  src/jv_print.c
  src/parser.c
  src/lexer.c
  src/compile.c
  src/bytecode.c
  src/builtin.c
)


for f in "${JQ_FILES[@]}"; do
  echo "[instrument] $f"
  clang $COVFLAGS $COMMON -c "$f" -o "$OUT/src/$(basename "${f%.c}.o")"
done

echo "✅ Instrumented jq objects in $OUT"
