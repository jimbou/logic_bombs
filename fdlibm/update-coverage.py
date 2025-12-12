import json
from pathlib import Path

LLVM_COV_JSON = "/home/jim/logic_bombs/fdlibm/fdlibm_coverable_lines.json"
KLEE_JSON = "/home/jim/logic_bombs/fdlibm/results_fdlibm_klee_simple_stp.json"
OUT_JSON = "/home/jim/logic_bombs/fdlibm/results_fdlibm_klee_simple_stp_updated.json"

with open(LLVM_COV_JSON) as f:
    llvm_cov = json.load(f)

with open(KLEE_JSON) as f:
    klee = json.load(f)

# Build map: e_acos.c -> set(lines)
llvm_map = {
    Path(path).name: set(data["coverable_lines"])
    for path, data in llvm_cov.items()
}

for key, runs in klee.items():
    # normalize key → source file
    base = key.replace("_float", "") + ".c"

    if base not in llvm_map:
        print(f"[WARN] No llvm-cov data for {base}")
        continue

    print(f"[INFO] Using llvm-cov data for {base}")
    new_coverable = sorted(llvm_map[base], key=int)
    new_coverable_set = set(new_coverable)

    for run in runs:
        covered_set = set(run.get("covered_lines", []))

        # intersect with llvm-cov executable lines
        new_covered = sorted(covered_set & new_coverable_set, key=int)

        run["coverable_lines"] = new_coverable
        run["covered_lines"] = new_covered

        run["covered"] = len(new_covered)
        run["total_coverable"] = len(new_coverable)

        if run["total_coverable"] > 0:
            run["coverage_percent"] = round(
                100.0 * run["covered"] / run["total_coverable"], 2
            )
        else:
            run["coverage_percent"] = 0.0

        # 🔒 invariant check (optional but recommended)
        assert run["covered"] == len(run["covered_lines"])

with open(OUT_JSON, "w") as f:
    json.dump(klee, f, indent=2)

print(f"Updated file written to: {OUT_JSON}")
