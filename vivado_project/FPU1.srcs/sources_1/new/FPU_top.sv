`timescale 1ns / 1ps
module FPU_top(
    input clk,
    input rst_n,
    //data input
    input [63:0] data1,
    input [63:0] data2,
    //input [63:0] data3,
    //control input
    input [1:0] fmt,
    input [2:0] rm,
    //optypes input
    /*
    input fmadd,
    input fmsub,
    input fnmadd,
    input fnmsub,
    input fadd,
    input fsub,
    input fmul,
    input fdiv,
    input fsqrt,
    input fsgnj,
    input fcmp,
    input fmax,
    input fclass,
    input fmv_i2f,
    input fmv_f2i,
    input fcvt_f2f,
    input fcvt_i2f,
    input fcvt_f2i,*/
    input [6:0] op,
    //output ports
    output [63:0] result,
    output [4:0] flags
    );
    // output declaration of module fp_formatconv
    wire [9:0] classification;
    
    logic [64:0] data1_conv, data2_conv, data3_conv;
    logic [9:0] classification1, classification2, classification3;
    fp_formatconv u_fp_formatconv1(
        .data           	(data1            ),
        .fmt            	(fmt             ),
        .result         	(data1_conv     ),
        .classification 	(classification1  )
    );
    fp_formatconv u_fp_formatconv2(
        .data           	(data2            ),
        .fmt            	(fmt             ),
        .result         	(data2_conv     ),
        .classification 	(classification2  )
    );
    fp_formatconv u_fp_formatconv3(
        .data           	(data3            ),
        .fmt            	(fmt             ),
        .result         	(data3_conv     ),
        .classification 	(classification3  )
    );
    
    // output declaration of module minmax_unit
    logic [63:0] result_minmax;
    logic [4:0] flags_minmax;
    minmax_unit u_minmax_unit(
        .data1_conv 	(data1_conv  ),
        .data2_conv 	(data2_conv  ),
        .data1      	(data1       ),
        .data2      	(data2       ),
        .fmt        	(fmt         ),
        .rm         	(rm          ),
        .class1     	(classification1      ),
        .class2     	(classification2      ),
        .result     	(result_minmax      ),
        .flags      	(flags_minmax       )
    );
    logic [63:0] result_compare;
    logic [4:0] flags_compare;
    compare_unit u_compare(
        .data1_conv 	(data1_conv  ),
        .data2_conv 	(data2_conv  ),
        .data1      	(data1       ),
        .data2      	(data2       ),
        .fmt        	(fmt         ),
        .rm         	(rm          ),
        .class1     	(classification1      ),
        .class2     	(classification2      ),
        .result     	(result_compare      ),
        .flags      	(flags_compare       )
    );
    logic [63:0] result_convert;
    logic [4:0] flags_convert;
    convert_unit u_convert(
        .data1_conv 	(data1_conv  ),
        .data1      	(data1       ),
        .fmt        	(fmt         ),
        .op         	(op          ),
        .class1     	(classification1      ),
        .result     	(result_convert      ),
        .flags      	(flags_convert       )
    );
    logic [63:0] result_fcvt_ff;
    logic [4:0] flags_fcvt_ff;
    fcvt_ff_unit u_fcvt_ff(
        .data1_conv 	(data1_conv  ),
        .data1      	(data1       ),
        .fmt        	(fmt         ),
        .class1     	(classification1      ),
        .result     	(result_fcvt_ff      ),
        .flags      	(flags_fcvt_ff       )
    );
    logic [63:0] result_fsgnj;
    logic [4:0] flags_fsgnj;
    fsgnj_unit u_fsgnj_unit(
        .data1_conv 	(data1_conv  ),
        .data2_conv 	(data2_conv  ),
        .data1      	(data1       ),
        .data2      	(data2       ),
        .fmt        	(fmt         ),
        .rm         	(rm          ),
        .class1     	(classification1      ),
        .class2     	(classification2      ),
        .result     	(result_fsgnj      ),
        .flags      	(flags_fsgnj       )
    );
endmodule
