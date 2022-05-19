`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/23 00:32:36
// Design Name: 
// Module Name: freshClock
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

// @input EN	使能
// @input clk
// @output CP	1KHz 脉冲
module freshClock(EN, clk, CP);
    input EN, clk;
    output CP;

    divider MHztoKHz(
        .clk(clk),
        .CP(CP),
        .EN(EN)
    );
endmodule
