`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/21 10:22:18
// Design Name: 
// Module Name: Base7_Counter
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


module Base7_Counter(
    input CR_,CP,
    output [3:0] Q,
    output CO
    );

    wire LD_;
    Counter_74LS161 CT(CR_,LD_,1'b1,1'b1,CP,4'b0000,Q);
    assign LD_=~(Q[2]&&Q[1]&&Q[0]);
    assign CO=Q[2]&Q[1];
endmodule