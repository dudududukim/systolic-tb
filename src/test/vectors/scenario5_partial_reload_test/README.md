# Scenario 5: Partial Weight Re-load Test

## Test Information

- **Description**: Only specific rows updated using CaptureEnable
- **Update 1**: Rows [0, 1, 2, 3] updated
- **Update 2**: Rows [8, 9, 10, 11] updated
- **Update 3**: Rows [4, 5, 12, 13] updated

---

## Matrix Visualizations

### Matrix A (Same for all tests) (16x16)

    Row  0: dc 51 b1 2b 4f 8d 29 4a be 89 5b b9 39 33 a6 b0
    Row  1: 0c 80 7b 5b 73 93 09 3c 17 c1 d7 ca 86 ed 37 56
    Row  2: 75 f8 71 a5 08 f0 e6 57 eb 1a 95 83 3f b4 01 bc
    Row  3: 46 88 32 46 9b de 06 6e e6 49 1c e7 9f 69 b3 1e
    Row  4: 22 b8 a0 5b 81 f2 e0 c7 27 58 6d 09 8e 3b 40 6a
    Row  5: d1 84 fb 02 c5 ed 93 bf 32 0a b1 e0 97 d2 c8 ac
    Row  6: 95 7f 8d ac 4e d6 05 e2 84 cf 9c a7 e3 fb db 26
    Row  7: 31 d4 14 6c f2 75 54 fc 0e 13 91 89 6c 08 34 45
    Row  8: b4 93 3f 58 b1 9f d7 5f 43 c8 cf 23 49 ed 45 b0
    Row  9: 21 83 57 ff 54 4b 90 2b 5a 7e b1 78 16 65 18 24
    Row 10: 9d 39 5e 27 7d 28 3c 63 eb 8f f0 30 6c 29 ba 33
    Row 11: 2c d3 cf 39 4c 13 c3 fe 01 bf bd ee a5 58 dd 00
    Row 12: 70 84 84 b1 fa 60 b0 bb f3 c0 b6 4b f4 d9 75 cf
    Row 13: e7 b1 00 77 85 12 f4 85 a5 ba b5 9a 24 97 7f 78
    Row 14: c3 a7 d9 d3 4a 83 74 c4 d8 87 41 a3 ae 53 c2 85
    Row 15: c0 83 76 53 a1 b6 63 5f d4 af e5 71 54 5f f7 b7


### Matrix B_Initial (Baseline) (16x16)

    Row  0: da 7b 14 31 37 c3 a2 93 c1 2f 4c 8f 91 21 ce 05
    Row  1: 4e 8e 27 2a 3d cb 1c 8b 9f d1 a8 0f c8 42 32 7a
    Row  2: c7 4f 49 95 7f cd 4c ef cd 13 f5 e4 6d d2 66 b5
    Row  3: 91 f9 c0 ff 11 15 10 dd 55 38 87 d5 a9 4f 17 a6
    Row  4: a2 fe 23 d7 2a 40 fa ca 92 e0 1a dd 13 b2 3c 31
    Row  5: 0d 1c 42 59 e6 a0 63 89 e8 3a 50 f2 37 03 c7 65
    Row  6: 2f cf 84 d1 b8 15 20 4a 0a 0b 1a dc ae 06 ae 8e
    Row  7: 0d 0b e2 f3 ed 80 51 cb 82 82 cf 6a bb ed f6 94
    Row  8: fd 58 3f f5 3c 64 70 3b ed 5b 8f c6 6a f6 1f 8f
    Row  9: 0e 86 61 6a bc fd 1c c4 cb 67 23 f5 3e b7 89 5a
    Row 10: db d4 ea 0b 1d 5e c0 63 1c 95 51 30 49 34 85 fd
    Row 11: 57 4d 31 54 fb 0e 53 75 59 73 4a 22 e2 af 99 77
    Row 12: 72 ea da 26 8f 0e 25 6f 0f 01 a9 74 f3 92 ee d9
    Row 13: 1d 07 68 11 45 df 26 7b 39 10 1c 22 25 9d 6a 1c
    Row 14: 50 16 d5 89 2b ae ed 38 e1 45 46 3f 76 3c 7f c6
    Row 15: e1 df 2a 5b 43 85 1c 46 46 27 c3 fc e0 85 08 b2


