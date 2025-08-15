`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/15 01:21:43
// Design Name: 
// Module Name: FPU_single
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


module FPU_single#(
    parameter fadd=5'd1,fsub=5'd2,fmul=5'd3,fdiv=5'd4,fsqrt=5'd5,fmadd=5'd6,fmsub=5'd7,fnmadd=5'd8,fnmsub=5'd9,
    fcvt_s_w=5'd10,fcvt_s_wu=5'd11,fcvt_w_s=5'd12,fcvt_wu_s=5'd13
)(
    input clk,
    input rst_n,
    input [31:0] data1,
    input [31:0] data2,
    input [31:0] data3,
    input [4:0] inst,
    //input [9:0]class1,
    //input [9:0]class2,
    //input [9:0]class3,
    output logic [31:0] result,
    output logic [4:0] flags
    );
    logic[31:0]data1_d,data2_d,data3_d;

    logic val_add;
    logic val_sub;
    logic val_mul;
    logic val_div;
    logic val_sqrt;
    logic val_madd;
    logic val_msub;
    logic val_cvt_s_w;
    logic val_cvt_s_wu;
    logic val_cvt_w_s;
    logic val_cvt_wu_s;

    logic valid_add;
    logic valid_sub;
    logic valid_mul;
    logic valid_div;
    logic valid_sqrt;
    logic valid_madd;
    logic valid_msub;
    logic valid_cvt_s_w;
    logic valid_cvt_s_wu;
    logic valid_cvt_w_s;
    logic valid_cvt_wu_s;


    logic [31:0] result_add;
    logic [31:0] result_sub;
    logic [31:0] result_mul;
    logic [31:0] result_div;
    logic [31:0] result_sqrt;
    logic [31:0] result_madd;
    logic [31:0] result_msub;
    logic [31:0] result_cvt_s_w;
    logic [31:0] result_cvt_s_wu;
    logic [31:0] result_cvt_w_s;
    logic [63:0] result_cvt_wu_s;

    logic [2:0] flags_add;
    logic [2:0] flags_sub;
    logic [2:0] flags_mul;
    logic [3:0] flags_div;
    logic flags_sqrt;
    logic [2:0] flags_madd;
    logic [2:0] flags_msub;
    logic [1:0] flags_cvt_w_s;
    logic [1:0] flags_cvt_wu_s;

    fadd_single u_fadd_single(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_add     ),
        .s_axis_a_tdata (data1),
        .s_axis_b_tvalid(val_add     ),
        .s_axis_b_tdata (data2),
        .m_axis_result_tvalid(valid_add),
        .m_axis_result_tdata (result_add),
        .m_axis_result_tuser (flags_add)
    );
    fsub_single u_fsub_single(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_sub     ),
        .s_axis_a_tdata (data1),
        .s_axis_b_tvalid(val_sub     ),
        .s_axis_b_tdata (data2),
        .m_axis_result_tvalid(valid_sub),
        .m_axis_result_tdata (result_sub),
        .m_axis_result_tuser (flags_sub)
    );
    floating_point_mul_s u_floating_point_mul_s(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_mul     ),
        .s_axis_a_tdata (data1),
        .s_axis_b_tvalid(val_mul     ),
        .s_axis_b_tdata (data2),
        .m_axis_result_tvalid(valid_mul),
        .m_axis_result_tdata (result_mul),
        .m_axis_result_tuser (flags_mul)
    );
    div_single u_div_single(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_div     ),
        .s_axis_a_tdata (data1),
        .s_axis_b_tvalid(val_div     ),
        .s_axis_b_tdata (data2),
        .m_axis_result_tvalid(valid_div),
        .m_axis_result_tdata (result_div),
        .m_axis_result_tuser (flags_div)
    );
    sqrt_single u_sqrt_single(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_sqrt     ),
        .s_axis_a_tdata (data1),
        .m_axis_result_tvalid(valid_sqrt),
        .m_axis_result_tdata (result_sqrt),
        .m_axis_result_tuser (flags_sqrt)
    );
    fmadd_single u_fma_add_single(
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
    fmsub_single u_fma_sub_single(
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
    fcvt_s_w u_fcvt_s_w(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_cvt_s_w     ),
        .s_axis_a_tdata (data1),
        .m_axis_result_tvalid(valid_cvt_s_w),
        .m_axis_result_tdata (result_cvt_s_w)
    );
    fcvt_s_wu u_fcvt_s_wu(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_cvt_s_wu     ), 
        .s_axis_a_tdata (data1),
        .m_axis_result_tvalid(valid_cvt_s_wu),
        .m_axis_result_tdata (result_cvt_s_wu)
    );
    fcvt_w_s u_fcvt_w_s(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_cvt_w_s     ),
        .s_axis_a_tdata (data1),
        .m_axis_result_tvalid(valid_cvt_w_s),
        .m_axis_result_tdata (result_cvt_w_s),
        .m_axis_result_tuser (flags_cvt_w_s)
    );
    fcvt_wu_s u_fcvt_wu_s(
        .aclk       (clk        ),
        .s_axis_a_tvalid(val_cvt_wu_s     ),
        .s_axis_a_tdata (data1),
        .m_axis_result_tvalid(valid_cvt_wu_s),
        .m_axis_result_tdata (result_cvt_wu_s),
        .m_axis_result_tuser (flags_cvt_wu_s)
    );

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
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
                    end
                endcase
            end
        end
    end
    always_comb begin
        result = 32'h0;
        flags[3:0] = 4'h0;
        //flags[4]=(class1[8]||class2[8]||class3[8]) ? 1'b1 : 1'b0; // sNaN flag
        case(inst)
            fadd:begin
                if (valid_add) begin
                    result = result_add;
                    flags[4] = flags_add[2]; 
                    flags[2] = flags_add[1]; 
                    flags[1] = flags_add[0];
                end else begin
                    result = 32'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                end
            end
            fsub:begin
                if (valid_sub) begin
                    result = result_sub;
                    flags[4] = flags_sub[2]; 
                    flags[2] = flags_sub[1]; 
                    flags[1] = flags_sub[0]; 
                end else begin
                    result = 32'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                end
            end
            fmul:begin
                if (valid_mul) begin
                    result = result_mul;
                    flags[4] = flags_mul[2]; 
                    flags[2] = flags_mul[1]; 
                    flags[1] = flags_mul[0]; 
                end else begin
                    result = 32'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                end
            end
            fdiv:begin
                if (valid_div) begin
                    result = result_div;
                    flags[3] = flags_div[3]; 
                    flags[4] = flags_div[2]; 
                    flags[2] = flags_div[1]; 
                    flags[1] = flags_div[0]; 
                end else begin
                    result = 32'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                end
            end
            fsqrt:begin
                if (valid_sqrt) begin
                    result = result_sqrt;
                    flags[4] = flags_sqrt;
                end else begin
                    result = 32'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                end
            end
            fmadd:begin
                if (valid_madd) begin
                    result = result_madd;
                    flags[4] = flags_madd[2]; 
                    flags[2] = flags_madd[1];
                    flags[1] = flags_madd[0];
                end else begin
                    result = 32'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                end
            end
            fmsub:begin
                if (valid_msub) begin
                    result = result_msub;
                    flags[4] = flags_msub[2];
                    flags[2] = flags_msub[1];
                    flags[1] = flags_msub[0];
                end else begin
                    result = 32'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                end
            end
            fnmadd:begin
                if (valid_madd) begin
                    result = {~result_msub[31], result_msub[30:0]}; // Negate the result of fmadd
                    flags[4] = flags_msub[2];
                    flags[2] = flags_msub[0];
                    flags[1] = flags_msub[1];
                end else begin
                    result = 32'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                end
            end
            fnmsub:begin
                if (valid_msub) begin
                    result = {~result_madd[31], result_madd[30:0]}; // Negate the result of fmsub
                    flags[4] = flags_madd[2];
                    flags[2] = flags_madd[0];
                    flags[1] = flags_madd[1];
                end else begin
                    result = 32'h0; // Invalid operation
                    flags = 5'h0; // No flags set
                end
            end
            fcvt_s_w: begin
                if (valid_cvt_s_w) begin
                    result = result_cvt_s_w;
                end else begin
                    result = 32'h0; 
                end
            end
            fcvt_s_wu: begin
                if (valid_cvt_s_wu) begin
                    result = result_cvt_s_wu;
                end else begin
                    result = 32'h0; 
                end
            end
            fcvt_w_s: begin
                if (valid_cvt_w_s) begin
                    result = result_cvt_w_s;
                    flags[4] = flags_cvt_w_s[1];
                    flags[2] = flags_cvt_w_s[0];
                end else begin
                    result = 32'h0; 
                    flags = 5'h0; 
                end
            end
            fcvt_wu_s: begin
                if (valid_cvt_wu_s) begin
                    result = result_cvt_wu_s[62:31];
                    flags[4] = flags_cvt_wu_s[1];
                    flags[2] = flags_cvt_wu_s[0];
                    if (|result_cvt_wu_s[30:0]) begin
                        flags[0] = 1'b1;
                    end else begin
                        flags[0] = 1'b0;
                    end
                end else begin
                    result = 32'h0; 
                    flags = 5'h0; 
                end
            end

            default: begin
                result = 32'h0;
                flags = 5'h0;
            end
        endcase
    end
endmodule