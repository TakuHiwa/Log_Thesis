`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/26 13:50:01
// Design Name: 
// Module Name: DFF_tb
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


module DFF_tb();

reg D, clk;
wire Q, nQ;

DFF dff1(
    .D(D), 
    .clk(clk),
    .Qo(Q),
    .nQo(nQ)
);

initial begin
    D <= 0;
end

always begin
    clk <= 0;
    #10;
    clk <= 1;
    #10;
end

initial begin
    #100;
    D <= 1;
    #100;
    D <= 0;
    #100;
    D <= 1;
    #100;
    D <= 0;
    #100;
    D <= 1;
    
    #30;
    $finish;
end

endmodule
