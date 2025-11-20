#include <klee/klee.h>
#include "a_tester.h"

// MODEL: pure logical version of the original bomb
int model_logic_bomb(char *s) {
    // Semantics inferred from the pipe/fork/strcmp behavior
    if (s[0] == '7' && s[1] == '\0')
        return BOMB_ENDING;
    return NORMAL_ENDING;
}

int main(void) {
    char s[3];
    klee_make_symbolic(s, sizeof(s), "s");
    // keep it a valid 2-char "string" + NUL
    klee_assume(s[2] == '\0');

    int res = model_logic_bomb(s);

    if (res == BOMB_ENDING) {
        // classify bomb inputs
        klee_assert(0 && "Logic bomb triggered");
    } else {
        // classify non-bomb inputs
        klee_assert(1 && "Normal ending");
    }

    return 0;
}