### Golden Result C_0 (16x16)

    Row  0: fe71d f9b51 f7461 fbec1 fdb37 06d44 fa59b 02214 fe0b9 ef92b fa46b 051d2 f68d5 04059 01977 fd916
    Row  1: f2777 0769c fd83b f3f99 0a11b fe785 febd8 0026c fe870 ff47e fd0e5 fa54e 01142 ff722 0b404 efdd1
    Row  2: ff908 04295 000aa fa971 ff59c f9921 fe41e f39fc f28cf fc3d7 fedc0 fe903 ff49c 00164 04859 fbb98
    Row  3: f8e5e 02de6 0228e 02195 02524 fb640 ffd3b 00445 0329d ff824 018ce fd879 fc9b7 fe777 fc357 f8adb
    Row  4: fcad4 fea1c 01999 06008 02d09 00238 fbdd6 068be 0ac92 07405 037b0 fd24e 02871 03814 fa662 fdc9a
    Row  5: fa409 04da6 0203e fdc87 ff509 0651b fdf7d fc520 038f3 035d9 ffdca faa3c 04c63 03eed 0152c 00eaa
    Row  6: 02690 f48d1 fd553 fffdf fd013 fe116 fb55b fa43e fcc24 f7342 fcf13 023fe f9b18 005e8 05df5 0806e
    Row  7: ff3b6 00891 fcf12 00172 fcce4 f84df 03e8c fc334 ffefb 06b07 fa70d fd6a0 fda2b fe349 03d2c f6206
    Row  8: 01800 06d1d fa540 f6ee7 fe5d2 022a2 0461b 0898d 03699 00c5c f8659 0622b 02dff 00fc6 06567 f2917
    Row  9: fe714 09415 0e3ea 04c59 03e2b fc139 09ec2 0203e feff1 0cbba 0329c ff6c7 09449 f1be9 02435 02de8
    Row 10: 003c7 ffa3b ff412 fdf67 01512 fd458 09ac7 03af8 fe2ea f9d5d f8801 05cd5 fc8bf f78f4 05357 fbf99
    Row 11: f8e38 05237 02e7f fffe5 04a52 ff799 fe3ff fbbb5 0115f 0082c 006ca faf80 fcd37 003b3 060a8 01853
    Row 12: 03dea 0ad77 ffc87 01912 fce5c fe2af fad8f fedbd 0258d 07db4 0bfc0 fe11a 01545 025c5 fe9b4 0719c
    Row 13: fe061 ff9a0 f6cac fc06c fe583 fa06a fa4ee 00f9f 0a094 05687 fc2be fecc5 fede2 06178 05f4c f678a
    Row 14: fac1f ff11a f7b96 f4af9 ff3ec 0d247 f7232 07abe 02de5 f52eb 0473f fdbba ff4c8 047df 0306f fb65d
    Row 15: 037dd 066f6 f97cb f8d5e fcf66 fff62 0644b 0eec4 0879a ffd41 fe003 06d87 fd087 fbafe 01bdd f418d


### Matrix B_Partial_1 (Rows [0, 1, 2, 3] updated) (16x16)

    Row  0: 44 b8 c9 88 4b 2c 4b a2 8b dc 5b 0a db 54 d5 1f
    Row  1: 3a a3 0c 4d f3 93 b2 42 af 6d 9e 8e 4a 49 3e 4f
    Row  2: 34 9a 5c e1 1a 61 fb 1d a1 ab 82 b6 c5 9f dc 0e
    Row  3: a5 34 b3 5a f3 74 dc 1f 24 30 da 9e 0f b7 96 f8
    Row  4: a2 fe 23 d7 2a 40 fa ca 92 e0 1a dd 13 b2 3c 31
    Row  5: 0d 1c 42 59 e6 a0 63 89 e8 3a 50 f2 37 03 c7 65
    Row  6: 2f cf 84 d1 b8 15 20 4a 0a 0b 1a dc ae 06 ae 8e
    Row  7: 0d 0b e2 f3 ed 80 51 cb 82 82 cf 6a bb ed f6 94
    Row  8: fd 58 3f f5 3c 64 70 3b ed 5b 8f c6 6a f6 1f 8f
    Row  9: 0e 86 61 6a bc fd 1c c4 cb 67 23 f5 3e b7 89 5a
    Row 10: db d4 ea 0b 1d 5e c0 63 1c 95 51 30 49 34 85 fd
    Row 11: 57 4d 31 54 fb 0e 53 75 59 73 4a 22 e2 af 99 77
    Row 12: 72 ea da 26 8f 0e 25 6f 0f 01 a9 74 f3 92 ee d9
    Row 13: 1d 07 68 11 45 df 26 7b 39 10 1c 22 25 9d 6a 1c
    Row 14: 50 16 d5 89 2b ae ed 38 e1 45 46 3f 76 3c 7f c6
    Row 15: e1 df 2a 5b 43 85 1c 46 46 27 c3 fc e0 85 08 b2


