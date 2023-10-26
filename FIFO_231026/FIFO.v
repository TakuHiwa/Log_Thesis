`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/26 15:07:08
// Design Name: 
// Module Name: FIFO
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


module FIFO #(
    parameter width_data = 72*4
)(
    input write_en,
    input [width_data-1:0] write_dt,
    input read_en,
//    input reset,
    input clk,
    output [width_data-1:0] read_dt
    );
    
    wire [1:0] write_pt;
    wire [1:0] read_pt;
    
    AddrCounter writeAddrCounter(.clk(clk), .Q0o(write_pt[0]), .Q1o(write_pt[1]), .Enable(write_en));
    AddrCounter readAddrCounter(.clk(clk), .Q0o(read_pt[0]), .Q1o(read_pt[1]), .Enable(read_en));
    
    B_SRAM sram(
        .wr_en(write_en),
        .wr_adr(write_pt),
        .wr_dt(write_dt),
        .clk(clk),
        .rd_adr(read_pt),
        .rd_dto(read_dt)
    );
    
endmodule
