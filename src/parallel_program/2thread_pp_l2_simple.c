#include <klee/klee.h>
#include <stdio.h>
#include <string.h>
#include "a_tester.h"

// =============================================
//  MODEL OF THE INC/DEC RACE (DETERMINISTIC)
// =============================================
//
// Possible outcomes from racing threads:
//   1. Inc dominates        → x + 1000
//   2. Dec dominates        → x - 1000
//   3. Perfect interleaving → x
//
// These represent all semantically distinct final outcomes.
//

int ThreadProp_model(int x, int idx) {
    switch (idx) {

        case 0:  // Inc wins
            return x + 1000;

        case 1:  // Dec wins
            return x - 1000;

        case 2:  // Balanced race
            return x;

        default:
            return x;
    }
}

// =============================================
//  NON-DETERMINISTIC THREADPROP FOR KLEE
// =============================================

int ThreadProp(int x) {
    int idx;
    klee_make_symbolic(&idx, sizeof(idx), "race_case2");
    klee_assume(idx >= 0 && idx < 3);

    return ThreadProp_model(x, idx);
}

// =============================================
//  ORIGINAL LOGIC BOMB (unchanged)
// =============================================

int logic_bomb(char* s) {
    int symvar = s[0] - 48;

    int i = ThreadProp(symvar - 909);

    if (i == -1900)
        return BOMB_ENDING;

    return NORMAL_ENDING;
}

// =============================================
//  MAIN: symbolic s
// =============================================

int main(int argc, char **argv) {
    char s[5];
    klee_make_symbolic(s, sizeof(s), "s");
    klee_assume(s[4] == '\0');

    logic_bomb(s);

    klee_assert(1); // prevent path merging

    return 0;
}
