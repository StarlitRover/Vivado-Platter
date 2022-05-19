`timescale 1ns / 1ps

module Full_Adder_Test;
    reg A,B,Cin;
	wire Sum,Cout;

    Full_Adder exp(A,B,Cin,Sum,Cout);
    
    initial
        {A,B,Cin}=3'b0;
        
	always
	begin
		#125;
		{A,B,Cin}={A,B,Cin} + 1'b1;
	end
endmodule
