`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/23 14:19:21
// Design Name: 
// Module Name: clockOneSecond
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
// @output CP	一秒一次的脉冲
module clockOneSecond(EN, clk, CP);
    input EN, clk;
    output CP;

    divider #(.WIDTH(27), .N(100000000)) MHztoHZ (
        .clk(clk),
        .EN(EN),
        .CP(CP)
    );
endmodule
