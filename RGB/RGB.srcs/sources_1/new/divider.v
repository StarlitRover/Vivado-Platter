`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/23 12:14:28
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

// @input clk
// @input EN
// @output CP
// 1MHz -> 1KHz default
// 使用参数调用来获得其他比例的分配器，如 divider  #(.WIDTH(4),.N(10))  u1, N mod 2 == 0
module divider(clk, EN, CP);
    input clk, EN;
    output CP;

    parameter WIDTH = 17;
    parameter N = 100000; /* assert N mod 2 == 0 */

    reg [WIDTH - 1:0] cnt_pos; 
    reg clk_pos;

    initial begin
        cnt_pos = 0;
    end

    always @(posedge clk or negedge EN) begin
        if (!EN)
            cnt_pos <= 0;
        else if (cnt_pos == (N - 1))
            cnt_pos <= 0;
        else
            cnt_pos = cnt_pos + 1;
    end

    always @(posedge clk or negedge EN) begin
        if (!EN)
            clk_pos <= 0;
        else if (cnt_pos < (N >> 1))
            clk_pos <= 0;
        else
            clk_pos <= 1;
        
    end

    assign CP = clk_pos;
endmodule
