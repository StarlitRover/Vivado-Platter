`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/11 16:51:42
// Design Name: 
// Module Name: Shifting_Register_Test
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


module Shifting_Register_Test;
    reg CR_,CP,SR,SL;
    reg [1:0] S;
    reg [7:0] D;
    wire [7:0] Q;

    Shifting_Register SRT(CR_,CP,SR,SL,S,D,Q);
    initial
    begin
        {CR_,CP,SR,SL,S,D}=14'b00110010101010;
        #50;
        {CR_,CP,SR,SL,S,D}=14'b11110110101010;
        #50;
        {CR_,CP,SR,SL,S,D}=14'b10110110101010;
        #50;
        {CR_,CP,SR,SL,S,D}=14'b11110110101010;
        #50;
        {CR_,CP,SR,SL,S,D}=14'b10111110101010;
        #50;
        {CR_,CP,SR,SL,S,D}=14'b11111110101010;
        #50;
        {CR_,CP,SR,SL,S,D}=14'b10011010101010;
        #50;
        {CR_,CP,SR,SL,S,D}=14'b11011010101010;
        #50;
        {CR_,CP,SR,SL,S,D}=14'b10001010101010;
        #50;
        {CR_,CP,SR,SL,S,D}=14'b11001010101010;
        #50;
        {CR_,CP,SR,SL,S,D}=14'b10000010101010;
        #50;
        {CR_,CP,SR,SL,S,D}=14'b11000010101010;
        #50;
        {CR_,CP,SR,SL,S,D}=14'b10001111100011;
        #50;
        {CR_,CP,SR,SL,S,D}=14'b00000010101010;
        #50;
    end
endmodule
