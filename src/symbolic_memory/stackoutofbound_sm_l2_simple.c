#include <klee/klee.h>
#include <stdio.h>
#include "a_tester.h"

// {"s":{"length": 4}}
int logic_bomb(char* s) {
    int symvar = s[0] - 48;
    int a[] = {1, 2, 3, 4, 5, 6};
    if (a[symvar]<0 || a[symvar] > 6){
        klee_assert(0 && "Logic bomb triggered");
        return 0;
    }
    klee_assert(0 && "Path without the bomb");
    return 0;
}

int main(int argc, char **argv) {

    // 1. Place poison above logic_bomb stack frame
    //    These values will be read by a[6], a[7], etc. in native execution.
    volatile int poison[4] = {999, 999, 999, 999};

    // 2. Make s symbolic
    char s[5];
    klee_make_symbolic(s, sizeof(s), "s");
    klee_assume(s[4] == '\0');
     int choose = klee_range(0, 2, "choose");
     if (choose == 0) {
         // Keep symbolic byte in the full 0..255 range
         klee_assume(s[0] > 47);
         klee_assume(s[0] < 53);
     } else {
         // Restrict symbolic byte to trigger OOB read
         klee_assume(s[0] == 54); // '6'
     }

    // 3. Call the unmodified logic bomb
    return logic_bomb(s);
}