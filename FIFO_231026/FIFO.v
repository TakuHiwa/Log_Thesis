`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/31 13:25:17
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


module FIFO#(
    parameter width_adr = 2, width_data = 72*4
    )(
    input clk,
    input write_en,
    input [width_data-1:0] write_dt,
    input read_en,
    output [width_data-1:0] read_dt,
    output [width_adr-1:0] d_wadr,
    output [width_adr-1:0] d_radr
    );
    
    wire [width_adr-1:0] write_adr;
    wire [width_adr-1:0] read_adr;
    assign d_wadr = write_adr;
    assign d_radr = read_adr;
    
    // parts
    B_SRAM sram(.wr_en(write_en), .wr_adr(write_adr), .wr_dt(write_dt), .clk(clk), .rd_en(read_en), .rd_adr(read_adr), .rd_dto(read_dt));
    Address_Counter write_counter(.clk(clk), .en(write_en), .Q0(write_adr[0]), .Q1(write_adr[1]));
    Address_Counter read_counter(.clk(clk), .en(read_en), .Q0(read_adr[0]), .Q1(read_adr[1]));
    
    
    
endmodule
