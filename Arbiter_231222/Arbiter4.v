`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 14:55:14
// Design Name: 
// Module Name: Arbiter
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


module Arbiter4(
    input wire R4,
    input wire R3,
    input wire R2,
    input wire R1,
    input wire A5,
    output wire A4,
    output wire A3,
    output wire A2,
    output wire A1,
    output wire R5
    );
    
    wire o3,o4;
    wire o1,o2;

    Arbiter a0_1(R4, R3, o1, A4, A3, o3);
    Arbiter a0_2(R2, R1, o2, A2, A1, o4);
    Arbiter a1_1(o3, o4, A5, o1, o2, R5);
    
endmodule
