# Scenario 4: Weight Full Re-load Test

## Test Information

- **Description**: B matrix completely reloaded immediately after each computation
- **Iterations**: 3
- **Timing**: No delay between computation end and next B load

---

## Matrix Visualizations

### Matrix A (Same for all tests) (16x16)

    Row  0: 9a 87 18 72 e9 b2 00 fe 90 83 7f b9 c4 77 87 a6
    Row  1: aa 6b ab 18 37 36 72 c1 cc 23 25 ed cf ac 6d 12
    Row  2: d9 39 1e 43 8e 3a d5 52 5b f8 3b 80 39 a0 3c 9d
    Row  3: d9 9e 00 db 0b 28 0f ef 06 43 61 68 aa 1c 9e 3a
    Row  4: b8 39 41 f4 81 96 77 26 87 ec d7 7b b3 fc 2c 77
    Row  5: 1b 9b 8b 5e 49 f4 5e 1f 0f cc ec 7c 01 92 ed d3
    Row  6: 6e b4 db 6c 97 f9 71 34 d5 58 3e cd 18 99 55 1b
    Row  7: 87 bd 1a 58 16 95 10 9f b6 e7 88 9f 4d 2f 6d af
    Row  8: 90 07 9b 49 73 a7 35 b5 ea 99 a1 c0 46 8b 4b cd
    Row  9: a3 e7 15 98 78 b1 f1 04 74 20 08 71 1f e0 5b df
    Row 10: 20 85 f8 53 2d cd 0c 78 3b 74 30 04 2d 7b 8d 51
    Row 11: bd 39 1d 5f 94 43 1a 40 72 ed 90 14 d5 0e ee 8e
    Row 12: 72 3c b8 f3 f4 95 d7 11 00 44 9e 2e 03 c4 4b fb
    Row 13: b7 fa df eb df 6d c4 75 f8 53 70 23 38 68 3e 51
    Row 14: 83 66 50 1b 21 aa 0a 22 48 3a 7d 9a 00 14 c7 d5
    Row 15: 34 32 ce 77 da 1f 99 63 3d b0 ba 42 c6 79 10 1f


### Matrix B_Reload_0 (16x16)

    Row  0: 51 44 fc f3 61 99 ef b8 15 6b 14 b8 4a 16 42 0a
    Row  1: 6a 9b fc de 89 f4 f1 a9 55 c6 f0 ca db e8 af d1
    Row  2: e7 c8 37 bd 16 3d cb 33 79 b1 b4 48 a9 56 a3 ec
    Row  3: cc 61 23 4f f6 26 cf 7e f2 b5 1a e6 5e c8 da 49
    Row  4: bc 62 27 86 03 5c 01 67 de 5f 7f 1b 33 7a 53 82
    Row  5: 63 6a 8b 21 54 6a 14 ca c0 c9 64 26 e2 69 35 5e
    Row  6: e5 20 4c 5b 13 9c 99 bf ec 34 b8 16 31 f0 41 fe
    Row  7: e9 e0 c4 34 49 16 63 43 c7 8d e4 fc 2f e4 51 65
    Row  8: 54 68 b5 2f 76 50 4b 2a b9 aa 44 9c 03 df 96 91
    Row  9: ca b2 31 ae eb 7a 63 ab 90 3f f1 32 3b 31 be b4
    Row 10: 4d dd cc de ac 5c ab d8 a4 da e3 ed 3c eb 45 50
    Row 11: 98 f6 da e6 dd 5b 79 23 d9 7f 91 26 1c 8e c0 14
    Row 12: cf b4 51 e9 f1 83 5d 06 db 43 61 a9 f5 b4 1e 4d
    Row 13: 0d 03 a4 02 37 49 20 2c 17 2d d1 04 b7 d2 78 04
    Row 14: 2b 79 a3 d9 df 13 12 e8 62 ea e0 cd 46 7b 4b 0b
    Row 15: 39 3f b2 ba 82 9a e7 72 8a 1b 79 8d a1 71 c8 ce


