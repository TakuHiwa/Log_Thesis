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
    input wire X3,
    input wire X2,
    input wire X1,
    input wire X0,
    output wire Y3,
    output wire Y2,
    output wire Y1,
    output wire Y0
    );
    
    wire o31,o32,o33;
    wire o21,o22,o23;
    wire o11,o12,o13;
    wire o01,o02,o03;

    Arbiter_2_Mutex me1(X3, X2, o31, o21);
    Arbiter_2_Mutex me2(X3, X1, o32, o11);
    Arbiter_2_Mutex me3(X3, X0, o33, o01);
    Arbiter_2_Mutex me4(X2, X1, o22, o12);
    Arbiter_2_Mutex me5(X2, X0, o23, o02);
    Arbiter_2_Mutex me6(X1, X0, o13, o03);
    
    assign Y3 = o31 & o32 & o33;
    assign Y2 = o21 & o22 & o23; 
    assign Y1 = o11 & o12 & o13;
    assign Y0 = o01 & o02 & o03;
    
endmodule