`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/20 19:27:23
// Design Name: 
// Module Name: Edge_JK_Trigger
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


module Edge_JK_Trigger(
    input SD_1,RD_1,CP1,J1,K1,SD_2,RD_2,CP2,J2,K2,
    output Q1,Q_1,Q2,Q_2
    );

    JK_Trigger JKT1(SD_1,RD_1,CP1,J1,K1,Q1,Q_1);
    JK_Trigger JKT2(SD_2,RD_2,CP2,J2,K2,Q2,Q_2);
endmodule
