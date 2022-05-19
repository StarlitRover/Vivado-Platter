`timescale 1ns / 1ps

module Lookahead_Adder_Test;
    reg [3:0] A;
    reg [3:0] B;
    reg C0;
    wire [3:0] F;
    wire C4;

    Lookahead_Adder LA(A,B,C0,C4,F);

    initial
        {A,B,C0}=9'b0;
        
	always
	begin
		#50;
		{A,B,C0}={A,B,C0} + 1'b1;
	end
endmodule
