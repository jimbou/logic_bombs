#!/usr/bin/env bash
set -euo pipefail

# =========================
# CONFIG
# =========================
CONTAINER="logic_float"   # <-- CHANGE HERE IF NEEDED
TIME_LIMIT=900

# =========================
# Helpers
# =========================
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

# =========================
# Clean start
# =========================
stop_container
start_container

echo "🚀 Running jq_float Z3 KLEE job"
echo "⏱️  Hard wall-time limit: ${TIME_LIMIT}s"

# =========================
# Run with HARD watchdog
# =========================
timeout --kill-after=10s ${TIME_LIMIT}s \
docker exec ${CONTAINER} bash -lc "
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
" || echo "⚠️  KLEE timed out or exited with error"

# =========================
# Enforced stop
# =========================
stop_container

echo "✅ jq_float Z3 run completed"
