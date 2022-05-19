`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/25 17:34:56
// Design Name: 
// Module Name: RF
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


module RF(
    input Reg_Write, clk_Regs, rst_n,
    input [4:0] R_Addr_A, R_Addr_B, W_Addr,
    input [31:0] W_Data,
    output [31:0] R_Data_A, R_Data_B
    );

    reg [31:0] REG_Files[0:31];

    integer i;

    initial 
    begin
        REG_Files[0]<=0;
        for(i=1;i<32;i=i+1)
        begin
            REG_Files[i]<=(1<<i-1);
        end
    end

    always @(negedge rst_n or posedge clk_Regs)
    begin
        if(!rst_n)
        begin
            for(i=0;i<32;i=i+1)
            begin
                REG_Files[i]<=0;
            end
        end
        else if(Reg_Write && W_Addr!=0)
        begin
            REG_Files[W_Addr]<=W_Data;
        end
    end

    assign R_Data_A=REG_Files[R_Addr_A];
    assign R_Data_B=REG_Files[R_Addr_B];
endmodule
