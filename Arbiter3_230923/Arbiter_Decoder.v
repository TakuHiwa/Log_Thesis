`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 02:23:01
// Design Name: 
// Module Name: Arbiter_Decoder
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


module Arbiter_Decoder(
    input wire Q1,
    input wire Q0,
    output wire Y2,
    output wire Y1,
    output wire Y0
    );
    
    assign Y2 = Q0;
    assign Y1 = Q1;
    assign Y0 = Q0 & Q1;
    
endmodule
