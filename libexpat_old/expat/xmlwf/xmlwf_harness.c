// xmlwf_harness.c
#include <klee/klee.h>
#include <stdlib.h>

extern int xmlwf_prog_main(int argc, char **argv);

int main() {
    int argc;
    klee_make_symbolic(&argc, sizeof(argc), "argc");
    klee_assume(argc >= 1);
    klee_assume(argc <= 4);

    char *argv[4];

    for (int i = 0; i < argc; i++) {
        argv[i] = malloc(16);
        klee_make_symbolic(argv[i], 64, "argv");
        argv[i][64] = 0;
    }

    return xmlwf_prog_main(argc, argv);
}
