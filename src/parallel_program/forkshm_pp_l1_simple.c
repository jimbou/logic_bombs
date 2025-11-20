#include <klee/klee.h>
#include "a_tester.h"

int model_logic_bomb(char* s) {
    // determines whether the real bomb will explode
    if (s[0] == '7' && s[1] == '\0')
        return BOMB_ENDING;
    return NORMAL_ENDING;
}

int main() {
    char s[3];
    klee_make_symbolic(s, sizeof(s), "s");
    
    // ensure valid short string
    klee_assume(s[2] == '\0');

    int res = model_logic_bomb(s);

    if(res == BOMB_ENDING) {
        klee_assert(0 && "Logic bomb triggered");
    } else {
        klee_assert(1);
    }

    return 0;
}
