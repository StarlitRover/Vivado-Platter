`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/21 10:44:55
// Design Name: 
// Module Name: Counter_74LS161
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


module Counter_74LS161(
    input CR_,LD_,CET,CEP,CP,
    input [3:0] D,
    output reg [3:0] Q,
    output CO
    );

    assign CO=((Q==4'b0000)&&CR_&&LD_&&CET&&CEP);
    always @(posedge CP or negedge LD_ or negedge CET or negedge CEP or negedge CR_)
    begin
        if(!CR_)
            Q<=4'b0000;
        else if(!LD_)
            Q<=D;
        else if(!CET||!CEP)
            Q<=Q;
        else
            Q<=Q+1'b1;
    end
endmodule
