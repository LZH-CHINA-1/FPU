`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/14 02:38:02
// Design Name: 
// Module Name: fsgnj_unit
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

//完成的指令：fsgnj.s、fsgnjn.s、fsgnjx.s、fsgnj.d、fsgnjn.d、fsgnjx.d
module fsgnj_unit(
    input [64:0] data1_conv,
    input [64:0] data2_conv,
    input [63:0] data1,
    input [63:0] data2,
    input [1:0] fmt,
    input [2:0] rm,
    input [9:0] class1,
    input [9:0] class2,
    output logic [63:0] result,
    output logic [4:0] flags
    );
    logic sign;

    always_comb begin
        if(rm== 3'b000) begin 
            sign = data2_conv[64];
        end else if(rm == 3'b001) begin 
            sign = ~data2_conv[64];
        end else if(rm == 3'b010) begin 
            sign = data1_conv[64] ^ data2_conv[64];
        end else begin
            sign = 1'b0; 
        end
        if(fmt ==2'b00) begin
            result = {32'h0,sign,data1[30:0]};
        end else if(fmt ==2'b01) begin
            result = {sign,data1[62:0]};
        end else begin
            result = 64'b0;
        end
    end
endmodule
