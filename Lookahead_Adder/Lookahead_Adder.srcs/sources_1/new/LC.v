`timescale 1ns / 1ps

module Lookahead_Carry(
    input [3:0] A,B,
    input C0,
    output [3:1] C,
    output C4
    );
    
    wire [3:0] G,P;
    
    assign G[0]=A[0]&B[0];
    assign G[1]=A[1]&B[1];
    assign G[2]=A[2]&B[2];
    assign G[3]=A[3]&B[3];
    assign P[0]=A[0]|B[0];
    assign P[1]=A[1]|B[1];
    assign P[2]=A[2]|B[2];
    assign P[3]=A[3]|B[3];
    
    assign C[1]=G[0]|(P[0]&C0);
    assign C[2]=G[1]|(P[1]&G[0])|(P[1]&P[0]&C0);
    assign C[3]=G[2]|(P[2]&G[1])|(P[2]&P[1]&G[0])|(P[2]&P[1]&P[0]&C0); 
    assign C4=G[3]|(P[3]&G[2])|(P[3]&P[2]&G[1])|(P[3]&P[2]&P[1]&G[0])|(P[3]&P[2]&P[1]&P[0]&C0);

endmodule
