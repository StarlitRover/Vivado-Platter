`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/03/19 15:23:07
// Design Name: 
// Module Name: NumberDisplayOne
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


module NumberDisplayOne(Number, DP);
    input Number;
    output DP;
    wire [3:0] Number;
    reg [7:0] DP;

    always @(*) 
    begin
            case (Number[3:0])
                // 0
    //            0
    //          -----
    //         5|   |1
    //          |   |
    //         4|   |2
    //          |---|     
    //            3
                4'b0000: DP = 8'b11000000;


    //             
    //               
    //              |1
    //              |
    //              |2
    //              |  
    //             
                // 1
                4'b0001: DP = 8'b11111001;


    //            0
    //          -----
    //            6 |1
    //          |---|
    //         4|     
    //          |---|     
    //            3
                // 2
                4'b0010: DP = 8'b10100100;


    //            0
    //          -----
    //            6 |1
    //          |---|
    //              |2
    //          |---|     
    //            3
                // 3
                4'b0011: DP = 8'b10110000;
                

    //             
    //          -   -
    //         5| 6 |1
    //          |---|
    //              |2
    //              |     
    //             
                // 4
                4'b0100: DP = 8'b10011001;


    //            0
    //          -----
    //         5| 6   
    //          |---|
    //              |2
    //          |---|     
    //            3
                // 5
                4'b0101: DP = 8'b10010010;


    //            0
    //          -----
    //         5| 6   
    //          |---|
    //         4|   |2
    //          |---|     
    //            3
                // 6
                4'b0110: DP = 8'b10000010;


    //            0
    //          -----
    //              |1
    //              |
    //              |2
    //              |  
    //             
                // 7
                4'b0111: DP = 8'b11111000;


    //            0
    //          -----
    //         5| 6 |1
    //          |---|
    //         4|   |2
    //          |---|     
    //            3
                // 8
                4'b1000: DP = 8'b10000000;


    //            0
    //          -----
    //         5| 6 |1
    //          |---|
    //              |2
    //          |---| 
    //            3
                // 9
                4'b1001: DP = 8'b10010000;

                //A
                4'b1010: DP = 8'b10001000;

                //B
                4'b1011: DP = 8'b10000011;

                //C
                4'b1100: DP = 8'b11000110;

                //D
                4'b1101: DP = 8'b10100001;

                //E
                4'b1110: DP = 8'b10000110;

                // F
                4'b1111: DP = 8'b10001110;

            endcase
    end
endmodule