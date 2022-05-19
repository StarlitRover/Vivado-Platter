`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/19 15:19:08
// Design Name: 
// Module Name: NumberDisplay
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


module NumberDisplay(Number, clk, DP, AN);
    input Number, clk;
    output DP, AN;
    wire [31:0] Number;
    wire [7:0] DP;
    reg [7:0] AN;

    wire CP;
    reg [3:0] NumberToDisplay;
    reg [2:0] cnt;

    initial begin
        cnt = 0;
        NumberToDisplay = 0;
    end

    NumberDisplayOne NumberDisplayOne_uut(
        .Number(NumberToDisplay),
        .DP(DP)
    );

    divider MHztoKHz(
        .CP(CP),
        .clk(clk)
    );

    always @(posedge CP) 
    begin
        case (cnt)
           3'b000: 
           begin
               AN <= 8'b01111111;
               NumberToDisplay <= Number[31-:4];
               cnt <= cnt+1;
           end
           3'b001: 
           begin
               AN <= 8'b10111111;
               NumberToDisplay <= Number[27-:4];
               cnt <= cnt+1;
           end
           3'b010: 
           begin
               AN <= 8'b11011111;
               NumberToDisplay <= Number[23-:4];
               cnt <= cnt+1;
           end
           3'b011: 
           begin
               AN <= 8'b11101111;
               NumberToDisplay <= Number[19-:4];
               cnt <= cnt+1;
           end
           3'b100: 
           begin
               AN <= 8'b11110111;
               NumberToDisplay <= Number[15-:4];
               cnt <= cnt+1;
           end
           3'b101: 
           begin
               AN <= 8'b11111011;
               NumberToDisplay <= Number[11-:4];
               cnt <= cnt+1;
           end
           3'b110: 
           begin
               AN <= 8'b11111101;
               NumberToDisplay <= Number[7-:4];
               cnt <= cnt+1;
           end
           3'b111: 
           begin
               AN <= 8'b11111110;
               NumberToDisplay <= Number[3-:4];
               cnt <= cnt+1;
           end
        endcase
    end
endmodule
