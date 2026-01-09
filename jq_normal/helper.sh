#!/usr/bin/env bash
set -euo pipefail

############################################
# Configuration
############################################
WORKDIR=/home/klee/logic_bombs
JQ_DIR=$WORKDIR/jq
TIMEOUT=900

############################################
# 0. Start from a clean workspace
############################################
mkdir -p "$WORKDIR"
cd "$WORKDIR"

############################################
# 1. System dependencies (inside container)
############################################
apt update
apt install -y \
  git \
  build-essential \
  clang \
  llvm \
  autoconf \
  automake \
  libtool \
  bison \
  flex \
  libc6-dev \
  linux-libc-dev

############################################
# 2. Clone jq
############################################
rm -rf jq
git clone https://github.com/jqlang/jq.git
cd jq
git submodule update --init
autoreconf -i

############################################
# 3. Configure jq (NO LLVM FLAGS HERE)
############################################
export CC=clang
export CFLAGS="-O0 -g"
./configure \
  --disable-docs \
  --disable-maintainer-mode \
  --with-oniguruma=builtin

############################################
# 4. KLEE harness
############################################
cat > klee_harness_jq.c << 'EOF'
#include <klee/klee.h>
#include "jv.h"

int main() {
    char json_input[256];
    klee_make_symbolic(json_input, sizeof(json_input), "json_input");
    json_input[255] = '\0';

    jv v = jv_parse(json_input);
    if (jv_is_valid(v)) {
        jv_free(v);
    }
    return 0;
}
EOF

COMMON="-I. -I./src -DIEEE_8087 -D_POSIX_C_SOURCE=200809L"

clang -O0 -g -emit-llvm -c \
  -I. -I./src \
  klee_harness_jq.c \
  -o klee_harness_jq.bc

clang -O0 -g -emit-llvm $COMMON -c src/jv.c            -o src/jv.bc
clang -O0 -g -emit-llvm $COMMON -c src/jv_parse.c     -o src/jv_parse.bc
clang -O0 -g -emit-llvm $COMMON -c src/jv_dtoa.c      -o src/jv_dtoa.bc
clang -O0 -g -emit-llvm $COMMON -c src/jv_dtoa_tsd.c  -o src/jv_dtoa_tsd.bc
clang -O0 -g -emit-llvm $COMMON -c src/jv_alloc.c     -o src/jv_alloc.bc
clang -O0 -g -emit-llvm $COMMON -c src/jv_unicode.c   -o src/jv_unicode.bc
clang -O0 -g -emit-llvm $COMMON -c src/jv_aux.c       -o src/jv_aux.bc

clang -O0 -g -emit-llvm $COMMON -c src/util.c     -o src/util.bc
clang -O0 -g -emit-llvm $COMMON -c src/execute.c  -o src/execute.bc
clang -O0 -g -emit-llvm $COMMON -c src/jv_file.c  -o src/jv_file.bc
clang -O0 -g -emit-llvm $COMMON -c src/locfile.c  -o src/locfile.bc
clang -O0 -g -emit-llvm $COMMON -c src/linker.c   -o src/linker.bc

clang -O0 -g -emit-llvm $COMMON -c src/jv_print.c  -o src/jv_print.bc
clang -O0 -g -emit-llvm $COMMON -c src/parser.c   -o src/parser.bc
clang -O0 -g -emit-llvm $COMMON -c src/lexer.c    -o src/lexer.bc
clang -O0 -g -emit-llvm $COMMON -c src/compile.c  -o src/compile.bc
clang -O0 -g -emit-llvm $COMMON -c src/bytecode.c -o src/bytecode.bc

clang -O0 -g -emit-llvm $COMMON -c src/builtin.c -o src/builtin.bc

