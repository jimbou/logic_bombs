klee --libc=uclibc --posix-runtime --external-calls=concrete --max-time=900s --emit-all-errors --max-solver-time=60 --solver-backend=z3 sha_linked.bc 
llvm-link sha.bc utils.bc sha1.bc crypto_utils.bc -o sha_linked_simple.bc
clang -I /home/klee/logic_bombs/include       -I /home/klee/logic_bombs/build       -emit-llvm -c -g /home/klee/logic_bombs/lib/crypto_utils.c -o crypto_utils.bc
clang -emit-llvm  -I /home/klee/logic_bombs/include -L /home/klee/logic_bombs/build/ -c -g  sha_cf_klee_annotated_simplified.c -o sha_cf_klee_annotated_simplified.bc  -lpthread -lutils -lcrypto -lm
clang -O0 -g   -I /tmp/klee_build130stp_z3/include  -I /home/klee/logic_bombs/include/ -L /home/klee/logic_bombs/build/ sha_cf_klee_annotated_simplified.c   /tmp/klee_build130stp_z3/lib/libkleeRuntest.so -o temp_replay  -lpthread -lutils -lcrypto -lm   


#for float
clang -O0 -g   -I /usr/local/include  -I /home/klee/logic_bombs/include/ -L /home/klee/logic_bombs/build/ sha_cf_klee_annotated_simplified.c   /usr/local/lib64/libkleeRuntest.so -o temp_replay  -lpthread -lutils -lcrypto -lm   

export LD_LIBRARY_PATH=/tmp/klee_build130stp_z3/lib:$LD_LIBRARY_PATH

mkdir -p replay_logs
LOG="replay_logs/replay1.log"
for f in klee-out-5/test0000*.ktest; do
    base=$(basename "$f" .ktest)
    

    echo "Replaying $f → $LOG" >> "$LOG"
    export KTEST_FILE="$f"
    timeout 2 ./sha_simple_replay >> "$LOG" 2>&1
done
export KTEST_FILE=/home/klee/logic_bombs/logs/logic_bombs/claude/parallel_program/2thread_pp_l1/combined_ktests/test000003_ghost.ktest
./ghost_coverage