`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/26 15:50:02
// Design Name: 
// Module Name: Arbiter_4
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


module Arbiter_4(
    input wire clk,
    input wire X3,
    input wire X2,
    input wire X1,
    input wire X0,
    output wire Y3,
    output wire Y2,
    output wire Y1,
    output wire Y0
    );
    
    wire L3, L2, L1, L0;
    wire R3, R2, R1, R0;
    
    Arbiter_3 me1(clk, X3, X2, X1, L3, L2, L1);
    Arbiter_3 me2(clk, X2, X1, X0, R2, R1, R0);

    assign L0 = X0;
    assign R3 = X3;
    
    assign Y3 = L3 & R3;
    assign Y2 = L2 & R2;
    assign Y1 = L1 & R1;
    assign Y0 = L0 & R0;
    
endmodule