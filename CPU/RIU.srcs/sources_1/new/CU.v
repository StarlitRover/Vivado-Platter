`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/04 14:59:34
// Design Name: 
// Module Name: CU
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


module CU(
    input rst_n,clk,ZF,
    input [6:0] opcode,
    input [2:0] funct3,
    input [6:0] funct7,
    output reg PC_Write,IR_Write,Reg_Write,rs2_imm_s,PC0_Write,Mem_Write,
    output reg [3:0] ALU_OP_o,
    output reg [3:0] ST,
    output reg [1:0] PC_s,w_data_s
    );

    wire IS_R,IS_IMM,IS_LUI,IS_LW,IS_SW,IS_BEQ,IS_JAL,IS_JALR;
    wire [3:0] ALU_OP;

    ID2 id2(
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .IS_IMM(IS_IMM),
        .IS_R(IS_R),
        .IS_LUI(IS_LUI),
        .IS_LW(IS_LW),
        .IS_SW(IS_SW),
        .IS_BEQ(IS_BEQ),
        .IS_JAL(IS_JAL),
        .IS_JALR(IS_JALR),
        .ALU_OP(ALU_OP)
    );

    parameter S0 = 4'b0000,S1 = 4'b0001,S2 = 4'b0010,S3 = 4'b0011,S4 = 4'b0100,S5 = 4'b0101,S6 = 4'b0110,
              S7 = 4'b0111,S8 = 4'b1000,S9 = 4'b1001,S10 = 4'b1010,S11 = 4'b1011,S12 = 4'b1100,S13 = 4'b1101,S14 = 4'b1110;
    reg [3:0] NEXT_ST;

    initial
    begin
        ST <= S0;
    end
    
    always @(negedge rst_n or posedge clk)
    begin
        if(!rst_n)
            ST<=S0;
        else
            ST<=NEXT_ST;
    end

    always @(*)
    begin
        NEXT_ST=S0;
        case(ST)
            S0: NEXT_ST=S1;
            S1: 
            begin
                if(IS_R||IS_IMM||IS_LW||IS_SW||IS_BEQ||IS_JALR)
                    NEXT_ST=S2;
                else if(IS_LUI)
                    NEXT_ST=S6;
                else if(IS_JAL)
                    NEXT_ST=S11;
                else
                    NEXT_ST=S1;
            end
            S2:
            begin
                if(IS_R)
                    NEXT_ST=S3;
                else if(IS_IMM)
                    NEXT_ST=S5;
                else if(IS_LW||IS_SW||IS_JALR)
                    NEXT_ST=S7;
                else if (IS_BEQ)
                    NEXT_ST=S13;
                else
                    NEXT_ST=S1;
            end
            S3: NEXT_ST=S4;
            S4: NEXT_ST=S1;
            S5: NEXT_ST=S4;
            S6: NEXT_ST=S1;
            S7:
            begin
                if(IS_LW)
                    NEXT_ST=S8;
                else if(IS_SW)
                    NEXT_ST=S10;
                else if(IS_JALR)
                    NEXT_ST=S12;
                else
                    NEXT_ST=S1;
            end
            S8: NEXT_ST=S9;
            S9: NEXT_ST=S1;
            S10: NEXT_ST=S1;
            S11: NEXT_ST=S1;
            S12: NEXT_ST=S1;
            S13: NEXT_ST=S14;
            S14: NEXT_ST=S1;
            default: NEXT_ST=S1;
        endcase
    end

    always @(negedge rst_n or posedge clk)
    begin
        if(!rst_n || NEXT_ST==S0)
        begin
            PC_Write <= 1'b0;
            PC0_Write <= 1'b0;
            IR_Write <= 1'b0;
            Reg_Write <= 1'b0;
            Mem_Write <= 1'b0;
            ALU_OP_o<=4'b0000;
            rs2_imm_s <= 1'b0;
            w_data_s <= 2'b00;
            PC_s <= 2'b00;
        end
        else
        begin
            case(NEXT_ST)
                S1: 
                begin
                    PC_Write<=1'b1;
                    PC0_Write<=1'b1;
                    IR_Write<=1'b1;
                    Reg_Write<=1'b0;
                    Mem_Write<=1'b0;
                    PC_s<=2'b00;
                end
                S2:
                begin
                    PC_Write<=1'b0;
                    PC0_Write<=1'b0;
                    IR_Write<=1'b0;
                    Reg_Write<=1'b0;
                    Mem_Write<=1'b0;
                end
                S3:
                begin
                    PC_Write<=1'b0;
                    PC0_Write<=1'b0;
                    IR_Write<=1'b0;
                    Reg_Write<=1'b0;
                    Mem_Write<=1'b0;
                    ALU_OP_o<=ALU_OP;
                    rs2_imm_s<=1'b0;
                end
                S4:
                begin
                    PC_Write<=1'b0;
                    PC0_Write<=1'b0;
                    IR_Write<=1'b0;
                    Reg_Write<=1'b1;
                    Mem_Write<=1'b0;
                    w_data_s<=2'b00;
                end
                S5:
                begin
                    PC_Write<=1'b0;
                    PC0_Write<=1'b0;
                    IR_Write<=1'b0;
                    Reg_Write<=1'b0;
                    Mem_Write<=1'b0;
                    ALU_OP_o<=ALU_OP;
                    rs2_imm_s<=1'b1;
                end
                S6:
                begin
                    PC_Write<=1'b0;
                    PC0_Write<=1'b0;
                    IR_Write<=1'b0;
                    Reg_Write<=1'b1;
                    Mem_Write<=1'b0;
                    w_data_s<=2'b01;
                end
                S7:
                begin
                    PC_Write<=1'b0;
                    PC0_Write<=1'b0;
                    IR_Write<=1'b0;
                    Reg_Write<=1'b0;
                    Mem_Write<=1'b0;
                    ALU_OP_o<=4'b0000;
                    rs2_imm_s<=1'b1;
                end
                S8:
                begin
                    PC_Write<=1'b0;
                    PC0_Write<=1'b0;
                    IR_Write<=1'b0;
                    Reg_Write<=1'b0;
                    Mem_Write<=1'b0;
                end
                S9:
                begin
                    PC_Write<=1'b0;
                    PC0_Write<=1'b0;
                    IR_Write<=1'b0;
                    Reg_Write<=1'b1;
                    Mem_Write<=1'b0;
                    w_data_s<=2'b10;
                end
                S10:
                begin
                    PC_Write<=1'b0;
                    PC0_Write<=1'b0;
                    IR_Write<=1'b0;
                    Reg_Write<=1'b0;
                    Mem_Write<=1'b1;
                end
                S11:
                begin
                    PC_Write<=1'b1;
                    PC0_Write<=1'b0;
                    IR_Write<=1'b0;
                    Reg_Write<=1'b1;
                    Mem_Write<=1'b0;
                    w_data_s<=2'b11;
                    PC_s<=2'b01;
                end
                S12:
                begin
                    PC_Write<=1'b1;
                    PC0_Write<=1'b0;
                    IR_Write<=1'b0;
                    Reg_Write<=1'b1;
                    Mem_Write<=1'b0;
                    w_data_s<=2'b11;
                    PC_s<=2'b10;
                end
                S13:
                begin
                    PC_Write<=1'b0;
                    PC0_Write<=1'b0;
                    IR_Write<=1'b0;
                    Reg_Write<=1'b0;
                    Mem_Write<=1'b0;
                    ALU_OP_o<=4'b1000;
                    rs2_imm_s<=1'b0;
                end
                S14:
                begin
                    PC_Write<=ZF;
                    PC0_Write<=1'b0;
                    IR_Write<=1'b0;
                    Reg_Write<=1'b0;
                    Mem_Write<=1'b0;
                    PC_s<=2'b01;
                end
            endcase
        end
    end

endmodule
