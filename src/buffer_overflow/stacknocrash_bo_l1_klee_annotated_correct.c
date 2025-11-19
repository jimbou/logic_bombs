#include <klee/klee.h>
#include <string.h> 
#include "utils.h"
#include "a_tester.h"


// {"symvar":{"length": 64}}
int logic_bomb(char* symvar) {
    int flag = 0;
    char buf[8];
    if(strlen(symvar) > 9){
        klee_assert(0 && "Path without the bomb");
        return 0;
    }
    strcpy(buf, symvar);
    if(flag == 1){
        klee_assert(0 && "Logic bomb triggered");
        return 0;
    }
    klee_assert(0 && "Path without the bomb");
    return 0;
}

int main() {
    char symvar[65];
    klee_make_symbolic(symvar, sizeof(symvar), "symvar");
    klee_assume(symvar[64] == '\0');

    // Enforce strlen(symvar) = 9 quickly
    for (int i = 0; i < 9; i++)
        klee_assume(symvar[i] != '\0');   // non-zero
    klee_assume(symvar[9] == '\0');        // terminator

    // Overflow region: reduce SMT search space drastically
    for (int i = 10; i < 64; i++)
        klee_assume((unsigned char)symvar[i] <= 1);  

    return logic_bomb(symvar);
}