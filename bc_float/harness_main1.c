// harness_main.c
#include <string.h>
#include <klee/klee.h>

#include "status.h"
#include "vm.h"
#include "bc.h"
#include "dc.h"

// Forward declaration of renamed main
int real_main(int argc, const char* argv[]);

#define EXPR_MAX 64

static void sanitize_bytes(char *buf, int n) {
  for (int i = 0; i < n; i++) {
    unsigned char x = (unsigned char) buf[i];
    buf[i] = (char)(32u + (x % 95u));  // printable ASCII
  }
  buf[n - 1] = '\0';
}

int main(int argc, const char* argv[]) {
  
  char expr[EXPR_MAX];
  klee_make_symbolic(expr, sizeof(expr), "bc_expr");
  sanitize_bytes(expr, EXPR_MAX);

  const char *fake_argv[] = {
    "bc",
    "-e",
    expr,
    NULL
  };

  // 🔑 DO NOT touch vm / signals / setjmp here
  return real_main(3, fake_argv);
}
