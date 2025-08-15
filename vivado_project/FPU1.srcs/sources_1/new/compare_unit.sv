`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/12 00:07:46
// Design Name: 
// Module Name: compare_unit
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

//完成的指令：feq flt fle
module compare_unit(
    input [64:0] data1_conv,
    input [64:0] data2_conv,
    input [63:0] data1,
    input [63:0] data2,
    input [1:0] fmt,
    input [2:0] rm,//000-fle 001-flt 010-feq
    input [9:0] class1,
    input [9:0] class2,
    output logic [63:0] result,
    output logic [4:0] flags
    );
    logic sign;
    logic comp_lt;
    logic comp_le;
    logic [63:0] one_result;
always_comb begin
    result = 0;
    flags = 0;
    sign = 1'b0;
    comp_lt = (data1_conv[63:0] < data2_conv[63:0]) ? 1'b1 : 1'b0;
    comp_le = (data1_conv[63:0] <= data2_conv[63:0]) ? 1'b1 : 1'b0;
    one_result = (fmt==2'b01)?64'h3ff0000000000000:64'h000000003f800000;
    if(rm==2) begin  //feq
        if((class1[8]|class2[8])==1) begin
            flags[4]=1;
        end else if((class1[9]|class2[9])==1) begin 
            flags[0]=0;
        end else if(((class1[3]|class1[4])&(class2[3]|class2[4]))==1) begin
            sign=1'b1;
        end else if(data1==data2) begin
            sign=1'b1;
        end
    end else if(rm==1) begin  //flt
        if((class1[8]|class2[8]|class1[9]|class2[9])==1) begin
            flags[4]=1;
        end else if(((class1[3]|class1[4])&(class2[3]|class2[4]))==1) begin
            sign=1'b0;
        end else if((data1[64]^data2[64])==1) begin
            sign=data1[64];
        end else begin
            if(data1[64]==1) begin
                sign=~comp_le;
            end else begin
                sign=comp_lt;
            end
        end
    end else if(rm==0) begin  //fle
        if((class1[8]|class2[8]|class1[9]|class2[9])==1) begin
            flags[4]=1;
        end else if(((class1[3]|class1[4])&(class2[3]|class2[4]))==1) begin
            sign=1'b1;
        end else if((data1[64]^data2[64])==1) begin
            sign=data1[64];
        end else begin
            if(data1[64]==1) begin
                sign=~comp_lt;
            end else begin
                sign=comp_le;
            end
        end
    end
    result= (sign==1'b1)?one_result:64'b0;
end
endmodule
