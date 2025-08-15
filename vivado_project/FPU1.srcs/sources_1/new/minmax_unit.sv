`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/07 22:15:03
// Design Name: 
// Module Name: minmax_unit
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

//完成的指令：fmin fmax
module minmax_unit(
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
    logic [63:0] NaN;
    logic abssign;//sign=1 abs1>abs2 sign=0 abs1<abs2
    logic [1:0] result_sign;//00 to choose data1, 01 to choose data2, 10 to choose NaN 
always_comb begin
     //double NaN or float NaN
    result_sign=2'b00; //默认选择data1
    NaN=(fmt==2'b01)?64'h7ff8000000000000:64'h000000007fc00000; 
    abssign=(data1_conv[63:0]>data2_conv[63:0])?1'b1:1'b0; // 比较去掉符号位的绝对值
    flags = 0;
    if(class1[8]|class2[8]) begin//two signaling NaN
        result_sign=2;
        flags[4]=1'b1; //invalid
    end else begin
        case({class2[9],class1[9]})
            2'b11:result_sign=2; //two quiet NaN
            2'b01:result_sign=1;
            2'b10:result_sign=0;
            2'b00:begin
                case({data2_conv[64],data1_conv[64]})
                    2'b00:result_sign[0]= ~abssign; //both positive: 选择较大的数
                    2'b01:result_sign[0]=1; //data2正，data1负 -> 选data2 (较大)
                    2'b10:result_sign[0]=0; //data2负，data1正 -> 选data1 (较大)
                    2'b11:result_sign[0]= abssign; //both negative: 绝对值小的是较大的数
                endcase
            end
        endcase 
    end
    result=(result_sign[1]==1'b1)?NaN:((result_sign[0]^rm[0])?data1:data2);    
end
endmodule
