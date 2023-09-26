`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/26 15:47:19
// Design Name: 
// Module Name: Arbiter4_tb
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


module Arbiter4_tb();

parameter Num_Req = 4;
reg clk;
reg [Num_Req-1:0] req;
wire [Num_Req-1:0] grant;

Arbiter_4 ab3_uut(
    .clk(clk),
    .X3(req[3]),
    .X2(req[2]),
    .X1(req[1]),
    .X0(req[0]),
    .Y3(grant[3]),
    .Y2(grant[2]),
    .Y1(grant[1]),
    .Y0(grant[0])
);

initial begin
    req <= 'bz;
end

always begin
    clk <= 0; #10;
    clk <= 1; #10;
end

initial begin
    #100;
    req <= 'b0000; #30;
    
    req <= 'b0100; #30;
    req <= 'b0110; #30;
    req <= 'b0101; #30;
    req <= 'b0111; #30;
    req <= 'b0011; #30;
    
    req <= 'b0010; #30;
    req <= 'b0011; #30;
    req <= 'b0110; #30;
    req <= 'b0111; #30;
    req <= 'b0101; #30;
    
    req <= 'b0001; #30;
    req <= 'b0011; #30;
    req <= 'b0101; #30;
    req <= 'b0111; #30;
    req <= 'b0110; #30;
    
    req <= 'b0000; #30;
    req <= 'b1111; #30;
    
    #30;
    $finish;
end

endmodule