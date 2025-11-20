export LD_LIBRARY_PATH=/tmp/klee_build130stp_z3/lib:$LD_LIBRARY_PATH

mkdir -p replay_logs
LOG="replay_logs/replay14.log"
for f in klee-out-14/test0000*.ktest; do
    base=$(basename "$f" .ktest)
    

    echo "Replaying $f → $LOG" >> "$LOG"
    export KTEST_FILE="$f"
    timeout 2 ./temp_replay >> "$LOG" 2>&1
done
