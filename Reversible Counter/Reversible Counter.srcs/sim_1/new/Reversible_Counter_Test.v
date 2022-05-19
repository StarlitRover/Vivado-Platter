`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/11 11:27:24
// Design Name: 
// Module Name: Reversible_Counter_Test
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


module Rversible_Counter_Test;
    reg LD_,CT_,U_D,CP;
    reg [3:0] D;
    wire [3:0] Q;
    wire MaxMin,RCO_;

    Reversible_Counter RC(LD_,CT_,U_D,CP,D,Q,MaxMin,RCO_);
    initial
    begin
        {LD_,CT_,U_D,CP,D}=8'b00001011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10001011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10011011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10101011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10011011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b11001011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10011011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10011011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10101011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10011011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10001011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10011011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10001011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10011011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10001011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10011011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10001011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10011011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10001011;
        #50;
        {LD_,CT_,U_D,CP,D}=8'b10011011;
        #50;
    end
endmodule
