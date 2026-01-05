# TARGET="-target x86_64-unknown-linux-gnu"
COPT="-O0"

COMMON="-I./include -I$KLEE_INC \
-DVERSION=7.1.0 \
-DBC_ENABLED=1 -DDC_ENABLED=1 \
-DBUILD_TYPE=A -DEXECPREFIX= -DMAINEXEC=bc \
-DBC_NUM_KARATSUBA_LEN=32 \
-DBC_ENABLE_NLS=0 \
-DBC_ENABLE_EXTRA_MATH=1 -DBC_ENABLE_HISTORY=1 \
-DBC_ENABLE_LIBRARY=0 -DBC_ENABLE_MEMCHECK=0 \
-DBC_ENABLE_AFL=0 -DBC_ENABLE_OSSFUZZ=0 \
-D_POSIX_C_SOURCE=200809L -D_XOPEN_SOURCE=700"

rm -f bc_klee.bc
rm -f src/*.o gen/*.o harness_main.o

# gen/
for f in gen/dc_help.c gen/bc_help.c gen/lib.c gen/lib2.c; do
  clang $TARGET -emit-llvm $COPT $COMMON -c "$f" -o "${f%.c}.o"
done

# src/ (exclude main.c and fuzz sources)
for f in src/*.c; do
  case "$f" in
    src/main.c|src/*fuzz*.c) continue ;;
  esac
  clang $TARGET -emit-llvm $COPT $COMMON -c "$f" -o "src/$(basename "${f%.c}").o"
done

# compile replacement main
clang $TARGET -emit-llvm $COPT $COMMON -c harness_main.c -o harness_main.o

# link
llvm-link gen/*.o src/*.o harness_main.o -o bc_klee.bc
