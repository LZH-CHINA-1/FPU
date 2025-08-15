`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/08 20:51:57
// Design Name: 
// Module Name: tb_fsqrt
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


module tb_fsqrt;
    reg clk, reset;
    reg [63:0] data;
    reg [1:0] fmt;
    reg [9:0] class1;
    wire [63:0] result;
    wire [4:0] flags;

    fsqrt uut (
        .clk(clk),
        .reset(reset),
        .data(data),
        .fmt(fmt),
        .class1(class1),
        .result(result),
        .flags(flags)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 0;
        #10;
        reset = 1;
        #10;

        // 测试1：正数（双精度）
        data = 64'h4010000000000000; // 4
        fmt = 2'b01; // double
        class1 = 10'b0001000000;
        #500;

        // 测试2：负数
        data = 64'hC000000000000000; // -2.0
        fmt = 2'b01;
        class1 = 10'b0000000010;
        #500;

        // 测试3：正无穷
        data = 64'h7FF0000000000000;
        fmt = 2'b01;
        class1 = 10'b10000000; // class[7]=1
        #500;

        // 测试4：NaN
        data = 64'h7FF8000000000000;
        fmt = 2'b01;
        class1 = 10'b1100000000; // class[8]=1
        #500;

        // 测试5：正零
        data = 64'h0000000000000000;
        fmt = 2'b01;
        class1 = 10'b00010000; // class[4]=1
        #500;

//单精度
        data=32'h41800000; // 16.0
        fmt = 2'b00; // single
        class1 = 10'b0001000000; // 正规格化数
        #500;

        data = 32'hC1800000; // -16.0
        fmt = 2'b00; // single
        class1 = 10'b0000000010; // 负规格化数
        #500;

        data = 32'h3E23D70A; // 0.16
        fmt = 2'b00; // single
        class1 = 10'b0001000000; // 正规格化数
        #500;

        $stop;
    end
endmodule