### Golden Result C_1 (16x16)

    Row  0: fb39a fff26 f6e56 fd96d fdb1e 02f11 f7c90 056c3 ff2ba f54f3 fd093 01caa fcc89 03199 03132 fba22
    Row  1: f71ea 020fa fe6b9 f6b0a 08bda 07152 fef5d fd530 fb759 f6dca fbcd9 fc1eb fa744 fa77d 03e2f f5c72
    Row  2: 0531b f83f0 fec3d f5c4f fdf25 fea6d 02366 f37f7 f0da0 f6df8 fa4a7 02481 fa3f4 03800 03c1d fd2f5
    Row  3: fcf7c fdb84 01adc 00ab1 0315e 02418 03f17 fcd9f 0065b f81d2 021d4 01e8d f9c17 fbe9b f8167 fcded
    Row  4: fbcc4 02327 00b7c 04397 05fb7 00a2f ffdfc 03d7a 09ffb 06147 0851f 0049f 070f7 019fa fa9d5 fe7ec
    Row  5: f984a 06b46 03a9e fe9d4 016f2 06ace ff4fb f6959 03b97 ffb7e 002c6 fd29b 003e9 031fb 00fc3 01d9f
    Row  6: fb8cf fe2b0 fe302 017df fda38 f37c3 f6f95 fce70 00e7e 014af fdc45 fd74c fe6a8 03cd9 0c94e 01d58
    Row  7: 01c64 fea62 fc15b 00769 fc8e4 fd63c 054d9 fc60f fd9c9 034d4 fc5ac fe98b fefe5 fa7bc ffb3f f97f0
    Row  8: 022bf 085cd fc738 fc428 fdc39 06062 01b42 05930 02425 fc63c f8662 0565a fda65 fbcda 00fe9 f65c5
    Row  9: 02379 032f3 0edf0 03ef2 042ac 01c07 0ccfa fd832 fd268 0518b 01205 03634 024db f0e54 ff0db 0642e
    Row 10: 00167 010d8 0100f 05252 fd334 fe416 01c28 078dc fe3bd fb8ca f6265 ff746 f9aed f3ce8 00cfb fd924
    Row 11: f938b 05cca 01fd2 fe269 0676b 00c50 0179a fa402 002ca ff09c 0339e fd7e0 ff9f3 ff327 05d71 02593
    Row 12: 03b02 09372 fe39a f7d49 03522 fc6be 0621f f7103 02a9c 042ac 0e93f 07ca7 02893 0804d 0519b 04d66
    Row 13: fe57f 0219d f7649 ff06d fec73 fd39a f9cf7 ff45d 08a23 02ac6 feaf2 fef00 fedf4 013ac 01ef2 f9863
    Row 14: f85b2 02978 f963c f4b80 01d8b 0a57b f8442 024f0 04484 f41b6 04a14 ffbf1 fbd9e 05bc6 0564b fa325
    Row 15: 05fdb 04d28 fbc45 fe710 fb640 0637f 0379b 0bc43 0691f f934d fc70c 066bb f522f f6209 faad2 f93a8


### Matrix B_Partial_2 (Rows [8, 9, 10, 11] updated) (16x16)

    Row  0: da 7b 14 31 37 c3 a2 93 c1 2f 4c 8f 91 21 ce 05
    Row  1: 4e 8e 27 2a 3d cb 1c 8b 9f d1 a8 0f c8 42 32 7a
    Row  2: c7 4f 49 95 7f cd 4c ef cd 13 f5 e4 6d d2 66 b5
    Row  3: 91 f9 c0 ff 11 15 10 dd 55 38 87 d5 a9 4f 17 a6
    Row  4: a2 fe 23 d7 2a 40 fa ca 92 e0 1a dd 13 b2 3c 31
    Row  5: 0d 1c 42 59 e6 a0 63 89 e8 3a 50 f2 37 03 c7 65
    Row  6: 2f cf 84 d1 b8 15 20 4a 0a 0b 1a dc ae 06 ae 8e
    Row  7: 0d 0b e2 f3 ed 80 51 cb 82 82 cf 6a bb ed f6 94
    Row  8: 3c 3b 51 83 c4 e8 ee 8a 0e 3f 1d 4f 69 98 67 89
    Row  9: 02 21 c2 81 17 65 39 2c 4c 54 19 6f 40 b4 42 07
    Row 10: a2 91 a9 9c 1a 33 2e f4 af 1e e7 10 5e 27 ed 93
    Row 11: 7e d5 33 c0 20 aa 37 51 4e 85 5f 98 9b b7 2e b1
    Row 12: 72 ea da 26 8f 0e 25 6f 0f 01 a9 74 f3 92 ee d9
    Row 13: 1d 07 68 11 45 df 26 7b 39 10 1c 22 25 9d 6a 1c
    Row 14: 50 16 d5 89 2b ae ed 38 e1 45 46 3f 76 3c 7f c6
    Row 15: e1 df 2a 5b 43 85 1c 46 46 27 c3 fc e0 85 08 b2


