import os
import re

# Very simple type inference based on fdlibm conventions
def infer_signature_from_name(fname):
    """
    Returns (c_function_name, [(type, name), ...])
    """
    base = os.path.splitext(fname)[0]

    # Wrapper files: w_* → double (double)
    if base.startswith("w_"):
        return base[2:], [("double", "x")]

    # Kernel files: k_* → usually (double,double,int) or (double,double)
    if base.startswith("k_"):
        if "tan" in base or "sin" in base:
            return "__kernel_" + base[2:], [("double", "x"), ("double", "y"), ("int", "n")]
        else:
            return "__kernel_" + base[2:], [("double", "x"), ("double", "y")]

    # IEEE files: e_* → __ieee754_* mappings
    if base.startswith("e_"):
        name = "__ieee754_" + base[2:]
        # Known 2-arg functions
        if any(k in base for k in ["pow", "hypot", "fmod", "remainder", "atan2"]):
            return name, [("double", "x"), ("double", "y")]
        # jn, yn: (int, double)
        if base.endswith("jn") or base.endswith("yn"):
            return name, [("int", "n"), ("double", "x")]
        # lgamma_r, gamma_r: (double, int*)
        if base.endswith("lgamma_r") or base.endswith("gamma_r"):
            return name, [("double", "x"), ("int", "s")]
        # default: (double)
        return name, [("double", "x")]

    # Fallback: assume double(double)
    return base, [("double", "x")]


def build_klee_main(func, args):
    lines = []
    lines.append("\n#include <klee/klee.h>\n")
    lines.append("int main() {")
    for t, n in args:
        lines.append(f"    {t} {n};")
        lines.append(f"    klee_make_symbolic(&{n}, sizeof({n}), \"{n}\");")

    arglist = ",".join(n for _, n in args)
    lines.append(f"    {func}({arglist});")
    lines.append("    return 0;")
    lines.append("}")
    return "\n".join(lines)


for fname in os.listdir("."):
    if not fname.endswith(".c"):
        continue

    with open(fname, "r") as f:
        content = f.read()

    if "int main(" in content:
        print(f"SKIP (already has main): {fname}")
        continue

    func, args = infer_signature_from_name(fname)
    main_code = build_klee_main(func, args)

    with open(fname, "a") as f:
        f.write("\n" + main_code + "\n")

    print(f"PATCHED: {fname}  ->  main calls {func}({', '.join(n for _, n in args)})")
# Example output: