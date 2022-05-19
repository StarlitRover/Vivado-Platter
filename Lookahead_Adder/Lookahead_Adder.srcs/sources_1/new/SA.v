`timescale 1ns / 1ps

module Serial_Adder(
    input [3:0] A,B,
    input C0,
    output C4,
    output [3:0] F
    );
    
    wire [3:1] C;
    
    Full_Adder FA1(A[0],B[0],C0,F[0],C[1]),
               FA2(A[1],B[1],C[1],F[1],C[2]),
               FA3(A[2],B[2],C[2],F[2],C[3]),
               FA4(A[3],B[3],C[3],F[3],C4);

endmodule
