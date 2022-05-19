`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/04 13:07:29
// Design Name: 
// Module Name: RF_top
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


module RF_top(
    input rst_n,clk_RR,clk_WB,Reg_Write,
    input [3:0] ALU_OP,
    input [4:0] R_Addr_A, R_Addr_B, W_Addr,
    input [31:0] W_Data,
    output [31:0] Aout,Bout
    );

    wire [31:0] a,b;
    RF Rf(.Reg_Write(Reg_Write), .clk_Regs(clk_WB), .rst_n(rst_n), .R_Addr_A(R_Addr_A), .R_Addr_B(R_Addr_B), .W_Addr(W_Addr), .W_Data(W_Data), .R_Data_A(a), .R_Data_B(b));
    RegisterF RA(.rst_n(rst_n), .clk(clk_RR), .in(a), .out(Aout));
    RegisterF RB(.rst_n(rst_n), .clk(clk_RR), .in(b), .out(Bout));
endmodule
