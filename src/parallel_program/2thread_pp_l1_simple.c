#include <klee/klee.h>
#include <stdio.h>
#include <string.h>
#include "a_tester.h"

// =============================================
//  MODEL OF THE THREAD RACE (DETERMINISTIC)
// =============================================

// Thread behaviors:
// Inc:   x → x + 1
// Mult:  x → x * x
//
// Possible results caused by racing threads:
//   1. Mult then Inc           → x*x + 1
//   2. Inc then Mult           → (x+1)*(x+1)
//   3. Only Mult wins          → x*x
//   4. Only Inc wins           → x+1
//   5. Mixed-load interleaving → x*(x+1)
//
// These are all mathematically distinct outcomes of the race.

int ThreadProp_model(int x, int idx) {
    switch (idx) {

        case 0:  // Mult then Inc
            return x*x + 1;

        case 1:  // Inc then Mult
            return (x+1)*(x+1);

        case 2:  // Only Mult
            return x*x;

        case 3:  // Only Inc
            return x + 1;

        case 4:  // Mixed interleaving
            return x * (x+1);

        default:
            // Should never happen
            return x;
    }
}

// =============================================
//  NON-DETERMINISTIC THREADPROP FOR KLEE
// =============================================

int ThreadProp(int x) {
    int idx;
    klee_make_symbolic(&idx, sizeof(idx), "race_case");
    klee_assume(idx >= 0 && idx < 5);

    return ThreadProp_model(x, idx);
}

// =============================================
//  ORIGINAL LOGIC BOMB (unchanged)
// =============================================

int logic_bomb(char* s) {
    int symvar = s[0] - 48;
    int result = ThreadProp(symvar);

    if (result == 50)
        return BOMB_ENDING;

    return NORMAL_ENDING;
}

// =============================================
//  MAIN: symbolic input, force path exploration
// =============================================

int main(int argc, char **argv) {
    char s[5];
    klee_make_symbolic(s, sizeof(s), "s");
    klee_assume(s[4] == '\0');

    logic_bomb(s);

    // Prevent KLEE from merging paths
    klee_assert(1);

    return 0;
}
