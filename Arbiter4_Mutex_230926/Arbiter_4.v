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
    
    Arbiter_2_Mutex me1(clk, X3, X2, L3, L2);
    Arbiter_2_Mutex me2(clk, X2, X1, R2, L1);
    Arbiter_2_Mutex me3(clk, X1, X0, R1, L0);
    Arbiter_2_Mutex me4(clk, X0, X3, R0, R3);
    
    assign Y3 = L3 & R3;
    assign Y2 = L2 & R2;
    assign Y1 = L1 & R1;
    assign Y0 = L0 & R0;
    
endmodule