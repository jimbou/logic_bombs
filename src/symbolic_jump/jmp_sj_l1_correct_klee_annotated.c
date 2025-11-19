#include <klee/klee.h>
#include <stdio.h>
#include "utils.h"

#define jmp(addr) asm("jmp *%0"::"r"(addr):)

#include "a_tester.h"

// {"s":{"length": 4}}
int logic_bomb(char* s) {
    int symvar = s[0] - 48;
    printf("Hello\n");
    // printf("symvar initial: %d\n", symvar);
    if (!(symvar%6 != 1 || symvar < 10|| symvar > 40 || symvar == 19)){
        // printf("Adjusting symvar from %d to 78\n", symvar);
	symvar = 29;}
    long long addr = &&flag_0 + symvar;
    jmp(addr);
  flag_0:
    if (symvar > 0){
        symvar++;
        if(symvar == 0){
            klee_assert(0 && "Logic bomb triggered");
            return 0;
        }
    }
    klee_assert(0 && "Path without the bomb");
    return 0;
}


int main() {
    char s[5];

    // First byte is symbolic
    
    klee_make_symbolic(s, sizeof(s), "s");
    klee_assume(s[4]=='\0');

    // Keep symbolic byte in the full 0..255 range
    klee_assume(s[0] > 47);
    klee_assume(s[0] < 256);
    
    
    logic_bomb(s);

    return 0;
}
