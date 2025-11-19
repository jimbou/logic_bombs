#include <klee/klee.h>
/*
TOY:
*/
#include <string.h> 
#include "utils.h"
#include "a_tester.h"

// {"s":{"length": 4}}
int logic_bomb(char* s) {
    int symvar = s[0];
    srand(symvar);
    int r = rand()%100;
    if(r == 77){
        klee_assert(0 && "Logic bomb triggered");
        return 0;
    }else{
        klee_assert(0 && "Path without the bomb");
        return 0;
    }
}

int main(int argc, char** argv) {
char s[5];
klee_make_symbolic(&s, sizeof(s), "s");
klee_assume(s[4]=='\0');
return logic_bomb(s);
}
