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


module Arbiter_tb();

reg [1:0] req;
wire [1:0] grant;
reg A3;
wire R3;

Arbiter ab_uut(
    .R3(R3),
    .A3(A3),
    .R2(req[1]),
    .R1(req[0]),
    .A2(grant[1]),
    .A1(grant[0])
);

initial begin
    req <= 'bz;
    A3 <= 0;
end

initial begin
    #100;
    A3 <= 0; req <= 'b00; #30;
    A3 <= 1; req <= 'b00; #30;
    
    req <= 'b01; #30;
    
    req <= 'b11; #30;
    
    req <= 'b00; #30;
    
    req <= 'b10; #30;
    
    req <= 'b11; #30;
    #10000;
    $finish;
end

endmodule