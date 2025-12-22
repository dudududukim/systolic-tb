import os
from matrix_gen import *
from hex_io import *

def main():
    script_dir = os.path.dirname(os.path.abspath(__file__))
    base_vectors_dir = os.path.join(script_dir, "..", "vectors")

    def get_scenario_dir(name):
        path = os.path.join(base_vectors_dir, name)
        os.makedirs(path, exist_ok=True)
        return path

    # Scenario 1: Identity Test
    print("Generating Scenario 1: Identity Test...")
    path = get_scenario_dir("scenario1_identity_test")
    A_id = get_incremental()
    B_id = get_identity()
    C_id = compute_golden(A_id, B_id)
    save_hex(A_id, os.path.join(path, "a.hex"), 8)
    save_hex(B_id, os.path.join(path, "b.hex"), 8)
    save_hex(C_id, os.path.join(path, "c_golden.hex"), 20)
    save_metadata_with_matrices(
        os.path.join(path, "README.md"),
        [(A_id, "Matrix A (Incremental)", "hex8"),
         (B_id, "Matrix B (Identity)", "hex8"),
         (C_id, "Golden Result C (A @ B)", "hex20")],
        scenario="Scenario 1: Identity Test",
        description="B is identity matrix, A is incremental (1 to 256)",
        expected="Result should equal Matrix A"
    )

    # Scenario 2: Stationary & Back-to-Back Streaming Test
    print("Generating Scenario 2: Stationary & Back-to-Back Streaming Test...")
    path = get_scenario_dir("scenario2_streaming_test")
    B_fixed = get_random(seed=42)
    save_hex(B_fixed, os.path.join(path, "b_fixed.hex"), 8)
    
    matrices_vis = [(B_fixed, "Matrix B (Fixed for all tests)", "hex8")]
    
    for i in range(5):
        A_stream = get_random(seed=100+i)
        C_stream = compute_golden(A_stream, B_fixed)
        save_hex(A_stream, os.path.join(path, f"a_stream_{i}.hex"), 8)
        save_hex(C_stream, os.path.join(path, f"c_golden_{i}.hex"), 20)
        matrices_vis.append((A_stream, f"Matrix A_{i} (Stream)", "hex8"))
        matrices_vis.append((C_stream, f"Golden Result C_{i}", "hex20"))
    
    save_metadata_with_matrices(
        os.path.join(path, "README.md"),
        matrices_vis,
        scenario="Scenario 2: Back-to-Back Streaming Test",
        description="B matrix remains fixed, 5 A matrices streamed immediately",
        timing="No idle cycles between computations"
    )

    # Scenario 3: Corner Case & Precision Test
    print("Generating Scenario 3: Corner Case & Precision Test...")
    path = get_scenario_dir("scenario3_corner_case_test")
    
    # Define test values
    test_cases = [
        ("zero", 0, "0x00"),
        ("max", 0x7F, "0x7F (127)"),
        ("min", -128, "0x80 (-128)")
    ]
    
    matrices_vis = []
    test_info = {}
    test_idx = 1
    
    # Generate all 9 combinations
    for a_name, a_val, a_desc in test_cases:
        for b_name, b_val, b_desc in test_cases:
            A = get_constant(a_val)
            B = get_constant(b_val)
            C = compute_golden(A, B)
            
            # Save hex files
            save_hex(A, os.path.join(path, f"{a_name}_{b_name}_a.hex"), 8)
            save_hex(B, os.path.join(path, f"{a_name}_{b_name}_b.hex"), 8)
            save_hex(C, os.path.join(path, f"{a_name}_{b_name}_c_golden.hex"), 20)
            
            # Calculate expected result
            expected_val = a_val * b_val * 16
            
            # Add to visualization (only show diagonal and interesting cases)
            if a_name == b_name or (a_name == "max" and b_name == "min") or (a_name == "min" and b_name == "max"):
                matrices_vis.append((A, f"Matrix A_{a_name.capitalize()} ({a_desc})", "hex8"))
                matrices_vis.append((B, f"Matrix B_{b_name.capitalize()} ({b_desc})", "hex8"))
                matrices_vis.append((C, f"Result C ({a_name}×{b_name})", "hex20"))
            
            # Add to test info
            test_info[f"test_{test_idx}"] = f"{a_name} × {b_name} → {expected_val} (0x{expected_val & 0xFFFFF:05x})"
            test_idx += 1
    
    save_metadata_with_matrices(
        os.path.join(path, "README.md"),
        matrices_vis,
        scenario="Scenario 3: Corner Case & Precision Test (All Combinations)",
        description="Testing all 9 combinations of zero/max/min values",
        **test_info
    )


    # Scenario 4: Weight Full Re-load Test
    print("Generating Scenario 4: Weight Full Re-load Test...")
    path = get_scenario_dir("scenario4_weight_reload_test")
    A_test = get_random(seed=200)
    save_hex(A_test, os.path.join(path, "a.hex"), 8)
    
    matrices_vis = [(A_test, "Matrix A (Same for all tests)", "hex8")]
    
    for i in range(3):
        B_reload = get_random(seed=300+i)
        C_reload = compute_golden(A_test, B_reload)
        save_hex(B_reload, os.path.join(path, f"b_reload_{i}.hex"), 8)
        save_hex(C_reload, os.path.join(path, f"c_golden_{i}.hex"), 20)
        matrices_vis.append((B_reload, f"Matrix B_Reload_{i}", "hex8"))
        matrices_vis.append((C_reload, f"Golden Result C_{i}", "hex20"))
    
    save_metadata_with_matrices(
        os.path.join(path, "README.md"),
        matrices_vis,
        scenario="Scenario 4: Weight Full Re-load Test",
        description="B matrix completely reloaded immediately after each computation",
        iterations="3",
        timing="No delay between computation end and next B load"
    )

    # Scenario 5: Partial Weight Re-load Test
    print("Generating Scenario 5: Partial Weight Re-load Test...")
    path = get_scenario_dir("scenario5_partial_reload_test")
    
    A_test = get_random(seed=400)
    B_base = get_random(seed=500)
    C_base = compute_golden(A_test, B_base)
    
    save_hex(A_test, os.path.join(path, "a.hex"), 8)
    save_hex(B_base, os.path.join(path, "b_initial.hex"), 8)
    save_hex(C_base, os.path.join(path, "c_golden_0.hex"), 20)
    
    matrices_vis = [
        (A_test, "Matrix A (Same for all tests)", "hex8"),
        (B_base, "Matrix B_Initial (Baseline)", "hex8"),
        (C_base, "Golden Result C_0", "hex20")
    ]
    
    row_masks = [[0, 1, 2, 3], [8, 9, 10, 11], [4, 5, 12, 13]]
    
    for i, mask in enumerate(row_masks):
        B_update = get_random(seed=600+i)
        B_partial = B_base.copy()
        for row_idx in mask:
            B_partial[row_idx, :] = B_update[row_idx, :]
        C_partial = compute_golden(A_test, B_partial)
        
        save_hex(B_partial, os.path.join(path, f"b_partial_{i+1}.hex"), 8)
        save_hex(C_partial, os.path.join(path, f"c_golden_{i+1}.hex"), 20)
        matrices_vis.append((B_partial, f"Matrix B_Partial_{i+1} (Rows {mask} updated)", "hex8"))
        matrices_vis.append((C_partial, f"Golden Result C_{i+1}", "hex20"))
    
    save_metadata_with_matrices(
        os.path.join(path, "README.md"),
        matrices_vis,
        scenario="Scenario 5: Partial Weight Re-load Test",
        description="Only specific rows updated using CaptureEnable",
        update_1=f"Rows {row_masks[0]} updated",
        update_2=f"Rows {row_masks[1]} updated",
        update_3=f"Rows {row_masks[2]} updated"
    )

    # Scenario 6: Pipeline Fill & Drain Test
    print("Generating Scenario 6: Pipeline Fill & Drain Test...")
    path = get_scenario_dir("scenario6_pipeline_test")
    
    matrices_vis = []
    for i in range(10):
        A_pipe = get_random(seed=700+i)
        B_pipe = get_random(seed=800+i)
        C_pipe = compute_golden(A_pipe, B_pipe)
        save_hex(A_pipe, os.path.join(path, f"a_{i}.hex"), 8)
        save_hex(B_pipe, os.path.join(path, f"b_{i}.hex"), 8)
        save_hex(C_pipe, os.path.join(path, f"c_golden_{i}.hex"), 20)
        
        # Only show first 3 and last matrix to avoid too long file
        if i < 3 or i == 9:
            matrices_vis.append((A_pipe, f"Matrix A_{i}", "hex8"))
            matrices_vis.append((B_pipe, f"Matrix B_{i}", "hex8"))
            matrices_vis.append((C_pipe, f"Golden Result C_{i}", "hex20"))
    
    save_metadata_with_matrices(
        os.path.join(path, "README.md"),
        matrices_vis,
        scenario="Scenario 6: Pipeline Fill & Drain Test",
        description="10 matrix pairs injected continuously to verify full pipeline cycle",
        total_matrices="10 pairs",
        purpose="Verify pipeline fills correctly and drains all results",
        note="Only showing matrices 0-2 and 9 in visualization (all 10 generated)"
    )

    print(f"\nAll test vectors generated in: {base_vectors_dir}")

if __name__ == "__main__":
    main()
