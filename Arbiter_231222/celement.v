`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 14:46:20
// Design Name: 
// Module Name: celement
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


module muller_c(
    input wire A,
    input wire B,
    output wire Y
    );
    
    wire Q;
    
    assign Q = A & B;

    assign Y = Q | (A & Y) | (B & Y);     
    
endmodule

