`timescale 1ns / 1ps
module lzc_64
(
	input [63:0] a,
	output [5:0] c,
 	output v
);
	timeunit 1ns;
	timeprecision 1ps;

	logic [4:0] z0;
	logic [4:0] z1;

	logic v0;
	logic v1;

	logic s0;
	logic s1;
	logic s2;
	logic s3;
	logic s4;
	logic s5;
	logic s6;
	logic s7;
	logic s8;
	logic s9;
	logic s10;
	logic s11;
	logic s12;

	lzc_32 lzc_32_comp_0
	(
		.a ( a[31:0] ),
		.c ( z0 ),
		.v ( v0 )
	);

	lzc_32 lzc_32_comp_1
	(
		.a ( a[63:32] ),
		.c ( z1 ),
		.v ( v1 )
	);

	assign s0 = v1 | v0;
	assign s1 = (~ v1) & z0[0];
	assign s2 = z1[0] | s1;
	assign s3 = (~ v1) & z0[1];
	assign s4 = z1[1] | s3;
	assign s5 = (~ v1) & z0[2];
	assign s6 = z1[2] | s5;
	assign s7 = (~ v1) & z0[3];
	assign s8 = z1[3] | s7;
	assign s9 = (~ v1) & z0[4];
	assign s10 = z1[4] | s9;

	assign v = s0;
	assign c[0] = s2;
	assign c[1] = s4;
	assign c[2] = s6;
	assign c[3] = s8;
	assign c[4] = s10;
	assign c[5] = v1;
endmodule


module lzc_32
(
	input [31:0] a,
	output [4:0] c,
	output v
);
	timeunit 1ns;
	timeprecision 1ps;

	logic [3:0] z0;
	logic [3:0] z1;

	logic v0;
	logic v1;

	logic s0;
	logic s1;
	logic s2;
	logic s3;
	logic s4;
	logic s5;
	logic s6;
	logic s7;
	logic s8;
	logic s9;
	logic s10;

	lzc_16 lzc_16_comp_0
	(
		.a ( a[15:0] ),
		.c ( z0 ),
		.v ( v0 )
	);

	lzc_16 lzc_16_comp_1
	(
		.a ( a[31:16] ),
		.c ( z1 ),
		.v ( v1 )
	);

	assign s0 = v1 | v0;
	assign s1 = (~ v1) & z0[0];
	assign s2 = z1[0] | s1;
	assign s3 = (~ v1) & z0[1];
	assign s4 = z1[1] | s3;
	assign s5 = (~ v1) & z0[2];
	assign s6 = z1[2] | s5;
	assign s7 = (~ v1) & z0[3];
	assign s8 = z1[3] | s7;

	assign v = s0;
	assign c[0] = s2;
	assign c[1] = s4;
	assign c[2] = s6;
	assign c[3] = s8;
	assign c[4] = v1;

endmodule

module lzc_16
(
	input [15:0] a,
	output [3:0] c,
	output v
);
	timeunit 1ns;
	timeprecision 1ps;

	logic [2:0] z0;
	logic [2:0] z1;

	logic v0;
	logic v1;

	logic s0;
	logic s1;
	logic s2;
	logic s3;
	logic s4;
	logic s5;
	logic s6;
	logic s7;
	logic s8;

	lzc_8 lzc_8_comp_0
	(
		.a ( a[7:0] ),
		.c ( z0 ),
		.v ( v0 )
	);

	lzc_8 lzc_8_comp_1
	(
		.a ( a[15:8] ),
		.c ( z1 ),
		.v ( v1 )
	);

	assign s0 = v1 | v0;
	assign s1 = (~ v1) & z0[0];
	assign s2 = z1[0] | s1;
	assign s3 = (~ v1) & z0[1];
	assign s4 = z1[1] | s3;
	assign s5 = (~ v1) & z0[2];
	assign s6 = z1[2] | s5;

	assign v = s0;
	assign c[0] = s2;
	assign c[1] = s4;
	assign c[2] = s6;
	assign c[3] = v1;

endmodule

module lzc_8
(
	input [7:0] a,
	output [2:0] c,
	output v
);
	timeunit 1ns;
	timeprecision 1ps;

	logic [1:0] z0;
	logic [1:0] z1;

	logic v0;
	logic v1;

	logic s0;
	logic s1;
	logic s2;
	logic s3;
	logic s4;
	logic s5;
	logic s6;

	lzc_4 lzc_4_comp_0
	(
		.a ( a[3:0] ),
		.c ( z0 ),
		.v ( v0 )
	);

	lzc_4 lzc_4_comp_1
	(
		.a ( a[7:4] ),
		.c ( z1 ),
		.v ( v1 )
	);

	assign s0 = v1 | v0;
	assign s1 = (~ v1) & z0[0];
	assign s2 = z1[0] | s1;
	assign s3 = (~ v1) & z0[1];
	assign s4 = z1[1] | s3;

	assign v = s0;
	assign c[0] = s2;
	assign c[1] = s4;
	assign c[2] = v1;

endmodule

module lzc_4
(
	input [3:0] a,
	output [1:0] c,
	output v
);
	timeunit 1ns;
	timeprecision 1ps;

	logic a0;
	logic a1;
	logic a2;
	logic a3;

	logic s0;
	logic s1;
	logic s2;
	logic s3;
	logic s4;

	assign a0 = a[0];
	assign a1 = a[1];
	assign a2 = a[2];
	assign a3 = a[3];

	assign s0 = a3 | a2;
	assign s1 = a1 | a0;
	assign s2 = s1 | s0;
	assign s3 = (~ s0) & a1;
	assign s4 = a3 | s3;

	assign v = s2;
	assign c[0] = s4;
	assign c[1] = s0;

endmodule
