`timescale 1ns / 1ps

module Lookahead_Adder(
    input [3:0] A,[3:0] B,
    input C0,
    output C4,
    output [3:0] F
    );
    
    wire [3:1] C;
    
    Lookahead_Carry LC(A,B,C0,C,C4);
    
    Full_Adder FA1(A[0],B[0],C0,F[0]),
               FA2(A[1],B[1],C[1],F[1]),
               FA3(A[2],B[2],C[2],F[2]),
               FA4(A[3],B[3],C[3],F[3]);

endmodule
