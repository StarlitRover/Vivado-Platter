`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/18 10:42:48
// Design Name: 
// Module Name: Data_RAM
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


module Data_RAM(
  input clk_dm,
  input [0:0] Mem_Write,
  input [7:2] DM_ADDR,
  input [31:0] M_W_Data,
  output [31:0] M_R_Data
  );

  RAM_B ram (
    .clka(clk_dm),    // input wire clka
    .wea(Mem_Write),      // input wire [0 : 0] wea
    .addra(DM_ADDR[7:2]),  // input wire [5 : 0] addra
    .dina(M_W_Data),    // input wire [31 : 0] dina
    .douta(M_R_Data)  // output wire [31 : 0] douta
  );

endmodule