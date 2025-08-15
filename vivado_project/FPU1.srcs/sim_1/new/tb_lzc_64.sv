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
        // ����1��ȫ0
        a = 64'h0000_0000_0000_0000;
        #10;
        $display("a=%h, c=%d, v=%b", a, c, v);

        // ����2��ֻ�����λΪ1
        a = 64'h0000_0000_0000_0001;
        #10;
        $display("a=%h, c=%d, v=%b", a, c, v);

        // ����3��ֻ�����λΪ1
        a = 64'h8000_0000_0000_0000;
        #10;
        $display("a=%h, c=%d, v=%b", a, c, v);

        // ����4��ǰ����Ϊ4
        a = 64'h00F0_0000_0000_0000;
        #10;
        $display("a=%h, c=%d, v=%b", a, c, v);

        // ����5��ȫ1
        a = 64'hFFFF_FFFF_FFFF_FFFF;
        #10;
        $display("a=%h, c=%d, v=%b", a, c, v);

        // ����6�������
        a = 64'h0000_1234_5678_9ABC;
        #10;
        $display("a=%h, c=%d, v=%b", a, c, v);

        $stop;
    end
endmodule
