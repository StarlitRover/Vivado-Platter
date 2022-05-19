`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/04 13:27:50
// Design Name: 
// Module Name: FD_TOP
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


module FD_TOP(
    input PC_Write,IR_Write,rst_n,clk_im,PC0_Write,
    input [1:0] PC_s,
    input [31:0] Fout,
    output [4:0] rs1,rs2,rd,
    output [6:0] opcode,
    output [2:0] funct3,
    output [6:0] funct7,
    output [31:0] imm32,pc,irout
    );

    wire [31:0] douta,pc0;
    reg [31:0] f,PCin;

    PCM pcm(.PC_Write(PC_Write),.clk(clk_im),.rst_n(rst_n),.PC(pc),.PCin(PCin));
    PCM pc0m(.PC_Write(PC0_Write),.clk(clk_im),.rst_n(rst_n),.PC(pc0),.PCin(pc));
    IM im(.clka(!clk_im),.addra(pc[7:2]),.douta(douta));
    IR ir(.clk(clk_im),.rst_n(rst_n),.IR_Write(IR_Write),.IR_Data_In(douta),.IR_Data_Out(irout));
    ID1 id1(.inst(irout),.rs1(rs1),.rs2(rs2),.rd(rd),.opcode(opcode),.funct3(funct3),.funct7(funct7),.imm32(imm32));

    always @(*)
    begin
        case(PC_s)
         2'b00: PCin = pc+3'b100;
         2'b01: PCin = imm32+pc0;
         2'b10: PCin = Fout;
        endcase
    end
endmodule