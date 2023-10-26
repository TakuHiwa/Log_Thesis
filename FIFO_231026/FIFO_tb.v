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


module FIFO_tb();

parameter width_data = 72*4;

reg clk, write_en, read_en;
reg [width_data-1:0] write_dt;
wire [width_data-1:0] read_dt;

FIFO fifo1(
    .clk(clk),
    .write_en(write_en),
    .write_dt(write_dt),
    .read_en(read_en),
    .read_dt(read_dt)
);

always begin
    clk <= 0;
    #10;
    clk <= 1;
    #10;
end

initial begin
    write_en <= 0; read_en <= 0;
    write_dt <= 'b0;
end

initial begin
    #100
    write_en <= 1;
    write_dt <= 'ha;
    #10
    write_en <= 0;
    #100
    write_en <= 1;
    write_dt <= 'hb;
    #10
    write_en <= 0;
    #100
    write_en <= 1;
    write_dt <= 'hc;
    #10
    write_en <= 0;
    #100
    read_en <= 1;
    #100
    $finish;
end

endmodule
