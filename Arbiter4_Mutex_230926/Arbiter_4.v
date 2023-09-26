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
    
    wire OA3, OA2, OA1, OA0;
    wire OB3, OB2, OB1, OB0;
    wire OC3, OC2, OC1, OC0;
    
    Arbiter_3 me3A(clk, X3, X2, X1, OA3, OA2, OA1);
    Arbiter_3 me3B(clk, X2, X1, X0, OB2, OB1, OB0);
    Arbiter_3 me3C(clk, X3, X1, X0, OC3, OC1, OC0);
    
    assign OA0 = X0;
    assign OB3 = X3;
    assign OC2 = X2;
    
    assign Y3 = OA3 & OB3 & OC3;
    assign Y2 = OA2 & OB2 & OC2;
    assign Y1 = OA1 & OB1 & OC1;
    assign Y0 = OA0 & OB0 & OC0;
    
endmodule