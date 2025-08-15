`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/14 01:04:09
// Design Name: 
// Module Name: tb_lzc_64
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


module tb_lzc_64;
    reg [63:0] a;
    wire [5:0] c;
    wire v;

    lzc_64 uut (
        .a(a),
        .c(c),
        .v(v)
    );

    initial begin
        // 测试1：全0
        a = 64'h0000_0000_0000_0000;
        #10;
        $display("a=%h, c=%d, v=%b", a, c, v);

        // 测试2：只有最低位为1
        a = 64'h0000_0000_0000_0001;
        #10;
        $display("a=%h, c=%d, v=%b", a, c, v);

        // 测试3：只有最高位为1
        a = 64'h8000_0000_0000_0000;
        #10;
        $display("a=%h, c=%d, v=%b", a, c, v);

        // 测试4：前导零为4
        a = 64'h00F0_0000_0000_0000;
        #10;
        $display("a=%h, c=%d, v=%b", a, c, v);

        // 测试5：全1
        a = 64'hFFFF_FFFF_FFFF_FFFF;
        #10;
        $display("a=%h, c=%d, v=%b", a, c, v);

        // 测试6：随机数
        a = 64'h0000_1234_5678_9ABC;
        #10;
        $display("a=%h, c=%d, v=%b", a, c, v);

        $stop;
    end
endmodule
