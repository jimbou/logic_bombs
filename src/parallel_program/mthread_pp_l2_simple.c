#include <klee/klee.h>
#include "a_tester.h"

// Model thread nondeterministic outcomes
int ThreadProp_model(int x, int idx) {
    switch (idx) {
        case 0:  return x + 5000;
        case 1:  return x + 4000;
        case 2:  return x + 3000;
        case 3:  return x + 2000;
        case 4:  return x + 1000;
        case 5:  return x;
        case 6:  return x - 1000;
        case 7:  return x - 2000;
        case 8:  return x - 3000;
        case 9:  return x - 4000;
        case 10: return x - 5000;
        default: return x;
    }
}

int ThreadProp(int x) {
    int idx;
    klee_make_symbolic(&idx, sizeof(idx), "race_idx");
    klee_assume(idx >= 0 && idx <= 10);
    return ThreadProp_model(x, idx);
}

// {"s":{"length": 4}}
int logic_bomb(char* s) {
    int symvar = s[0] - 48;
    int i = ThreadProp(symvar + 990);

    if (i == 5999)
        return BOMB_ENDING;
    return NORMAL_ENDING;
}

int main() {
    char s[4];
    klee_make_symbolic(s, sizeof(s), "s");
    klee_assume(s[3] == '\0');

    logic_bomb(s);
    return 0;
}
