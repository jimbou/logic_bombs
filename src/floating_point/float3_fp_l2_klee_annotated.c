#include <klee/klee.h>
#include<stdio.h>
#include <stdlib.h>
#include "a_tester.h"

// {"s":{"length": 8}}
int logic_bomb(char* symvar) {
    float x = atof(symvar);
    x = x/10000.0;
    if(1024+x == 1024 && x>0){
        klee_assert(0 && "Logic bomb triggered");
        return 0;
    } else {
        klee_assert(0 && "Path without the bomb");
        return 0;
    }
}

int main(int argc, char** argv) {
char symvar[8];
klee_make_symbolic(&symvar, sizeof(symvar), "symvar");
klee_assume(symvar[7]=='\0');
return logic_bomb(symvar);
}
