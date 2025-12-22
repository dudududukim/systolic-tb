def to_signed_hex(val, bits):
    val = int(val)
    if val < 0:
        val = (1 << bits) + val
    hex_len = bits // 4 + (1 if bits % 4 != 0 else 0)
    fmt = f"{{:0{hex_len}x}}"
    return fmt.format(val & ((1 << bits) - 1))

def save_hex(matrix, filename, bits):
    with open(filename, 'w') as f:
        for val in matrix.flatten():
            f.write(to_signed_hex(val, bits) + "\n")

def matrix_to_markdown(matrix, name="Matrix", value_format="decimal"):
    """
    Convert matrix to Markdown formatted string
    value_format: 'decimal', 'hex8', or 'hex20'
    """
    lines = [f"\n### {name} ({matrix.shape[0]}x{matrix.shape[1]})\n"]
    
    for i, row in enumerate(matrix):
        if value_format == "decimal":
            row_str = " ".join([f"{val:5d}" for val in row])
        elif value_format == "hex8":
            row_str = " ".join([to_signed_hex(val, 8) for val in row])
        elif value_format == "hex20":
            row_str = " ".join([to_signed_hex(val, 20) for val in row])
        else:
            row_str = " ".join([str(val) for val in row])
        
        lines.append(f"    Row {i:2d}: {row_str}")
    
    lines.append("")
    return "\n".join(lines)

def save_metadata_with_matrices(filename, matrices_info, **kwargs):
    """
    Save metadata with 2D matrix visualization in Markdown format
    matrices_info: list of tuples (matrix, name, format)
    Example: [(A, "Matrix A", "hex8"), (B, "Matrix B", "hex8"), (C, "Result C", "hex20")]
    """
    with open(filename, 'w') as f:
        # Write title
        scenario_name = kwargs.get('scenario', 'Test Scenario')
        f.write(f"# {scenario_name}\n\n")
        
        # Write metadata
        f.write("## Test Information\n\n")
        for key, value in kwargs.items():
            if key != 'scenario':
                formatted_key = key.replace('_', ' ').title()
                f.write(f"- **{formatted_key}**: {value}\n")
        f.write("\n---\n")
        
        # Write matrix visualizations
        f.write("\n## Matrix Visualizations\n")
        for matrix, name, fmt in matrices_info:
            f.write(matrix_to_markdown(matrix, name, fmt))
            f.write("\n")
