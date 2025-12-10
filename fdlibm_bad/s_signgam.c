#include <klee/klee.h>
#include "fdlibm.h"
int signgam = 0;


#include <klee/klee.h>

int main() {
    double x;
    klee_make_symbolic(&x, sizeof(x), "x");
    s_signgam(x);
    return 0;
}
