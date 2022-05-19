`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/04 20:19:52
// Design Name: 
// Module Name: RUI_test
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


module RUI_test;

    reg rst_n,clk;
    wire [3:0] FR;
    wire [3:0] ST;
    reg [1:0] SWT;
    

    RUITEST test(
        .rst_n(rst_n),
        .SWT(SWT),
        .clk(clk),
        .FR(FR),
        .ST(ST)
    );

    initial
    begin
        SWT=2'b10;
        rst_n=1;
        #10;
        rst_n=0;
        #10;
        rst_n=1;
        clk=0;
    end
    always #10 clk=~clk;
endmodule
