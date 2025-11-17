#!/usr/bin/env python3
import json
from pathlib import Path

FLOAT_FILE = "/home/jim/logic_bombs/results_float_klee/merged_klee_simple.json"
NORMAL_FILE = "/home/jim/logic_bombs/results_simple_klee/merged_klee_simple.json"
OUT_CONFLICTS = "klee_status_conflicts.json"
OUT_NO_TRIGGERED = "klee_no_triggered_both.json"

def load_json(path):
    return json.loads(Path(path).read_text())


def normalize_key(k: str) -> str:
    """
    Convert:
      *_float.bc → .bc
      *.bc → .c
    """
    k = k.replace("_float.bc", ".bc")
    k = k.replace(".bc", ".c")
    return k


def extract_statuses_normal(data):
    """
    For the non-float runs: contains both STP and Z3 variants.
    """
    out = {}
    for original_key, solvers in data.items():
        norm = normalize_key(original_key)
        out.setdefault(norm, {})
        if "stp" in solvers:
            out[norm]["klee_stp"] = solvers["stp"]["status"]
        if "z3" in solvers:
            out[norm]["klee_z3"] = solvers["z3"]["status"]
    return out


def extract_statuses_float(data):
    """
    FLOAT version: only Z3 is present.
    """
    out = {}
    for original_key, solvers in data.items():
        norm = normalize_key(original_key)
        out.setdefault(norm, {})
        if "z3" in solvers:
            out[norm]["klee_float_z3"] = solvers["z3"]["status"]
    return out


def main():
    # Load input JSONs
    normal = load_json(NORMAL_FILE)
    floatv = load_json(FLOAT_FILE)

    # Extract normalized maps
    normal_map = extract_statuses_normal(normal)
    float_map = extract_statuses_float(floatv)

    # All unique keys across both input files
    all_keys = set(normal_map.keys()) | set(float_map.keys())

    combined = {}
    for key in all_keys:
        combined[key] = {
            "klee_stp": normal_map.get(key, {}).get("klee_stp"),
            "klee_z3": normal_map.get(key, {}).get("klee_z3"),
            "klee_float_z3": float_map.get(key, {}).get("klee_float_z3"),
        }

    # ---- PART A: CONFLICTS ----
    conflicts = {}

    for name, statuses in combined.items():
        # Extract non-None statuses
        vals = [v for v in statuses.values() if v is not None]
        if len(vals) < 2:
            continue

        # If all statuses identical → skip
        if len(set(vals)) == 1:
            continue

        # Otherwise it's a conflict
        conflicts[name] = statuses

    Path(OUT_CONFLICTS).write_text(json.dumps(conflicts, indent=2))

    # ---- PART B: FILES WITH NO "triggered_both" ANYWHERE ----
    no_triggered_both = {}

    for name, statuses in combined.items():
        vals = [v for v in statuses.values() if v is not None]

        # If *none* of the statuses equals triggered_both → record it
        if all(v != "triggered_both" for v in vals):
            no_triggered_both[name] = statuses

    Path(OUT_NO_TRIGGERED).write_text(json.dumps(no_triggered_both, indent=2))

    # ---- SUMMARY PRINT ----
    print(f"Saved {len(conflicts)} conflict entries to {OUT_CONFLICTS}")
    print(f"Saved {len(no_triggered_both)} entries with NO 'triggered_both' to {OUT_NO_TRIGGERED}")


if __name__ == "__main__":
    main()