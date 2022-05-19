`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/19 20:42:52
// Design Name: 
// Module Name: Top
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


module Top(
    input PC_Write,IR_Write,rst_n,clk_im,clk,TURN,
    input [1:0] SWT,
    // output [4:0] rs1,rs2,rd,
    // output [6:0] opcode,
    // output [2:0] funct3,
    // output [6:0] funct7,
    output [7:0] AN,DP,
    output reg [16:0] g 
    );

    wire [31:0] douta,irout,pc,imm32;
    wire [4:0] rs1,rs2,rd;
    wire [6:0] opcode,funct7;
    wire [2:0] funct3;
    reg [31:0] f;

    PCM pcm(.PC_Write(PC_Write),.clk(!clk_im),.rst_n(rst_n),.PC(pc));
    IM im(.clka(!clk_im),.addra(pc[7:2]),.douta(douta));
    IR ir(.clk(!clk_im),.rst_n(rst_n),.IR_Write(IR_Write),.IR_Data_In(douta),.IR_Data_Out(irout));
    ID1 id1(.inst(irout),.rs1(rs1),.rs2(rs2),.rd(rd),.opcode(opcode),.funct3(funct3),.funct7(funct7),.imm32(imm32));
    NumberDisplay NP(.Number(f), .clk(clk), .DP(DP), .AN(AN));

    initial
    begin
        f=imm32;
        g={rs1,0,rs2,0,rd};
    end
    
    always @(*)
    begin
        if(TURN)
            g={opcode,funct3,funct7};
        else
            g={rs1,rs2,rd,2'b00};
        case (SWT)
        2'b00: 
            begin
                f=imm32;
            end
        2'b01: 
            begin
                f=pc;
            end
        2'b11: 
            begin
                f=irout;
            end
        default:
            begin
                f=0;
            end
        endcase
    end
endmodule
