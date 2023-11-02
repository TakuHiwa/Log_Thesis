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


module Arbiter5_tb();

parameter Num_Req = 5;
reg [Num_Req-1:0] req;
wire [Num_Req-1:0] grant;

Arbiter_5 ab5_uut(
    .X4(req[4]),
    .X3(req[3]),
    .X2(req[2]),
    .X1(req[1]),
    .X0(req[0]),
    .Y4(grant[4]),
    .Y3(grant[3]),
    .Y2(grant[2]),
    .Y1(grant[1]),
    .Y0(grant[0])
);

initial begin
    req <= 'bz;
end

initial begin
    #100;
    req <= 'b0000; #30;
    
    req <= 'b00001; #30;
    req <= 'b00011; #30;
    req <= 'b00101; #30;
    req <= 'b00111; #30;
    req <= 'b01001; #30;
    req <= 'b01011; #30;
    req <= 'b01101; #30;
    req <= 'b01111; #30;
    
    req <= 'b0000; #30;
    req <= 'b0010; #30;
    req <= 'b0110; #30;
    req <= 'b0111; #30;
    req <= 'b0100; #30;
    req <= 'b0110; #30;
    req <= 'b1100; #30;
    req <= 'b1101; #30;
    req <= 'b1111; #30;

    req <= 'b10000; #30;  
    req <= 'b10011; #30;  
    req <= 'b10101; #30;  
    req <= 'b10111; #30;  
    req <= 'b11001; #30;  
    req <= 'b11011; #30;  
    req <= 'b11101; #30;  
    req <= 'b11111; #30;  
    
    req <= 'b00000; #30;
    req <= 'b11111; #30;
    
    
    #30;
    $finish;
end

endmodule