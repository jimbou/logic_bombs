#include <stdio.h>
#include "utils.h"

#define jmp(addr) asm("jmp *%0"::"r"(addr):)
#include <klee/klee.h>
#include "a_tester.h"

// {"s":{"length": 4}}
int logic_bomb(char* s) {
    int symvar = s[0] - 48;
    int array[] = {
    0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
    10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
    20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
    30, 31, 32, 33, 34, 35, 36, 37, 38, 39,
    40, 41, 42, 43, 44, 45, 46, 47, 48, 49,
    50, 51, 52, 53, 54, 55, 56, 57, 58, 59,
    60, 61, 62, 63, 64, 65, 66, 67, 68, 69,
    70, 71, 72, 73, 74, 75, 76, 77, 78, 79,
    80, 81, 82, 83, 84, 85, 86, 87, 88, 89,
    90, 91, 92, 93, 94, 95, 96, 97, 98, 99,
    100, 101, 102, 103, 104, 105, 106, 107, 108, 109,
    110, 111, 112, 113, 114, 115, 116, 117, 118, 119,
    120, 121, 122, 123, 124, 125, 126, 127, 128, 129,
    130, 131, 132, 133, 134, 135, 136, 137, 138, 139,
    140, 141, 142, 143, 144, 145, 146, 147, 148, 149,
    150, 151, 152, 153, 154, 155, 156, 157, 158, 159,
    160, 161, 162, 163, 164, 165, 166, 167, 168, 169,
    170, 171, 172, 173, 174, 175, 176, 177, 178, 179,
    180, 181, 182, 183, 184, 185, 186, 187, 188, 189,
    190, 191, 192, 193, 194, 195, 196, 197, 198, 199,
    200, 201, 202, 203, 204, 205, 206, 207, 208, 209,
    210, 211, 212, 213, 214, 215, 216, 217, 218, 219,
    220, 221, 222, 223, 224, 225, 226, 227, 228, 229,
    230, 231, 232, 233, 234, 235, 236, 237, 238, 239,
    240, 241, 242, 243, 244, 245, 246, 247, 248, 249,
    250, 251, 252, 253, 254, 255
};
    printf("Hello\n");
    long long addr = &&flag_0 + array[symvar%256];
    // printf("Jumping to address offset: %lld\n", array[symvar%256]);
    jmp(addr);
  flag_0:
    if (symvar > 0){
        symvar++;
        if(symvar == 0){
            klee_assert(0 && "Logic bomb triggered");
            return 0;
        }
    }
    klee_assert(0 && "Path without the bomb");
    return 0;
}

int main() {
    printf("Starting KLEE symbolic execution with array jump example\n");
    // symbolic byte
    char s[5];
    klee_make_symbolic(s, sizeof(s), "s");
    klee_assume(s[4]=='\0');
    // Try all 0..255 jump targets by forking 256 paths
    for (int i = 0; i < 256; i++) {
        // Create a forked path
        if (i == (s[0] - 48) % 256) {
            klee_assume((s[0] - 48) % 256 == i);

            // Optional: widen s[0] so KLEE does not restrict it to char range
            // (KLEE treats char as 8-bit but sometimes allows unconstrained bytes)
            klee_assume(s[0] >= 0);        // allow 0..255 in practice
            klee_assume(s[0] <= 255);
            printf("Widened s[0] to range 0..255\n");
            // printf("Forked path for s[0] = %d\n", s[0] - 48);
            logic_bomb(s);
        }
    }

    return 0;
}