### Golden Result C_0 (16x16)

    Row  0: f9e13 fbf9a 03c19 06dd5 0046a 02c8f f4899 07944 02d05 fa802 f8c5d 07991 ff2bc f6d3f 07dae 092c2
    Row  1: 02a43 03d93 003d7 ff2c3 f63d3 00cf0 f9d4a f9db0 ff8f9 ffb62 01165 006fe 04b7e 069af 0136c fdcd8
    Row  2: 07625 fe504 feb31 06ae7 03658 01a06 fff62 fbad2 02848 ee736 012e7 fc759 03155 fe643 fd257 07bc8
    Row  3: fd430 ffd92 fc97f fe095 ff41b 09937 00a4b 01d68 f5274 04789 fd991 0562a fef92 ff94c feac2 fef58
    Row  4: fb453 f8fdf 00e9a 0110a f4997 f8935 fc3e3 00f4d 05113 00df1 f1ae9 024c6 fbb77 fd2f1 fa61b 01a7f
    Row  5: f76d6 08945 039e3 062c5 039e2 fe09e 01714 04480 f99a0 06608 00b9d 00a96 0b035 f9989 02df7 02da1
    Row  6: 00ac4 03c79 02cc5 054f5 0011b f8154 fbdc0 faece fb1f8 ff66c fe3a8 fc77d 0b062 01304 03993 08494
    Row  7: f6597 00738 09484 0104e fe6c0 fb39f fcd95 04882 0b500 007ae fe947 02ba3 ffe26 004ae 0238c fecf4
    Row  8: f9484 04f18 09572 0226f fb1e5 f6e53 fbd35 0415c 05796 011f6 06105 fdf3a 049fc ffc31 00fe6 fc59a
    Row  9: fa249 00931 ff92e f9132 ff25a 086f5 08b13 0340e fec35 03e68 feba3 00a41 01e53 00f57 fcfe3 f6dff
    Row 10: f9f73 00867 ffe5c 00239 05467 044ab 05c72 0a28a f1acc 032fe 037ba fe464 02818 fbe02 033ec 0047d
    Row 11: 00684 00e04 fe267 0b1a7 08be0 05c13 040b6 00223 04648 f40aa fab70 025c9 ff8ea f867a f9175 02e19
    Row 12: fec8c ff0cb 021d6 fd5a5 fe832 f9f9e 064e7 fc2ee 02f5e 06405 fe6b8 fb825 0567a fea37 fcb44 fb5f2
    Row 13: 032fd fed3a f469f fd494 fd493 095d3 084ba 0171b f6150 fcac7 01e6e fe270 fe9dd 01e1b 05af2 0779c
    Row 14: 00f8c f6e7e 042f3 fe4d7 fb7d1 07942 fc3a1 01035 ff9c9 f5a56 fe005 00e36 fefae fdbcd fb521 fbc46
    Row 15: 039c7 07121 f5057 050ca 04e87 03d4f 060b7 08780 0124d fabc1 007ee faee7 ff5b3 fad31 0052f 03c4d


### Matrix B_Reload_1 (16x16)

    Row  0: f5 7b d7 d6 c0 05 93 9d 27 31 74 17 c4 46 6d bc
    Row  1: 12 0e 27 2c 6b 50 95 5a bd 89 51 07 79 d0 aa cb
    Row  2: cf c3 38 37 22 b2 31 7b 4c 7b 00 f3 5c 5d 16 05
    Row  3: f0 98 ad 65 b8 c6 9c e4 48 af 9e 6e c6 fa bf f6
    Row  4: 0e be f4 40 9e 2e fe 3e 18 b9 c7 37 e3 9a cf 03
    Row  5: 5e 3f ac e0 f0 d5 d7 66 b4 2a 33 35 c3 d0 ec fd
    Row  6: 44 31 a2 b1 14 3e 40 7d 30 29 02 82 f7 e6 07 82
    Row  7: 19 e9 d7 2a a9 e9 56 ef 28 bd 6b b7 58 36 26 9d
    Row  8: a6 0b cc 49 45 55 64 3f 14 a1 83 80 b8 5e 60 f9
    Row  9: 3a 69 9d 46 fe de 9c 6c 4c 40 d1 78 4e d8 d5 de
    Row 10: 88 4c 66 67 35 80 29 64 38 e7 39 7e 2e 59 5d 7f
    Row 11: 43 30 24 09 5d 36 9c a5 aa f8 0b e4 9a ee f4 d9
    Row 12: 6c 66 2b 34 5f bc a8 c5 63 32 1c 50 ff 22 ef 28
    Row 13: 7d bc 6c 2e c7 4b 57 61 68 9e 7e 45 40 5e 20 5a
    Row 14: 30 ac 7c bd a9 14 6a 32 77 42 a1 52 20 6e d6 c0
    Row 15: a3 1a 5c 95 34 40 43 fb ca b8 58 d2 e5 0b 95 da


