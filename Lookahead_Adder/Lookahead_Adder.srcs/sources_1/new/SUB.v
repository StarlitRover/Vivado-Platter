`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/09 20:57:04
// Design Name: 
// Module Name: SUB
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


module SUB(
    input [3:0] A, B,
    input C0,SUB,
    output C4,
    output [3:0] F
    );

    assign B[0]=B[0]^SUB;
    assign B[1]=B[1]^SUB;
    assign B[2]=B[2]^SUB;
    assign B[3]=B[3]^SUB;
    assign C0=SUB;
    Lookahead_Adder(A,B,C0,C4,F);
endmodule
