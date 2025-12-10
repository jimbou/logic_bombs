#include "fdlibm.h"
#include <klee/klee.h>

int main() {
    double a0;
    klee_make_symbolic(&a0, sizeof(a0), "a0");
    int a1;
    klee_make_symbolic(&a1, sizeof(a1), "a1");
    double r = lgamma_r(a0, &a1);
    // double r = gamma_r(a0);
    return 0;
}
