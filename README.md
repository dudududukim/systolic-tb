# TB for systolic array [SpinalSystolic](https://github.com/jooyeon111/SpinalSystolic)

ReuseB case TB

<img src="assets/SInt-reuseB-16x16.svg" width="500px"/>

## setting

```bash
uv sync
make all
```

## Files

```
.
├── pyproject.toml                   # Project configuration
├── Makefile                         # Build automation
├── README.md                        # This file
├── assets/
│   └── SInt-reuseB-16x16.svg       # Architecture diagram
├── src/
│   ├── rtl/
│   │   └── SInt_ReuseB_SystolicArray_16x16.v  # Verilog RTL
│   ├── scripts/
│   │   ├── generate_vectors.py     # Test vector generation
│   │   ├── hex_io.py               # Hex I/O utilities
│   │   └── matrix_gen.py           # Matrix generation functions
│   ├── tb/
│   │   ├── tb_systolic.v
├── vectors/                        # Generated test vectors
```
