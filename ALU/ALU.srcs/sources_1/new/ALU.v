`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/19 17:32:49
// Design Name: 
// Module Name: ALU
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


module ALU(A, B, F, op);
    input [3:0] op;
    input [31:0] A,B;
    output reg [32:0] F;

always @(*)
begin
    case (op)
        4'b0000: F <= A+B;
        4'b0001: F <= A<<B;
        4'b0010: F <= ($signed(A)<$signed(B))?1:0;
        4'b0011: F <= (A<B)?1:0;
        4'b0100: F <= A^B;
        4'b0101: F <= A>>B;
        4'b0110: F <= A|B;
        4'b0111: F <= A&B;
        4'b1000: F <= A-B;
        4'b1101: F <= ($signed(A))>>>B;
        default: F <= 0;
    endcase
end

endmodule
