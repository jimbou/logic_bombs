#!/usr/bin/env python3
"""
rewrite_bash_helper.py

Usage:
  python3 rewrite_bash_helper.py bash_helper.sh

Writes: bash_helper_fixed.sh

Behavior:
- Looks for lines like:
  cd src/some_dir && mkdir -p klee && clang ... -I include <annotated.c> -o klee/<annotated.bc>
- Rewrites them into:
  cd /abs/path/to/repo/src/some_dir && clang ... -I /abs/path/to/repo/include -I /abs/path/to/repo/lib <annotated.c> -o <annotated.bc>

- If the repo root cannot be found (i.e. include/ and lib/ not found above src dir),
  it will fallback to using the current working directory as repo root.
"""

import os, sys, re, shlex

if len(sys.argv) < 2:
    print("Usage: python3 rewrite_bash_helper.py bash_helper.sh")
    sys.exit(1)

inp = sys.argv[1]
if not os.path.exists(inp):
    print("Input file not found:", inp); sys.exit(1)

OUT = os.path.splitext(inp)[0] + '_fixed.sh'

# regex to capture lines starting with "cd <path> && ... clang ... "
CD_RE = re.compile(r'^\s*cd\s+([^&]+)\s*&&\s*(.*)$')
ANNOT_RE = re.compile(r'([A-Za-z0-9_\-\+\.\[\]]+_annotated\.c)\b')
OUT_KLEE_RE = re.compile(r'-o\s+klee/([^\s]+\.bc)\b')

def find_repo_root(start_dir):
    cur = os.path.abspath(start_dir)
    while True:
        inc = os.path.join(cur, 'include')
        lib = os.path.join(cur, 'lib')
        if os.path.isdir(inc) and os.path.isdir(lib):
            return cur
        parent = os.path.dirname(cur)
        if parent == cur:
            return None
        cur = parent

def rewrite_line(src_dir, rest):
    # normalize spaces
    rest_n = rest.replace('\\', ' ')
    rest_n = re.sub(r'\s+', ' ', rest_n).strip()

    # find annotated filename
    m_annot = ANNOT_RE.search(rest_n)
    if not m_annot:
        return None  # can't transform

    annotated = m_annot.group(1)               # e.g. heap_bo_l1_klee_annotated.c
    base = os.path.splitext(annotated)[0]      # e.g. heap_bo_l1_klee_annotated
    new_out_name = base + '.bc'                # e.g. heap_bo_l1_klee_annotated.bc

    # compute repo root (walk up until include/ and lib/ exist)
    repo_root = find_repo_root(src_dir)
    if repo_root is None:
        repo_root = os.getcwd()

    # build include absolute paths
    include_abs = os.path.join(repo_root, 'include')
    lib_abs = os.path.join(repo_root, 'lib')

    # gather clang-like flags from original (preserve -emit-llvm -c -g etc if present)
    toks = shlex.split(rest_n)
    # keep recognized flags (we'll reuse some of them); ignore 'mkdir -p klee' tokens if present
    keep_flags = []
    skip_next = False
    for i,t in enumerate(toks):
        if skip_next:
            skip_next = False
            continue
        if t == 'mkdir' and i+2 < len(toks) and toks[i+1] == '-p':
            # skip the mkdir -p klee part
            skip_next = True  # skip the '-p' token's argument consumed below
            continue
        if t == '-I' and i+1 < len(toks) and toks[i+1] == 'include':
            # will replace include with absolute; skip both
            skip_next = True
            continue
        if t == '-o' and i+1 < len(toks) and toks[i+1].startswith('klee/'):
            # skip original -o klee/..., we'll replace by -o <name>.bc
            skip_next = True
            continue
        # collect tokens except any 'klee' mkdir or -I include or -o klee/...
        # Also drop stray backslashes / '&&' tokens etc.
        if t == '&&':
            continue
        keep_flags.append(t)

    # ensure we have necessary flags; keep_flags should contain 'clang', '-emit-llvm', '-c', '-g', etc.
    # Now build the new command:
    # cd <abs_src_dir> && clang ... -I <repo>/include -I <repo>/lib <annotated> -o <new_out_name>
    abs_src = os.path.abspath(src_dir)
    # Remove any leading 'cd <dir> &&' left decorations in keep_flags
    # ensure clang is first token in keep_flags; if not, prepend 'clang'
    if len(keep_flags) == 0 or keep_flags[0] != 'clang':
        # try to find clang in original rest; if not present, add it
        if 'clang' in toks:
            # start from clang index
            idx = toks.index('clang')
            keep_flags = toks[idx:idx+5]  # take a few tokens heuristically (may include -emit-llvm -c -g)
            # but normalize to at least include clang -emit-llvm -c -g if missing
        else:
            # default
            keep_flags = ['clang', '-emit-llvm', '-c', '-g']

    # Remove any occurrences of the annotated filename in keep_flags (we'll add the right one later)
    keep_flags = [k for k in keep_flags if not k.endswith('.c') and not k.startswith('-o')]

    # Construct final command
    parts = []
    parts.append(f'cd {shlex.quote(abs_src)} &&')
    # add clang + kept flags
    parts.extend(shlex.quote(p) for p in keep_flags)
    # absolute include flags
    parts.append('-I')
    parts.append(shlex.quote(include_abs))
    parts.append('-I')
    parts.append(shlex.quote(lib_abs))
    # annotated file (use basename since we cd into src dir)
    parts.append(shlex.quote(annotated))
    # output (no klee/ prefix)
    parts.append('-o')
    parts.append(shlex.quote(new_out_name))

    new_line = ' '.join(parts)
    return new_line

# read input and produce output
with open(inp, 'r', encoding='utf-8') as f:
    lines = f.readlines()

out_lines = []
for ln in lines:
    ln_strip = ln.rstrip('\n')
    m = CD_RE.match(ln_strip)
    if not m:
        out_lines.append(ln_strip)
        continue
    src_dir_token = m.group(1).strip()
    rest_token = m.group(2).strip()
    # rewrite if possible
    rewritten = rewrite_line(src_dir_token, rest_token)
    if rewritten:
        out_lines.append(rewritten)
    else:
        # keep original if no annotated file found to transform
        out_lines.append(ln_strip)

# write fixed output
with open(OUT, 'w', encoding='utf-8') as f:
    f.write('#!/usr/bin/env bash\nset -euo pipefail\n\n')
    for L in out_lines:
        f.write(L.rstrip() + '\n')

os.chmod(OUT, 0o755)
print(f"Wrote {OUT}. Inspect and run it (chmod +x {OUT} && ./{OUT})")
