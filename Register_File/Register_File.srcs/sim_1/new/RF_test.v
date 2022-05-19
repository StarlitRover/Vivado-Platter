`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/28 10:04:13
// Design Name: 
// Module Name: RF_test
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


module RF_test;
    reg Reg_Write, clk_Regs, rst_n;
    reg [4:0] R_Addr_A, R_Addr_B, W_Addr;
    reg [31:0] W_Data;
    wire [31:0] R_Data_A, R_Data_B;

    RF rf(Reg_Write, clk_Regs, rst_n, R_Addr_A, R_Addr_B, W_Addr, W_Data, R_Data_A, R_Data_B);

    initial 
    begin
        Reg_Write=1;
        W_Data=8'h23332333;
        W_Addr=0;
        clk_Regs=0;
        R_Addr_A=0;
        R_Addr_B=7;
        rst_n=1;
        #100;
        clk_Regs<=1;
        #100;
        clk_Regs<=0;
        R_Addr_A<=20;
        Reg_Write<=0;
        W_Addr<=20;
        #100;
        clk_Regs<=1;
        #100;
        R_Addr_B<=31;
        clk_Regs<=0;
        Reg_Write<=1;
        W_Addr<=31;
        W_Data<=8'hefefefef;
        #100;
        clk_Regs<=1;
        #100;
        rst_n<=0;
    end
endmodule
