#include "fdlibm.h"
#include <errno.h>
#include <stdio.h>			/* fputs(), stderr */
#include <unistd.h>			/* write */
#include <klee/klee.h>

int main() {
    double a0;
    klee_make_symbolic(&a0, sizeof(a0), "a0");
    double a1;
    klee_make_symbolic(&a1, sizeof(a1), "a1");
    int a2;
    klee_make_symbolic(&a2, sizeof(a2), "a2");

    double r = __kernel_standard(a0, a1, a2);
    return 0;
}
