`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/19 19:12:56
// Design Name: 
// Module Name: IR
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


module IR(
    input clk,rst_n,IR_Write,
    input [31:0] IR_Data_In,
    output reg [31:0] IR_Data_Out
    );

    always @(negedge rst_n or posedge clk)
    begin
        if(!rst_n)
            IR_Data_Out<=0;
        else if(IR_Write)
            IR_Data_Out<=IR_Data_In;
    end
endmodule
