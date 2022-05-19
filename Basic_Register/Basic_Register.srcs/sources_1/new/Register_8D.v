`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/11 15:31:52
// Design Name: 
// Module Name: Register_8D
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


module Register_8D(
    input [7:0] D,
    input CLR,CLK,
    output reg [7:0] A
    );

    always @(posedge CLR or posedge CLK)
    begin
        if(CLR)
            A<=8'b0;
        else
            A<=D;
    end
endmodule
