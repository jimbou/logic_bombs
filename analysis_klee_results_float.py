#!/usr/bin/env python3
import json
import sys
from pathlib import Path
from collections import Counter

PREFIX = "/home/klee/logic_bombs"

def load_json(path):
    with open(path, "r") as f:
        return json.load(f)

def extract_name(full_path: str) -> str:
    if not full_path.startswith(PREFIX):
        raise ValueError(f"Path does not start with expected prefix '{PREFIX}': {full_path}")
    # remove prefix
    return full_path[len(PREFIX):].lstrip("/")

def main():
    if len(sys.argv) < 3:
        print("Usage: merge_klee_jsons.py out_dir file1.json file2.json ...")
        sys.exit(1)

    out_dir = Path(sys.argv[1])
    out_dir.mkdir(parents=True, exist_ok=True)

    input_paths = sys.argv[2:]

    merged = {}
    z3_stats = Counter()
    seen_names = set()

    # ------------------------------
    # Load & merge
    # ------------------------------
    for p in input_paths:
        data = load_json(p)
        for full_key, entry in data.items():
            name = extract_name(full_key)

            # check duplicate entries
            if name in merged:
                raise RuntimeError(f"ERROR: Duplicate name encountered: {name}")

            # ensure Z3 exists
            if "z3" not in entry:
                raise RuntimeError(f"ERROR: Missing Z3 result in: {name}")

            merged[name] = {
                "z3": entry["z3"]
            }
            seen_names.add(name)

            # accumulate stats
            z3_stats[entry["z3"]["status"]] += 1

    # ------------------------------
    # Output final merged files
    # ------------------------------
    merged_out = out_dir / "merged_klee_simple.json"
    stats_out = out_dir / "results_merged_klee_simple.json"

    with merged_out.open("w") as f:
        json.dump(merged, f, indent=2)

    with stats_out.open("w") as f:
        json.dump({"z3": z3_stats}, f, indent=2)

    print(f"✓ Merged output written to: {merged_out}")
    print(f"✓ Statistics written to:    {stats_out}")

    print("\n=== Summary ===")
    print("Z3 status counts:", dict(z3_stats))


if __name__ == "__main__":
    main()
