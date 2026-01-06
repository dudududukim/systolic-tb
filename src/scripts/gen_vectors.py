import numpy as np
import os

def save_hex(filename, matrix):
    os.makedirs(os.path.dirname(filename), exist_ok=True)
    with open(filename, 'w') as f:
        for val in matrix.flatten():
            f.write(f"{hex(int(val) & 0xFF)[2:].zfill(2)}\n")

def save_hex_20(filename, matrix):
    os.makedirs(os.path.dirname(filename), exist_ok=True)
    with open(filename, 'w') as f:
        for val in matrix.flatten():
            f.write(f"{hex(int(val) & 0xFFFFF)[2:].zfill(5)}\n")

def save_hex_26(filename, matrix):
    os.makedirs(os.path.dirname(filename), exist_ok=True)
    with open(filename, 'w') as f:
        for val in matrix.flatten():
            f.write(f"{hex(int(val) & 0x3FFFFFF)[2:].zfill(7)}\n")

all_a = []
all_b = []
all_c = []

a = np.eye(16, dtype=np.int8)
b = np.arange(1, 257).reshape(16, 16).astype(np.int8)
c = np.matmul(a.astype(np.int32), b.astype(np.int32))
all_a.append(a)
all_b.append(b)
all_c.append(c)

corners = [0x00, 0x7F, -0x80]
for av in corners:
    for bv in corners:
        a = np.full((16, 16), av, dtype=np.int8)
        b = np.full((16, 16), bv, dtype=np.int8)
        c = np.matmul(a.astype(np.int32), b.astype(np.int32))
        all_a.append(a)
        all_b.append(b)
        all_c.append(c)

np.random.seed(42)
for i in range(10):
    a = np.random.randint(-128, 128, size=(16, 16), dtype=np.int8)
    b = np.random.randint(-128, 128, size=(16, 16), dtype=np.int8)
    c = np.matmul(a.astype(np.int32), b.astype(np.int32))
    all_a.append(a)
    all_b.append(b)
    all_c.append(c)

combined_a = np.concatenate(all_a)
combined_b = np.concatenate(all_b)
combined_c = np.concatenate(all_c)

save_hex("vectors/in_a.hex", combined_a)
save_hex("vectors/in_b.hex", combined_b)
save_hex_26("vectors/ref_c.hex", combined_c)

def matrix_to_markdown(matrix, max_rows=4, max_cols=4):
    rows, cols = matrix.shape
    show_rows = min(rows, max_rows)
    show_cols = min(cols, max_cols)
    
    header = "| " + " | ".join([f"Col{j}" for j in range(show_cols)])
    if show_cols < cols:
        header += " | ... |"
    separator = "| " + " | ".join(["---" for _ in range(show_cols)])
    if show_cols < cols:
        separator += " | --- |"
    
    lines = [header, separator]
    for i in range(show_rows):
        row_str = "| " + " | ".join(f"{int(matrix[i, j]):4d}" for j in range(show_cols))
        if show_cols < cols:
            row_str += " | ... |"
        lines.append(row_str)
    
    if show_rows < rows:
        lines.append("| " + " | ".join([" ... " for _ in range(show_cols)]) + " |")
    
    return "\n".join(lines)

readme = "# Identity x Incremental\n\n"
readme += "## Case 1\n\n"
readme += "**A (Identity):**\n\n"
readme += matrix_to_markdown(all_a[0]) + "\n\n"
readme += "**B (1..256):**\n\n"
readme += matrix_to_markdown(all_b[0]) + "\n\n"
readme += "**C (Expected = B):**\n\n"
readme += matrix_to_markdown(all_c[0]) + "\n\n"

readme += "# Corner Cases\n\n"
case_idx = 1
for av in corners:
    for bv in corners:
        case_num = case_idx + 1
        readme += f"## Case {case_num}\n\n"
        readme += f"**A (all {av}):**\n\n"
        readme += matrix_to_markdown(all_a[case_idx]) + "\n\n"
        readme += f"**B (all {bv}):**\n\n"
        readme += matrix_to_markdown(all_b[case_idx]) + "\n\n"
        readme += f"**C (Expected, all {int(all_c[case_idx][0,0])}):**\n\n"
        readme += matrix_to_markdown(all_c[case_idx]) + "\n\n"
        case_idx += 1

readme += "# Random\n\n"
for i in range(10):
    case_num = 11 + i
    readme += f"## Case {case_num}\n\n"
    readme += "**A:**\n\n"
    readme += matrix_to_markdown(all_a[10 + i]) + "\n\n"
    readme += "**B:**\n\n"
    readme += matrix_to_markdown(all_b[10 + i]) + "\n\n"
    readme += "**C:**\n\n"
    readme += matrix_to_markdown(all_c[10 + i]) + "\n\n"

os.makedirs("vectors", exist_ok=True)
with open("vectors/README.md", 'w') as f:
    f.write(readme)

print("Test vectors generated")