### Golden Result C_2 (16x16)

    Row  0: fbd5f f6435 fa1fd 04a0b fc486 06957 fe882 001e5 f788e f7bed f58f4 010b0 f8351 05323 fac8d 01273
    Row  1: f30fb 071e7 00af7 f9fb1 0789b fdec4 fcd51 ff24c fdf6f 012ea feca9 fb5d3 01c4a fefd2 05cdf f4c72
    Row  2: ff76d 0ab4d 0093b 011ca ff7e2 ff0aa fd16c f930a f6622 fff28 00323 03aec 00ec9 00a53 fe102 040a4
    Row  3: f7a81 0616f fec15 fed08 04756 fe590 02178 02b47 04933 01bcb ff9e3 ff753 fd39e fedf4 fed9b f7b8a
    Row  4: fb967 ffa3a fca14 fca1b 03a0f ffd41 fe1da 04100 0af25 09b30 01d7d ffea3 02f6c 02379 02277 f8b10
    Row  5: fbc96 071b7 0315b ff1ea fdd74 06ab8 fa8c9 fcd5f 06772 0231c 03738 fe4e2 04eaa 02f76 ff7be 043b6
    Row  6: 0130d f7d16 003bc 0c280 fed17 03cce fcd8a 01df2 fd1de fa1af fae50 006c2 fabad 0364f fbb3f 10177
    Row  7: ffcda 06751 fdf82 05ed8 fbd2f fc6f0 016e9 0021b 03ebc 09b51 fd246 03532 ff229 fdfd7 fdc7c fe589
    Row  8: 03b5b 04009 fd975 f850c fb824 fe5fd 004db 054cd 03660 fce6d fc4dc 05e98 01f92 ffb69 0503e f32e5
    Row  9: 01b31 0b29a 0b0fb f8e78 0530a fa736 05042 02695 05784 01eb1 08a2a 02c2d 06d28 f0126 0be53 fc6d8
    Row 10: 00ec8 fa5e1 03d37 03aca ffddf fa08c 08c84 01bc5 fac04 f72dc f8b55 003de fb952 f844d 01136 fc63a
    Row 11: f9db0 044b8 067cf 06211 030ee feefe fc14e fc031 00e0c ff9c4 02426 fa323 fcc33 006ef 00c45 0570a
    Row 12: 0599e 07866 036bd 04dd6 fc969 fbe1d f84e9 ff244 01fe9 0168c 0dfd5 f9c77 ff9f3 03165 fc563 06b4c
    Row 13: fce6d 01cfe fa3ff 08425 fe96c fe47f fb624 060f7 095e4 09c5e fa9b0 fdb12 003d4 08453 fb948 fee50
    Row 14: f8b4f fc6f4 fb2b2 fe47f fcd75 0cde8 f9ee7 05623 fd416 fd985 0133e fb6aa 0131e 051c5 fb205 00b8c
    Row 15: 0480f 00d00 fcebf fb510 fd7e1 fcc2f 05980 0e819 05fc1 f9093 fdf38 ff5d7 fae83 fd100 00bc1 f10a0


