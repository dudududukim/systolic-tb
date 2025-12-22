# Scenario 1: Identity Test

## Test Information

- **Description**: B is identity matrix, A is incremental (1 to 256)
- **Expected**: Result should equal Matrix A

---

## Matrix Visualizations

### Matrix A (Incremental) (16x16)

    Row  0: 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 10
    Row  1: 11 12 13 14 15 16 17 18 19 1a 1b 1c 1d 1e 1f 20
    Row  2: 21 22 23 24 25 26 27 28 29 2a 2b 2c 2d 2e 2f 30
    Row  3: 31 32 33 34 35 36 37 38 39 3a 3b 3c 3d 3e 3f 40
    Row  4: 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f 50
    Row  5: 51 52 53 54 55 56 57 58 59 5a 5b 5c 5d 5e 5f 60
    Row  6: 61 62 63 64 65 66 67 68 69 6a 6b 6c 6d 6e 6f 70
    Row  7: 71 72 73 74 75 76 77 78 79 7a 7b 7c 7d 7e 7f 80
    Row  8: 81 82 83 84 85 86 87 88 89 8a 8b 8c 8d 8e 8f 90
    Row  9: 91 92 93 94 95 96 97 98 99 9a 9b 9c 9d 9e 9f a0
    Row 10: a1 a2 a3 a4 a5 a6 a7 a8 a9 aa ab ac ad ae af b0
    Row 11: b1 b2 b3 b4 b5 b6 b7 b8 b9 ba bb bc bd be bf c0
    Row 12: c1 c2 c3 c4 c5 c6 c7 c8 c9 ca cb cc cd ce cf d0
    Row 13: d1 d2 d3 d4 d5 d6 d7 d8 d9 da db dc dd de df e0
    Row 14: e1 e2 e3 e4 e5 e6 e7 e8 e9 ea eb ec ed ee ef f0
    Row 15: f1 f2 f3 f4 f5 f6 f7 f8 f9 fa fb fc fd fe ff 00


### Matrix B (Identity) (16x16)

    Row  0: 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    Row  1: 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00
    Row  2: 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00
    Row  3: 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00 00
    Row  4: 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00
    Row  5: 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00 00
    Row  6: 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00 00
    Row  7: 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00 00
    Row  8: 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00
    Row  9: 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00
    Row 10: 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00 00
    Row 11: 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00 00
    Row 12: 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00 00
    Row 13: 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00
    Row 14: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01 00
    Row 15: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01


### Golden Result C (A @ B) (16x16)

    Row  0: 00001 00002 00003 00004 00005 00006 00007 00008 00009 0000a 0000b 0000c 0000d 0000e 0000f 00010
    Row  1: 00011 00012 00013 00014 00015 00016 00017 00018 00019 0001a 0001b 0001c 0001d 0001e 0001f 00020
    Row  2: 00021 00022 00023 00024 00025 00026 00027 00028 00029 0002a 0002b 0002c 0002d 0002e 0002f 00030
    Row  3: 00031 00032 00033 00034 00035 00036 00037 00038 00039 0003a 0003b 0003c 0003d 0003e 0003f 00040
    Row  4: 00041 00042 00043 00044 00045 00046 00047 00048 00049 0004a 0004b 0004c 0004d 0004e 0004f 00050
    Row  5: 00051 00052 00053 00054 00055 00056 00057 00058 00059 0005a 0005b 0005c 0005d 0005e 0005f 00060
    Row  6: 00061 00062 00063 00064 00065 00066 00067 00068 00069 0006a 0006b 0006c 0006d 0006e 0006f 00070
    Row  7: 00071 00072 00073 00074 00075 00076 00077 00078 00079 0007a 0007b 0007c 0007d 0007e 0007f fff80
    Row  8: fff81 fff82 fff83 fff84 fff85 fff86 fff87 fff88 fff89 fff8a fff8b fff8c fff8d fff8e fff8f fff90
    Row  9: fff91 fff92 fff93 fff94 fff95 fff96 fff97 fff98 fff99 fff9a fff9b fff9c fff9d fff9e fff9f fffa0
    Row 10: fffa1 fffa2 fffa3 fffa4 fffa5 fffa6 fffa7 fffa8 fffa9 fffaa fffab fffac fffad fffae fffaf fffb0
    Row 11: fffb1 fffb2 fffb3 fffb4 fffb5 fffb6 fffb7 fffb8 fffb9 fffba fffbb fffbc fffbd fffbe fffbf fffc0
    Row 12: fffc1 fffc2 fffc3 fffc4 fffc5 fffc6 fffc7 fffc8 fffc9 fffca fffcb fffcc fffcd fffce fffcf fffd0
    Row 13: fffd1 fffd2 fffd3 fffd4 fffd5 fffd6 fffd7 fffd8 fffd9 fffda fffdb fffdc fffdd fffde fffdf fffe0
    Row 14: fffe1 fffe2 fffe3 fffe4 fffe5 fffe6 fffe7 fffe8 fffe9 fffea fffeb fffec fffed fffee fffef ffff0
    Row 15: ffff1 ffff2 ffff3 ffff4 ffff5 ffff6 ffff7 ffff8 ffff9 ffffa ffffb ffffc ffffd ffffe fffff 00000

