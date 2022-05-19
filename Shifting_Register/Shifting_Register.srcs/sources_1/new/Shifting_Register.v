`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/11 16:35:36
// Design Name: 
// Module Name: Shifting_Register
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


module Shifting_Register(
    input CR_,CP,SR,SL,
    input [1:0] S,
    input [7:0] D,
    output reg [7:0] Q
    );

    always @(negedge CR_ or posedge CP)
    begin
        if(!CR_)
            Q<=8'b0;
        else if(S==2'b00)
            Q<=Q;
        else if(S==2'b01)
            Q<=(SR<<7)+(Q>>1);
        else if(S==2'b10)
            Q<=(Q<<1)+SL;
        else
            Q<=D;
    end
endmodule
