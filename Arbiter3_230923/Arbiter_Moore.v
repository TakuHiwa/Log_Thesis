`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 02:21:40
// Design Name: 
// Module Name: Arbiter_Moore
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


module Arbiter_Moore(
    input wire X2,
    input wire X1,
    input wire X0,
    input wire Q1,
    input wire Q0,
    output wire Qp1,
    output wire Qp0
    );
    
    assign Qp0 = (Q0 & X2 & ~X1) | (~Q1 & Q0 & X2) | (~X2 & ~X1 & X0) | (~Q0 & X2 & ~X1 & ~X0) | (Q0 & X2 & ~X1);
    assign Qp1 = (Q1 & ~X2 & X1) | (Q1 & ~Q0 & X1) | (Q1 & Q0 & X2 & X0) | (~X2 & ~X1 & X0) | (~Q0 & ~X2 & X1 & ~X0);
    
endmodule
