`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/09 17:47:07
// Design Name: 
// Module Name: FA2
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


module FA2(
    input A,B,Cin,
    output Sum,Cout
    );
    
    wire S1,T1,T2,T3;
    assign Sum=A^B^Cin;
    assign Cout=A&B|A&Cin|B&Cin;

endmodule
