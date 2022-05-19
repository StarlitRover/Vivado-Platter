`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/19 18:13:30
// Design Name: 
// Module Name: top
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


module ALU_top(
    input rst_n,clk_a,clk_b,clk_f,clk,
    input [3:0] op,
    input [31:0] Ain,Bin,
    output [3:0] FR,
    output [7:0] AN,DP,
    output [31:0] f
    );

    wire [31:0] a,b;
    wire [32:0] _f;

    RegisterF RA(.rst_n(rst_n), .clk(clk_a), .in(Ain), .out(a));
    RegisterF RB(.rst_n(rst_n), .clk(clk_b), .in(Bin), .out(b));
    ALU alu(.A(a), .B(b), .F(_f), .op(op));
    FlagU flagu(.A31(a[31]),.B31(b[31]),.rst_n(rst_n),.clk(clk_f),.F(_f),.FR(FR));
    RegisterF Rf(.rst_n(rst_n), .clk(clk_f), .in(_f[31:0]), .out(f));
    NumberDisplay NP(.Number(f), .clk(clk), .DP(DP), .AN(AN));

endmodule