`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/04 13:11:15
// Design Name: 
// Module Name: ALU_TOP
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


module ALU_TOPP(
    input rst_n,clk_f,
    input [3:0] op,
    input [31:0] Ain,Bin,
    output [3:0] FR,
    output [31:0] f
    );

    wire [32:0] _f;

    ALU alu(.A(Ain), .B(Bin), .F(_f), .op(op));
    FlagU flagu(.A31(Ain[31]),.B31(Bin[31]),.rst_n(rst_n),.clk(clk_f),.F(_f),.FR(FR));
    RegisterF Rf(.rst_n(rst_n), .clk(clk_f), .in(_f[31:0]), .out(f));
endmodule
