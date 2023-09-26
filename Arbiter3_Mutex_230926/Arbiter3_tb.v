`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/26 12:51:08
// Design Name: 
// Module Name: Arbiter3_tb
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

module Arbiter3_tb();

reg clk;
reg [2:0] req;
wire [2:0] grant;

Arbiter_3 ab3_uut(
    .clk(clk),
    .X2(req[2]),
    .X1(req[1]),
    .X0(req[0]),
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

reg[2:0] data1;

initial begin
    #100;
    data1 = 3'b000;
    req <= data1; #30;
    data1 = 3'b010;
    req <= data1; #30
    data1 = 3'b011;
    req <= data1; #30
    data1 = 3'b111;
    req <= data1; #30
    data1 = 3'b110;
    req <= data1; #30
    data1 = 3'b001;
    req <= data1; #30;
    data1 = 3'b011;
    req <= data1; #30;
    data1 = 3'b111;
    req <= data1; #30
    data1 = 3'b000;
    req <= data1; #30;

    data1 = 3'b100;
    req <= data1; #30;
    data1 = 3'b101;
    req <= data1; #30;
    data1 = 3'b110;
    req <= data1; #30
    data1 = 3'b101;
    req <= data1; #30;
    data1 = 3'b110;
    req <= data1; #30;  
    
    data1 = 3'b000;
    req <= data1; #30;
    data1 = 3'b011;
    req <= data1; #30;
    data1 = 3'b100;
    req <= data1; #30;
    #10000;
    $finish;
end

endmodule