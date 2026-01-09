// harness_main.c
#include <assert.h>
#include <string.h>
#include <setjmp.h>

#include <klee/klee.h>

#include "status.h"
#include "vm.h"
#include "bc.h"
#include "dc.h"

/* Keep this small; bc will parse it. */
#define EXPR_MAX 64

static void assume_printable_cstr(char *s, int n) {
  // ensure NUL-termination
  s[n - 1] = '\0';
  // keep bytes printable-ish so the lexer doesn't explode immediately
  for (int i = 0; i < n - 1; i++) {
    // allow NUL early to shorten
    if (s[i] == '\0') break;
    klee_assume(s[i] >= 32 && s[i] <= 126);
  }
}

#include <stdio.h>

int main(int argc, char **argv) {
  fprintf(stderr, "HARNESS_VERSION=2026-01-07-A\n");
  fflush(stderr);

  (void) argc; (void) argv;

  BcStatus s;
  char expr[EXPR_MAX];
  klee_make_symbolic(expr, sizeof(expr), "bc_expr");
  assume_printable_cstr(expr, (int) sizeof(expr));

  // Build argv for: bc -e "<expr>"
  // bc supports -e/--expression to run an expression and quit. :contentReference[oaicite:1]{index=1}
  const char *fake_argv[] = {
    "bc",
    "-e",
    expr,
    NULL
  };
  int fake_argc = 3;

  // Equivalent of your real main.c but simplified (no locale, no basename).
  vm->name = (char*) fake_argv[0];

  BC_SIG_LOCK;

  /* Replay binary is native; we must satisfy bc's internal assert contract. */
  vm->sig_lock = 1;
  // required for longjmp-based error unwinding
  bc_vec_init(&vm->jmp_bufs, sizeof(sigjmp_buf), BC_DTOR_NONE);

  BC_SETJMP_LOCKED(vm, exit);

  // Always run bc_main (you compiled with BC_ENABLED=1 anyway).
  s = bc_main(fake_argc, (const char**) fake_argv);

  vm->status = (sig_atomic_t) s;

exit:
  BC_SIG_MAYLOCK;
  s = bc_vm_atexit((BcStatus) vm->status);
  return (int) s;
}
