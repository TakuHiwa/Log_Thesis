`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/26 12:06:16
// Design Name: 
// Module Name: Arbiter_3
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

module Arbiter_3(
    input wire clk,
    input wire X2,
    input wire X1,
    input wire X0,
    output wire Y2,
    output wire Y1,
    output wire Y0
    );
    
    wire L2, L1, L0;
    wire R2, R1, R0;
    
    Arbiter_2_Mutex me1(clk, X2, X1, L2, L1);
    Arbiter_2_Mutex me2(clk, X1, X0, R1, L0);
    Arbiter_2_Mutex me3(clk, X0, X2, R0, R2);
    
    assign Y2 = L2 & R2;
    assign Y1 = L1 & R1;
    assign Y0 = L0 & R0;
    
endmodule