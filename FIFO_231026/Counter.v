`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/26 17:33:07
// Design Name: 
// Module Name: Counter
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


module Counter(
    input clk,
    output Q0o,
    output Q1o
    );
    
    wire Z0n, Z1n, Z1e;
    reg reset;
    
    initial begin
        reset = 1;
        #10;
        reset = 0;
    end
    
    // bit 0
    DFF dff1(
        .D(Z0n),
        .clk(clk),
        .Qo(Q0o),
        .nQo(Z0n),
        .reset(reset)
    );
    
    // bit 1
    DFF dff2(
        .D(Z1e),
        .clk(clk),
        .Qo(Q1o),
        .nQo(Z1n),
        .reset(reset)
    );
    
    assign Z1e = Q0o ^ Q1o;
    
endmodule
