#!/usr/bin/env bash
set -euo pipefail

MAIN_DIR="/home/klee/logic_bombs/fdlibm/fdlibm_main_float"

echo "Compiling main drivers..."

for f in "$MAIN_DIR"/*_main.c; do
  base="$(basename "$f" .c)"
  bc="$MAIN_DIR/${base}_float.bc"

  clang -emit-llvm -O0 -g -c "$f" -o "$bc"
done

echo "✅ All main drivers compiled."
