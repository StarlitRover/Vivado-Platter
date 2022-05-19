`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/20 17:21:01
// Design Name: 
// Module Name: JK_Trigger
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


module JK_Trigger(
    input SD_,RD_,CP,J,K,
    output reg Q,wire Q_
    );

    always @(negedge SD_ or negedge RD_ or negedge CP)
    begin
        if(!SD_)
            Q<=1'b1;
        else if(!RD_)
            Q<=1'b0;
        else
            case ({J,K})
                2'b00: Q<=Q;
                2'b01: Q<=1'b0;
                2'b10: Q<=1'b1;
                2'b11: Q<=~Q;
            endcase
    end
    assign Q_=~Q;
endmodule
