#include <klee/klee.h>
/*
TOY:
*/
#include "sha1.h"
#include "utils.h"

#include "a_tester.h"

// {"s":{"length": 4}}
int logic_bomb(char* s) {
    int symvar = s[0] - 48;
    int plaintext = symvar;
    unsigned cipher[5];
    cipher[0] = 0X902ba3cd;
    cipher[1] = 0Xa1883801;
    cipher[2] = 0X594b6e1b;
    cipher[3] = 0X452790cc;
    cipher[4] = 0X53948fda;

    if(SHA1_COMP(plaintext,cipher)==0){
        klee_assert(0 && "Logic bomb triggered");
        return 0;
    }else{
        klee_assert(0 && "Path without the bomb");
        return 0;
    }
}

static int find_plaintext_preimage(void) {
    unsigned target[5];
    target[0] = 0X902ba3cd;
    target[1] = 0Xa1883801;
    target[2] = 0X594b6e1b;
    target[3] = 0X452790cc;
    target[4] = 0X53948fda;

    // Try small integer plaintexts; adjust range if necessary
    for (int x = 0; x <= 255; x++) {
        unsigned tmp[5];
        // SHA1_COMP likely mutates the array, so copy target each time
        tmp[0] = target[0];
        tmp[1] = target[1];
        tmp[2] = target[2];
        tmp[3] = target[3];
        tmp[4] = target[4];

        if (SHA1_COMP(x, tmp) == 0) {
            printf("Found plaintext preimage: %d\n", x);
            return x;
        }
    }

    // If nothing found, just signal failure
    printf("No preimage found in searched range!\n");
    return -1;
}

int main(int argc, char **argv) {
    // 1) Invert SHA1_COMP concretely
    int sol = find_plaintext_preimage();
    if (sol < 0) {
        // No solution in our search range: nothing useful to do for KLEE
        return 0;
    }

    // 2) Now use KLEE on s, but constrain s[0] - 48 == sol
    char s[5];
    klee_make_symbolic(s, sizeof(s), "s");
    klee_assume(s[4] == '\0');

    // Restrict s[0] to a reasonable ASCII range (optional but helps)
    klee_assume(s[0] >= '0');
    klee_assume(s[0] <= '9');

    // This is the key constraint: s[0] - '0' must equal the concrete solution
    klee_assume(s[0] - 48 == sol);

    // 3) Call the original logic_bomb.
    //    Now SHA1_COMP sees a *concrete* plaintext instead of a symbolic one.
    return logic_bomb(s);
}