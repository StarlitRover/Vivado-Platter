`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/11 15:16:56
// Design Name: 
// Module Name: Basic_Register
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


module Basic_Register(
    input [7:0] D,
    input CLK,CLR,OE_,
    output [7:0] Q
    );

    wire [7:0] A;
    Register_8D R8D(D,CLR,CLK,A);
    TriState_Gate TSG(OE_,A,Q);
endmodule
