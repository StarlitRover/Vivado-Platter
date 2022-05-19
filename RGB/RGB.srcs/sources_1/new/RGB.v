`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/22 18:57:30
// Design Name: 
// Module Name: RGB
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


// @input Duration[3:0] 每一种颜色的持续时间
// @input Color[1:0]    当前设置的是哪种颜色 00: red; 01: green; 11: yellow; 10: unused;
// @input SET           0->1: 进行设置
// @input EN            整个系统的工作与否 1: 工作 0: 不工作
// @input clk
// @output AN[7:0]		 数码管位选
// @output DP[7:0]      数码管段选
// @output Green
// @output Red
// @output Yellow
module RGB(Duration, Color, SET, EN, clk, AN, DP, Green, Red, Yellow);
    input Duration, Color, SET, EN, clk;
    output AN, DP, Green, Red, Yellow;
    wire [3:0] Duration;
    wire [1:0] Color;
    wire [7:0] AN;
    wire [7:0] DP;

    reg [3:0] R;
    reg [3:0] Y;
    reg [3:0] G;

    initial begin
        R = 4'b0000;
        Y = 4'b0000;
        G = 4'b0000;
    end

    lightCTL mainCTL(
        .RedDuration(R),
        .GreenDuration(Y),
        .YellowDuration(G),
        .EN(EN),
        .clk(clk),
        .AN(AN),
        .DP(DP),
        .Red(Red),
        .Green(Green),
        .Yellow(Yellow)
    );

    always @(posedge SET) begin
        case(Color[1:0])
            // green
            2'b00: G = Duration;
            // red
            2'b01: R = Duration;
            // yellow
            2'b11: Y = Duration;
        endcase
    end

endmodule
