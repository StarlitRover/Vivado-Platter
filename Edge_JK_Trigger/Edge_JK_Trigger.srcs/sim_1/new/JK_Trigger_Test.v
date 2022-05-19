`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/20 18:55:25
// Design Name: 
// Module Name: JK_Trigger_Test
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


module JK_Trigger_Test;
    reg SD_,RD_,CP,J,K;
    wire Q,Q_;

    JK_Trigger JKTT(SD_,RD_,CP,J,K,Q,Q_);
    initial
    begin
        SD_=1;RD_=1;CP=0;J=1;K=0;   #100;
        SD_=1;RD_=1;CP=1;J=0;K=0;   #100;
        SD_=1;RD_=1;CP=1;J=0;K=1;   #100;
        SD_=1;RD_=1;CP=0;J=0;K=1;   #100;
        SD_=1;RD_=1;CP=1;J=1;K=1;   #100;
        SD_=1;RD_=1;CP=0;J=1;K=1;   #100;
        SD_=0;RD_=1;CP=1;J=0;K=0;   #100;
        SD_=1;RD_=0;CP=0;J=0;K=0;   #100;
        SD_=0;RD_=1;CP=1;J=0;K=0;   #100;
        SD_=1;RD_=1;CP=1;J=0;K=0;   #100;
    end
endmodule
