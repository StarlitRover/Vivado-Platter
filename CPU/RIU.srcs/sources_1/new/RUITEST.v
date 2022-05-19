`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/04 16:55:12
// Design Name: 
// Module Name: RIU_TOP
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


module RUITEST(
    input rst_n,clk,clk_dis,
    input [1:0] SWT,
    output [7:0] AN,DP,
    output [3:0] FR,
    output [3:0] ST
    );

    wire PC_Write,IR_Write,Reg_Write,rs2_imm_s,rst_n,clk,Mem_Write,PC0_Write;
    wire [1:0] w_data_s,PC_s;
    wire [3:0] ALU_OP;
    wire [4:0] rs1,rs2,rd;
    wire [6:0] opcode;
    wire [2:0] funct3;
    wire [6:0] funct7;
    wire [31:0] imm32,Aout,Bout,Bin,Fout,pc,ir,MDRout,M_R_Data;

    reg [31:0] out,W_Data;

    FD_TOP fd(
        .rst_n(rst_n),
        .clk_im(!clk),
        .PC_Write(PC_Write),
        .PC0_Write(PC0_Write),
        .IR_Write(IR_Write),
        .PC_s(PC_s),
        .Fout(Fout),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .imm32(imm32),
        .pc(pc),
        .irout(ir)
        );
    
    CU cu(
        .rst_n(rst_n),
        .clk(clk),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7),
        .PC_Write(PC_Write),
        .PC0_Write(PC0_Write),
        .IR_Write(IR_Write),
        .Reg_Write(Reg_Write),
        .Mem_Write(Mem_Write),
        .rs2_imm_s(rs2_imm_s),
        .w_data_s(w_data_s),
        .PC_s(PC_s),
        .ST(ST),
        .ALU_OP_o(ALU_OP),
        .ZF(FR[3])
        );

    RF_top rf(
        .rst_n(rst_n),
        .clk_WB(!clk),
        .clk_RR(!clk),
        .Reg_Write(Reg_Write),
        .R_Addr_A(rs1),
        .R_Addr_B(rs2),
        .W_Addr(rd),
        .Aout(Aout),
        .Bout(Bout),
        .W_Data(W_Data)
        );

        assign Bin = (rs2_imm_s)? imm32 : Bout;

        ALU_TOPP alu(
            .rst_n(rst_n),
            .clk_f(!clk),
            .op(ALU_OP),
            .Ain(Aout),
            .Bin(Bin),
            .FR(FR),
            .f(Fout)
            );

        DM dm(
                .clka(clk),    // input wire clka
                .wea(Mem_Write),      // input wire [0 : 0] wea
                .addra(Fout),  // input wire [5 : 0] addra
                .dina(Bout),    // input wire [31 : 0] dina
                .douta(M_R_Data)  // output wire [31 : 0] douta
                );

        RegisterF mdr(
            .rst_n(rst_n),
            .clk(!clk),
            .out(MDRout),
            .in(M_R_Data)
            );

        always @(*)
        begin
            case(w_data_s)
                2'b00:W_Data=Fout;
                2'b01:W_Data=imm32;
                2'b10:W_Data=MDRout;
                2'b11:W_Data=pc;
            endcase
        end

        always @(*)
        begin
            case(SWT)
            2'b00:
                out = pc;
            2'b01:
                out = ir;
            2'b10:
                out = W_Data;
            default:
                out = out;
            endcase
        end

    NumberDisplay NP(.Number(out), .clk(clk_dis), .DP(DP), .AN(AN));
endmodule
