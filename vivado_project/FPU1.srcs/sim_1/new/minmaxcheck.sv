`timescale 1ns / 1ps

module minmaxcheck;
    logic clk, rst_n;
    logic [63:0] data1, data2;
    logic [1:0] fmt;
    logic [2:0] rm;
    logic [63:0] result;
    logic [4:0] flags;

    // 实例化 FPU_top
    FPU_top uut (
        .clk(clk),
        .rst_n(rst_n),
        .data1(data1),
        .data2(data2),
        .fmt(fmt),
        .rm(rm),
        .result(result),
        .flags(flags)
    );

    // 时钟生成
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
        rst_n = 0;
        #10;
        rst_n = 1;

        // 测试 min 指令（rm[0]=1）
        fmt = 2'b01; // double
        rm = 3'b001; // min
        data1 = 64'h4000000000000000; // +2.0
        data2 = 64'h3ff0000000000000; // +1.0
        #20;
        $display("MIN: data1=2.0, data2=1.0, result=%h (expect 1.0)", result);

        // 测试 max 指令（rm[0]=0）
        rm = 3'b000; // max
        data1 = 64'h4000000000000000; // +2.0
        data2 = 64'h3ff0000000000000; // +1.0
        #20;
        $display("MAX: data1=2.0, data2=1.0, result=%h (expect 2.0)", result);

        // 负数比较
        rm = 3'b001; // min
        data1 = 64'hbff0000000000000; // -1.0
        data2 = 64'h4000000000000000; // +2.0
        #20;
        $display("MIN: data1=-1.0, data2=2.0, result=%h (expect -1.0)", result);

        // NaN 测试
        rm = 3'b000; // max
        data1 = 64'h7ff8000000000000; // NaN
        data2 = 64'h4000000000000000; // +2.0
        #20;
        $display("MAX: data1=NaN, data2=2.0, result=%h (expect NaN)", result);

        $finish;
    end
endmodule