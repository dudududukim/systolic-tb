`timescale 1ns/1ps

module tb_systolic();
    reg clk, reset;
    reg [7:0] io_inputA [0:15];
    reg [7:0] io_inputB [0:15];
    reg outputCaptureEnableC [0:15][0:15];
    reg resetPartialC [0:15][0:15];
    wire [25:0] io_outputC [0:30];      // 20-bit output

    // Instantiate the systolic array module
    SInt_ReuseC_SystolicArray_16x16 u_dut (
        .clk(clk),
        .reset(reset),
        // Input A ports
        .io_inputA_0(io_inputA[0]),   .io_inputA_1(io_inputA[1]),
        .io_inputA_2(io_inputA[2]),   .io_inputA_3(io_inputA[3]),
        .io_inputA_4(io_inputA[4]),   .io_inputA_5(io_inputA[5]),
        .io_inputA_6(io_inputA[6]),   .io_inputA_7(io_inputA[7]),
        .io_inputA_8(io_inputA[8]),   .io_inputA_9(io_inputA[9]),
        .io_inputA_10(io_inputA[10]), .io_inputA_11(io_inputA[11]),
        .io_inputA_12(io_inputA[12]), .io_inputA_13(io_inputA[13]),
        .io_inputA_14(io_inputA[14]), .io_inputA_15(io_inputA[15]),
        // Input B ports
        .io_inputB_0(io_inputB[0]),   .io_inputB_1(io_inputB[1]),
        .io_inputB_2(io_inputB[2]),   .io_inputB_3(io_inputB[3]),
        .io_inputB_4(io_inputB[4]),   .io_inputB_5(io_inputB[5]),
        .io_inputB_6(io_inputB[6]),   .io_inputB_7(io_inputB[7]),
        .io_inputB_8(io_inputB[8]),   .io_inputB_9(io_inputB[9]),
        .io_inputB_10(io_inputB[10]), .io_inputB_11(io_inputB[11]),
        .io_inputB_12(io_inputB[12]), .io_inputB_13(io_inputB[13]),
        .io_inputB_14(io_inputB[14]), .io_inputB_15(io_inputB[15]),

        // Individual enable signals for each B column
// regin outputCaptureEnableC
        .io_outputCaptureEnableC_0_0(outputCaptureEnableC[0][0]),
        .io_outputCaptureEnableC_0_1(outputCaptureEnableC[0][1]),
        .io_outputCaptureEnableC_0_2(outputCaptureEnableC[0][2]),
        .io_outputCaptureEnableC_0_3(outputCaptureEnableC[0][3]),
        .io_outputCaptureEnableC_0_4(outputCaptureEnableC[0][4]),
        .io_outputCaptureEnableC_0_5(outputCaptureEnableC[0][5]),
        .io_outputCaptureEnableC_0_6(outputCaptureEnableC[0][6]),
        .io_outputCaptureEnableC_0_7(outputCaptureEnableC[0][7]),
        .io_outputCaptureEnableC_0_8(outputCaptureEnableC[0][8]),
        .io_outputCaptureEnableC_0_9(outputCaptureEnableC[0][9]),
        .io_outputCaptureEnableC_0_10(outputCaptureEnableC[0][10]),
        .io_outputCaptureEnableC_0_11(outputCaptureEnableC[0][11]),
        .io_outputCaptureEnableC_0_12(outputCaptureEnableC[0][12]),
        .io_outputCaptureEnableC_0_13(outputCaptureEnableC[0][13]),
        .io_outputCaptureEnableC_0_14(outputCaptureEnableC[0][14]),
        .io_outputCaptureEnableC_0_15(outputCaptureEnableC[0][15]),
        .io_outputCaptureEnableC_1_0(outputCaptureEnableC[1][0]),
        .io_outputCaptureEnableC_1_1(outputCaptureEnableC[1][1]),
        .io_outputCaptureEnableC_1_2(outputCaptureEnableC[1][2]),
        .io_outputCaptureEnableC_1_3(outputCaptureEnableC[1][3]),
        .io_outputCaptureEnableC_1_4(outputCaptureEnableC[1][4]),
        .io_outputCaptureEnableC_1_5(outputCaptureEnableC[1][5]),
        .io_outputCaptureEnableC_1_6(outputCaptureEnableC[1][6]),
        .io_outputCaptureEnableC_1_7(outputCaptureEnableC[1][7]),
        .io_outputCaptureEnableC_1_8(outputCaptureEnableC[1][8]),
        .io_outputCaptureEnableC_1_9(outputCaptureEnableC[1][9]),
        .io_outputCaptureEnableC_1_10(outputCaptureEnableC[1][10]),
        .io_outputCaptureEnableC_1_11(outputCaptureEnableC[1][11]),
        .io_outputCaptureEnableC_1_12(outputCaptureEnableC[1][12]),
        .io_outputCaptureEnableC_1_13(outputCaptureEnableC[1][13]),
        .io_outputCaptureEnableC_1_14(outputCaptureEnableC[1][14]),
        .io_outputCaptureEnableC_1_15(outputCaptureEnableC[1][15]),
        .io_outputCaptureEnableC_2_0(outputCaptureEnableC[2][0]),
        .io_outputCaptureEnableC_2_1(outputCaptureEnableC[2][1]),
        .io_outputCaptureEnableC_2_2(outputCaptureEnableC[2][2]),
        .io_outputCaptureEnableC_2_3(outputCaptureEnableC[2][3]),
        .io_outputCaptureEnableC_2_4(outputCaptureEnableC[2][4]),
        .io_outputCaptureEnableC_2_5(outputCaptureEnableC[2][5]),
        .io_outputCaptureEnableC_2_6(outputCaptureEnableC[2][6]),
        .io_outputCaptureEnableC_2_7(outputCaptureEnableC[2][7]),
        .io_outputCaptureEnableC_2_8(outputCaptureEnableC[2][8]),
        .io_outputCaptureEnableC_2_9(outputCaptureEnableC[2][9]),
        .io_outputCaptureEnableC_2_10(outputCaptureEnableC[2][10]),
        .io_outputCaptureEnableC_2_11(outputCaptureEnableC[2][11]),
        .io_outputCaptureEnableC_2_12(outputCaptureEnableC[2][12]),
        .io_outputCaptureEnableC_2_13(outputCaptureEnableC[2][13]),
        .io_outputCaptureEnableC_2_14(outputCaptureEnableC[2][14]),
        .io_outputCaptureEnableC_2_15(outputCaptureEnableC[2][15]),
        .io_outputCaptureEnableC_3_0(outputCaptureEnableC[3][0]),
        .io_outputCaptureEnableC_3_1(outputCaptureEnableC[3][1]),
        .io_outputCaptureEnableC_3_2(outputCaptureEnableC[3][2]),
        .io_outputCaptureEnableC_3_3(outputCaptureEnableC[3][3]),
        .io_outputCaptureEnableC_3_4(outputCaptureEnableC[3][4]),
        .io_outputCaptureEnableC_3_5(outputCaptureEnableC[3][5]),
        .io_outputCaptureEnableC_3_6(outputCaptureEnableC[3][6]),
        .io_outputCaptureEnableC_3_7(outputCaptureEnableC[3][7]),
        .io_outputCaptureEnableC_3_8(outputCaptureEnableC[3][8]),
        .io_outputCaptureEnableC_3_9(outputCaptureEnableC[3][9]),
        .io_outputCaptureEnableC_3_10(outputCaptureEnableC[3][10]),
        .io_outputCaptureEnableC_3_11(outputCaptureEnableC[3][11]),
        .io_outputCaptureEnableC_3_12(outputCaptureEnableC[3][12]),
        .io_outputCaptureEnableC_3_13(outputCaptureEnableC[3][13]),
        .io_outputCaptureEnableC_3_14(outputCaptureEnableC[3][14]),
        .io_outputCaptureEnableC_3_15(outputCaptureEnableC[3][15]),
        .io_outputCaptureEnableC_4_0(outputCaptureEnableC[4][0]),
        .io_outputCaptureEnableC_4_1(outputCaptureEnableC[4][1]),
        .io_outputCaptureEnableC_4_2(outputCaptureEnableC[4][2]),
        .io_outputCaptureEnableC_4_3(outputCaptureEnableC[4][3]),
        .io_outputCaptureEnableC_4_4(outputCaptureEnableC[4][4]),
        .io_outputCaptureEnableC_4_5(outputCaptureEnableC[4][5]),
        .io_outputCaptureEnableC_4_6(outputCaptureEnableC[4][6]),
        .io_outputCaptureEnableC_4_7(outputCaptureEnableC[4][7]),
        .io_outputCaptureEnableC_4_8(outputCaptureEnableC[4][8]),
        .io_outputCaptureEnableC_4_9(outputCaptureEnableC[4][9]),
        .io_outputCaptureEnableC_4_10(outputCaptureEnableC[4][10]),
        .io_outputCaptureEnableC_4_11(outputCaptureEnableC[4][11]),
        .io_outputCaptureEnableC_4_12(outputCaptureEnableC[4][12]),
        .io_outputCaptureEnableC_4_13(outputCaptureEnableC[4][13]),
        .io_outputCaptureEnableC_4_14(outputCaptureEnableC[4][14]),
        .io_outputCaptureEnableC_4_15(outputCaptureEnableC[4][15]),
        .io_outputCaptureEnableC_5_0(outputCaptureEnableC[5][0]),
        .io_outputCaptureEnableC_5_1(outputCaptureEnableC[5][1]),
        .io_outputCaptureEnableC_5_2(outputCaptureEnableC[5][2]),
        .io_outputCaptureEnableC_5_3(outputCaptureEnableC[5][3]),
        .io_outputCaptureEnableC_5_4(outputCaptureEnableC[5][4]),
        .io_outputCaptureEnableC_5_5(outputCaptureEnableC[5][5]),
        .io_outputCaptureEnableC_5_6(outputCaptureEnableC[5][6]),
        .io_outputCaptureEnableC_5_7(outputCaptureEnableC[5][7]),
        .io_outputCaptureEnableC_5_8(outputCaptureEnableC[5][8]),
        .io_outputCaptureEnableC_5_9(outputCaptureEnableC[5][9]),
        .io_outputCaptureEnableC_5_10(outputCaptureEnableC[5][10]),
        .io_outputCaptureEnableC_5_11(outputCaptureEnableC[5][11]),
        .io_outputCaptureEnableC_5_12(outputCaptureEnableC[5][12]),
        .io_outputCaptureEnableC_5_13(outputCaptureEnableC[5][13]),
        .io_outputCaptureEnableC_5_14(outputCaptureEnableC[5][14]),
        .io_outputCaptureEnableC_5_15(outputCaptureEnableC[5][15]),
        .io_outputCaptureEnableC_6_0(outputCaptureEnableC[6][0]),
        .io_outputCaptureEnableC_6_1(outputCaptureEnableC[6][1]),
        .io_outputCaptureEnableC_6_2(outputCaptureEnableC[6][2]),
        .io_outputCaptureEnableC_6_3(outputCaptureEnableC[6][3]),
        .io_outputCaptureEnableC_6_4(outputCaptureEnableC[6][4]),
        .io_outputCaptureEnableC_6_5(outputCaptureEnableC[6][5]),
        .io_outputCaptureEnableC_6_6(outputCaptureEnableC[6][6]),
        .io_outputCaptureEnableC_6_7(outputCaptureEnableC[6][7]),
        .io_outputCaptureEnableC_6_8(outputCaptureEnableC[6][8]),
        .io_outputCaptureEnableC_6_9(outputCaptureEnableC[6][9]),
        .io_outputCaptureEnableC_6_10(outputCaptureEnableC[6][10]),
        .io_outputCaptureEnableC_6_11(outputCaptureEnableC[6][11]),
        .io_outputCaptureEnableC_6_12(outputCaptureEnableC[6][12]),
        .io_outputCaptureEnableC_6_13(outputCaptureEnableC[6][13]),
        .io_outputCaptureEnableC_6_14(outputCaptureEnableC[6][14]),
        .io_outputCaptureEnableC_6_15(outputCaptureEnableC[6][15]),
        .io_outputCaptureEnableC_7_0(outputCaptureEnableC[7][0]),
        .io_outputCaptureEnableC_7_1(outputCaptureEnableC[7][1]),
        .io_outputCaptureEnableC_7_2(outputCaptureEnableC[7][2]),
        .io_outputCaptureEnableC_7_3(outputCaptureEnableC[7][3]),
        .io_outputCaptureEnableC_7_4(outputCaptureEnableC[7][4]),
        .io_outputCaptureEnableC_7_5(outputCaptureEnableC[7][5]),
        .io_outputCaptureEnableC_7_6(outputCaptureEnableC[7][6]),
        .io_outputCaptureEnableC_7_7(outputCaptureEnableC[7][7]),
        .io_outputCaptureEnableC_7_8(outputCaptureEnableC[7][8]),
        .io_outputCaptureEnableC_7_9(outputCaptureEnableC[7][9]),
        .io_outputCaptureEnableC_7_10(outputCaptureEnableC[7][10]),
        .io_outputCaptureEnableC_7_11(outputCaptureEnableC[7][11]),
        .io_outputCaptureEnableC_7_12(outputCaptureEnableC[7][12]),
        .io_outputCaptureEnableC_7_13(outputCaptureEnableC[7][13]),
        .io_outputCaptureEnableC_7_14(outputCaptureEnableC[7][14]),
        .io_outputCaptureEnableC_7_15(outputCaptureEnableC[7][15]),
        .io_outputCaptureEnableC_8_0(outputCaptureEnableC[8][0]),
        .io_outputCaptureEnableC_8_1(outputCaptureEnableC[8][1]),
        .io_outputCaptureEnableC_8_2(outputCaptureEnableC[8][2]),
        .io_outputCaptureEnableC_8_3(outputCaptureEnableC[8][3]),
        .io_outputCaptureEnableC_8_4(outputCaptureEnableC[8][4]),
        .io_outputCaptureEnableC_8_5(outputCaptureEnableC[8][5]),
        .io_outputCaptureEnableC_8_6(outputCaptureEnableC[8][6]),
        .io_outputCaptureEnableC_8_7(outputCaptureEnableC[8][7]),
        .io_outputCaptureEnableC_8_8(outputCaptureEnableC[8][8]),
        .io_outputCaptureEnableC_8_9(outputCaptureEnableC[8][9]),
        .io_outputCaptureEnableC_8_10(outputCaptureEnableC[8][10]),
        .io_outputCaptureEnableC_8_11(outputCaptureEnableC[8][11]),
        .io_outputCaptureEnableC_8_12(outputCaptureEnableC[8][12]),
        .io_outputCaptureEnableC_8_13(outputCaptureEnableC[8][13]),
        .io_outputCaptureEnableC_8_14(outputCaptureEnableC[8][14]),
        .io_outputCaptureEnableC_8_15(outputCaptureEnableC[8][15]),
        .io_outputCaptureEnableC_9_0(outputCaptureEnableC[9][0]),
        .io_outputCaptureEnableC_9_1(outputCaptureEnableC[9][1]),
        .io_outputCaptureEnableC_9_2(outputCaptureEnableC[9][2]),
        .io_outputCaptureEnableC_9_3(outputCaptureEnableC[9][3]),
        .io_outputCaptureEnableC_9_4(outputCaptureEnableC[9][4]),
        .io_outputCaptureEnableC_9_5(outputCaptureEnableC[9][5]),
        .io_outputCaptureEnableC_9_6(outputCaptureEnableC[9][6]),
        .io_outputCaptureEnableC_9_7(outputCaptureEnableC[9][7]),
        .io_outputCaptureEnableC_9_8(outputCaptureEnableC[9][8]),
        .io_outputCaptureEnableC_9_9(outputCaptureEnableC[9][9]),
        .io_outputCaptureEnableC_9_10(outputCaptureEnableC[9][10]),
        .io_outputCaptureEnableC_9_11(outputCaptureEnableC[9][11]),
        .io_outputCaptureEnableC_9_12(outputCaptureEnableC[9][12]),
        .io_outputCaptureEnableC_9_13(outputCaptureEnableC[9][13]),
        .io_outputCaptureEnableC_9_14(outputCaptureEnableC[9][14]),
        .io_outputCaptureEnableC_9_15(outputCaptureEnableC[9][15]),
        .io_outputCaptureEnableC_10_0(outputCaptureEnableC[10][0]),
        .io_outputCaptureEnableC_10_1(outputCaptureEnableC[10][1]),
        .io_outputCaptureEnableC_10_2(outputCaptureEnableC[10][2]),
        .io_outputCaptureEnableC_10_3(outputCaptureEnableC[10][3]),
        .io_outputCaptureEnableC_10_4(outputCaptureEnableC[10][4]),
        .io_outputCaptureEnableC_10_5(outputCaptureEnableC[10][5]),
        .io_outputCaptureEnableC_10_6(outputCaptureEnableC[10][6]),
        .io_outputCaptureEnableC_10_7(outputCaptureEnableC[10][7]),
        .io_outputCaptureEnableC_10_8(outputCaptureEnableC[10][8]),
        .io_outputCaptureEnableC_10_9(outputCaptureEnableC[10][9]),
        .io_outputCaptureEnableC_10_10(outputCaptureEnableC[10][10]),
        .io_outputCaptureEnableC_10_11(outputCaptureEnableC[10][11]),
        .io_outputCaptureEnableC_10_12(outputCaptureEnableC[10][12]),
        .io_outputCaptureEnableC_10_13(outputCaptureEnableC[10][13]),
        .io_outputCaptureEnableC_10_14(outputCaptureEnableC[10][14]),
        .io_outputCaptureEnableC_10_15(outputCaptureEnableC[10][15]),
        .io_outputCaptureEnableC_11_0(outputCaptureEnableC[11][0]),
        .io_outputCaptureEnableC_11_1(outputCaptureEnableC[11][1]),
        .io_outputCaptureEnableC_11_2(outputCaptureEnableC[11][2]),
        .io_outputCaptureEnableC_11_3(outputCaptureEnableC[11][3]),
        .io_outputCaptureEnableC_11_4(outputCaptureEnableC[11][4]),
        .io_outputCaptureEnableC_11_5(outputCaptureEnableC[11][5]),
        .io_outputCaptureEnableC_11_6(outputCaptureEnableC[11][6]),
        .io_outputCaptureEnableC_11_7(outputCaptureEnableC[11][7]),
        .io_outputCaptureEnableC_11_8(outputCaptureEnableC[11][8]),
        .io_outputCaptureEnableC_11_9(outputCaptureEnableC[11][9]),
        .io_outputCaptureEnableC_11_10(outputCaptureEnableC[11][10]),
        .io_outputCaptureEnableC_11_11(outputCaptureEnableC[11][11]),   
        .io_outputCaptureEnableC_11_12(outputCaptureEnableC[11][12]),
        .io_outputCaptureEnableC_11_13(outputCaptureEnableC[11][13]),
        .io_outputCaptureEnableC_11_14(outputCaptureEnableC[11][14]),
        .io_outputCaptureEnableC_11_15(outputCaptureEnableC[11][15]),
        .io_outputCaptureEnableC_12_0(outputCaptureEnableC[12][0]),
        .io_outputCaptureEnableC_12_1(outputCaptureEnableC[12][1]),
        .io_outputCaptureEnableC_12_2(outputCaptureEnableC[12][2]),
        .io_outputCaptureEnableC_12_3(outputCaptureEnableC[12][3]),
        .io_outputCaptureEnableC_12_4(outputCaptureEnableC[12][4]),
        .io_outputCaptureEnableC_12_5(outputCaptureEnableC[12][5]),
        .io_outputCaptureEnableC_12_6(outputCaptureEnableC[12][6]),
        .io_outputCaptureEnableC_12_7(outputCaptureEnableC[12][7]),
        .io_outputCaptureEnableC_12_8(outputCaptureEnableC[12][8]),
        .io_outputCaptureEnableC_12_9(outputCaptureEnableC[12][9]),
        .io_outputCaptureEnableC_12_10(outputCaptureEnableC[12][10]),
        .io_outputCaptureEnableC_12_11(outputCaptureEnableC[12][11]),
        .io_outputCaptureEnableC_12_12(outputCaptureEnableC[12][12]),
        .io_outputCaptureEnableC_12_13(outputCaptureEnableC[12][13]),
        .io_outputCaptureEnableC_12_14(outputCaptureEnableC[12][14]),
        .io_outputCaptureEnableC_12_15(outputCaptureEnableC[12][15]),
        .io_outputCaptureEnableC_13_0(outputCaptureEnableC[13][0]),
        .io_outputCaptureEnableC_13_1(outputCaptureEnableC[13][1]),
        .io_outputCaptureEnableC_13_2(outputCaptureEnableC[13][2]),
        .io_outputCaptureEnableC_13_3(outputCaptureEnableC[13][3]),
        .io_outputCaptureEnableC_13_4(outputCaptureEnableC[13][4]),
        .io_outputCaptureEnableC_13_5(outputCaptureEnableC[13][5]),
        .io_outputCaptureEnableC_13_6(outputCaptureEnableC[13][6]),
        .io_outputCaptureEnableC_13_7(outputCaptureEnableC[13][7]),
        .io_outputCaptureEnableC_13_8(outputCaptureEnableC[13][8]),
        .io_outputCaptureEnableC_13_9(outputCaptureEnableC[13][9]),
        .io_outputCaptureEnableC_13_10(outputCaptureEnableC[13][10]),
        .io_outputCaptureEnableC_13_11(outputCaptureEnableC[13][11]),
        .io_outputCaptureEnableC_13_12(outputCaptureEnableC[13][12]),
        .io_outputCaptureEnableC_13_13(outputCaptureEnableC[13][13]),
        .io_outputCaptureEnableC_13_14(outputCaptureEnableC[13][14]),
        .io_outputCaptureEnableC_13_15(outputCaptureEnableC[13][15]),
        .io_outputCaptureEnableC_14_0(outputCaptureEnableC[14][0]),
        .io_outputCaptureEnableC_14_1(outputCaptureEnableC[14][1]),
        .io_outputCaptureEnableC_14_2(outputCaptureEnableC[14][2]),
        .io_outputCaptureEnableC_14_3(outputCaptureEnableC[14][3]),
        .io_outputCaptureEnableC_14_4(outputCaptureEnableC[14][4]),
        .io_outputCaptureEnableC_14_5(outputCaptureEnableC[14][5]),
        .io_outputCaptureEnableC_14_6(outputCaptureEnableC[14][6]),
        .io_outputCaptureEnableC_14_7(outputCaptureEnableC[14][7]),
        .io_outputCaptureEnableC_14_8(outputCaptureEnableC[14][8]),
        .io_outputCaptureEnableC_14_9(outputCaptureEnableC[14][9]),
        .io_outputCaptureEnableC_14_10(outputCaptureEnableC[14][10]),
        .io_outputCaptureEnableC_14_11(outputCaptureEnableC[14][11]),
        .io_outputCaptureEnableC_14_12(outputCaptureEnableC[14][12]),
        .io_outputCaptureEnableC_14_13(outputCaptureEnableC[14][13]),
        .io_outputCaptureEnableC_14_14(outputCaptureEnableC[14][14]),
        .io_outputCaptureEnableC_14_15(outputCaptureEnableC[14][15]),
        .io_outputCaptureEnableC_15_0(outputCaptureEnableC[15][0]),
        .io_outputCaptureEnableC_15_1(outputCaptureEnableC[15][1]),
        .io_outputCaptureEnableC_15_2(outputCaptureEnableC[15][2]),
        .io_outputCaptureEnableC_15_3(outputCaptureEnableC[15][3]),
        .io_outputCaptureEnableC_15_4(outputCaptureEnableC[15][4]),
        .io_outputCaptureEnableC_15_5(outputCaptureEnableC[15][5]),
        .io_outputCaptureEnableC_15_6(outputCaptureEnableC[15][6]),
        .io_outputCaptureEnableC_15_7(outputCaptureEnableC[15][7]),
        .io_outputCaptureEnableC_15_8(outputCaptureEnableC[15][8]),
        .io_outputCaptureEnableC_15_9(outputCaptureEnableC[15][9]),
        .io_outputCaptureEnableC_15_10(outputCaptureEnableC[15][10]),
        .io_outputCaptureEnableC_15_11(outputCaptureEnableC[15][11]),
        .io_outputCaptureEnableC_15_12(outputCaptureEnableC[15][12]),
        .io_outputCaptureEnableC_15_13(outputCaptureEnableC[15][13]),
        .io_outputCaptureEnableC_15_14(outputCaptureEnableC[15][14]),
        .io_outputCaptureEnableC_15_15(outputCaptureEnableC[15][15]),
// end of regin outputCaptureEnableC
// regin resetPartialC
        .io_resetPartialC_0_0(resetPartialC[0][0]),
        .io_resetPartialC_0_1(resetPartialC[0][1]),
        .io_resetPartialC_0_2(resetPartialC[0][2]),
        .io_resetPartialC_0_3(resetPartialC[0][3]),
        .io_resetPartialC_0_4(resetPartialC[0][4]),
        .io_resetPartialC_0_5(resetPartialC[0][5]),
        .io_resetPartialC_0_6(resetPartialC[0][6]),
        .io_resetPartialC_0_7(resetPartialC[0][7]),
        .io_resetPartialC_0_8(resetPartialC[0][8]),
        .io_resetPartialC_0_9(resetPartialC[0][9]),
        .io_resetPartialC_0_10(resetPartialC[0][10]),
        .io_resetPartialC_0_11(resetPartialC[0][11]),
        .io_resetPartialC_0_12(resetPartialC[0][12]),
        .io_resetPartialC_0_13(resetPartialC[0][13]),
        .io_resetPartialC_0_14(resetPartialC[0][14]),
        .io_resetPartialC_0_15(resetPartialC[0][15]),
        .io_resetPartialC_1_0(resetPartialC[1][0]),
        .io_resetPartialC_1_1(resetPartialC[1][1]),
        .io_resetPartialC_1_2(resetPartialC[1][2]),
        .io_resetPartialC_1_3(resetPartialC[1][3]),
        .io_resetPartialC_1_4(resetPartialC[1][4]),
        .io_resetPartialC_1_5(resetPartialC[1][5]),
        .io_resetPartialC_1_6(resetPartialC[1][6]),
        .io_resetPartialC_1_7(resetPartialC[1][7]),
        .io_resetPartialC_1_8(resetPartialC[1][8]),
        .io_resetPartialC_1_9(resetPartialC[1][9]),
        .io_resetPartialC_1_10(resetPartialC[1][10]),
        .io_resetPartialC_1_11(resetPartialC[1][11]),
        .io_resetPartialC_1_12(resetPartialC[1][12]),
        .io_resetPartialC_1_13(resetPartialC[1][13]),
        .io_resetPartialC_1_14(resetPartialC[1][14]),
        .io_resetPartialC_1_15(resetPartialC[1][15]),
        .io_resetPartialC_2_0(resetPartialC[2][0]),
        .io_resetPartialC_2_1(resetPartialC[2][1]),
        .io_resetPartialC_2_2(resetPartialC[2][2]),
        .io_resetPartialC_2_3(resetPartialC[2][3]),
        .io_resetPartialC_2_4(resetPartialC[2][4]),
        .io_resetPartialC_2_5(resetPartialC[2][5]),
        .io_resetPartialC_2_6(resetPartialC[2][6]),
        .io_resetPartialC_2_7(resetPartialC[2][7]),
        .io_resetPartialC_2_8(resetPartialC[2][8]),
        .io_resetPartialC_2_9(resetPartialC[2][9]),
        .io_resetPartialC_2_10(resetPartialC[2][10]),
        .io_resetPartialC_2_11(resetPartialC[2][11]),
        .io_resetPartialC_2_12(resetPartialC[2][12]),
        .io_resetPartialC_2_13(resetPartialC[2][13]),
        .io_resetPartialC_2_14(resetPartialC[2][14]),
        .io_resetPartialC_2_15(resetPartialC[2][15]),
        .io_resetPartialC_3_0(resetPartialC[3][0]),
        .io_resetPartialC_3_1(resetPartialC[3][1]),
        .io_resetPartialC_3_2(resetPartialC[3][2]),
        .io_resetPartialC_3_3(resetPartialC[3][3]),
        .io_resetPartialC_3_4(resetPartialC[3][4]),
        .io_resetPartialC_3_5(resetPartialC[3][5]),
        .io_resetPartialC_3_6(resetPartialC[3][6]),
        .io_resetPartialC_3_7(resetPartialC[3][7]),
        .io_resetPartialC_3_8(resetPartialC[3][8]),
        .io_resetPartialC_3_9(resetPartialC[3][9]),
        .io_resetPartialC_3_10(resetPartialC[3][10]),
        .io_resetPartialC_3_11(resetPartialC[3][11]),
        .io_resetPartialC_3_12(resetPartialC[3][12]),
        .io_resetPartialC_3_13(resetPartialC[3][13]),
        .io_resetPartialC_3_14(resetPartialC[3][14]),
        .io_resetPartialC_3_15(resetPartialC[3][15]),
        .io_resetPartialC_4_0(resetPartialC[4][0]),
        .io_resetPartialC_4_1(resetPartialC[4][1]),
        .io_resetPartialC_4_2(resetPartialC[4][2]),
        .io_resetPartialC_4_3(resetPartialC[4][3]),
        .io_resetPartialC_4_4(resetPartialC[4][4]),
        .io_resetPartialC_4_5(resetPartialC[4][5]),
        .io_resetPartialC_4_6(resetPartialC[4][6]),
        .io_resetPartialC_4_7(resetPartialC[4][7]),
        .io_resetPartialC_4_8(resetPartialC[4][8]),
        .io_resetPartialC_4_9(resetPartialC[4][9]),
        .io_resetPartialC_4_10(resetPartialC[4][10]),
        .io_resetPartialC_4_11(resetPartialC[4][11]),
        .io_resetPartialC_4_12(resetPartialC[4][12]),
        .io_resetPartialC_4_13(resetPartialC[4][13]),
        .io_resetPartialC_4_14(resetPartialC[4][14]),
        .io_resetPartialC_4_15(resetPartialC[4][15]),
        .io_resetPartialC_5_0(resetPartialC[5][0]),
        .io_resetPartialC_5_1(resetPartialC[5][1]),
        .io_resetPartialC_5_2(resetPartialC[5][2]),
        .io_resetPartialC_5_3(resetPartialC[5][3]),
        .io_resetPartialC_5_4(resetPartialC[5][4]),
        .io_resetPartialC_5_5(resetPartialC[5][5]),
        .io_resetPartialC_5_6(resetPartialC[5][6]),
        .io_resetPartialC_5_7(resetPartialC[5][7]),
        .io_resetPartialC_5_8(resetPartialC[5][8]),
        .io_resetPartialC_5_9(resetPartialC[5][9]),
        .io_resetPartialC_5_10(resetPartialC[5][10]),
        .io_resetPartialC_5_11(resetPartialC[5][11]),
        .io_resetPartialC_5_12(resetPartialC[5][12]),
        .io_resetPartialC_5_13(resetPartialC[5][13]),
        .io_resetPartialC_5_14(resetPartialC[5][14]),
        .io_resetPartialC_5_15(resetPartialC[5][15]),
        .io_resetPartialC_6_0(resetPartialC[6][0]),
        .io_resetPartialC_6_1(resetPartialC[6][1]),
        .io_resetPartialC_6_2(resetPartialC[6][2]),
        .io_resetPartialC_6_3(resetPartialC[6][3]),
        .io_resetPartialC_6_4(resetPartialC[6][4]),
        .io_resetPartialC_6_5(resetPartialC[6][5]),
        .io_resetPartialC_6_6(resetPartialC[6][6]),
        .io_resetPartialC_6_7(resetPartialC[6][7]),
        .io_resetPartialC_6_8(resetPartialC[6][8]),
        .io_resetPartialC_6_9(resetPartialC[6][9]),
        .io_resetPartialC_6_10(resetPartialC[6][10]),
        .io_resetPartialC_6_11(resetPartialC[6][11]),
        .io_resetPartialC_6_12(resetPartialC[6][12]),
        .io_resetPartialC_6_13(resetPartialC[6][13]),
        .io_resetPartialC_6_14(resetPartialC[6][14]),
        .io_resetPartialC_6_15(resetPartialC[6][15]),
        .io_resetPartialC_7_0(resetPartialC[7][0]),
        .io_resetPartialC_7_1(resetPartialC[7][1]),
        .io_resetPartialC_7_2(resetPartialC[7][2]),
        .io_resetPartialC_7_3(resetPartialC[7][3]),
        .io_resetPartialC_7_4(resetPartialC[7][4]),
        .io_resetPartialC_7_5(resetPartialC[7][5]),
        .io_resetPartialC_7_6(resetPartialC[7][6]),
        .io_resetPartialC_7_7(resetPartialC[7][7]),
        .io_resetPartialC_7_8(resetPartialC[7][8]),
        .io_resetPartialC_7_9(resetPartialC[7][9]),
        .io_resetPartialC_7_10(resetPartialC[7][10]),
        .io_resetPartialC_7_11(resetPartialC[7][11]),
        .io_resetPartialC_7_12(resetPartialC[7][12]),
        .io_resetPartialC_7_13(resetPartialC[7][13]),
        .io_resetPartialC_7_14(resetPartialC[7][14]),
        .io_resetPartialC_7_15(resetPartialC[7][15]),
        .io_resetPartialC_8_0(resetPartialC[8][0]),
        .io_resetPartialC_8_1(resetPartialC[8][1]),
        .io_resetPartialC_8_2(resetPartialC[8][2]),
        .io_resetPartialC_8_3(resetPartialC[8][3]),
        .io_resetPartialC_8_4(resetPartialC[8][4]),
        .io_resetPartialC_8_5(resetPartialC[8][5]),
        .io_resetPartialC_8_6(resetPartialC[8][6]),
        .io_resetPartialC_8_7(resetPartialC[8][7]),
        .io_resetPartialC_8_8(resetPartialC[8][8]),
        .io_resetPartialC_8_9(resetPartialC[8][9]),
        .io_resetPartialC_8_10(resetPartialC[8][10]),
        .io_resetPartialC_8_11(resetPartialC[8][11]),
        .io_resetPartialC_8_12(resetPartialC[8][12]),
        .io_resetPartialC_8_13(resetPartialC[8][13]),
        .io_resetPartialC_8_14(resetPartialC[8][14]),
        .io_resetPartialC_8_15(resetPartialC[8][15]),
        .io_resetPartialC_9_0(resetPartialC[9][0]),
        .io_resetPartialC_9_1(resetPartialC[9][1]),
        .io_resetPartialC_9_2(resetPartialC[9][2]),
        .io_resetPartialC_9_3(resetPartialC[9][3]),
        .io_resetPartialC_9_4(resetPartialC[9][4]),
        .io_resetPartialC_9_5(resetPartialC[9][5]),
        .io_resetPartialC_9_6(resetPartialC[9][6]),
        .io_resetPartialC_9_7(resetPartialC[9][7]),
        .io_resetPartialC_9_8(resetPartialC[9][8]),
        .io_resetPartialC_9_9(resetPartialC[9][9]),
        .io_resetPartialC_9_10(resetPartialC[9][10]),
        .io_resetPartialC_9_11(resetPartialC[9][11]),
        .io_resetPartialC_9_12(resetPartialC[9][12]),
        .io_resetPartialC_9_13(resetPartialC[9][13]),
        .io_resetPartialC_9_14(resetPartialC[9][14]),
        .io_resetPartialC_9_15(resetPartialC[9][15]),
        .io_resetPartialC_10_0(resetPartialC[10][0]),
        .io_resetPartialC_10_1(resetPartialC[10][1]),
        .io_resetPartialC_10_2(resetPartialC[10][2]),
        .io_resetPartialC_10_3(resetPartialC[10][3]),
        .io_resetPartialC_10_4(resetPartialC[10][4]),
        .io_resetPartialC_10_5(resetPartialC[10][5]),
        .io_resetPartialC_10_6(resetPartialC[10][6]),
        .io_resetPartialC_10_7(resetPartialC[10][7]),
        .io_resetPartialC_10_8(resetPartialC[10][8]),
        .io_resetPartialC_10_9(resetPartialC[10][9]),
        .io_resetPartialC_10_10(resetPartialC[10][10]),
        .io_resetPartialC_10_11(resetPartialC[10][11]),
        .io_resetPartialC_10_12(resetPartialC[10][12]),
        .io_resetPartialC_10_13(resetPartialC[10][13]),
        .io_resetPartialC_10_14(resetPartialC[10][14]),
        .io_resetPartialC_10_15(resetPartialC[10][15]),
        .io_resetPartialC_11_0(resetPartialC[11][0]),
        .io_resetPartialC_11_1(resetPartialC[11][1]),
        .io_resetPartialC_11_2(resetPartialC[11][2]),
        .io_resetPartialC_11_3(resetPartialC[11][3]),
        .io_resetPartialC_11_4(resetPartialC[11][4]),
        .io_resetPartialC_11_5(resetPartialC[11][5]),
        .io_resetPartialC_11_6(resetPartialC[11][6]),
        .io_resetPartialC_11_7(resetPartialC[11][7]),
        .io_resetPartialC_11_8(resetPartialC[11][8]),
        .io_resetPartialC_11_9(resetPartialC[11][9]),
        .io_resetPartialC_11_10(resetPartialC[11][10]),
        .io_resetPartialC_11_11(resetPartialC[11][11]),
        .io_resetPartialC_11_12(resetPartialC[11][12]),
        .io_resetPartialC_11_13(resetPartialC[11][13]),
        .io_resetPartialC_11_14(resetPartialC[11][14]),
        .io_resetPartialC_11_15(resetPartialC[11][15]),
        .io_resetPartialC_12_0(resetPartialC[12][0]),
        .io_resetPartialC_12_1(resetPartialC[12][1]),
        .io_resetPartialC_12_2(resetPartialC[12][2]),
        .io_resetPartialC_12_3(resetPartialC[12][3]),
        .io_resetPartialC_12_4(resetPartialC[12][4]),
        .io_resetPartialC_12_5(resetPartialC[12][5]),
        .io_resetPartialC_12_6(resetPartialC[12][6]),
        .io_resetPartialC_12_7(resetPartialC[12][7]),
        .io_resetPartialC_12_8(resetPartialC[12][8]),
        .io_resetPartialC_12_9(resetPartialC[12][9]),
        .io_resetPartialC_12_10(resetPartialC[12][10]),
        .io_resetPartialC_12_11(resetPartialC[12][11]),
        .io_resetPartialC_12_12(resetPartialC[12][12]),
        .io_resetPartialC_12_13(resetPartialC[12][13]),
        .io_resetPartialC_12_14(resetPartialC[12][14]),
        .io_resetPartialC_12_15(resetPartialC[12][15]),
        .io_resetPartialC_13_0(resetPartialC[13][0]),
        .io_resetPartialC_13_1(resetPartialC[13][1]),
        .io_resetPartialC_13_2(resetPartialC[13][2]),
        .io_resetPartialC_13_3(resetPartialC[13][3]),
        .io_resetPartialC_13_4(resetPartialC[13][4]),
        .io_resetPartialC_13_5(resetPartialC[13][5]),
        .io_resetPartialC_13_6(resetPartialC[13][6]),
        .io_resetPartialC_13_7(resetPartialC[13][7]),
        .io_resetPartialC_13_8(resetPartialC[13][8]),
        .io_resetPartialC_13_9(resetPartialC[13][9]),
        .io_resetPartialC_13_10(resetPartialC[13][10]),
        .io_resetPartialC_13_11(resetPartialC[13][11]),
        .io_resetPartialC_13_12(resetPartialC[13][12]),
        .io_resetPartialC_13_13(resetPartialC[13][13]),
        .io_resetPartialC_13_14(resetPartialC[13][14]),
        .io_resetPartialC_13_15(resetPartialC[13][15]),
        .io_resetPartialC_14_0(resetPartialC[14][0]),
        .io_resetPartialC_14_1(resetPartialC[14][1]),
        .io_resetPartialC_14_2(resetPartialC[14][2]),
        .io_resetPartialC_14_3(resetPartialC[14][3]),
        .io_resetPartialC_14_4(resetPartialC[14][4]),
        .io_resetPartialC_14_5(resetPartialC[14][5]),
        .io_resetPartialC_14_6(resetPartialC[14][6]),
        .io_resetPartialC_14_7(resetPartialC[14][7]),
        .io_resetPartialC_14_8(resetPartialC[14][8]),
        .io_resetPartialC_14_9(resetPartialC[14][9]),
        .io_resetPartialC_14_10(resetPartialC[14][10]),
        .io_resetPartialC_14_11(resetPartialC[14][11]),
        .io_resetPartialC_14_12(resetPartialC[14][12]),
        .io_resetPartialC_14_13(resetPartialC[14][13]),
        .io_resetPartialC_14_14(resetPartialC[14][14]),
        .io_resetPartialC_14_15(resetPartialC[14][15]),
        .io_resetPartialC_15_0(resetPartialC[15][0]),
        .io_resetPartialC_15_1(resetPartialC[15][1]),
        .io_resetPartialC_15_2(resetPartialC[15][2]),
        .io_resetPartialC_15_3(resetPartialC[15][3]),
        .io_resetPartialC_15_4(resetPartialC[15][4]),
        .io_resetPartialC_15_5(resetPartialC[15][5]),
        .io_resetPartialC_15_6(resetPartialC[15][6]),
        .io_resetPartialC_15_7(resetPartialC[15][7]),
        .io_resetPartialC_15_8(resetPartialC[15][8]),
        .io_resetPartialC_15_9(resetPartialC[15][9]),
        .io_resetPartialC_15_10(resetPartialC[15][10]),
        .io_resetPartialC_15_11(resetPartialC[15][11]),
        .io_resetPartialC_15_12(resetPartialC[15][12]),
        .io_resetPartialC_15_13(resetPartialC[15][13]),
        .io_resetPartialC_15_14(resetPartialC[15][14]),
        .io_resetPartialC_15_15(resetPartialC[15][15]),
// end of regin resetPartialC
        // Output C ports
        .io_outputC_0(io_outputC[0]),   .io_outputC_1(io_outputC[1]),
        .io_outputC_2(io_outputC[2]),   .io_outputC_3(io_outputC[3]),
        .io_outputC_4(io_outputC[4]),   .io_outputC_5(io_outputC[5]),
        .io_outputC_6(io_outputC[6]),   .io_outputC_7(io_outputC[7]),
        .io_outputC_8(io_outputC[8]),   .io_outputC_9(io_outputC[9]),
        .io_outputC_10(io_outputC[10]), .io_outputC_11(io_outputC[11]),
        .io_outputC_12(io_outputC[12]), .io_outputC_13(io_outputC[13]),
        .io_outputC_14(io_outputC[14]), .io_outputC_15(io_outputC[15]),
        .io_outputC_16(io_outputC[16]), .io_outputC_17(io_outputC[17]),
        .io_outputC_18(io_outputC[18]), .io_outputC_19(io_outputC[19]),
        .io_outputC_20(io_outputC[20]), .io_outputC_21(io_outputC[21]),
        .io_outputC_22(io_outputC[22]), .io_outputC_23(io_outputC[23]),
        .io_outputC_24(io_outputC[24]), .io_outputC_25(io_outputC[25]),
        .io_outputC_26(io_outputC[26]), .io_outputC_27(io_outputC[27]),
        .io_outputC_28(io_outputC[28]), .io_outputC_29(io_outputC[29]),
        .io_outputC_30(io_outputC[30])
    );

    // Memory for test vectors
    reg [7:0] mem_a [0:5119];   // 2 matrices * 256 elements
    reg [7:0] mem_b [0:5119];
    reg [25:0] mem_ref [0:5119]; // 20-bit reference output

    integer i, j, cycle;
    integer test_offset;

    initial begin
        `ifdef FST_DUMP
            $dumpfile("results/dump.fst");
        `else
            $dumpfile("results/dump.vcd");
        `endif
        // $dumpfile("results/dump.vcd");
        $dumpvars(0, tb_systolic);

        // Load test vectors
        $readmemh("vectors/in_a.hex", mem_a);
        $readmemh("vectors/in_b.hex", mem_b);
        $readmemh("vectors/ref_c.hex", mem_ref);

        // Initialize signals
        clk = 1;
        reset = 1;                              // 1 = reset
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                outputCaptureEnableC[i][j] = 1'b0;
                resetPartialC[i][j] = 1'b1;
            end
        end

        // Initialize input arrays
        for (i = 0; i < 16; i = i + 1) begin
            io_inputA[i] = 8'h00;
            io_inputB[i] = 8'h00;
        end

        #200 reset = 0;

        $display("Starting Test...");
        for (test_offset = 11; test_offset < 12; test_offset = test_offset + 1) begin
            for (i = 0; i < 16; i = i + 1) begin
                for (j = 0; j < 16; j = j + 1) begin
                    resetPartialC[i][j] = 1'b0;
                    outputCaptureEnableC[i][j] = 1'b1;
                end
            end
            // load_weight(0);      // Load first(0) B matrix
            // drive_input_a(0);    // Drive first(0) A matrix with skew
            
            drive_inputs_simultaneous(test_offset);

            // should wait for 2N (N+1(PE) + N-1(skew))
            // need to wait for Ty kew -> after 16 cycles the output out
            #20     // input delay 1-cycle + skew delay 1-cycle
            for (cycle = 0; cycle < 31; cycle = cycle + 1) begin
                @(posedge clk);
                if (cycle >= 16) begin
                    check_outputs_vectorwise(cycle, test_offset);
                end
                for (i = 0; i < 16; i = i + 1) begin
                    for (j = 0; j < 16; j = j + 1) begin
                        if (i + j == cycle) begin
                            outputCaptureEnableC[i][j] <= 1'b0;
                            resetPartialC[i][j] <= 1'b1;
                        end
                    end
                end
            end
            
            // check_results(0);    // Check against reference
            
            #50;
        end
        $display("Test completed.");
        $finish;
    end

    always #5 clk = ~clk;

    // Task: Weight Loading (Sequential row by row)
    task load_weight(input integer offset);
        integer r, c;
        begin
            @(posedge clk);
            for (r = 0; r < 16; r = r + 1) begin
                for (c = 0; c < 16; c = c + 1) begin
                    outputCaptureEnableC[r][c] = 1'b1;
                end
            end
            
            for (r = 0; r < 16; r = r + 1) begin
                for (c = 0; c < 16; c = c + 1) begin
                    io_inputB[c] = mem_b[offset + r*16 + c];
                end
                @(posedge clk);
            end

            for (r = 0; r < 16; r = r + 1) begin
                for (c = 0; c < 16; c = c + 1) begin
                    outputCaptureEnableC[r][c] = 1'b0;
                end
            end

            $display("Weight loading completed at time %t", $time);
        end
    endtask

    // Task: Input A Driving with Skew
    task drive_input_a(input integer offset);
        integer r, col;
        begin
            for (r = 0; r < 16; r = r + 1) begin
                for (col = 0; col < 16; col = col + 1) begin
                    io_inputA[r] = mem_a[offset + r*16 + col];
                end
                @(posedge clk);
            end
            $display("Input A driving completed at time %t", $time);
        end
    endtask

    // Task: Check results against reference
    task check_results(input integer offset);
        integer row, col, idx;
        integer errors;
        begin
            @(posedge clk);         // for clock sync
            errors = 0;
            for (row = 0; row < 16; row = row + 1) begin
                for (col = 0; col < 16; col = col + 1) begin
                    idx = offset + row*16 + col;
                    if (io_outputC[col] !== mem_ref[idx]) begin
                        $display("ERROR at row %d, col %d: Expected %h, Got %h", 
                                row, col, mem_ref[idx], io_outputC[col]);
                        errors = errors + 1;
                    end else begin
                        // $display("PASS row %d, col %d: %h", row, col, io_outputC[col]);
                    end
                end
                @(posedge clk);
            end

            if (errors == 0) begin
                $display("*** ALL TESTS PASSED ***");
            end else begin
                $display("*** %d ERRORS FOUND ***", errors);
            end
        end
    endtask

    // for Output Stationary driving AB simultaneously
    task drive_inputs_simultaneous(input integer offset);
        integer row, col;
        begin
            for (row = 0; row < 16; row = row + 1) begin
                @(posedge clk);
                for (col = 0; col < 16; col = col + 1) begin
                    io_inputA[col] <= mem_a[offset*256 + col*16 + row];
                    io_inputB[col] <= mem_b[offset*256 + row*16 + col];
                end
            end

            @(posedge clk);
            for (row = 0; row < 16; row = row + 1) begin
                for (col = 0; col < 16; col = col + 1) begin
                    io_inputA[col] <= 8'h00;
                    io_inputB[col] <= 8'h00;
                end
            end
        end
    endtask

    task check_outputs_vectorwise(input integer current_cycle, input integer offset);
        integer row_idx;
        integer start_port;
        integer target_col;
        reg [25:0] golden_val;
        begin
            start_port = current_cycle - 16;
            target_col = current_cycle - 16;

            for (row_idx = 0; row_idx < 16; row_idx = row_idx + 1) begin
                golden_val = mem_ref[offset*256 + (row_idx * 16) + target_col];

                if (io_outputC[start_port + row_idx] !== golden_val) begin
                    $display("[ERROR] Cycle %d | Col %d, Row %d (Port %d): Exp %h, Got %h", 
                            current_cycle, target_col, row_idx, start_port + row_idx, golden_val, io_outputC[start_port + row_idx]);
                end else begin
                    // $display("[PASS] Port %d OK", start_port + row_idx);
                end
            end
        end
    endtask
    
endmodule