### Golden Result C_1 (16x16)

    Row  0: fb9ce f4e9d 03610 06eb5 fa1c7 f6ffd 06aa1 ff70c 045a8 fc743 01d70 04931 026e4 01fa1 05553 0db22
    Row  1: 01d0f ff605 fe854 fbd0e 007ac 02b4d fee03 091ac fd3ab ff05f fa031 0331a 01469 f7bf8 f695c fad46
    Row  2: fc0d4 ff6b1 fc56a 0670d 013d6 f702c 01996 03ef9 04c31 019b4 fa8f3 0215a 057c4 06636 038c0 00629
    Row  3: fcb7a 04ab8 fefc6 010f9 02d54 fedd6 01c54 0348d fb595 ff8de 02388 ff5a9 fc1be fe0f9 028c6 04275
    Row  4: 004dd fcd73 07002 f6c18 05abb 0511b 040da ff390 fc01e 01a20 05713 f6d0f 0523b 0080b f8d4b f7456
    Row  5: 0141c 0127c f602c fe894 fca35 0153f fb408 f556a fcf30 fec76 f87fd fb179 f2a56 f9b60 00f08 f9d1f
    Row  6: fe7a6 06ece f90c8 fc3a0 fb7b4 f8753 fd902 fdd10 0844d 080d4 fe72d 03e98 fec4c 045a6 01b87 f82ff
    Row  7: 06737 f26fc 031c3 ffc73 f9a36 fef3a 03379 ff0d6 0a300 050d1 f34c0 0592d 02718 ff4bf f9734 03026
    Row  8: 0119c f6c19 fdf74 fd5de fd449 03209 ff9a2 fa077 000a8 fe323 f0fb5 fe6b2 fb5b9 f6f2f f7948 fdc50
    Row  9: ffd7a fdee6 051a1 03b25 03808 049ba 06577 02aca 0207a ffed0 f5b82 fc998 ff47f 0152c 008f0 ffd98
    Row 10: ffd1a 02888 fbe2d 085ba fbd89 fe2f9 026bc 00ce8 08f6d f966e 0469d 02674 ffa01 043d7 03ffc 02390
    Row 11: 04356 fa610 f699d 03cb2 00dfc 02a3e fffb6 02995 fe3d9 fcdd6 fa515 f8458 ffc65 00be9 00fde fb3ad
    Row 12: 019f8 02f51 fea33 fcde6 fe8d5 05620 f8678 f6286 ffe3e 007a3 fe4ad ff4da ff886 ff51d fe276 f7bd4
    Row 13: 04eef 03269 06ef0 03a18 004be fc49f 04a44 07051 03ab9 fc66d 07fd1 08e9d 055f9 05978 fe651 03ca5
    Row 14: f90fc fc291 019a4 0cef4 048d8 fc587 05011 0dc98 06092 f9880 fccf7 0207e 0bf2a 02144 00f87 05b76
    Row 15: 01fe5 f8c28 0177a 0216a fada7 062b2 ffda1 f9ae7 fe002 f3626 04f1f ff0cd fcde3 04b6b ffebf fe2dd


