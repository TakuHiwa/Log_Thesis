`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/26 12:35:18
// Design Name: 
// Module Name: Arbiter2_tb
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


module Arbiter2_tb();

reg clk;
reg [1:0] req;
wire [1:0] grant;

Arbiter_2_Mutex me_uut(
    .clk(clk),
    .X1(req[1]),
    .X0(req[0]),
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
    req <= 'b00; #30;
    
    req <= 'b01; #30;
    
    req <= 'b11; #30;
    
    req <= 'b00; #30;
    
    req <= 'b10; #30;
    
    req <= 'b11; #30;
    #10000;
    $finish;
end

endmodule