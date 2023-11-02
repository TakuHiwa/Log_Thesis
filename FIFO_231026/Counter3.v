`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/02 12:23:04
// Design Name: 
// Module Name: Counter3
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


module Counter3(
    input clk,
    output Q0o,
    output Q1o,
    output Q2o
    );
    
    wire Z0n, Z1n, Z2n;
    wire Z1a;
    wire Z1e, Z2e;
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
    assign Z1a = Q0o & Q1o;
        
    // bit 2
    DFF dff3(
        .D(Z2e),
        .clk(clk),
        .Qo(Q2o),
        .nQo(Z2n),
        .reset(reset)
    );
    
    assign Z2e = Z1a ^ Q2o;
    
endmodule
