#!/usr/bin/env bash
set -euo pipefail

IMPL_DIR="/home/klee/logic_bombs/fdlibm/fdlibm_float"
OUT_LIB="fdlibm_all_float.bc"

echo "Compiling fdlibm implementation files..."

bc_files=()

for f in "$IMPL_DIR"/*.c; do
  base="$(basename "$f" .c)"
  bc="$IMPL_DIR/$base.bc"

  clang -emit-llvm -O0 -g -c "$f" -o "$bc"
  bc_files+=("$bc")
done

echo "Linking all fdlibm implementations into $OUT_LIB..."
llvm-link "${bc_files[@]}" -o "$IMPL_DIR/$OUT_LIB"

echo "✅ fdlibm implementation library ready:"
echo "   $IMPL_DIR/$OUT_LIB"
