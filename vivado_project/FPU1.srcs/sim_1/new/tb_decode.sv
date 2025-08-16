`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/17 02:33:32
// Design Name: 
// Module Name: tb_decode
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_decode;
    reg [31:0] instr;
    reg [4:0] inst_ideal;
    wire fload, fstore, error;
    wire [11:0] imm;
    wire [1:0] fmt;
    wire [4:0] inst, rs1, rs2, rs3, rd;

    decode uut (
        .instr(instr),
        .fload(fload),
        .fstore(fstore),
        .imm(imm),
        .fmt(fmt),
        .inst(inst),
        .rs1(rs1),
        .rs2(rs2),
        .rs3(rs3),
        .rd(rd),
        .error(error)
    );

    initial begin
        // 测试 flw 指令
        instr = 32'b000000000001_00001_010_00010_0000111; inst_ideal = 0; // flw x2, 1(x1)
        #10;
        $display("flw: fload=%b, imm=%h, rs1=%d, rd=%d, inst=%d, inst_ideal=%d, error=%b", fload, imm, rs1, rd, inst, inst_ideal, error);

        // 测试 fsw 指令
        instr = 32'b0000000_00010_00001_010_00011_0100111; inst_ideal = 0; // fsw x2, 3(x1)
        #10;
        $display("fsw: fstore=%b, imm=%h, rs1=%d, rs2=%d, inst=%d, inst_ideal=%d, error=%b", fstore, imm, rs1, rs2, inst, inst_ideal, error);

        // 测试 fadd.s 指令
        instr = 32'b0000000_00010_00001_000_00100_1010011; inst_ideal = 1; // fadd.s x4, x1, x2
        #10;
        $display("fadd.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rd, error);

        // 测试 fsub.s 指令
        instr = 32'b0000100_00010_00001_000_00101_1010011; inst_ideal = 2; // fsub.s x5, x1, x2
        #10;
        $display("fsub.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rd, error);

        // 测试 fmul.s 指令
        instr = 32'b0001000_00010_00001_000_00110_1010011; inst_ideal = 3; // fmul.s x6, x1, x2
        #10;
        $display("fmul.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rd, error);

        // 测试 fdiv.s 指令
        instr = 32'b0001100_00010_00001_000_00111_1010011; inst_ideal = 4; // fdiv.s x7, x1, x2
        #10;
        $display("fdiv.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rd, error);

        // 测试 fsqrt.s 指令
        instr = 32'b0101100_00000_00001_000_01000_1010011; inst_ideal = 5; // fsqrt.s x8, x1
        #10;
        $display("fsqrt.s: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rd, error);

        // 测试 fsgnj.s 指令
        instr = 32'b0010000_00010_00001_000_01001_1010011; inst_ideal = 20; // fsgnj.s x9, x1, x2
        #10;
        $display("fsgnj.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rd, error);

        // 测试 fsgnjn.s 指令
        instr = 32'b0010000_00010_00001_001_01010_1010011; inst_ideal = 21; // fsgnjn.s x10, x1, x2
        #10;
        $display("fsgnjn.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rd, error);

        // 测试 fsgnjx.s 指令
        instr = 32'b0010000_00010_00001_010_01011_1010011; inst_ideal = 22; // fsgnjx.s x11, x1, x2
        #10;
        $display("fsgnjx.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rd, error);

        // 测试 fmin.s 指令
        instr = 32'b0010100_00010_00001_000_01100_1010011; inst_ideal = 23; // fmin.s x12, x1, x2
        #10;
        $display("fmin.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rd, error);

        // 测试 fmax.s 指令
        instr = 32'b0010100_00010_00001_001_01101_1010011; inst_ideal = 24; // fmax.s x13, x1, x2
        #10;
        $display("fmax.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rd, error);

        // 测试 fcvt.s.w 指令
        instr = 32'b1101000_00000_00001_000_01110_1010011; inst_ideal = 10; // fcvt.s.w x14, x1
        #10;
        $display("fcvt.s.w: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rd, error);

        // 测试 fcvt.s.wu 指令
        instr = 32'b1101000_00001_00001_000_01111_1010011; inst_ideal = 11; // fcvt.s.wu x15, x1
        #10;
        $display("fcvt.s.wu: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rd, error);

        // 测试 fcvt.w.s 指令
        instr = 32'b1100000_00000_00001_000_10000_1010011; inst_ideal = 12; // fcvt.w.s x16, x1
        #10;
        $display("fcvt.w.s: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rd, error);

        // 测试 fcvt.wu.s 指令
        instr = 32'b1100000_00001_00001_000_10001_1010011; inst_ideal = 13; // fcvt.wu.s x17, x1
        #10;
        $display("fcvt.wu.s: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rd, error);

        // 测试 feq.s 指令
        instr = 32'b1010000_00010_00001_010_10010_1010011; inst_ideal = 30; // feq.s x18, x1, x2
        #10;
        $display("feq.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rd, error);

        // 测试 flt.s 指令
        instr = 32'b1010000_00010_00001_001_10011_1010011; inst_ideal = 29; // flt.s x19, x1, x2
        #10;
        $display("flt.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rd, error);

        // 测试 fle.s 指令
        instr = 32'b1010000_00010_00001_000_10100_1010011; inst_ideal = 28; // fle.s x20, x1, x2
        #10;
        $display("fle.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rd, error);

        // 测试 fclass.s 指令
        instr = 32'b1110000_00000_00001_001_10101_1010011; inst_ideal = 25; // fclass.s x21, x1
        #10;
        $display("fclass.s: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rd, error);

        // 测试 fmv.x.w 指令
        instr = 32'b1110000_00000_00001_000_10110_1010011; inst_ideal = 26; // fmv.x.w x22, x1
        #10;
        $display("fmv.x.w: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rd, error);

        // 测试 fmv.w.x 指令
        instr = 32'b1111000_00000_00001_000_10111_1010011; inst_ideal = 27; // fmv.w.x x23, x1
        #10;
        $display("fmv.w.x: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rd, error);

        // 测试 FMADD.S 指令
        instr = 32'b0000100_00010_00001_000_00100_1000011; inst_ideal = 6; // fmadd.s x4, x1, x2, x0
        #10;
        $display("fmadd.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rs3=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rs3, rd, error);

        // 测试 FMSUB.S 指令
        instr = 32'b0000100_00010_00001_000_00100_1000111; inst_ideal = 7; // fmsub.s x4, x1, x2, x0
        #10;
        $display("fmsub.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rs3=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rs3, rd, error);

        // 测试 FNMADD.S 指令
        instr = 32'b0000100_00010_00001_000_00100_1001011; inst_ideal = 8; // fnmadd.s x4, x1, x2, x0
        #10;
        $display("fnmadd.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rs3=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rs3, rd, error);

        // 测试 FNMSUB.S 指令
        instr = 32'b0000100_00010_00001_000_00100_1001111; inst_ideal = 9; // fnmsub.s x4, x1, x2, x0
        #10;
        $display("fnmsub.s: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rs3=%d, rd=%d, error=%b", inst, inst_ideal, rs1, rs2, rs3, rd, error);

    // 测试 fadd.d 指令
    instr = 32'b0000001_00010_00001_000_01000_1010011; inst_ideal = 1; // fadd.d x8, x1, x2
    #10;
    $display("fadd.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rd, fmt, error);

    // 测试 fsub.d 指令
    instr = 32'b0000101_00010_00001_000_01001_1010011; inst_ideal = 2; // fsub.d x9, x1, x2
    #10;
    $display("fsub.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rd, fmt, error);

    // 测试 fmul.d 指令
    instr = 32'b0001001_00010_00001_000_01010_1010011; inst_ideal = 3; // fmul.d x10, x1, x2
    #10;
    $display("fmul.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rd, fmt, error);

    // 测试 fdiv.d 指令
    instr = 32'b0001101_00010_00001_000_01011_1010011; inst_ideal = 4; // fdiv.d x11, x1, x2
    #10;
    $display("fdiv.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rd, fmt, error);

    // 测试 fsqrt.d 指令
    instr = 32'b0101101_00000_00001_000_01100_1010011; inst_ideal = 5; // fsqrt.d x12, x1
    #10;
    $display("fsqrt.d: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rd, fmt, error);

    // 测试 fsgnj.d 指令
    instr = 32'b0010001_00010_00001_000_01101_1010011; inst_ideal = 20; // fsgnj.d x13, x1, x2
    #10;
    $display("fsgnj.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rd, fmt, error);

    // 测试 fsgnjn.d 指令
    instr = 32'b0010001_00010_00001_001_01110_1010011; inst_ideal = 21; // fsgnjn.d x14, x1, x2
    #10;
    $display("fsgnjn.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rd, fmt, error);

    // 测试 fsgnjx.d 指令
    instr = 32'b0010001_00010_00001_010_01111_1010011; inst_ideal = 22; // fsgnjx.d x15, x1, x2
    #10;
    $display("fsgnjx.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rd, fmt, error);

    // 测试 fmin.d 指令
    instr = 32'b0010101_00010_00001_000_10000_1010011; inst_ideal = 23; // fmin.d x16, x1, x2
    #10;
    $display("fmin.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rd, fmt, error);

    // 测试 fmax.d 指令
    instr = 32'b0010101_00010_00001_001_10001_1010011; inst_ideal = 24; // fmax.d x17, x1, x2
    #10;
    $display("fmax.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rd, fmt, error);

    // 测试 fcvt.d.s 指令
    instr = 32'b0100001_00000_00001_000_10010_1010011; inst_ideal = 15; // fcvt.d.s x18, x1
    #10;
    $display("fcvt.d.s: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rd, fmt, error);

    // 测试 fcvt.s.d 指令
    instr = 32'b0100000_00001_00001_000_10011_1010011; inst_ideal = 14; // fcvt.s.d x19, x1
    #10;
    $display("fcvt.s.d: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rd, fmt, error);

    // 测试 fcvt.w.d 指令
    instr = 32'b1100001_00000_00001_000_10100_1010011; inst_ideal = 18; // fcvt.w.d x20, x1
    #10;
    $display("fcvt.w.d: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rd, fmt, error);

    // 测试 fcvt.wu.d 指令
    instr = 32'b1100001_00001_00001_000_10101_1010011; inst_ideal = 19; // fcvt.wu.d x21, x1
    #10;
    $display("fcvt.wu.d: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rd, fmt, error);

    // 测试 fcvt.d.w 指令
    instr = 32'b1101001_00000_00001_000_10110_1010011; inst_ideal = 16; // fcvt.d.w x22, x1
    #10;
    $display("fcvt.d.w: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rd, fmt, error);

    // 测试 fcvt.d.wu 指令
    instr = 32'b1101001_00001_00001_000_10111_1010011; inst_ideal = 17; // fcvt.d.wu x23, x1
    #10;
    $display("fcvt.d.wu: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rd, fmt, error);

    // 测试 feq.d 指令
    instr = 32'b1010001_00010_00001_010_11000_1010011; inst_ideal = 30; // feq.d x24, x1, x2
    #10;
    $display("feq.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rd, fmt, error);

    // 测试 flt.d 指令
    instr = 32'b1010001_00010_00001_001_11001_1010011; inst_ideal = 29; // flt.d x25, x1, x2
    #10;
    $display("flt.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rd, fmt, error);

    // 测试 fle.d 指令
    instr = 32'b1010001_00010_00001_000_11010_1010011; inst_ideal = 28; // fle.d x26, x1, x2
    #10;
    $display("fle.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rd, fmt, error);

    // 测试 fclass.d 指令
    instr = 32'b1110001_00000_00001_001_11011_1010011; inst_ideal = 25; // fclass.d x27, x1
    #10;
    $display("fclass.d: inst=%d, inst_ideal=%d, rs1=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rd, fmt, error);

    // 测试 FMADD.D 指令
    instr = 32'b0001101_00010_00001_000_01000_1000011; inst_ideal = 6; // fmadd.d x8, x1, x2, x0
    #10;
    $display("fmadd.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rs3=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rs3, rd, fmt, error);

    // 测试 FMSUB.D 指令
    instr = 32'b0001101_00010_00001_000_01000_1000111; inst_ideal = 7; // fmsub.d x8, x1, x2, x0
    #10;
    $display("fmsub.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rs3=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rs3, rd, fmt, error);

    // 测试 FNMADD.D 指令
    instr = 32'b0001101_00010_00001_000_01000_1001011; inst_ideal = 8; // fnmadd.d x8, x1, x2, x0
    #10;
    $display("fnmadd.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rs3=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rs3, rd, fmt, error);

    // 测试 FNMSUB.D 指令
    instr = 32'b0001101_00010_00001_000_01000_1001111; inst_ideal = 9; // fnmsub.d x8, x1, x2, x0
    #10;
    $display("fnmsub.d: inst=%d, inst_ideal=%d, rs1=%d, rs2=%d, rs3=%d, rd=%d, fmt=%b, error=%b", inst, inst_ideal, rs1, rs2, rs3, rd, fmt, error);

        // 错误指令测试1：非法opcode
    instr = 32'b00000000000000000000000000000000; inst_ideal = 0;
    #10;
    $display("error1: inst=%d, inst_ideal=%d, error=%b (应为1)", inst, inst_ideal, error);

    // 错误指令测试2：合法opcode但非法funct3
    instr = 32'b000000000001_00001_001_00010_0000111; inst_ideal = 0; // opcode为load但funct3非法
    #10;
    $display("error2: inst=%d, inst_ideal=%d, error=%b (应为1)", inst, inst_ideal, error);

    // 错误指令测试3：合法opcode但非法funct7
    instr = 32'b1111111_00010_00001_000_00100_1010011; inst_ideal = 0; // opcode为fadd但funct7非法
    #10;
    $display("error3: inst=%d, inst_ideal=%d, error=%b (应为1)", inst, inst_ideal, error);

    // 错误指令测试4：FMADD非法fmt
    instr = 32'b0000000_00010_00001_000_00100_1000010; inst_ideal = 0; // opcode非法
    #10;
    $display("error4: inst=%d, inst_ideal=%d, error=%b (应为1)", inst, inst_ideal, error);
    $finish;
    end
endmodule