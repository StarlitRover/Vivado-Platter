`timescale 1ns / 1ps

module Serial_Adder_Test;
    reg [3:0] A,B;
    reg C0;
    wire C4;
    wire [3:0] F;

    Serial_Adder ST(A,B,C0,C4,F);

    initial
        {A,B,C0}=9'b0;
    always
	begin
		#50;
		{A,B,C0}={A,B,C0} + 5'b10101;
	end

endmodule