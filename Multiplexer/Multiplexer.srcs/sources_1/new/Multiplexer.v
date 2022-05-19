`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/20 15:55:46
// Design Name: 
// Module Name: Multiplexer
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


module Multiplexer(
    input EN,
    input [3:0] A,B,C,D,
    input [1:0] S,
    output reg [3:0] Y
    );

    always @(*)
    begin
        if(EN==0)
            case (S)
                2'b00: Y=A;
                2'b01: Y=B;
                2'b10: Y=C;
                2'b11: Y=D;
            endcase
        else
            Y=4'b0000;
    end
endmodule
