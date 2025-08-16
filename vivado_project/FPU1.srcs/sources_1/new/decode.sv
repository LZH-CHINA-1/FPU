`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/08/17 01:01:58
// Design Name: 
// Module Name: decode
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


module decode#(
    parameter fadd=5'd1,fsub=5'd2,fmul=5'd3,fdiv=5'd4,fsqrt=5'd5,fmadd=5'd6,fmsub=5'd7,fnmadd=5'd8,fnmsub=5'd9,
    fcvt_s_w=5'd10,fcvt_s_wu=5'd11,fcvt_w_s=5'd12,fcvt_wu_s=5'd13,fcvt_s_d=5'd14,fcvt_d_s=5'd15,
    fcvt_d_w=5'd16,fcvt_d_wu=5'd17,fcvt_w_d=5'd18,fcvt_wu_d=5'd19,fsgnj=5'd20,fsgnjn=5'd21,fsgnjx=5'd22,
    fmin=5'd23,fmax=5'd24,fclass=5'd25,fmv_x_w=5'd26,fmv_w_x=5'd27,
    fle=5'd28,flt=5'd29,feq=5'd30
)
(
    input [31:0] instr,
    output logic fload,
    output logic fstore,
    output logic [11:0] imm,
    output logic [1:0] fmt,
    output logic [4:0] inst,
    output logic [4:0] rs1,
    output logic [4:0] rs2,
    output logic [4:0] rs3,
    output logic [4:0] rd,
    output logic error
    );
    logic [2:0] funct3;
    logic [6:0] funct7;
    logic [6:0] opcode;
    assign funct3 = instr[14:12];
    assign funct7 = instr[31:25];
    assign opcode = instr[6:0];
    always_comb begin
        fload = 0;
        fstore = 0;
        fmt = 2'b00;
        error = 0;
        rs1 = 0;
        rs2 = 0;
        rs3 = 0;
        rd = 0;
        inst = 5'b0;
        if (opcode==7'b0000111)begin
            if(funct3==3'b011||funct3==3'b010)begin
                fload = 1;
                fmt = (funct3==3'b011) ? 2'b01 : 2'b00; 
                imm = instr[31:20];
            end else begin
                error = 1;

            end
        end else if (opcode==7'b0100111)begin
            if(funct3==3'b011||funct3==3'b010)begin
                fstore = 1;
                fmt = (funct3==3'b011) ? 2'b01 : 2'b00; 
                imm[11:5] = instr[31:25];
                imm[4:0] = instr[11:7];
            end else begin
                error = 1;
            end
        end else if (opcode==7'b1000011||opcode==7'b1000111||opcode==7'b1001011||opcode==7'b1001111)begin
            if(funct7[1]==0) begin
                rs1 = instr[19:15];
                rs2 = instr[24:20];
                rs3 = instr[31:27];
                rd = instr[11:7];
                fmt = funct7[1:0]; // fmt based on funct7
                case (opcode[3:2])
                    2'b00: inst = fmadd;
                    2'b01: inst = fmsub;
                    2'b10: inst = fnmadd;
                    2'b11: inst = fnmsub;
                endcase
            end else begin
                error = 1;
            end
        end else if (opcode==7'b1010011)begin
            if(funct7[1]==0) begin
                rs1 = instr[19:15];
                rs2 = instr[24:20];
                rd = instr[11:7];
                fmt = funct7[1:0]; 
                case (funct7[6:2])
                    5'b00000: inst = fadd;
                    5'b00001: inst = fsub;
                    5'b00010: inst = fmul;
                    5'b00011: inst = fdiv;
                    5'b01011: begin
                        if(rs2==5'b00000)inst = fsqrt;
                        else error = 1;
                    end
                    5'b00100: begin
                        case(funct3)
                            3'b000: inst = fsgnj;
                            3'b001: inst = fsgnjn;
                            3'b010: inst = fsgnjx;
                            default: error = 1;
                        endcase
                    end
                    5'b00101: begin
                        if(funct3==3'b000)inst = fmin;
                        else if(funct3==3'b001)inst = fmax;
                        else error = 1;
                    end
                    5'b01000: begin
                        if(rs2==5'b00000)inst=fcvt_d_s;
                        else if(rs2==5'b00001)inst=fcvt_s_d;
                        else error = 1;
                    end
                    5'b10100: begin
                        case(funct3)
                        3'b000: inst= fle;
                        3'b001: inst= flt;
                        3'b010: inst= feq;
                        default: error = 1;
                        endcase
                    end
                    5'b11100: begin
                        if(rs2==5'b00000&&funct3==3'b001)inst=fclass;
                        else if(rs2==5'b00000&&funct3==3'b000)inst=fmv_x_w;
                        else error = 1;
                    end
                    5'b11000: begin
                        if(rs2==5'b00000) inst=(fmt==2'b01) ? fcvt_w_d : fcvt_w_s;
                        else if(rs2==5'b00001) inst=(fmt==2'b01) ? fcvt_wu_d : fcvt_wu_s;
                        else error = 1;
                    end
                    5'b11010: begin
                        if(rs2==5'b00000) inst=(fmt==2'b01) ? fcvt_d_w : fcvt_s_w;
                        else if(rs2==5'b00001) inst=(fmt==2'b01) ? fcvt_d_wu : fcvt_s_wu;
                        else error = 1;
                    end
                    5'b11110: begin
                        if(rs2==5'b00000&&funct3==3'b000) inst=fmv_w_x;
                        else error = 1;
                    end
                    default: error = 1;
                endcase
            end else begin
                error = 1;
            end 
        end
        else begin
            error=1;
        end
    end

endmodule
