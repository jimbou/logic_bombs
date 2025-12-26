
#!/usr/bin/env bash
set -euo pipefail

MAIN_DIR="/home/klee/logic_bombs/fdlibm/fdlibm_main_simple"
FDLIBM_DIR="/home/klee/logic_bombs/fdlibm/fdlibm_coverage"
BUILD_DIR="/home/klee/logic_bombs/fdlibm/fdlibm_coverage/fdlibm_build_simple"
for main in "$MAIN_DIR"/*_main.c; do
    base=$(basename "$main" .c)

    echo "[3/3] Compiling $base"

    clang \
        -emit-llvm \
        -O0 \
        -g \
        -c "$main" \
        -o "$BUILD_DIR/${base}simple.bc"

    llvm-link \
        "$BUILD_DIR/${base}simple.bc" \
        "$BUILD_DIR/fdlibm_simple.bc" \
        -o "$MAIN_DIR/${base}simple.bc"
done

echo "✅ All main files linked with fdlibm"
