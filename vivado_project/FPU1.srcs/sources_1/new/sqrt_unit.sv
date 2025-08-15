`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/08 17:04:56
// Design Name: 
// Module Name: sqrt_unit
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


module sqrt_unit(
    input [64:0] data1_conv,
    input [63:0] data1,
    input [1:0] fmt,
    input [9:0] class1,
    output logic [63:0] result,
    output logic [4:0] flags
    );
    logic sign;
    logic [10:0] exponent;
    logic [10:0] exponent_real;
    logic [10:0] exponent_sqrt;
    logic [10:0] exponent_out;
    logic [53:0] mantissa;
    logic [52:0] sqrt_mantissa;
    logic [51:0] mantissa_out;
    always_comb begin
        sign = data1_conv[64];

        if (class1[4]) begin
            result = 0;
            flags = 0;
        end else if (class1[7]) begin
            if (fmt[0]) begin
                result = {1'b0, {11{1'b1}}, {52{1'b0}}};
                flags = 0;
            end else begin
                result = {33'b0, {8{1'b1}}, {23{1'b0}}};
                flags = 0;
            end
        end else if (class1[8] || class1[9]||~sign) begin
            if (fmt[0]) begin
                result = {1'b0, {11{1'b1}}, 1'b1, {51{1'b0}}};
                flags = 5'b10000;
            end else begin
                result = {33'b0, {8{1'b1}}, 1'b1, {22{1'b0}}};
                flags = 5'b10000;
            end
        end else if(sign)  begin
            result = 0;
            flags = 5'b10000;
        end else begin
            if (fmt[0]) begin
                exponent= data1[62:52];
                    exponent_real= exponent - 11'd1023;
                    exponent_sqrt= exponent_real >> 1;
                    exponent_out= exponent_sqrt + 11'd1023;
                if(class1[6]) begin
                    mantissa = exponent_real[0]?{1'b1, data1_conv[51:0],1'b0}:{2'b01, data1_conv[51:0]};
                    sqrt_mantissa = sqrt(mantissa);
                end else begin
                    mantissa = {1'b0, data1_conv[51:0]};
                    sqrt_mantissa = sqrt(mantissa);
                end
                mantissa_out = sqrt_mantissa[51:0];               
                result = {1'b0, exponent_out, mantissa_out};
                flags = 5'b00001;
            end else begin
                exponent= {3'b0,data1[30:23]};
                if(exponent[7]==1)begin
                    exponent_real= exponent - 8'd127;
                    exponent_sqrt= exponent_real >> 1;
                    exponent_out= exponent_sqrt + 8'd127;
                end else begin
                    exponent_real= 8'd127 - exponent;
                    exponent_sqrt= exponent_real >> 1;
                    exponent_out= 8'd127 - exponent_sqrt;
                end
                if(class1[6]) begin
                    mantissa = {1'b1, data1_conv[22:0], 29'b0};
                    sqrt_mantissa = sqrt(mantissa);
                end else begin
                    mantissa = {1'b0, data1_conv[22:0], 29'b0};
                    sqrt_mantissa = sqrt(mantissa);
                end
                mantissa_out = sqrt_mantissa[51:0]; 
                result = {33'b0, exponent_out[7:0], mantissa_out[51:29]};
                flags = 5'b00001;
            end
        end
        end
endmodule 
