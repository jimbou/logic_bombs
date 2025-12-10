import json

# File paths
file1 = "/home/jim/logic_bombs/klee_need_NL.json"     # <-- change to your actual filename
file2 = "/home/jim/logic_bombs/klee_results_total.json"    # <-- change to your actual filename
output_file = "/home/jim/logic_bombs/logic_bombs_total_result.json"

# Load both JSON files
with open(file1, "r") as f:
    data1 = json.load(f)

with open(file2, "r") as f:
    data2 = json.load(f)

# Start with all entries from the first JSON
merged = dict(data1)

# Add only missing entries from the second JSON
for key, value in data2.items():
    if key not in merged:
        value["way"] = "klee"
        value["done"] = "claude, gpt, deepseek"
        merged[key] = value

# Save to the output JSON
with open(output_file, "w") as f:
    json.dump(merged, f, indent=2)

print(f"✅ Merged result saved to {output_file}")
