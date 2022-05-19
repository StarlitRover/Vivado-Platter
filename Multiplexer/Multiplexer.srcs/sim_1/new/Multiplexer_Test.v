`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/20 16:03:49
// Design Name: 
// Module Name: Multiplexer_Test
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


module Multiplexer_Test;
    reg EN;
    reg [3:0] A,B,C,D;
    reg [1:0] S;
    wire [3:0] Y;

    Multiplexer MT(EN,A,B,C,D,S,Y);

    initial
        {EN,A,B,C,D,S}=19'b0000000000000000000;
    always
    begin
        #50;
        if(A==4'b1111)
            A=1'b0;
        else
            A=A+1'b1;
        if(B==4'b1110)
            B=1'b0;
        else
            B=B+2'b10;
        if(C==4'b1111)
            C=1'b0;
        else
            C=C+2'b11;
        if(D==4'b1100)
            D=1'b0;
        else
            D=D+3'b100;
        if(S==2'b11)
            S=1'b0;
        else
            S=S+1;
        if(D==1'b0)
            EN=1;
        else
            EN=0;
    end
endmodule
