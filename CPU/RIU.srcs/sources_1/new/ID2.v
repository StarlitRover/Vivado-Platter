`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/05/04 14:06:19
// Design Name: 
// Module Name: ID2
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


module ID2(
    input [6:0] opcode,
    input [2:0] funct3,
    input [6:0] funct7,
    output IS_R,IS_IMM,IS_LUI,IS_LW,IS_SW,IS_BEQ,IS_JAL,IS_JALR,
    output reg [3:0] ALU_OP,
    output [2:0] ST
    );

    `define OP_BType    7'b1100011
    `define OP_RType    7'b0110011
    `define OP_IAluType 7'b0010011
    `define OP_ILdxType 7'b0000011
    `define OP_IStxType 7'b0100011
    `define OP_IJmpType 7'b1100111
    `define OP_UType    7'b0110111
    `define OP_JType    7'b1101111

    assign IS_R=(opcode==`OP_RType);
    assign IS_IMM=(opcode==`OP_IAluType);
    assign IS_LUI=(opcode==`OP_UType);
    assign IS_LW=(opcode==`OP_ILdxType);
    assign IS_SW=(opcode==`OP_IStxType);
    assign IS_BEQ=(opcode==`OP_BType);
    assign IS_JAL=(opcode==`OP_JType);
    assign IS_JALR=(opcode==`OP_IJmpType);

    always@(*)
    begin
        if(IS_R)
            ALU_OP={funct7[5],funct3};
        else if(IS_IMM)
            ALU_OP=(funct3==3'b101)?{funct7[5],funct3}:{1'b0,funct3};
    end
endmodule
