import os
import re
import sys
from pathlib import Path

# -----------------------------
# CONFIG
# -----------------------------
BLACKLIST = {
    "s_matherr.c",
    "s_lib_version.c",
    "s_signgam.c",
    "k_rem_pio2.c",
}

OUTPUT_DIR = "fdlib_main"

# -----------------------------
# MAIN
# -----------------------------
def extract_includes_and_main(src_path: Path, out_path: Path):
    with open(src_path, "r", encoding="utf-8", errors="replace") as f:
        lines = f.readlines()

    includes = []
    main_block = []

    in_main = False
    brace_depth = 0

    for line in lines:
        stripped = line.strip()

        # Collect includes
        if stripped.startswith("#include"):
            includes.append(line)
            continue

        # Detect main start
        if not in_main and re.search(r"\bint\s+main\s*\(", stripped):
            in_main = True
            brace_depth += line.count("{") - line.count("}")
            main_block.append(line)
            continue

        # Collect main body
        if in_main:
            brace_depth += line.count("{") - line.count("}")
            main_block.append(line)
            if brace_depth == 0:
                break

    if not main_block:
        print(f"SKIP (no main found): {src_path.name}")
        return

    out_path.parent.mkdir(parents=True, exist_ok=True)

    with open(out_path, "w", encoding="utf-8") as f:
        for inc in includes:
            f.write(inc)
        f.write("\n")
        for ln in main_block:
            f.write(ln)

    print(f"CREATED: {out_path}")


def main():
    if len(sys.argv) != 2:
        print("Usage: python3 extract_mains.py <source_directory>")
        sys.exit(1)

    src_dir = Path(sys.argv[1])
    out_dir = Path(OUTPUT_DIR)
    out_dir.mkdir(exist_ok=True)

    for cfile in src_dir.glob("*.c"):
        if cfile.name in BLACKLIST:
            print(f"SKIP (blacklisted): {cfile.name}")
            continue

        out_name = cfile.stem + "_main.c"
        out_path = out_dir / out_name

        extract_includes_and_main(cfile, out_path)


if __name__ == "__main__":
    main()
