#include <klee/klee.h>
#include <iostream>
#include "utils.h"

using namespace std;

double division(int numerator, int denominator) {
   if( denominator == 0 ) {
      throw "Division by zero condition!";
   }
   return (numerator/denominator);
}

#include "a_tester.h"


// {"s":{"length": 4}}
int logic_bomb(char* s) {
    int symvar = s[0] - 48;
    int num = 10;

    try {
       division(num, symvar-7);
       klee_assert(1 && "Path without the bomb");
    }catch (const char* msg) {
       klee_assert(0 && "Logic bomb triggered");
    }
}

int main(int argc, char** argv) {
    int rt_value;
char* s;
s = argv[1];
rt_value = logic_bomb(s);

    switch (rt_value) {
        case 0: printf("Normal ending\n"); break;
        case 1: printf("Bomb ending\n"); break;
    }
    return rt_value;
}