### Matrix B_Partial_3 (Rows [4, 5, 12, 13] updated) (16x16)

    Row  0: da 7b 14 31 37 c3 a2 93 c1 2f 4c 8f 91 21 ce 05
    Row  1: 4e 8e 27 2a 3d cb 1c 8b 9f d1 a8 0f c8 42 32 7a
    Row  2: c7 4f 49 95 7f cd 4c ef cd 13 f5 e4 6d d2 66 b5
    Row  3: 91 f9 c0 ff 11 15 10 dd 55 38 87 d5 a9 4f 17 a6
    Row  4: b4 b3 ae 3e d2 d2 6b 02 d8 81 31 82 a4 4a fe 32
    Row  5: 84 5c ad e3 81 6e 47 54 dd 40 8a cb 68 0a f6 50
    Row  6: 2f cf 84 d1 b8 15 20 4a 0a 0b 1a dc ae 06 ae 8e
    Row  7: 0d 0b e2 f3 ed 80 51 cb 82 82 cf 6a bb ed f6 94
    Row  8: fd 58 3f f5 3c 64 70 3b ed 5b 8f c6 6a f6 1f 8f
    Row  9: 0e 86 61 6a bc fd 1c c4 cb 67 23 f5 3e b7 89 5a
    Row 10: db d4 ea 0b 1d 5e c0 63 1c 95 51 30 49 34 85 fd
    Row 11: 57 4d 31 54 fb 0e 53 75 59 73 4a 22 e2 af 99 77
    Row 12: 42 16 94 50 ac 17 a4 01 5c eb 74 2a f7 be 97 c6
    Row 13: ce 61 c9 24 aa 1e 46 1e ba 42 2b 51 9b be 7e 55
    Row 14: 50 16 d5 89 2b ae ed 38 e1 45 46 3f 76 3c 7f c6
    Row 15: e1 df 2a 5b 43 85 1c 46 46 27 c3 fc e0 85 08 b2


### Golden Result C_3 (16x16)

    Row  0: 00fc9 f8326 f63f2 020af fd502 ffd56 fbeb5 fad26 ff31c ede38 034a6 04025 f15f7 07c7b fe1d5 fe9f4
    Row  1: f869f 01e05 01046 f8aaf 0a243 f556e 065a1 00078 ff14c fce09 fcdad faccf fd2de 02104 0ac21 f0c08
    Row  2: 00dcc 02c59 0244c fb8bb 02e53 f7854 fc027 f2f96 f6456 fac3d 02859 fc871 01808 006bc 02820 fa757
    Row  3: f8b3f 0573b 03dd0 0007f 00ab6 fdcb8 0125f fd6c0 fc731 039ab fe343 030df fb4e2 fa76e ffeba fabd4
    Row  4: fcc8f 00cf7 05651 02510 02d94 03809 fc821 05d69 04ae3 0b824 fe02a 02d5e 03b3e fe04d fedec ff2da
    Row  5: fcbf0 037f7 07f8c fb8e8 020c5 06028 ff6af fe6fb 020df 04b56 fb13a fd802 0797d 00366 04010 00d8b
    Row  6: 04981 f20b9 fd528 02d7c fc593 f9b86 fea5e fa247 fdd08 f56d8 fdf47 01621 f737a 02d71 04cd2 08538
    Row  7: f9d65 03f4b f6edf fd832 faaef feecd ff626 feb9b 012a4 06b3f fa169 fac07 ff402 ff1c4 031f7 f5223
    Row  8: 03e88 071e0 ff9a7 f8665 03b05 ff46a 006af 012e3 0448c 01d6b 0030c 07470 04911 fe850 04c6f f2717
    Row  9: fa18e 0b583 04d20 056ae fc90b ff31c 0bd2c 03ff2 fd833 0c026 01783 fd9ad 0481e f60a3 01e0c 03cf0
    Row 10: fd642 00096 f6caa 01405 fcdbb fccb5 09c48 038bb 00f85 f6ea4 fcc57 0129d f85ca fdc1d 01ae9 fbdeb
    Row 11: f7f4d 04fff fe2ee 00d51 fe91c ff8b0 03c52 fe288 fde4f 0056c fbbeb fbc0d f7f0a 02d0c 0778a 03169
    Row 12: 01867 0b773 fe2e6 fe58b fc0cd 0287e fa195 04be0 02f86 07b98 06929 fd0eb 03f15 01dbe ffdd0 061eb
    Row 13: fe7c0 0036f fd1c8 f84c0 04c58 fcb2d f4d67 019aa 0bd17 06cfe fc02a ff811 05fd3 01195 06bf4 f4b88
    Row 14: fe9fb fcb42 f8564 f9b12 fd042 05f70 fd43a 02ce4 005a9 f4bc9 0726a ffb68 f8ebf 06cff 029ea fd979
    Row 15: 02bb8 0a021 f9c4f f9e16 fdd3f 006fd 02400 058b3 05af1 02a1c 058e3 093bb fb9a8 f9b3f 01029 f562b

