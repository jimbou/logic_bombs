#!/usr/bin/env bash
set -e

EXPAT_BUILD=../build-klee
EXPAT_SRC=../expat

echo "[1] Compiling Expat sources to LLVM bitcode..."

clang -O0 -g -emit-llvm -c \
  $EXPAT_SRC/lib/xmlparse.c \
  -I$EXPAT_SRC/lib \
  -I$EXPAT_BUILD \
  -DXML_STATIC \
  -o xmlparse_float.bc

clang -O0 -g -emit-llvm -c \
  $EXPAT_SRC/lib/xmltok.c \
  -I$EXPAT_SRC/lib \
  -I$EXPAT_BUILD \
  -DXML_STATIC \
  -o xmltok_float.bc

clang -O0 -g -emit-llvm -c \
  $EXPAT_SRC/lib/xmlrole.c \
  -I$EXPAT_SRC/lib \
  -I$EXPAT_BUILD \
  -DXML_STATIC \
  -o xmlrole_float.bc

echo "[2] Compiling KLEE harness..."

clang -O0 -g -emit-llvm -c \
  ../klee_harness_float.c \
  -I$EXPAT_SRC/lib \
  -I$EXPAT_BUILD \
  -o klee_harness_float.bc

echo "[3] Linking bitcode..."

llvm-link \
  klee_harness_float.bc \
  xmlparse_float.bc \
  xmltok_float.bc \
  xmlrole_float.bc \
  -o expat_klee_float.bc
echo
echo "✅ Done"
echo "Run with:"
echo "klee --libc=uclibc --posix-runtime --write-cov --allow-external-sym-calls expat_klee_float.bc"
