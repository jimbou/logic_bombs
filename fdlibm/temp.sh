#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   ./rewrite_fdlibm_script.sh input.sh > output.sh

if [ $# -ne 1 ]; then
  echo "Usage: $0 <input_script.sh>" >&2
  exit 1
fi

INPUT="$1"

while IFS= read -r line; do
  # Pass through shebang and set lines unchanged
  if [[ "$line" == "#!"* || "$line" == "set "* ]]; then
    echo "$line"
    continue
  fi

  # Only process run_bc_fdlibm.sh lines
  if [[ "$line" == ./run_bc_fdlibm.sh* ]]; then
    # Extract the BC path (2nd token)
    bc_path="$(echo "$line" | awk '{print $2}')"

    # Derive the C path
    c_path="$bc_path"
    c_path="${c_path/_float.bc/.c}"
    c_path="${c_path/fdlibm_main_float/fdlibm_float}"

    # Reconstruct command with C file as 2nd argument
    # Original:
    # ./run_bc_fdlibm.sh BC SOLVER TIME JSON
    # New:
    # ./run_bc_fdlibm.sh BC C SOLVER TIME JSON
    echo "$line" | awk -v cfile="$c_path" '{
      printf "%s %s %s %s %s %s\n", $1, $2, cfile, $3, $4, $5
    }'

  else
    # Any other lines pass through unchanged
    echo "$line"
  fi
done < "$INPUT"
