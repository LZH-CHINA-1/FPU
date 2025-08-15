`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/15 02:03:23
// Design Name: 
// Module Name: tb_FPU_single
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

`timescale 1ns/1ps

module tb_FPU_single;
    reg clk;
    reg rst_n;
    reg [31:0] data1, data2, data3;
    reg [4:0] inst;
    wire [31:0] result;
    wire [4:0] flags;
    reg [31:0] result_ideal;

    // 指令宏定�?
    localparam fadd   = 5'd1;
    localparam fsub   = 5'd2;
    localparam fmul   = 5'd3;
    localparam fdiv   = 5'd4;
    localparam fsqrt  = 5'd5;
    localparam fmadd  = 5'd6;
    localparam fmsub  = 5'd7;
    localparam fnmadd = 5'd8;
    localparam fnmsub = 5'd9;

    FPU_single uut (
        .clk(clk),
        .rst_n(rst_n),
        .data1(data1),
        .data2(data2),
        .data3(data3),
        .inst(inst),
        .result(result),
        .flags(flags)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        rst_n = 0;
        data1 = 32'h0;
        data2 = 32'h0;
        data3 = 32'h0;
        inst  = 5'd0;
        result_ideal = 32'h0;
        #20;
        rst_n = 1;
        #10;

        // fadd: 1.0 + 2.0
        data1 = 32'h3f800000; // 1.0
        data2 = 32'h40000000; // 2.0
        inst  = fadd;
        result_ideal = 32'h40400000; // 3.0
        #500;
        $display("fadd: result=%h result_ideal=%h flags=%b", result, result_ideal, flags);

        // fsub: 3.0 - 2.0
        data1 = 32'h40400000; // 3.0
        data2 = 32'h40000000; // 2.0
        inst  = fsub;
        result_ideal = 32'h3f800000; // 1.0
        #500;
        $display("fsub: result=%h result_ideal=%h flags=%b", result, result_ideal, flags);

        // fmul: 2.0 * 4.0
        data1 = 32'h40000000; // 2.0
        data2 = 32'h40800000; // 4.0
        inst  = fmul;
        result_ideal = 32'h41000000; // 8.0
        #500;
        $display("fmul: result=%h result_ideal=%h flags=%b", result, result_ideal, flags);

        // fdiv: 4.0 / 2.0
        data1 = 32'h40800000; // 4.0
        data2 = 32'h40000000; // 2.0
        inst  = fdiv;
        result_ideal = 32'h40000000; // 2.0
        #500;
        $display("fdiv: result=%h result_ideal=%h flags=%b", result, result_ideal, flags);

        // fsqrt: sqrt(9.0)
        data1 = 32'h41100000; // 9.0
        data2 = 32'h0;
        inst  = fsqrt;
        result_ideal = 32'h40400000; // 3.0
        #500;
        $display("fsqrt: result=%h result_ideal=%h flags=%b", result, result_ideal, flags);

        // fmadd: 2.0 * 3.0 + 4.0
        data1 = 32'h40000000; // 2.0
        data2 = 32'h40400000; // 3.0
        data3 = 32'h40800000; // 4.0
        inst  = fmadd;
        result_ideal = 32'h41200000; // 10.0
        #500;
        $display("fmadd: result=%h result_ideal=%h flags=%b", result, result_ideal, flags);

        // fmsub: 2.0 * 3.0 - 4.0
        data1 = 32'h40000000; // 2.0
        data2 = 32'h40400000; // 3.0
        data3 = 32'h40800000; // 4.0
        inst  = fmsub;
        result_ideal = 32'h40000000; // 2.0
        #500;
        $display("fmsub: result=%h result_ideal=%h flags=%b", result, result_ideal, flags);

        // fnmadd: -2.0 * 3.0 + 4.0
        data1 = 32'h40000000; // 2.0
        data2 = 32'h40400000; // 3.0
        data3 = 32'h40800000; // 4.0
        inst  = fnmadd;
        result_ideal = 32'hc0000000; // -2.0
        #500;
        $display("fnmadd: result=%h result_ideal=%h flags=%b", result, result_ideal, flags);

        // fnmsub: -2.0 * 3.0 - 4.0
        data1 = 32'h40000000; // 2.0
        data2 = 32'h40400000; // 3.0
        data3 = 32'h40800000; // 4.0
        inst  = fnmsub;
        result_ideal = 32'hc1200000; // -10.0
        #500;
        $display("fnmsub: result=%h result_ideal=%h flags=%b", result, result_ideal, flags);

        // 异常测试：溢出（�?大数 + �?大数�?
        data1 = 32'h7f7fffff; // �?大正float
        data2 = 32'h7f7fffff; // �?大正float
        inst  = fadd;
        result_ideal = 32'h7f800000; // +inf
        #500;
        $display("fadd overflow: result=%h result_ideal=%h flags=%b", result, result_ideal, flags);

        // 异常测试：下溢
        data1 = 32'hff7fffff; // 大负规格化float
        data2 = 32'h7f7fffff; // 大正float
        inst  = fsub;
        result_ideal = 32'hff800000; // -inf
        #500;
        $display("fsub underflow: result=%h result_ideal=%h flags=%b", result, result_ideal, flags);

        // 异常测试：除以零
        data1 = 32'h3f800000; // 1.0
        data2 = 32'h00000000; // 0.0
        inst  = fdiv;
        result_ideal = 32'h7f800000; // +inf
        #500;
        $display("fdiv div_by_zero: result=%h result_ideal=%h flags=%b", result, result_ideal, flags);

        // 异常测试：无穷/无穷?
        data1 = 32'h7f800000; // +inf
        data2 = 32'h7f800000; //
        inst  = fdiv;
        result_ideal = 32'h7fc00000; // +inf
        #500;
        $display("fmul inf: result=%h result_ideal=%h flags=%b", result, result_ideal, flags);

        // 异常测试：NaN参与运算
        data1 = 32'h7fa00000; // sNaN
        data2 = 32'h7fa00000; // sNaN
        inst  = fadd;
        result_ideal = 32'h7fc00000; // NaN
        #500;
        $display("fadd nan: result=%h result_ideal=%h flags=%b", result, result_ideal, flags);
        
        $stop;
    end
endmodule