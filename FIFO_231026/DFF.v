`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/26 13:44:40
// Design Name: 
// Module Name: DFF
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


module DFF(
    input D,
    input clk,
    input reset,
    output Qo,
    output nQo
    );
    
    reg Q;
    assign Qo = Q;
    assign nQo = ~Q;
    
    initial begin
        Q <= 0;
    end
    
    always @(posedge clk) begin
        if(reset)
            Q <= 0;
        else
            Q <= D;
    end 
    
endmodule
