`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/31 13:57:06
// Design Name: 
// Module Name: FIFO_tb
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

parameter width_adr = 2;
parameter width_data = 72*4;

reg clk;
reg write_en;
reg [width_data-1:0] write_dt;
reg read_en;
wire [width_data-1:0] read_dt;
wire [width_adr-1:0] d_wadr;
wire [width_adr-1:0] d_radr;

FIFO fifo1(
    .clk(clk),
    .write_en(write_en),
    .write_dt(write_dt),
    .read_en(read_en),
    .read_dt(read_dt),
    .d_wadr(d_wadr),
    .d_radr(d_radr)
);

initial begin
    write_en = 0;
    read_en = 0;
end

always begin
    clk <= 0;
    #10;
    clk <= 1;
    #10;
end

initial begin
    #10;
    write_en = 1;
    write_dt = 'd10;
    #20;
    write_dt = 'd30;
    #20;
    write_dt = 'd00;
    #20;
    write_dt = 'd99;
    #20;
    write_en = 0;
    #100;
    
    
    read_en = 1;
    #150;
    read_en = 0;
    $finish;
end

endmodule
