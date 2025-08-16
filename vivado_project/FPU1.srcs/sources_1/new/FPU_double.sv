`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/15 01:22:01
// Design Name: 
// Module Name: FPU_double
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


module FPU_double#(
    parameter fadd=5'd1,fsub=5'd2,fmul=5'd3,fdiv=5'd4,fsqrt=5'd5,fmadd=5'd6,fmsub=5'd7,fnmadd=5'd8,fnmsub=5'd9,
    fcvt_s_w=5'd10,fcvt_s_wu=5'd11,fcvt_w_s=5'd12,fcvt_wu_s=5'd13,fcvt_s_d=5'd14,fcvt_d_s=5'd15,
    fcvt_d_w=5'd16,fcvt_d_wu=5'd17,fcvt_w_d=5'd18,fcvt_wu_d=5'd19,fsgnj=5'd20,fsgnjn=5'd21,fsgnjx=5'd22,
    fmin=5'd23,fmax=5'd24,fclass=5'd25,fmv_x_w=5'd26,fmv_w_x=5'd27,
    fle=5'd28,flt=5'd29,feq=5'd30
)
(
    input clk,
    input rst,
    input [63:0] data1,
    input [63:0] data2,
    input [63:0] data3,
    input [4:0] inst,
    //input [9:0]class1,
    //input [9:0]class2,
    //input [9:0]class3,
    output logic [63:0] result,
    output logic [4:0] flags,
    output logic get_result
    );
    logic[31:0]data1_d,data2_d,data3_d;

    logic val_add;
    logic val_sub;
    logic val_mul;
    logic val_div;
    logic val_sqrt;
    logic val_madd;
    logic val_msub;
    logic val_cvt_d_w;
    logic val_cvt_d_wu;
    logic val_cvt_w_d;
    logic val_cvt_wu_d;
    logic val_cvt_s_d;
    logic val_cvt_d_s;
    logic val_cvt_s_d;
    logic val_feq;
    logic val_flt;
    logic val_fle;

    logic valid_add;
    logic valid_sub;
    logic valid_mul;
    logic valid_div;
    logic valid_sqrt;
    logic valid_madd;
    logic valid_msub;
    logic valid_cvt_d_w;
    logic valid_cvt_d_wu;
    logic valid_cvt_w_d;
    logic valid_cvt_wu_d;
    logic valid_cvt_d_s;
    logic valid_cvt_s_d;
    logic valid_feq;
    logic valid_flt;
    logic valid_fle;


    logic [63:0] result_add;
    logic [63:0] result_sub;
    logic [63:0] result_mul;
    logic [63:0] result_div;
    logic [63:0] result_sqrt;
    logic [63:0] result_madd;
    logic [63:0] result_msub;
    logic [63:0] result_cvt_d_w;
    logic [63:0] result_cvt_d_wu;
    logic [63:0] result_cvt_w_d;
    logic [63:0] result_cvt_wu_d;
    logic [63:0] result_cvt_d_s;
    logic [31:0] result_cvt_s_d;
    logic [7:0] result_feq;
    logic [7:0] result_flt;
    logic [7:0] result_fle;

    logic [2:0] flags_add;
    logic [2:0] flags_sub;
    logic [2:0] flags_mul;
    logic [3:0] flags_div;
    logic flags_sqrt;
    logic [2:0] flags_madd;
    logic [2:0] flags_msub;
    logic [1:0] flags_cvt_w_d;
    logic [1:0] flags_cvt_wu_d;
    logic [1:0] flags_cvt_d_s;
    logic [1:0] flags_cvt_s_d;

    logic [9:0] class1;
    fclass_double u_fclass_double(
        .a(data1),
        .class1(class1)
    );

    fadd_double u_fadd_double(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_add     ),
        .s_axis_a_tdata (data1),
        .s_axis_b_tvalid(val_add     ),
        .s_axis_b_tdata (data2),
        .m_axis_result_tvalid(valid_add),
        .m_axis_result_tdata (result_add),
        .m_axis_result_tuser (flags_add)
    );
    fsub_double u_fsub_double(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_sub     ),
        .s_axis_a_tdata (data1),
        .s_axis_b_tvalid(val_sub     ),
        .s_axis_b_tdata (data2),
        .m_axis_result_tvalid(valid_sub),
        .m_axis_result_tdata (result_sub),
        .m_axis_result_tuser (flags_sub)
    );
    fmul_double u_fmul_double(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_mul     ),
        .s_axis_a_tdata (data1),
        .s_axis_b_tvalid(val_mul     ),
        .s_axis_b_tdata (data2),
        .m_axis_result_tvalid(valid_mul),
        .m_axis_result_tdata (result_mul),
        .m_axis_result_tuser (flags_mul)
    );
    fdiv_double u_fdiv_double(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_div     ),
        .s_axis_a_tdata (data1),
        .s_axis_b_tvalid(val_div     ),
        .s_axis_b_tdata (data2),
        .m_axis_result_tvalid(valid_div),
        .m_axis_result_tdata (result_div),
        .m_axis_result_tuser (flags_div)
    );
    fsqrt_double u_fsqrt_double(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_sqrt     ),
        .s_axis_a_tdata (data1),
        .m_axis_result_tvalid(valid_sqrt),
        .m_axis_result_tdata (result_sqrt),
        .m_axis_result_tuser (flags_sqrt)
    );
    fmadd_double u_fma_add_double(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_madd     ),
        .s_axis_a_tdata (data1),
        .s_axis_b_tvalid(val_madd     ),
        .s_axis_b_tdata (data2),
        .s_axis_c_tvalid(val_madd     ),
        .s_axis_c_tdata (data3),
        .m_axis_result_tvalid(valid_madd),
        .m_axis_result_tdata (result_madd),
        .m_axis_result_tuser (flags_madd)
    );
    fmsub_double u_fma_sub_double(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_msub     ),
        .s_axis_a_tdata (data1),
        .s_axis_b_tvalid(val_msub     ),
        .s_axis_b_tdata (data2),
        .s_axis_c_tvalid(val_msub     ),
        .s_axis_c_tdata (data3),
        .m_axis_result_tvalid(valid_msub),
        .m_axis_result_tdata (result_msub),
        .m_axis_result_tuser (flags_msub)
    );
    fcvt_d_w u_fcvt_d_w(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_cvt_d_w     ),
        .s_axis_a_tdata (data1),
        .m_axis_result_tvalid(valid_cvt_d_w),
        .m_axis_result_tdata (result_cvt_d_w)
    );
    fcvt_d_wu u_fcvt_d_wu(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_cvt_d_wu     ), 
        .s_axis_a_tdata (data1),
        .m_axis_result_tvalid(valid_cvt_d_wu),
        .m_axis_result_tdata (result_cvt_d_wu)
    );
    fcvt_w_d u_fcvt_w_d(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_cvt_w_d     ),
        .s_axis_a_tdata (data1),
        .m_axis_result_tvalid(valid_cvt_w_d),
        .m_axis_result_tdata (result_cvt_w_d),
        .m_axis_result_tuser (flags_cvt_w_d)
    );
    fcvt_wu_d u_fcvt_wu_d(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_cvt_wu_d     ),
        .s_axis_a_tdata (data1),
        .m_axis_result_tvalid(valid_cvt_wu_d),
        .m_axis_result_tdata (result_cvt_wu_d),
        .m_axis_result_tuser (flags_cvt_wu_d)
    );
    fcvt_d_s u_fcvt_d_s(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_cvt_d_s     ),
        .s_axis_a_tdata (data1),
        .m_axis_result_tvalid(valid_cvt_d_s),
        .m_axis_result_tdata (result_cvt_d_s),
        .m_axis_result_tuser (flags_cvt_d_s)
    );
    fcvt_s_d u_fcvt_s_d(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_cvt_s_d     ),
        .s_axis_a_tdata (data1),
        .m_axis_result_tvalid(valid_cvt_s_d),
        .m_axis_result_tdata (result_cvt_s_d),
        .m_axis_result_tuser (flags_cvt_s_d)
    );
    feq_double u_feq_double(
        .aclk       (clk),
        .s_axis_a_tvalid(val_feq     ),
        .s_axis_a_tdata (data1),
        .s_axis_b_tvalid(val_feq     ),
        .s_axis_b_tdata (data2),
        .m_axis_result_tvalid(valid_feq),
        .m_axis_result_tdata (result_feq)
    );
    flt_double u_flt_double(
        .aclk       (clk),
        .s_axis_a_tvalid(val_flt     ),
        .s_axis_a_tdata (data1),
        .s_axis_b_tvalid(val_flt     ),
        .s_axis_b_tdata (data2),
        .m_axis_result_tvalid(valid_flt),
        .m_axis_result_tdata (result_flt)
    );
    fle_double u_fle_double(
        .aclk       (clk),
        .s_axis_a_tvalid(val_fle     ),
        .s_axis_a_tdata (data1),
        .s_axis_b_tvalid(val_fle     ),
        .s_axis_b_tdata (data2),
        .m_axis_result_tvalid(valid_fle),
        .m_axis_result_tdata (result_fle)
    );
    
    always_ff @(posedge clk or negedge rst) begin
        if (rst) begin
            data1_d <= 32'h0;
            data2_d <= 32'h0;
            data3_d <= 32'h0;
            val_add  <= 1'b0;
            val_sub  <= 1'b0;
            val_mul  <= 1'b0;
            val_div  <= 1'b0;
            val_sqrt <= 1'b0;
            val_madd <= 1'b0;
            val_msub <= 1'b0;
            val_cvt_s_w <= 1'b0;
            val_cvt_s_wu <= 1'b0;
            val_cvt_w_s <= 1'b0;
            val_cvt_wu_s <= 1'b0;
            val_cvt_d_s <= 1'b0;
            val_cvt_s_d <= 1'b0;
            val_feq <=1'b0;
            val_flt <=1'b0;
            val_fle <=1'b0;
        end else begin
            data1_d <= data1;
            data2_d <= data2;
            data3_d <= data3;
            if (data1 != data1_d || data2 != data2_d || data3 != data3_d) begin
                val_add  <= 1'b0;
                val_sub  <= 1'b0;
                val_mul  <= 1'b0;
                val_div  <= 1'b0;
                val_sqrt <= 1'b0;
                val_madd <= 1'b0;
                val_msub <= 1'b0;
                val_cvt_s_w <= 1'b0;
                val_cvt_s_wu <= 1'b0;
                val_cvt_w_s <= 1'b0;
                val_cvt_wu_s <= 1'b0;
                val_cvt_d_s <= 1'b0;
                val_cvt_s_d <= 1'b0;
                val_feq <=1'b0;
                val_flt <=1'b0;
                val_fle <=1'b0;

            end else begin
                // 这里可以根据inst赋值val信号
                case(inst)
                    fadd:    val_add  <= 1'b1;
                    fsub:    val_sub  <= 1'b1;
                    fmul:    val_mul  <= 1'b1;
                    fdiv:    val_div  <= 1'b1;
                    fsqrt:   val_sqrt <= 1'b1;
                    fmadd:   val_madd <= 1'b1;
                    fmsub:   val_msub <= 1'b1;
                    fnmadd:  val_madd <= 1'b1;
                    fnmsub:  val_msub <= 1'b1;
                    fcvt_s_w:  val_cvt_s_w <= 1'b1;
                    fcvt_s_wu: val_cvt_s_wu <= 1'b1;
                    fcvt_w_s:  val_cvt_w_s <= 1'b1;
                    fcvt_wu_s: val_cvt_wu_s <= 1'b1;
                    fcvt_d_s:  val_cvt_d_s <= 1'b1;
                    fcvt_s_d:  val_cvt_s_d <= 1'b1;
                    feq:      val_feq <= 1'b1;
                    flt:      val_flt <= 1'b1;
                    fle:      val_fle <= 1'b1;
                    fmin:     val_fle <= 1'b1;
                    fmax:     val_fle <= 1'b1;
                    default: begin
                        val_add  <= 1'b0;
                        val_sub  <= 1'b0;
                        val_mul  <= 1'b0;
                        val_div  <= 1'b0;
                        val_sqrt <= 1'b0;
                        val_madd <= 1'b0;
                        val_msub <= 1'b0;
                        val_cvt_s_w <= 1'b0;
                        val_cvt_s_wu <= 1'b0;
                        val_cvt_w_s <= 1'b0;
                        val_cvt_wu_s <= 1'b0;
                        val_cvt_d_s <= 1'b0;
                        val_cvt_s_d <= 1'b0;
                        val_feq <= 1'b0;
                        val_flt <= 1'b0;
                        val_fle <= 1'b0;
                    end
                endcase
            end
        end
    end
    always_comb begin
        result = 64'h0;
        flags[3:0] = 4'h0;
        get_result = 1'b0;
        //flags[4]=(class1[8]||class2[8]||class3[8]) ? 1'b1 : 1'b0; // sNaN flag
        case(inst)
            fadd:begin
                if (valid_add) begin
                    result = result_add;
                    flags[4] = flags_add[2]; 
                    flags[2] = flags_add[1]; 
                    flags[1] = flags_add[0];
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                    get_result = 1'b0;
                end
            end
            fsub:begin
                if (valid_sub) begin
                    result = result_sub;
                    flags[4] = flags_sub[2]; 
                    flags[2] = flags_sub[1]; 
                    flags[1] = flags_sub[0]; 
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                    get_result = 1'b0;
                end
            end
            fmul:begin
                if (valid_mul) begin
                    result = result_mul;
                    flags[4] = flags_mul[2]; 
                    flags[2] = flags_mul[1]; 
                    flags[1] = flags_mul[0]; 
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                    get_result = 1'b0;
                end
            end
            fdiv:begin
                if (valid_div) begin
                    result = result_div;
                    flags[3] = flags_div[3]; 
                    flags[4] = flags_div[2]; 
                    flags[2] = flags_div[1]; 
                    flags[1] = flags_div[0]; 
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                    get_result = 1'b0;
                end
            end
            fsqrt:begin
                if (valid_sqrt) begin
                    result = result_sqrt;
                    flags[4] = flags_sqrt;
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                    get_result = 1'b0;
                end
            end
            fmadd:begin
                if (valid_madd) begin
                    result = result_madd;
                    flags[4] = flags_madd[2]; 
                    flags[2] = flags_madd[1];
                    flags[1] = flags_madd[0];
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                    get_result = 1'b0;
                end
            end
            fmsub:begin
                if (valid_msub) begin
                    result = result_msub;
                    flags[4] = flags_msub[2];
                    flags[2] = flags_msub[1];
                    flags[1] = flags_msub[0];
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                    get_result = 1'b0;
                end
            end
            fnmadd:begin
                if (valid_madd) begin
                    result = {~result_msub[63], result_msub[62:0]}; // Negate the result of fmadd
                    flags[4] = flags_msub[2];
                    flags[2] = flags_msub[0];
                    flags[1] = flags_msub[1];
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                    get_result = 1'b0;
                end
            end
            fnmsub:begin
                if (valid_msub) begin
                    result = {~result_madd[63], result_madd[62:0]}; // Negate the result of fmsub
                    flags[4] = flags_madd[2];
                    flags[2] = flags_madd[0];
                    flags[1] = flags_madd[1];
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                    get_result = 1'b0;
                end
            end
            fcvt_d_w: begin
                if (valid_cvt_d_w) begin
                    result = result_cvt_d_w;
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; 
                    get_result = 1'b0;
                end
            end
            fcvt_d_wu: begin
                if (valid_cvt_d_wu) begin
                    result = result_cvt_d_wu;
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; 
                    get_result = 1'b0;
                end
            end
            fcvt_w_d: begin
                if (valid_cvt_w_d) begin
                    result = result_cvt_w_d;
                    flags[4] = flags_cvt_w_d[1];
                    flags[2] = flags_cvt_w_d[0];
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; 
                    flags = 5'h0; 
                    get_result = 1'b0;
                end
            end
            fcvt_wu_d: begin
                if (valid_cvt_wu_d) begin
                    result = result_cvt_wu_d[62:31];
                    flags[4] = flags_cvt_wu_d[1];
                    flags[2] = flags_cvt_wu_d[0];
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; 
                    flags = 5'h0; 
                    get_result = 1'b0;
                end
            end
            fcvt_d_s: begin
                if (valid_cvt_d_s) begin
                    result = result_cvt_d_s;
                    flags[4] = flags_cvt_d_s[1];
                    flags[2] = flags_cvt_d_s[0];
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; 
                    flags = 5'h0; 
                    get_result = 1'b0;
                end
            end
            fcvt_s_d: begin
                if (valid_cvt_s_d) begin
                    result = {32'b0, result_cvt_s_d};
                    flags[4] = flags_cvt_s_d[1];
                    flags[2] = flags_cvt_s_d[0];
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; 
                    flags = 5'h0; 
                    get_result = 1'b0;
                end
            end
            feq: begin
                if (valid_feq) begin
                    result = {63'b0, result_feq[0]};
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; 
                    get_result = 1'b0;
                end
            end
            flt: begin
                if (valid_flt) begin
                    result = {63'b0, result_flt[0]};
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; 
                    get_result = 1'b0;
                end
            end
            fle: begin
                if (valid_fle) begin
                    result = {63'b0, result_fle[0]};
                    get_result = 1'b1;
                end else begin
                    result = 64'h0; 
                    get_result = 1'b0;
                end
            end
            fmin: begin
                if (valid_fle) begin
                    get_result = 1'b1;
                    if (result_fle[1]) begin
                        result = data1; // data1 <= data2
                    end else begin
                        result = data2; // data1 > data2
                    end
                end else begin
                    result = 64'h0; 
                    get_result = 1'b0;
                end
            end
            fmax: begin
                if (valid_fle) begin
                    get_result = 1'b1;
                    if (result_fle[1]) begin
                        result = data2; // data1 <= data2
                    end else begin
                        result = data1; // data1 > data2
                    end
                end else begin
                    result = 64'h0; 
                    get_result = 1'b0;
                end
            end
            fclass: begin
                result = {54'b0, class1}; 
                get_result = 1'b1;
            end
            fsgnj: begin
                result = fsgnj_double(data1, data2, inst);
                get_result = 1'b1;
            end
            fsgnjn: begin
                result = fsgnj_double(data1, data2, inst);
                get_result = 1'b1;
            end
            fsgnjx: begin
                result = fsgnj_double(data1, data2, inst);
                get_result = 1'b1;
            end
            default: begin
                result = 64'h0;
                flags = 5'h0;
                get_result = 1'b0;
            end
        endcase
    end
endmodule

module fclass_double(
    input  [63:0] a,
    output [9:0] class1
);
    wire sign = a[63];
    wire [10:0] exp = a[62:52];
    wire [51:0] frac = a[51:0];

    assign class1[0] = (sign && exp == 11'h7FF && frac == 0); // -Infinity
    assign class1[1] = (sign && exp != 0 && exp != 11'h7FF && frac != 0); // -Normal
    assign class1[2] = (sign && exp == 0 && frac != 0); // -Subnormal
    assign class1[3] = (sign && exp == 0 && frac == 0); // -Zero
    assign class1[4] = (!sign && exp == 0 && frac == 0); // +Zero
    assign class1[5] = (!sign && exp == 0 && frac != 0); // +Subnormal
    assign class1[6] = (!sign && exp != 0 && exp != 11'h7FF && frac != 0); // +Normal
    assign class1[7] = (!sign && exp == 11'h7FF && frac == 0); // +Infinity
    assign class1[8] = (exp == 11'h7FF && frac[51] == 1); // sNaN
    assign class1[9] = (exp == 11'h7FF && frac != 0 && frac[51] == 0); // qNaN
endmodule

module fsgnj_double(
    input  [63:0] a,
    input  [63:0] b,
    input  [4:0]  inst,
    output [63:0] result
);
    wire sign_a = a[63];
    wire sign_b = b[63];
    wire [62:0] mag_a = a[62:0];

    assign result = (inst == 5'd20) ? {sign_b, mag_a} :         // fsgnj.d
                    (inst == 5'd21) ? {~sign_b, mag_a} :        // fsgnjn.d
                    (inst == 5'd22) ? {sign_a ^ sign_b, mag_a}  // fsgnjx.d
                    : a;                                      // 默认返回a
endmodule