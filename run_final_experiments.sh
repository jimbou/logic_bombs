#!/usr/bin/env bash
set -euo pipefail

CONTAINER="klee_logic_bombs"
TIME_LIMIT=900

# ------------------------------------------------------------
# Helpers
# ------------------------------------------------------------
stop_container() {
    if docker ps -q -f name=^/${CONTAINER}$ | grep -q .; then
        echo "🛑 Stopping running container ${CONTAINER}"
        docker stop ${CONTAINER}
    fi
}

start_container() {
    echo "▶️  Starting container ${CONTAINER}"
    docker start ${CONTAINER}
}

run_klee() {
    local CMD="$1"

    start_container

    echo "🚀 Running KLEE command:"
    echo "${CMD}"
    echo "⏱️  Wall-time limit: ${TIME_LIMIT}s"

    # Hard timeout from host side
    timeout --kill-after=900s ${TIME_LIMIT}s \
        docker exec ${CONTAINER} bash -lc "${CMD}" \
        || echo "⚠️  KLEE timed out or exited with error"

    stop_container
    echo "✅ Run finished"
    echo "------------------------------------------------------------"
}

# ------------------------------------------------------------
# Ensure clean initial state
# ------------------------------------------------------------
stop_container
#remove all the output dirs from previous runs
# ------------------------------------------------------------
# 1) jq – Z3
# # ------------------------------------------------------------
# run_klee "
# klee \
#   --libc=uclibc \
#   --posix-runtime \
#   --solver-backend=z3 \
#   --write-cov \
#   --emit-all-errors \
#   --external-calls=all \
#   --max-solver-time=20 \
#   --max-time=900 \
#   --output-dir=/home/klee/logic_bombs/jq_normal/jq_normal_z3 \
#   /home/klee/logic_bombs/jq_normal/jq_parse.bc
# "

# # ------------------------------------------------------------
# # 2) jq – STP
# # ------------------------------------------------------------
# run_klee "
# klee \
#   --libc=uclibc \
#   --posix-runtime \
#   --solver-backend=stp \
#   --write-cov \
#   --emit-all-errors \
#   --external-calls=all \
#   --max-solver-time=20 \
#   --max-time=900 \
#   --output-dir=/home/klee/logic_bombs/jq_normal/jq_normal_stp \
#   /home/klee/logic_bombs/jq_normal/jq_parse.bc
# "

# ------------------------------------------------------------
# 3) bc – STP
# ------------------------------------------------------------
run_klee "
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
  /home/klee/logic_bombs/bc_normal/bc_klee1.bc
"

# ------------------------------------------------------------
# 4) bc – z3
# ------------------------------------------------------------
run_klee "
klee \
  --libc=uclibc \
  --posix-runtime \
  --solver-backend=z3 \
  --write-cov \
  --emit-all-errors \
  --external-calls=all \
  --max-solver-time=20 \
  --max-time=900 \
  --output-dir=/home/klee/logic_bombs/bc_normal/bc_normal_z3 \
  /home/klee/logic_bombs/bc_normal/bc_klee1.bc
"

echo " All KLEE runs completed."
