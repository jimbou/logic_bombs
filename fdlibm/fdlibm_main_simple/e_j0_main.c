#include "fdlibm.h"
#include <klee/klee.h>

int main() {
    double a0;
    klee_make_symbolic(&a0, sizeof(a0), "a0");

    double r = __ieee754_j0(a0);
    return 0;
}
