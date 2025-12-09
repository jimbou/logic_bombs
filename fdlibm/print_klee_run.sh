#!/usr/bin/env bash
set -euo pipefail

# ============================
# USAGE CHECK
# ============================

if [ $# -lt 5 ]; then
  echo "Usage:"
  echo "  $0 <compile_commands_file> <solver> <timeout> <results_json> <output_script>"
  echo
  echo "Example:"
  echo "  $0 compile_fdlibm.txt z3 900 results_fdlibm_float_z3.json run_all_klee.sh"
  exit 1
fi

COMPILE_FILE="$1"
SOLVER="$2"
TIMEOUT="$3"
RESULTS_JSON="$4"
OUT_SCRIPT="$5"

if [[ "$SOLVER" != "z3" && "$SOLVER" != "stp" ]]; then
  echo "❌ Solver must be z3 or stp"
  exit 1
fi

if [ ! -f "$COMPILE_FILE" ]; then
  echo "❌ Compile command file not found: $COMPILE_FILE"
  exit 1
fi

# ============================
# INIT OUTPUT SCRIPT
# ============================

echo "#!/usr/bin/env bash" > "$OUT_SCRIPT"
echo "set -euo pipefail" >> "$OUT_SCRIPT"
echo >> "$OUT_SCRIPT"

# ============================
# EXTRACT .bc AND EMIT KLEE RUNS
# ============================

grep -v '^[[:space:]]*#' "$COMPILE_FILE" | grep -oE '[^ ]+\.bc' | while read -r bc; do
  echo "./run_bc_klee_fdlibm_simple.sh $bc $SOLVER $TIMEOUT $RESULTS_JSON" >> "$OUT_SCRIPT"
done

chmod +x "$OUT_SCRIPT"

echo "✅ Generated KLEE batch script: $OUT_SCRIPT"
