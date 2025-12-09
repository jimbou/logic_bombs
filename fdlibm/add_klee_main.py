import os
import re

HEADER = "fdlibm.h"

# ---------- STEP 1: PARSE HEADER PROTOTYPES -----------------

proto_re = re.compile(
    r"extern\s+([a-zA-Z_][a-zA-Z0-9_\s\*]+?)\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*__P\(\((.*?)\)\);"
)

protos = {}

with open(HEADER) as f:
    for line in f:
        m = proto_re.search(line)
        if not m:
            continue

        ret = m.group(1).strip()
        name = m.group(2).strip()
        args_raw = m.group(3).strip()

        if args_raw == "void" or args_raw == "":
            args = []
        else:
            args = [a.strip() for a in args_raw.split(",")]

        protos[name] = (ret, args)

print(f"Parsed {len(protos)} prototypes from fdlibm.h")

# ---------- STEP 2: BLACKLIST -------------------------------

BLACKLIST = {
    "s_signgam.c",
    "s_matherr.c",
    "s_lib_version.c",
    "k_rem_pio2.c",
}

# ---------- STEP 3: FUNCTION DEFINITION MATCHER -------------

# This matches *real* C function definitions:
#   double foo(...)
#   int bar(...)
#   double __ieee754_acos(...)
#
FUNC_DEF_RE = re.compile(
    r"^\s*(?:double|int)\s+([a-zA-Z_][a-zA-Z0-9_]*)\s*\(",
    re.MULTILINE
)

# ---------- STEP 4: PROCESS FILES ---------------------------

for fname in os.listdir("."):
    if not fname.endswith(".c"):
        continue

    if fname in BLACKLIST:
        print(f"SKIP (blacklisted): {fname}")
        continue

    with open(fname) as f:
        src = f.read()

    if re.search(r"\bmain\s*\(", src):
        print(f"SKIP (already has main): {fname}")
        continue

    m = FUNC_DEF_RE.search(src)
    if not m:
        print(f"SKIP (no function def found): {fname}")
        continue

    func = m.group(1)

    if func not in protos:
        print(f"SKIP (not in header): {fname} -> {func}")
        continue

    ret, args = protos[func]

    decls = []
    call_args = []

    for i, a in enumerate(args):
        v = f"a{i}"

        a = a.replace("const", "").strip()

        if a == "double":
            decls.append(f"    double {v};")
            decls.append(f"    klee_make_symbolic(&{v}, sizeof({v}), \"{v}\");")
            call_args.append(v)

        elif a == "int":
            decls.append(f"    int {v};")
            decls.append(f"    klee_make_symbolic(&{v}, sizeof({v}), \"{v}\");")
            call_args.append(v)

        elif a == "double*":
            decls.append(f"    double {v};")
            decls.append(f"    klee_make_symbolic(&{v}, sizeof({v}), \"{v}\");")
            call_args.append(f"&{v}")

        elif a == "int*":
            decls.append(f"    int {v};")
            decls.append(f"    klee_make_symbolic(&{v}, sizeof({v}), \"{v}\");")
            call_args.append(f"&{v}")

        else:
            print(f"SKIP (unsupported arg type): {fname} -> {a}")
            continue

    if ret == "void":
        call = f"    {func}({', '.join(call_args)});"
    else:
        call = f"    {ret} r = {func}({', '.join(call_args)});"

    main = "\n\n#include <klee/klee.h>\n\nint main() {\n"
    main += "\n".join(decls)
    main += "\n\n" + call + "\n"
    main += "    return 0;\n}\n"

    with open(fname, "w") as f:
        f.write(src.rstrip() + main)

    print(f"PATCHED: {fname}  ->  main calls {func}({', '.join(call_args)})")
