`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 2025/08/07 16:40:33
// Design Name:
// Module Name: fp_formatconv
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


module fp_formatconv(
        input [63:0] data,
        input [1:0] fmt,
        output logic [64:0] result,
        output logic [9:0] classification
    );
    logic [63:0] m;
    logic [5:0] counter;
    logic [5:0] anticounter;    
    logic m_zero;
	logic exponent_zero;
	logic exponent_ones;
    lzc_64 lzcm
    (
         .a(m),
         .c(anticounter),
         .v()
    );

    always_comb begin
        result = 65'h0;
        m = 64'hFFFFFFFFFFFFFFFF;
        m_zero = 0;
		exponent_zero = 0;
		exponent_ones = 0;
        classification = 0;
        assign counter=~anticounter;
        if (fmt == 0) begin
			m = {1'h0,data[22:0],40'hFFFFFFFFFF};
			exponent_zero = ~|data[30:23];
			exponent_ones = &data[30:23];
			m_zero = ~|data[22:0];
		end else begin
			m = {1'h0,data[51:0],11'h7FF};
			exponent_zero = ~|data[62:52];
			exponent_ones = &data[62:52];
			m_zero = ~|data[51:0];
		end


        if(fmt==2'b00) begin
            result[64] = data[31];
            if (&data[30:23]) begin
                result[63:52] = 12'hFFF;
                result[51:29] = data[22:0];
            end
            else if (|data[30:23]) begin
                result[63:52] = {4'h0,data[30:23]} + 12'h780;
                result[51:29] = data[22:0];
            end
            else if (counter < 24) begin
                result[63:52] = 12'h781 - {6'h0,counter};
                result[51:29] = (data[22:0] << counter);
            end
            result[28:0] = 0;
        end
        else if(fmt==2'b01) begin
            result[64] = data[63];
            if (&data[62:52]) begin
                result[63:52] = 12'hFFF;
                result[51:0] = data[51:0];
            end
            else if (|data[62:52]) begin
                result[63:52] = {1'h0,data[62:52]} + 12'h400;
                result[51:0] = data[51:0];
            end
            else if (counter < 53) begin
                result[63:52] = 12'h401 - {6'h0,counter};
                result[51:0] = (data[51:0] << counter);
            end
        end



		if (result[64]) begin
			if (exponent_ones) begin
				if (m_zero) begin
					classification[0] = 1;
				end else if (result[51] == 0) begin
					classification[8] = 1;
				end else begin
					classification[9] = 1;
				end
			end else if (exponent_zero) begin
				if (m_zero == 1) begin
					classification[3] = 1;
				end else begin
					classification[2] = 1;
				end
			end else begin
				classification[1] = 1;
			end
		end else begin
			if (exponent_ones) begin
				if (m_zero) begin
					classification[7] = 1;
				end else if (result[51] == 0) begin
					classification[8] = 1;
				end else begin
					classification[9] = 1;
				end
			end else if (exponent_zero) begin
				if (m_zero == 1) begin
					classification[4] = 1;
				end else begin
					classification[5] = 1;
				end
			end else begin
				classification[6] = 1;
			end
		end
    end
endmodule
