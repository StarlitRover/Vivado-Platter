`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/19 15:57:07
// Design Name: 
// Module Name: divider
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


module divider(clk, CP);
    input clk;
    output CP;

    parameter WIDTH = 17;
    parameter N = 100000; /* assert N mod 2 == 0 */

    reg [WIDTH - 1:0] cnt_pos; 
    reg clk_pos;

    initial begin
        cnt_pos = 0;
    end

    always @(posedge clk) 
    begin
        if (cnt_pos == (N - 1))
            cnt_pos <= 0;
        else
            cnt_pos = cnt_pos + 1;
    end

    always @(posedge clk) 
    begin
        if (cnt_pos < (N >> 1))
            clk_pos <= 0;
        else
            clk_pos <= 1;
        
    end

    assign CP = clk_pos;
endmodule
