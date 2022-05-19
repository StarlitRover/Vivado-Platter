`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/19 17:55:48
// Design Name: 
// Module Name: FlagU
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


module FlagU(A31,B31,rst_n,clk,F,FR);
    input rst_n,clk,A31,B31;
    input [32:0] F;
    output reg [3:0] FR;
    
    always @(negedge rst_n or posedge clk) 
    begin
        if(!rst_n)
            FR <= 0;
        else
        begin
            FR[3] <= (F[31:0]==0)?1:0;
            FR[2] <= F[32];
            FR[1] <= A31^B31^F[32]^F[31];
            FR[0] <= F[31];
        end
    end
endmodule
