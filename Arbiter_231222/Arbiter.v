`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 14:55:14
// Design Name: 
// Module Name: Arbiter
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


module Arbiter(
    input wire R2,
    input wire R1,
    input wire A3,
    output wire A2,
    output wire A1,
    output wire R3
    );
    
    wire o31,o32;
    wire o21,o22;
    wire o11,o12;

    Mutex me1(R1, R2, o11, o12);
    assign o21 = o11 & ~o32;
    assign o22 = o12 & ~o31;
    muller_c c1(o21, A3, o31);
    muller_c c2(o22, A3, o32);
    


    assign A2 = o32; 
    assign A1 = o31;
    assign R3 = o21 | o22;
    
endmodule
