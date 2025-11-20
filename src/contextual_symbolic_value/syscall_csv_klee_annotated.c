#include <klee/klee.h>
/*
TOY:
*/
#include <string.h>
#include "utils.h"

#include "a_tester.h"

// {"s":{"length": 16}}
int logic_bomb(char* s) {
    if(s == NULL){
	klee_assert(0 && "Path without the bomb");
    return 0;}
    if(s[0]=='\0'){
	klee_assert(0 && "Path without the bomb");
    return 0;}
    int trigger = -1;
    trigger = system(s);
    if(trigger == 0) {
        klee_assert(0 && "Logic bomb triggered");
        return 0;
    } else {
        klee_assert(0 && "Path without the bomb");
        return 0;
    }
}

int main(int argc, char** argv) {
char s[17];
klee_make_symbolic(&s, sizeof(s), "s");
klee_assume(s[16]=='\0');
return logic_bomb(s);
}
