import os

DIR = "/home/jim/logic_bombs/fdlibm/fdlibm_coverabel"   # change this

for name in os.listdir(DIR):
    if name.endswith(".c"):
        path = os.path.join(DIR, name)
        with open(path) as f:
            lines = sum(1 for _ in f)
        if lines > 400:
            print(f"{name}: {lines}")
