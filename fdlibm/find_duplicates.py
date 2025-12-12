import json
from collections import defaultdict
from pathlib import Path
from datetime import datetime


def parse_ts(ts: str):
    return datetime.fromisoformat(ts.replace("Z", "+00:00"))


def dedup_within_file(in_path: str, out_path: str):
    with open(in_path, "r", encoding="utf-8") as f:
        data = json.load(f)

    if not isinstance(data, dict):
        raise ValueError("Expected top-level JSON object")

    merged = {}
    total_dups = 0

    for func, runs in data.items():
        if not isinstance(runs, list):
            raise ValueError(f"Value for {func} must be a list")

        buckets = defaultdict(list)

        for r in runs:
            key = (
                r.get("solver"),
                r.get("source"),
                r.get("bc"),
            )
            buckets[key].append(r)

        deduped_runs = []

        for key, items in buckets.items():
            if len(items) > 1:
                total_dups += len(items) - 1
                print(f"\nDuplicate runs for {func}:")
                print(f"  solver={key[0]}")
                print(f"  source={key[1]}")
                print(f"  bc={key[2]}")
                print(f"  occurrences={len(items)}")

                # keep latest by timestamp
                items.sort(key=lambda r: parse_ts(r["timestamp"]))
                deduped_runs.append(items[-1])
            else:
                deduped_runs.append(items[0])

        merged[func] = deduped_runs

    Path(out_path).parent.mkdir(parents=True, exist_ok=True)
    with open(out_path, "w", encoding="utf-8") as f:
        json.dump(merged, f, indent=2)

    print(f"\nTotal duplicate runs removed: {total_dups}")
    print(f"Deduplicated file written to: {out_path}")


if __name__ == "__main__":
    import sys

    if len(sys.argv) != 3:
        print("Usage: python dedup_runs.py input.json output.json")
        sys.exit(1)

    dedup_within_file(sys.argv[1], sys.argv[2])
