`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/19 09:35:21
// Design Name: 
// Module Name: PC
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


module PCM(
    input PC_Write,clk,rst_n,
    input [31:0] PCin,
    output reg [31:0] PC
    );

    initial 
    begin
        PC<=32'b0;
    end
    always @(negedge rst_n or posedge clk) 
    begin
        if(!rst_n)
            PC<=32'b0;
        else if(PC_Write)
            PC<=PCin;
    end

endmodule
