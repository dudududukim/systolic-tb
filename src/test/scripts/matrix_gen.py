import numpy as np

def get_incremental(rows=16, cols=16):
    return np.arange(1, rows * cols + 1).reshape(rows, cols).astype(np.int8)

def get_identity(size=16):
    return np.eye(size, dtype=np.int8)

def get_constant(val, rows=16, cols=16):
    return np.full((rows, cols), val, dtype=np.int8)

def get_random(rows=16, cols=16, seed=None):
    if seed is not None:
        np.random.seed(seed)
    return np.random.randint(-128, 128, (rows, cols), dtype=np.int8)

def get_zero(rows=16, cols=16):
    return np.zeros((rows, cols), dtype=np.int8)

def get_partial_matrix(base_matrix, row_mask):
    """
    Create a partial matrix where only specific rows are updated.
    row_mask: list of row indices to keep from base_matrix, others set to 0
    """
    result = np.zeros_like(base_matrix)
    for row_idx in row_mask:
        if row_idx < base_matrix.shape[0]:
            result[row_idx, :] = base_matrix[row_idx, :]
    return result

def compute_golden(A, B):
    return np.matmul(A.astype(np.int32), B.astype(np.int32))

if __name__ == "__main__":
    A = get_incremental(4, 4)
    B = get_identity(4)
    result = compute_golden(A, B)
    print("Matrix A:")
    print(A)
    print("\nMatrix B:")
    print(B)
    print("\nGolden result (A @ B):")
    print(result)
