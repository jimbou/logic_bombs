#!/usr/bin/env bash
set -euo pipefail

FDLIBM_DIR="/home/klee/logic_bombs/fdlibm/fdlibm_coverage"
BUILD_DIR="/home/klee/logic_bombs/fdlibm/fdlibm_coverage/fdlibm_build_float"

mkdir -p "$BUILD_DIR"

echo "[1/3] Compiling fdlibm sources..."

for f in "$FDLIBM_DIR"/*.c; do
    base=$(basename "$f" .c)
    clang \
        -emit-llvm \
        -O0 \
        -g \
        -c "$f" \
        -o "$BUILD_DIR/$base.bc"
done

echo "[2/3] Linking fdlibm.bc..."

llvm-link "$BUILD_DIR"/*.bc -o "$BUILD_DIR/fdlibm_float.bc"

echo "✅ fdlibm.bc ready"
