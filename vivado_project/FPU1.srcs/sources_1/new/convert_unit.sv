`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/12 01:01:58
// Design Name: 
// Module Name: convert_unit
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

//实现的指令：fcvt.{s|d}.w fcvt.{s|d}.w.u fcvt.w.{s|d} fcvt.wu.{s|d} 
module convert_unit(
    input [64:0] data1_conv,
    input [63:0] data1,
    input [1:0] fmt,
    input [6:0] op,
    input [9:0] class1,
    output logic [63:0] result,
    output logic [4:0] flags
    );
    logic unsigned_flag;
    logic if_fi;
    logic sign;
    logic [11:0] ex_bias;
    logic [51:0] m_bias;
    logic [11:0] ex_conv;
    logic [51:0] m_conv;
    logic [51:0] m_int;
    logic [11:0] ex_real;
    logic [5:0] anticounter;
    logic [5:0] c;
    logic [63:0]data;
    logic [31:0] word;
    lzc_64 lzcm
    (
         .a(data),
         .c(anticounter),
         .v()
    );
    always_comb begin
        unsigned_flag = op[0];//0 for signed, 1 for unsigned
        if_fi = op[3];//1 整转浮点， 0 浮点转整
        assign c = ~anticounter;
        data = (unsigned_flag)? {32'h0,data1[31:0]}:{33'h0,data1[30:0]};
        result = 0;
        flags = 0;
        word = 32'h0;
        m_int = 52'h0;
        ex_bias = (fmt == 2'b01) ? 12'h3ff : 12'h7f;
        m_bias = 52'h0;
        sign = (if_fi)? data1[31] : data1_conv[64];
        ex_conv = data1_conv[63:52];
        m_conv = data1_conv[51:0];
        ex_real = ex_conv - 12'h7ff; 

        if (if_fi) begin // 整转浮点
            if (class1[4])begin
                result = 64'h0;
            end else if (class1[3]&&~unsigned_flag) begin
                result = (fmt == 2'b01) ? 64'h8000000000000000 : 64'h80000000;
            end else begin
                if(!c) begin
                    m_bias =(unsigned_flag)?{data1[31:0],20'h0}:{data1[30:0],21'h0};
                    m_bias=m_bias<<(c+1);
                    ex_bias=ex_bias+12'd31-c;
                end
                if  (fmt == 2'b01) begin
                    result = (unsigned_flag)? {1'b0,ex_bias[10:0],m_bias}:{sign,ex_bias[10:0],m_bias}; 
                end else begin
                    result = (unsigned_flag)? {33'h0,ex_bias[7:0],m_bias[51:29]}:{32'h0,sign,ex_bias[7:0],m_bias[51:29]};
                    if(|m_bias[28:0]) begin
                        flags[0] = 1'b1;
                    end
                end
            end
        end 
        else if (!if_fi) begin  // 浮点转整
            if (class1[3]|class1[4]) begin
                word = {sign,31'h0};
            end else if (class1[8]|class1[9]) begin
                flags[4] = 1'b1;
            end else begin
                if (ex_conv >= 12'h7ff) begin
                    if(ex_real<12'd31) begin
                        m_int = m_conv>>(11'd52 - ex_real);
                        m_int[ex_real+1]=1'b1;
                        if (|m_conv[(11'd52 - ex_real - 1):0]) begin
                            flags[0] = 1'b1;
                        end
                    end
                    else if((ex_real==12'd31)&&unsigned_flag) begin
                        m_int = m_conv>>12'd21;
                        m_int[32]=1'b1;
                        if (|m_conv[20:0]) begin
                            flags[0] = 1'b1;
                        end
                    end
                    else begin
                        flags[2] = 1'b1;
                        m_int = 52'h0000000000000;
                    end
                end 
                else if (ex_conv < 12'h7ff) begin
                    flags[0] = 1'b1;
                end
                if (unsigned_flag)
                    word = m_int[31:0];
                else
                m_int[30:0] = (sign) ? (~m_int[30:0] + 1'b1) : m_int[30:0];
                word ={sign, m_int[30:0]};
            end
            result = {32'h0,word};
        end
    end
endmodule