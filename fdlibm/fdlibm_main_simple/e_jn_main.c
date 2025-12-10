#include "fdlibm.h"
#include <klee/klee.h>

int main() {
    int a0;
    klee_make_symbolic(&a0, sizeof(a0), "a0");
    double a1;
    klee_make_symbolic(&a1, sizeof(a1), "a1");

    double r = __ieee754_jn(a0, a1);
    return 0;
}
