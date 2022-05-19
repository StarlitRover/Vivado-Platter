`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/11 15:27:44
// Design Name: 
// Module Name: TriState_Gate
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


module TriState_Gate(
    input EN_,
    input [7:0] A,
    output [7:0] F
    );
    assign F=EN_?8'bz:A;
endmodule
