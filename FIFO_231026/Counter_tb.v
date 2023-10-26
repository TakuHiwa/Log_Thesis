`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/26 17:46:59
// Design Name: 
// Module Name: Counter_tb
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


module Counter_tb();

reg clk;
wire [1:0] Q;

Counter counter2(
    .clk(clk),
    .Q0o(Q[0]),
    .Q1o(Q[1])
);

always begin
    clk <= 0;
    #10;
    clk <= 1;
    #10;
end

endmodule
