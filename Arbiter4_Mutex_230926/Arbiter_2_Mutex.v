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


module Arbiter_2_Mutex(
    input wire X1,
    input wire X0,
    output wire Y1,
    output wire Y0
    );
    
    wire Q1, Q0;
    wire Qp1, Qp0;
    
    assign Q1 = ~(X1 & Q0);
    assign Q0 = ~(X0 & Q1);

    assign Y1 = (~Q1) & (Q0);
    assign Y0 = (Q1) & (~Q0);
    
endmodule
