#!/usr/bin/env bash
set -euo pipefail

# Generate a run_all_bc_calls.sh with one command per .bc file

OUTPUT="run_all_bc_calls.sh"
REPO_ROOT="/home/klee/logic_bombs"

echo "#!/usr/bin/env bash" > "$OUTPUT"
echo "set -e" >> "$OUTPUT"
echo "" >> "$OUTPUT"

find src -type f -name "*.bc" \
  ! -path "*/klee/*" ! -path "*/logs/*" ! -path "*/klee-out*/*" |
while read -r f; do
  abs="${REPO_ROOT}/${f}"
  echo "./run_bc_klee_single.sh \"$abs\"" >> "$OUTPUT"
done

chmod +x "$OUTPUT"
echo "✅ Created $OUTPUT with all run commands."
