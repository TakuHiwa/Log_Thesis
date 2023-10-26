`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/26 14:03:27
// Design Name: 
// Module Name: Comp2
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


module Comp2(
    input X1,
    input X0,
    input Y1,
    input Y0,
    output Zx,
    output Zy,
    output Zeq
    );
    
    wire Z0x, Z0y, Z0eq;
    wire Z1x, Z1y, Z1eq;
    
    // module : two compare 1bit
    Comp1 cp0(.X(X0), .Y(Y0), .Zx(Z0x), .Zy(Z0y), .Zeq(Z0eq));
    Comp1 cp1(.X(X1), .Y(Y1), .Zx(Z1x), .Zy(Z1y), .Zeq(Z1eq));
    
    // output
    assign Zx = Z1x | (Z1eq & Z0x);
    assign Zy = Z1y | (Z1eq & Z0y);
    assign Zeq = Z1eq & Z0eq;
    
endmodule
