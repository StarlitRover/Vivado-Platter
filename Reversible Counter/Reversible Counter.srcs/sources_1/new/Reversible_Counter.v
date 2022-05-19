`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/11 10:53:50
// Design Name: 
// Module Name: Reversible_Counter
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


module Reversible_Counter(
    input LD_,CT_,U_D,CP,
    input [3:0] D,
    output reg [3:0] Q,
    output MaxMin,RCO_
    );

    always @(posedge CP or negedge LD_)
    begin
        if(!LD_)
            Q<=D;
        else if(CT_)
            Q<=Q;
        else if(U_D)
            Q<=Q-1'b1;
        else
            Q<=Q+1'b1;
    end
    assign MaxMin=(!U_D&(Q==4'b1111))|(U_D&(Q==4'b0000));
    assign RCO_=MaxMin&CT_&CP;
endmodule
