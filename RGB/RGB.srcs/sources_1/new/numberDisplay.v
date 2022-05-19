`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/23 00:44:13
// Design Name: 
// Module Name: numberDisplay
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

// @input EN
// @input Number[3:0]
// @input clk
// @output DP[7:0]
// @output AN[7:0]
module numberDisplay(EN, Number, clk, DP, AN);
    input EN, Number, clk;
    output DP, AN;
    wire [3:0] Number;
    wire [7:0] DP;
    reg [7:0] AN;

    wire CP;
    reg [3:0] NumberToDisplay;

    reg IsHigh;

    initial begin
        IsHigh = 0;
        NumberToDisplay = 4'b0000;
    end

    numberDisplayOne numberDisplayOne_uut(
        .EN(EN),
        .Number(NumberToDisplay),
        .DP(DP)
    );

    freshClock freshClock_uut(
        .EN(EN),
        .CP(CP),
        .clk(clk)
    );

    always @(posedge CP) begin
        if (IsHigh)
        begin
            AN <= 8'b11111101;
            // display high
            if (Number[3:0] > 4'b1001)
            begin
                NumberToDisplay <= 4'b0001;
            end
            else
            begin
                NumberToDisplay <= 4'b0000;
            end
        end
        else
        begin
            AN <= 8'b11111110;
            if (Number[3:0] > 4'b1001)
            begin
                NumberToDisplay <= Number - 4'b1010;
            end
            else
            begin
                NumberToDisplay <= Number;
            end
        end

        IsHigh = ~IsHigh;
    end
endmodule

