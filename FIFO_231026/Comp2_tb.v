`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/26 14:12:56
// Design Name: 
// Module Name: Comp2_tb
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


module Comp2_tb();
reg [1:0] X, Y;
wire Zx, Zy, Zeq;

Comp2 comp(
    .X1(X[1]),
    .X0(X[0]),
    .Y1(Y[1]),
    .Y0(Y[0]),
    .Zx(Zx),
    .Zy(Zy),
    .Zeq(Zeq)
);

initial begin
    #100;
    X <= 'd0; Y <= 'd0; 
    #100;
    X <= 'd1; Y <= 'd0;
    #100;
    X <= 'd1; Y <= 'd1;
    #100;
    X <= 'd0; Y <= 'd1;
        
    #30;
    $finish;
end
endmodule
