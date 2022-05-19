`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/11 15:49:21
// Design Name: 
// Module Name: Basic_Register_Test
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


module Basic_Register_Test;
    reg [7:0] D;
    reg CLK,CLR,OE_;
    wire [7:0] Q;

    Basic_Register BR(D,CLK,CLR,OE_,Q);
    initial
    begin
        {D,CLK,CLR,OE_}=11'b10101011010;
        #100;
        {D,CLK,CLR,OE_}=11'b10101011000;
        #100;
        {D,CLK,CLR,OE_}=11'b10101011100;
        #100;
        {D,CLK,CLR,OE_}=11'b11101000000;
        #100;
        {D,CLK,CLR,OE_}=11'b11101000100;
        #100;
        {D,CLK,CLR,OE_}=11'b10101010010;
        #100;
        {D,CLK,CLR,OE_}=11'b00000011100;
        #100;
        {D,CLK,CLR,OE_}=11'b10101011001;
        #100;
        {D,CLK,CLR,OE_}=11'b10101011011;
        #100;
        {D,CLK,CLR,OE_}=11'b10101011111;
        #100;
    end
endmodule