### Matrix B_Reload_2 (16x16)

    Row  0: de d3 63 22 23 bb a2 2a 04 79 b5 53 3e bd da 08
    Row  1: 1d 87 f6 d7 5d 57 30 89 15 7f d8 3d 98 90 dc 01
    Row  2: e9 2a 9a f8 bd f7 cb dc 21 d3 74 0a 27 cb 73 1c
    Row  3: 52 4d 30 0b 01 8e 7c 60 0a 1e 30 a1 13 0f 2b 2b
    Row  4: cd 55 b8 a7 33 73 d4 a0 2b 1c 33 c1 19 ae ec e7
    Row  5: cc da a9 f0 21 01 0a b1 c8 9e 8d 8a f2 4d aa 8d
    Row  6: ec 07 ff 43 eb 43 5b 1e 35 79 be 54 d8 2a af 82
    Row  7: 73 e9 cf bf db ef af 33 53 0b 1a 90 b0 94 9c 51
    Row  8: 78 47 48 ca 75 e9 01 85 08 10 0f 03 cb dc d7 bd
    Row  9: 37 65 c9 ce 13 29 02 3b 19 aa 13 a0 d7 b7 91 58
    Row 10: 7b e7 ac ff f0 7f 75 10 74 e6 09 ea 00 bf ba 51
    Row 11: 74 36 b4 72 7b 11 f7 d8 81 72 90 57 17 40 0c 73
    Row 12: f7 93 fe cf 1a 57 a4 70 50 a7 c9 0c 56 09 df 05
    Row 13: 9d 86 5f c3 98 1c 4c a8 f1 94 97 28 59 25 78 5b
    Row 14: fa 33 93 b4 50 9f 43 cf 25 9d 8f d3 c5 f3 87 d6
    Row 15: 1e 43 d8 bb e4 0e 84 fb 2e cc c3 41 c7 ae 40 a5


### Golden Result C_2 (16x16)

    Row  0: fcf99 fbae3 05f6d 05298 ef8fe 00624 0c27f 070fb 01a42 fd25e 0a9eb fdbf0 0912f 0758e 0df28 08e5f
    Row  1: 005cf 037ed f7e11 ff22d 05fc2 047ff 0a41b fc92e 02299 02e25 fb71d fd68c f717d ffca1 f57bc f7482
    Row  2: 072ed fcad4 febee fc18a 02267 fb358 04e4f 032ab 06704 fb3ec 0565f f5c11 fa4a9 fd298 f6ece fe4aa
    Row  3: 04b54 06531 fc0a2 041ad fda0a 05332 00f1b febee fcb6e feb65 ffe18 00333 0115d 025e6 02253 03efc
    Row  4: 03521 01d47 faac7 069f4 fc300 fe3b8 0167d 02697 fe0db 06f58 fc577 0a96b fa2c1 00c47 054ec 01f2b
    Row  5: 0642f 07e10 00f4f 07da3 06a64 fd5a0 01574 0638d fc9dd 0bec8 fe968 ff464 00cfd 05a84 fa35e fe4da
    Row  6: 06129 04c71 ff2fe 02a42 ff152 f9025 02f6f 0f61c 06e66 00fc9 fdb26 fc435 fd0ff fe408 f46f4 fe1fe
    Row  7: f5843 01637 02e76 fdec9 fa8d2 fa816 063a7 053a8 009de f768b 05011 fd9d7 059f3 076bc 07031 feb49
    Row  8: fbd6d 039ef 01494 ff762 04906 ff3a9 03c6b 02bf0 01676 04213 044f9 fece5 fef87 042d5 fe711 f6dd2
    Row  9: 05b03 08286 f8168 fcbf2 0900e 0587a fdbfa f831a 003df ff074 01303 002ab fdeec fd9af fba08 02235
    Row 10: 067fa 04305 049ed fb8dc f9279 02a30 fc190 07573 05a74 fb29f 02e19 fba5c 04262 fb03d 0279e 08c42
    Row 11: 04192 ff0d1 04757 02709 02c28 f7c64 067ff fc673 fa41b 0352c 0150c fbd3d fbf01 054f0 ffd46 ff5f4
    Row 12: 0260c 0202e 03716 0036d 07ad6 fa769 fa937 02a34 fe123 077a8 fd1aa 03b85 fd24b fb20a fad96 031c5
    Row 13: 0608a fcfc4 f772c f8388 fea28 04985 00c3d fee66 04195 f193f f7c35 f7c01 fd3f4 fd529 f9d5b 05c40
    Row 14: 0679e ff8f0 fe1ba fa0ee fcc0b 093dc 0769a fd876 09940 fe494 0c0d3 fbcb9 fbe86 f73a0 0047a 04d98
    Row 15: 03d58 fce55 0716a fde57 021fb f61c8 00951 fac36 fa907 0237c fa268 fed05 ff75a ffde3 050c9 0506a

