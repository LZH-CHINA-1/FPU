`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/08 20:03:21
// Design Name: 
// Module Name: fsqrt
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


module fsqrt (
    input  clk,
    input  reset,
    input  [63:0] data,
    input  [1:0] fmt,
    input  [9:0] class1,
    output logic [63:0] result,
    output logic [4:0] flags
);

//timeunit 1ns; timeprecision 1ps;

// 平方根倒数查找表(96项，8位精度)
localparam logic [7:0] RECIPROCAL_ROOT_LUT[0:95] = '{
    8'b10110101,
      8'b10110010,
      8'b10101111,
      8'b10101101,
      8'b10101010,
      8'b10101000,
      8'b10100110,
      8'b10100011,
      8'b10100001,
      8'b10011111,
      8'b10011110,
      8'b10011100,
      8'b10011010,
      8'b10011000,
      8'b10010110,
      8'b10010101,
      8'b10010011,
      8'b10010010,
      8'b10010000,
      8'b10001111,
      8'b10001110,
      8'b10001100,
      8'b10001011,
      8'b10001010,
      8'b10001000,
      8'b10000111,
      8'b10000110,
      8'b10000101,
      8'b10000100,
      8'b10000011,
      8'b10000010,
      8'b10000001,
      8'b10000000,
      8'b01111111,
      8'b01111110,
      8'b01111101,
      8'b01111100,
      8'b01111011,
      8'b01111010,
      8'b01111001,
      8'b01111000,
      8'b01110111,
      8'b01110111,
      8'b01110110,
      8'b01110101,
      8'b01110100,
      8'b01110011,
      8'b01110011,
      8'b01110010,
      8'b01110001,
      8'b01110001,
      8'b01110000,
      8'b01101111,
      8'b01101111,
      8'b01101110,
      8'b01101101,
      8'b01101101,
      8'b01101100,
      8'b01101011,
      8'b01101011,
      8'b01101010,
      8'b01101010,
      8'b01101001,
      8'b01101001,
      8'b01101000,
      8'b01100111,
      8'b01100111,
      8'b01100110,
      8'b01100110,
      8'b01100101,
      8'b01100101,
      8'b01100100,
      8'b01100100,
      8'b01100011,
      8'b01100011,
      8'b01100010,
      8'b01100010,
      8'b01100010,
      8'b01100001,
      8'b01100001,
      8'b01100000,
      8'b01100000,
      8'b01011111,
      8'b01011111,
      8'b01011111,
      8'b01011110,
      8'b01011110,
      8'b01011101,
      8'b01011101,
      8'b01011101,
      8'b01011100,
      8'b01011100,
      8'b01011011,
      8'b01011011,
      8'b01011011,
      8'b01011010
};


// 状态编码
localparam IDLE  = 2'd0;  // 空闲状态
localparam INIT  = 2'd1;  // 初始化状态
localparam ITER  = 2'd2;  // 迭代计算状态
localparam NORM  = 2'd3;  // 规格化状态

reg [1:0] state;         // 当前状态
reg [3:0] iter_count;     // 迭代计数器
reg [63:0] a_reg;        // 输入寄存器
reg fmt_reg;             // 精度寄存器

// 计算中间变量
reg [55:0] q;           // 平方根估计值
reg [55:0] r;           // 余数
reg [55:0] h;           // 辅助变量
reg [55:0] y;           // 倒数估计值

// 输入分解
wire sign = fmt_reg ?a_reg[63]: a_reg[31];
wire [10:0] exponent = fmt_reg ? a_reg[62:52] : {3'b0, a_reg[30:23]};
wire [51:0] mantissa = fmt_reg ? a_reg[51:0] : {a_reg[22:0], 29'b0};


// 主状态机
always @(posedge clk or negedge reset) begin
    if (!reset) begin
        state <= IDLE;
        result <= 0;
        iter_count <= 0;
        a_reg <= 0;
        fmt_reg <= 0;
        q <= 0;
        r <= 0;
        h <= 0;
        y <= 0;
        flags <=0;
    end else begin
        case (state)
            IDLE: begin
                    state <= INIT;
                    a_reg <= data;
                    fmt_reg <= fmt[0];
            end
            
            INIT: begin
                // 初始化计算变量
                if (class1[4]) begin
                    state <= IDLE;
                    result <= 0;
                    flags <= 0;
                end else if (class1[7]) begin
                    if (fmt[0]) begin
                        state <= IDLE;
                        result <= {1'b0, {11{1'b1}}, {52{1'b0}}};
                        flags <= 0;
                    end else begin
                        state <= IDLE;
                        result <= {33'b0, {8{1'b1}}, {23{1'b0}}};
                        flags <= 0;
                    end
                end else if (class1[8] || class1[9]||sign) begin
                    if (fmt[0]) begin
                        state <= IDLE;
                        result <= {1'b0, {11{1'b1}}, 1'b1, {51{1'b0}}};
                        flags <= 5'b10000;
                    end else begin
                        state <= IDLE;
                        result <= {33'b0, {8{1'b1}}, 1'b1, {22{1'b0}}};
                        flags <= 5'b10000;
                    end
                end
                else  begin
                q <= 0;
                if (fmt_reg) begin
                    // 64位双精度模式
                    r <= {2'b01, mantissa, 2'b0};
                    // 查表获取初始近似值
                    y <= {1'b0, RECIPROCAL_ROOT_LUT[mantissa[51:45]], 47'b0};
                end else begin
                    // 32位单精度模式
                    r <= {3'b001, mantissa[22:0], 29'b0};
                    // 查表获取初始近似值
                    y <= {1'b0, RECIPROCAL_ROOT_LUT[{mantissa[22:16], 1'b0}], 47'b0};
                end
                
                iter_count <= 0;
                state <= ITER;
                end
            end
            
            ITER: begin
                // 牛顿迭代步骤(共6次)
                if (iter_count == 0) begin
                    // y0 = a * y
                    y <= (r * y) >> 55;
                end else if (iter_count == 1) begin
                    // h0 = 0.5 * y
                    h <= (55'h10000000000000 * y) >> 55;
                end else if (iter_count == 2) begin
                    // e0 = 0.5 - h0 * y0
                    h <= 55'h10000000000000 - ((h * y) >> 54);
                end else if (iter_count == 3) begin
                    // y1 = y0 + y0 * e0
                    y <= y + ((y * h) >> 54);
                end else if (iter_count == 4) begin
                    // h1 = h0 + h0 * e0
                    h <= h + ((h * h) >> 54);
                end else begin
                    // 最后一次迭代后进入规格化
                    state <= NORM;
                end
                iter_count <= iter_count + 1;
            end
            
            NORM: begin
                // 计算最终平方根 q = a * y1
                q <= (r * y) >> 54;
                
                if (q[54]) begin
                    if (fmt_reg) begin
                        result <= {1'b0, (exponent + 11'd1023) >> 1, q[53:1]};
                        flags <= 5'b00001;
                    end else begin
                        result <= {33'b0, (exponent[7:0] + 8'd127) >> 1, q[53:31]};
                        flags <= 5'b00001;
                    end
                end else begin
                    if (fmt_reg) begin
                        result <= {1'b0, (exponent + 11'd1022) >> 1, q[52:0]};
                        flags <= 5'b00001;
                    end else begin
                        result <= {33'b0, (exponent[7:0] + 8'd126) >> 1, q[51:29]};
                        flags <= 5'b00001;
                    end
                end
                state <= IDLE;
            end
        endcase
    end
end
endmodule