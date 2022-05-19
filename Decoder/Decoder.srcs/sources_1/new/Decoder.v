`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/20 14:41:24
// Design Name: 
// Module Name: Decoder
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


module Decoder(
    input G1,N_G2A,N_G2B,C,B,A,
    output reg [7:0] N_Y
    );

    always @(*)
    begin
        if({G1,N_G2A,N_G2B}==3'b100)
        begin
            case ({C,B,A})
                3'b000: N_Y=8'b11111110;
                3'b001: N_Y=8'b11111101;
                3'b010: N_Y=8'b11111011;
                3'b011: N_Y=8'b11110111;
                3'b100: N_Y=8'b11101111;
                3'b101: N_Y=8'b11011111;
                3'b110: N_Y=8'b10111111;
                3'b111: N_Y=8'b01111111;
            endcase
        end
        else
            N_Y=8'b11111111;
    end
endmodule