#!/usr/bin/env bash
set -euo pipefail

# Directory containing *_main_float.bc files
MAIN_DIR="."

# Path to the prebuilt fdlibm float library bitcode
LIB_BC="../fdlibm_simple/fdlibm_all_simple.bc"

if [[ ! -d "$MAIN_DIR" ]]; then
  echo "ERROR: Not a directory: $MAIN_DIR"
  exit 1
fi

if [[ ! -f "$LIB_BC" ]]; then
  echo "ERROR: Library not found: $LIB_BC"
  exit 1
fi

echo "Linking all *_main.bc in: $MAIN_DIR"
echo "Using library: $LIB_BC"
echo

shopt -s nullglob

for main_bc in "$MAIN_DIR"/*_main.bc; do
  out_bc="${main_bc/_main.bc/.bc}"

  echo "Linking:"
  echo "  INPUT : $main_bc"
  echo "  OUTPUT: $out_bc"

  llvm-link "$main_bc" "$LIB_BC" -o "$out_bc"

  echo " Created: $out_bc"
  echo
done

echo " All linking completed."
