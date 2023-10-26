`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/26 13:44:40
// Design Name: 
// Module Name: DFF
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


module Comp1(
    input X,
    input Y,
    output Zx,
    output Zy,
    output Zeq
    );

    assign Zx = X & ~Y;
    assign Zy = ~X & Y;
    assign Zeq = ~(Zx | Zy);
    
endmodule
