`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/14 12:56:11
// Design Name: 
// Module Name: RAM_Test
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


module RAM_Test;
  reg clk_dm;
  reg [0:0] Mem_Write;
  reg [7:0] DM_ADDR;
  reg [31:0] M_W_Data;
  wire [31:0] M_R_Data;

  Data_RAM ram(
    .clk_dm(clk_dm),
    .Mem_Write(Mem_Write),
    .DM_ADDR(DM_ADDR[7:2]),
    .M_W_Data(M_W_Data),
    .M_R_Data(M_R_Data)
  );

  initial
  begin
    clk_dm = 1'b0;
    Mem_Write = 1'b1;
    DM_ADDR = 8'b00000100;
    M_W_Data = 32'h1234ABCD;
    #50; clk_dm = !clk_dm;
    #50; clk_dm = !clk_dm;
    #50; clk_dm = !clk_dm;
  end
//   always #50 clk_dm = !clk_dm;
endmodule
