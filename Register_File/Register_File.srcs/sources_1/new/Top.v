`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/25 19:41:38
// Design Name: 
// Module Name: Top
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


module Top(
    input rst_n,clk_RR,clk_F,clk_WB,clk,Reg_W,
    input [3:0] ALU_OP,
    input [4:0] R_Addr_A, R_Addr_B, W_Addr,
    output [3:0] FR,
    output [7:0] AN,DP
    );

    wire [31:0] a,b,f;
    RF Rf(.Reg_Write(Reg_W), .clk_Regs(clk_WB), .rst_n(rst_n), .R_Addr_A(R_Addr_A), .R_Addr_B(R_Addr_B), .W_Addr(W_Addr), .W_Data(f), .R_Data_A(a), .R_Data_B(b));
    ALU_top Alu(.rst_n(rst_n),.clk_a(clk_RR),.clk_b(clk_RR),.clk_f(clk_F),.clk(clk),.op(ALU_OP), .Ain(a),.Bin(b),.AN(AN),.DP(DP),.f(f),.FR(FR));
endmodule
