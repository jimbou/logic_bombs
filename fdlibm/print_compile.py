import os

BLACKLIST = {
    "s_lib_version.c",
    "s_signgam.c",
    "s_matherr.c",
    "k_rem_pio2.c",
}

SRC_DIR = "."          # run from fdlibm directory
CLANG = "clang"
OUT_DIR = "./bc"

os.makedirs(OUT_DIR, exist_ok=True)

for fname in sorted(os.listdir(SRC_DIR)):
    if not fname.endswith(".c"):
        continue

    if fname in BLACKLIST:
        print(f"# SKIP (blacklisted): {fname}")
        continue

    src = os.path.join(SRC_DIR, fname)
    out = os.path.join(OUT_DIR, fname.replace(".c", ".bc"))

    cmd = (
        f"{CLANG} "
        f"-emit-llvm -O0 -c -g "
        f"-I . "
        f"{src} "
        f"-o {out} "
        f"-lm"
    )

    print(cmd)
