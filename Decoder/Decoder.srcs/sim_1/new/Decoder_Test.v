`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/20 15:14:58
// Design Name: 
// Module Name: Decoder_Test
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


module Decoder_Test;
    reg G1,N_G2A,N_G2B,C,B,A;
    wire [7:0] N_Y;

    Decoder DT(G1,N_G2A,N_G2B,C,B,A,N_Y);

    initial 
        {G1,N_G2A,N_G2B,C,B,A}=6'b100000;
    always
    begin
        #100;
        {G1,N_G2A,N_G2B,C,B,A}={G1,N_G2A,N_G2B,C,B,A}+1;
    end
endmodule
