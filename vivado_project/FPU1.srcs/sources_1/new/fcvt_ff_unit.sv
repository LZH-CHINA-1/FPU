`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/13 00:53:48
// Design Name: 
// Module Name: fcvt_ff_unit
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

//实现的指令：fcvt.s.d fcvt.d.s
module fcvt_ff_unit(
    input [64:0] data1_conv,
    input [63:0] data1,
    input [1:0] fmt,// 00 for fcvt.s.d, 01 for fcvt.d.s
    input [9:0] class1,
    output logic [63:0] result,
    output logic [4:0] flags
    );
    logic sign;
    logic [11:0] ex_conv;
    logic [51:0] m_conv;
    logic [11:0] ex_real;
    logic [11:0] ex_cvt;
    always_comb begin
        result = 0;
        flags = 0;
        ex_cvt = 12'h0;
        sign = data1_conv[64];
        ex_conv = data1_conv[63:52];
        m_conv = data1_conv[51:0];
        ex_real = ex_conv - 12'h7ff; 
        if(fmt == 2'b00) begin // fcvt.s.d
            if(class1[8]) begin 
                flags[4] = 1'b1; 
            end else if(class1[9]) begin 
                result = (sign) ? 64'h00000000ffc00000 : 64'h000000007fc00000; 
            end else if(class1[3]|class1[4])begin
                result = (sign) ? 64'h0000000080000000 : 64'h0000000000000000;
            end else if(class1[0]|class1[7]) begin
                result = (sign) ? 64'h00000000ff800000 : 64'h000000007f800000;
            end else begin
                ex_cvt = ex_real + 12'h7f; 
                result = {32'h0,sign,ex_cvt[7:0],m_conv[51:29]};
                if (|m_conv[28:0]) begin
                    flags[0] = 1'b1;
                end
            end
        end else if(fmt == 2'b01) begin // fcvt.d.s
            if(class1[8]) begin 
                flags[4] = 1'b1; 
            end else if(class1[9]) begin 
                result = (sign) ? 64'hfff8000000000000 : 64'h7ff8000000000000; 
            end else if(class1[3]|class1[4])begin
                result = (sign) ? 64'h8000000000000000 : 64'h0000000000000000;
            end else if(class1[0]|class1[7]) begin
                result = (sign) ? 64'hfff0000000000000 : 64'hfff0000000000000;
            end else begin
                ex_cvt = ex_real + 12'h3ff; 
                result = {sign,ex_cvt[10:0],m_conv};
            end       
        end
    end
endmodule