#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "expat.h"
#include <klee/klee.h>

extern int tmain(int argc, char **argv);

int main() {
    // Allocate symbolic buffer
    char buf[4096];
    klee_make_symbolic(buf, sizeof(buf), "xml_input");

    // Force NUL termination somewhere
    buf[4095] = '\0';

    // Write symbolic data to a temp file
    FILE *f = fopen("input.xml", "w");
    if (!f) return 0;
    fputs(buf, f);
    fclose(f);

    // Call xmlwf normally
    char *argv[] = {
        "xmlwf",
        "input.xml",
        NULL
    };

    return tmain(2, argv);
}
