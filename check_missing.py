#!/usr/bin/env python3
import json
import sys

def load_names(path):
    """Load simple filenames from a file, one per line."""
    names = []
    with open(path, "r") as f:
        for line in f:
            line = line.strip()
            if line:
                names.append(line)
    return names

def main():
    if len(sys.argv) != 3:
        print("Usage: check_missing_simple.py merged.json names.txt")
        sys.exit(1)

    merged = json.load(open(sys.argv[1]))
    merged_keys = list(merged.keys())

    expected_names = load_names(sys.argv[2])

    missing = []

    for fname in expected_names:
        found = any(fname in key for key in merged_keys)
        if not found:
            missing.append(fname)

    print("=== Missing (filename not found as substring in merged JSON keys) ===")
    if missing:
        for m in missing:
            print(m)
    else:
        print("None ✓")

    print("\nSummary:")
    print(f"Total expected: {len(expected_names)}")
    print(f"Missing: {len(missing)}")


if __name__ == "__main__":
    main()
