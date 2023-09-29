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


module Arbiter_5(
    input wire X4,
    input wire X3,
    input wire X2,
    input wire X1,
    input wire X0,
    output wire Y4,
    output wire Y3,
    output wire Y2,
    output wire Y1,
    output wire Y0
    );
    
    wire o41,o42,o43,o44;    
    wire o31,o32,o33,o34;
    wire o21,o22,o23,o24;
    wire o11,o12,o13,o14;
    wire o01,o02,o03,o04;

    Arbiter_2_Mutex me1(X4, X3, o41, o31);
    Arbiter_2_Mutex me2(X4, X2, o42, o21);
    Arbiter_2_Mutex me3(X4, X1, o43, o11);
    Arbiter_2_Mutex me4(X4, X0, o44, o01);
    
    Arbiter_2_Mutex me5(X3, X2, o32, o22);
    Arbiter_2_Mutex me6(X3, X1, o33, o12);
    Arbiter_2_Mutex me7(X3, X0, o34, o02);
    
    Arbiter_2_Mutex me8(X2, X1, o23, o13);
    Arbiter_2_Mutex me9(X2, X0, o24, o03);
    
    Arbiter_2_Mutex me10(X1, X0, o14, o04);
    
    assign Y4 = o41 & o42 & o43 & o44;
    assign Y3 = o31 & o32 & o33 & o34;
    assign Y2 = o21 & o22 & o23 & o24; 
    assign Y1 = o11 & o12 & o13 & o14;
    assign Y0 = o01 & o02 & o03 & o04;
    
endmodule