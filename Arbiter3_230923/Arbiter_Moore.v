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
    
    wire L01;
    wire L02;
    wire L03;
    assign L03 = (~X2) & (~X1) & X0 + 
                X2 & (~Q1) & Q0 +
                X0 & Q1 & (~Q0); 
    
    wire L11;
    wire L12;
    wire L13;
    assign L11 = X1 ^ X0 + X1 & Q1; 
    assign L12 = X1 & Q0 + X0 & (~Q0);
    assign L13 = (~X2) & L11 + X2 & Q1 & L12;
    
    assign Qp0 = L03;
    assign Qp1 = L13; 
    
endmodule
