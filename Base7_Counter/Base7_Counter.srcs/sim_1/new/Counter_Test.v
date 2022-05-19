`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/21 11:33:00
// Design Name: 
// Module Name: Counter_Test
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


module Counter_Test;
    reg CP,LD_;
    wire [3:0] Q;
    wire CO;
    Counter_74LS161 CTT(1'b1,LD_,1'b1,1'b1,CP,4'b0000,Q,CO);
    initial
    begin
        LD_=0,CP=1;
        #50;
        LD_=1,CP=~CP;
        #50;
        LD_=1,CP=~CP;
        #50;
        LD_=1,CP=~CP;
        #50;
        LD_=1,CP=~CP;
        #50;
        LD_=1,CP=~CP;
        #50;
        LD_=1,CP=~CP;
        #50;
        LD_=1,CP=~CP;
        #50;
        LD_=1,CP=~CP;
        #50;
        LD_=1,CP=~CP;
        #50;
        LD_=1,CP=~CP;
        #50;
        LD_=1,CP=~CP;
        #50;
    end
endmodule
