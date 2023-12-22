`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/26 12:07:31
// Design Name: 
// Module Name: Arbiter_2_Mutex
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


module Mutex(
    input wire R2,
    input wire R1,
    output wire A2,
    output wire A1
    );
    
    wire Q1, Q0;
    wire Qp1, Qp0;
    
    assign Q1 = ~(R2 & Q0);
    assign Q0 = ~(R1 & Q1);

    assign A2 = (~Q1) & (Q0);
    assign A1 = (Q1) & (~Q0);
    
endmodule
