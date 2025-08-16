`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/17 00:43:48
// Design Name: 
// Module Name: FPU
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


module FPU(
    input logic i_sys_clk_p,
    input logic i_sys_clk_n,

    output logic [31:0]irom_addr,
    input logic [31:0]irom_data,

    output logic [63:0] perip_addr,
    output logic perip_wen,
    output logic [1:0] perip_mask,
    output logic [63:0] perip_wdata,
    input logic [63:0] perip_rdata
    );
    logic fpu_clk;
    logic fpu_rst;
    logic clk_100;
    logic clk_200;
    logic clk_300;
    logic clk_400;
    logic clk_600;

    pll pll_int(
        .clk_in1_p(i_sys_clk_p),
        .clk_in1_n(i_sys_clk_n),
        .clk_out1(fpu_clk),
        .clk_out2(clk_100),
        .clk_out3(clk_200),
        .clk_out4(clk_300),
        .clk_out5(clk_400),
        .clk_out6(clk_600),
        .locked(~fpu_rst)
    );

    logic [31:0]PC_reg;
    logic [31:0]instr;
    logic [63:0]mem_addr;
    logic [63:0]mem_wen;
    logic [63:0]mem_data_out;
    logic [63:0]mem_data_in;
    assign PC_reg = irom_addr;
    assign instr=irom_data;
    assign mem_addr = perip_addr;
    assign mem_wen = perip_wen;
    assign mem_data_out = perip_wdata;
    assign perip_rdata = mem_data_in;

    //********************译码***********************
    logic fload, fstore;
    logic [11:0] imm;
    logic [1:0] fmt;
    logic [4:0] inst;
    logic [4:0] rs1, rs2, rs3, rd;
    logic error;

    //译码
    decode u_decode (
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

    logic [63:0] data1_double, data2_double, data3_double;
    logic [31:0] data1_single, data2_single, data3_single;
    logic [63:0] data1, data2, data3;
    logic [63:0] result_double;
    logic [31:0] result_single;

    //取数据


    //********************计算***********************

    //fload

    //fstore

    logic valid_single, valid_double;

    //FPU_single
    FPU_single u_fpu_single(
        .clk(fpu_clk),
        .rst(fpu_rst),
        .data1(data1_single),
        .data2(data2_single),
        .data3(data3_single),
        .inst(inst),
        .result(result_single),
        .flags(flags),
        .get_result(valid_single)
    );
    //FPU_double
    FPU_double u_fpu_double(
        .clk(fpu_clk),
        .rst(fpu_rst),
        .data1(data1_double),
        .data2(data2_double),
        .data3(data3_double),
        .inst(inst),
        .result(result_double),
        .flags(flags),
        .get_result(valid_double)
    );
    //注意fcvt.s.d在FPU_double中，但是fmt=2'b00

    //********************写回***********************
    //valid信号作为计算结束的标志，可作为写回模块的使能
endmodule
