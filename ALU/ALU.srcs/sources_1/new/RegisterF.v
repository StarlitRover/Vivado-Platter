`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/19 20:39:05
// Design Name: 
// Module Name: RegisterF
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


module RegisterF(rst_n, clk, in, out);
    input rst_n, clk;
    input [31:0] in;
    output reg [31:0] out=0;

    always @(negedge rst_n or posedge clk) 
    begin
        if(!rst_n)
            out <= 32'b0;
        else
            out <= in;
    end
endmodule
