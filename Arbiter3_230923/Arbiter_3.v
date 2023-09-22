`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/23 02:33:03
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
    
    reg Q1, Q0;
    wire Qp1, Qp0;
    
    Arbiter_Moore state(X2, X1, X0, Q1, Q0, Qp1, Qp0);
    Arbiter_Decoder decode(Q1, Q0, Y2, Y1, Y0);
    
    always @(posedge clk) begin
        Q1 = Qp1;
        Q0 = Qp0; 
    end
endmodule
