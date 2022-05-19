`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/21 11:22:56
// Design Name: 
// Module Name: Base7_Counter_Test
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


module Base7_Counter_Test;
    reg CP,CR_;
    wire [3:0] Q;
    wire CO;

    Base7_Counter BC(CR_,CP,Q,CO);
    initial 
    begin
        CR_=0;
        CP=0;
        #50;
        CR_=1;
    end
    always
    begin
        #50;
        CP<=~CP;
    end
endmodule
