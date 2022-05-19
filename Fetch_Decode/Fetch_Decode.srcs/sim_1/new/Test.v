`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/19 21:04:55
// Design Name: 
// Module Name: Test
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


module Test;
    reg PC_Write,IR_Write,rst_n,clk_im;
    wire [31:0] imm32;
    wire [4:0] rs1,rs2,rd;
    wire [6:0] opcode;
    wire [2:0] funct3;
    wire [6:0] funct7;

    Top top(
        .PC_Write(PC_Write),
        .IR_Write(IR_Write),
        .rst_n(rst_n),
        .clk_im(clk_im),
        .imm32(imm32),
        .rs1(rs1),
        .rs2(rs2),
        .rd(rd),
        .opcode(opcode),
        .funct3(funct3),
        .funct7(funct7)
    );

    initial
    begin
        rst_n<=1'b1;
        IR_Write<=1'b1;
        PC_Write<=1'b1;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
        #50;
        clk_im<=1'b1;
        #50;
        clk_im<=1'b0;
    end
endmodule