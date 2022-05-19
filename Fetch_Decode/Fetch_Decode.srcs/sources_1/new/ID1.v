`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/04/19 19:22:28
// Design Name: 
// Module Name: ID1
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


module ID1(
    input [31:0] inst,
    output [4:0] rs1,rs2,rd,
    output [6:0] opcode,funct7,
    output [2:0] funct3,
    output reg [31:0] imm32
    );

    `define OP_BType    7'b1100011
    `define OP_RType    7'b0110011
    `define OP_IAluType 7'b0010011
    `define OP_ILdxType 7'b0000011
    `define OP_IStxType 7'b0100011
    `define OP_IJmpType 7'b1100111
    `define OP_UType    7'b0110111
    `define OP_JType    7'b1101111

assign rs2=inst[24:20];
assign rs1=inst[19:15];
assign opcode=inst[6:0];
assign funct7=inst[31:25];
assign funct3=inst[14:12];
assign rd=inst[11:7];

always @(inst) 
begin
    case (opcode)
        `OP_IAluType:
        begin
            if(funct3==3'b001||funct3==3'b101)
                imm32={27'b0,inst[24:20]};
            else
                imm32={{20{inst[31]}},inst[31:20]};
        end
        `OP_UType:
        begin
            imm32={inst[31:12],{12{1'b0}}};
        end
        `OP_ILdxType:
        begin
            imm32={{20{inst[31]}},inst[31:20]};
        end
        `OP_IStxType:
        begin
            imm32={{20{inst[31]}},inst[31:25],inst[11:7]};
        end
        `OP_IJmpType:
        begin
            imm32={{20{inst[31]}},inst[31:20]};
        end
        `OP_JType:
        begin
            imm32={{12{inst[31]}},inst[19:12],inst[20],inst[30:21],1'b0};
        end
        `OP_BType:
        begin
            imm32={{20{inst[31]}},inst[7],inst[30:25],inst[11:8],1'b0};
        end
        default:
        begin
            imm32=32'b0;
        end
    endcase
end

endmodule