############################################
# 8. Link everything (NO main.c)
############################################
llvm-link \
  klee_harness_jq.bc \
  src/jv.bc \
  src/jv_parse.bc \
  src/jv_dtoa.bc \
  src/jv_dtoa_tsd.bc \
  src/jv_alloc.bc \
  src/jv_unicode.bc \
  src/jv_aux.bc \
  src/jv_print.bc \
  src/util.bc \
  src/execute.bc \
  src/jv_file.bc \
  src/locfile.bc \
  src/linker.bc \
  src/parser.bc \
  src/lexer.bc \
  src/compile.bc \
  src/bytecode.bc \
  src/builtin.bc \
  -o jq_parse.bc


############################################
# 9. Sanity check: jq symbols should be closed
############################################
echo "[+] Undefined jq/jv symbols (should be empty):"
llvm-nm jq_parse.bc | grep " U " | grep -E "jq_|jv_|jvp_" || true

############################################
# 10. Run KLEE
############################################
klee \
  --libc=uclibc \
  --posix-runtime \
  --solver-backend=z3 \
  --write-cov \
  --emit-all-errors \
  --external-calls=all \
  --max-solver-time=20 \
  --max-time=900 \
  --output-dir=/home/klee/logic_bombs/jq_normal/jq_normal_z3 \
  /home/klee/logic_bombs/jq_normal/jq_parse.bc

  klee \
  --libc=uclibc \
  --posix-runtime \
  --solver-backend=stp \
  --write-cov \
  --emit-all-errors \
  --external-calls=all \
  --max-solver-time=20 \
  --max-time=900 \
  --output-dir=/home/klee/logic_bombs/jq_normal/jq_normal_stp \
  /home/klee/logic_bombs/jq_normal/jq_parse.bc

   klee \
  --libc=uclibc \
  --posix-runtime \
  --solver-backend=stp \
  --write-cov \
  --emit-all-errors \
  --external-calls=all \
  --max-solver-time=20 \
  --max-time=900 \
  --output-dir=/home/klee/logic_bombs/bc_normal/bc_normal_stp \
  /home/klee/logic_bombs/bc_normal/klee_executable.bc

   klee \
  --libc=uclibc \
  --posix-runtime \
  --solver-backend=stp \
  --write-cov \
  --emit-all-errors \
  --external-calls=all \
  --max-solver-time=20 \
  --max-time=900 \
  --output-dir=/home/klee/logic_bombs/bc_normal/bc_normal_stp \
  /home/klee/logic_bombs/bc_normal/klee_executable.bc

  klee \
  --libc=uclibc \
  --posix-runtime \
  --solver-backend=z3 \
  --write-cov \
  --emit-all-errors \
  --allow-external-sym-calls \
  --max-solver-time=20 \
  --max-time=900 \
  --output-dir=/home/klee/logic_bombs/jq_float/jq_float_z3 \
  /home/klee/logic_bombs/jq_float/jq_parse.bc

  klee \
  --libc=uclibc \
  --posix-runtime \
  --solver-backend=z3 \
  --write-cov \
  --emit-all-errors \
  --allow-external-sym-calls \
  --max-solver-time=20 \
  --max-time=900 \
  --output-dir=/home/klee/logic_bombs/bc_float/bc_float_z3 \
  /home/klee/logic_bombs/bc_float/klee_executable.bc

  /home/klee/logic_bombs/bc_normal/klee_executable.bc
  /home/jim/logic_bombs/jq_float/jq_parse.bc

echo "[✓] Done. Results in klee-out-*"

klee_cmd = [
            "/tmp/klee_build130stp_z3/bin/klee",
            "--solver-backend=z3",
            f"--max-time={time_out}",
            "--max-solver-time=20",
            "--emit-all-errors",
            "--write-cov",
            "--search=bfs",
            "--external-calls=all",
            f"--output-dir={output_dir}",
            bc_file_path
        ]

        KLEE_BIN,
            "--libc=uclibc",
            "--posix-runtime",
            f"--max-time={time_out}",
            "--emit-all-errors",
            "--allow-external-sym-calls",
            "--max-solver-time=20",
            "--solver-backend=z3",
            "--write-cov",
            f"--output-dir={output_dir}",
            bc_file_path