#!/bin/bash
for f in *.c; do
  if ! grep -q '#include <klee/klee.h>' "$f"; then
    sed -i '1i #include <klee/klee.h>' "$f"
    echo "Patched: $f"
  else
    echo "Already OK: $f"
  fi
done
