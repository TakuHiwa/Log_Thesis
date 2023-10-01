`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/06 14:20:16
// Design Name: 
// Module Name: Input_Unit
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


module Input_Unit #(
    parameter Num_Dir = 5, Width = 8, Depth = 8, Addr_width = $clog2(Depth), Net_width = $clog2(4)
    )(
    // ff
    input wire clk,
    input wire rst,
    
    input wire[Net_width-1:0] X_cur,
    input wire[Net_width-1:0] Y_cur,
    input wire[Net_width-1:0] X_dist,
    input wire[Net_width-1:0] Y_dist,
    output wire packet_dir[Num_Dir-1:0],
    
    input wire writeEn,
    input wire [Width-1:0] writeData,
    input wire readEn,
    output wire [Width-1:0] readData,
    output wire full
    );
    
    reg direction[Num_Dir-1:0];
    assign packet_dir = direction;
    
    wire empty; 
    
    Fifo fifo(clk, rst, writeEn, writedata, readEn, readData, empty, full);
    
    always @(clk) begin
        if(X_cur < X_dist) // たて
            direction[0] = 1;
        else if(X_cur > X_dist) 
            direction[1] = 1;
        else if(X_cur == X_dist) begin // よこ
            if(Y_cur < Y_dist) 
                direction[2] = 1;
            else if (Y_cur > Y_dist) 
                direction[3] = 1;
        end else // ローカル 
            direction[4] = 1;
    end
endmodule
