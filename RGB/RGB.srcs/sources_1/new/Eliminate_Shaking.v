`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/24 19:07:16
// Design Name: 
// Module Name: Eliminate_Shaking
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


module Eliminate_Shaking(
    input key,clk,
    output key_pulse
    );

    wire CP;
    divider #(.WIDTH(20),.N(1000000)) div(clk,CP);
    reg [2:0] ST;
    initial 
    begin
        ST = 3'b000;
    end
    parameter S0 = 3'b000,S1 = 3'b001,S2 = 3'b010,S3 = 3'b011,S4 = 3'b100,S5 = 3'b101;
    always @(posedge CP) 
    begin
        case(ST)
        S0: ST<=key?S1:S0;
        S1: ST<=key?S3:S2;
        S2: ST<=key?S1:S0;
        S3: ST<=key?S3:S4;
        S4: ST<=key?S5:S0;
        S5: ST<=key?S3:S4;
        default: ST<=key?S3:S0;
        endcase
    end
    assign key_pulse=((ST==S3)||(ST==S4)||(ST==S5));
endmodule
