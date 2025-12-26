#include "fdlibm.h"
#include <klee/klee.h>


int main() {
    double a0;
    double r;
    klee_make_symbolic(&a0, sizeof(a0), "a0");

    int chooser =klee_range(0,2,"chooser");
    if (chooser==0) {
    r = __ieee754_j1(a0);
    } else {
    r = __ieee754_y1(a0);
    }
      return 0;
  }


