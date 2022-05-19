`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/19 16:30:37
// Design Name: 
// Module Name: Register
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


module Register(rst_n, clk, islow, in, out);
    input rst_n, clk, islow;
    input [15:0] in;
    output reg [31:0] out=0;

    always @(negedge rst_n or negedge clk) 
    begin
        if(!rst_n)
            out <= 32'b0;
        else if(islow)
            out[15:0] <= in;
        else
            out[31:16] <= in;
    end
endmodule
