`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/26 15:46:56
// Design Name: 
// Module Name: B_SRAM_tb
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


module B_SRAM_tb();

parameter width_adr = 2;
parameter width_data = 72*4;

reg WE, clk;
reg [width_data-1:0] WD;
reg [width_adr-1:0] WA, RA;

wire [width_data-1:0] RO;

B_SRAM ram(
    .wr_en(WE), 
    .wr_adr(WA),
    .wr_dt(WD),
    .clk(clk),
    .rd_adr(RA),
    .rd_dto(RO)
);

initial begin
    WE <= 0;
    WA <= 'b0;
    WD <= 'bz;
    RA <= 'd1;
end

always begin
    clk <= 0;
    #10;
    clk <= 1;
    #10;
end

initial begin
    #100;
    WE <= 1;
    WA <= 'd1;
    WD <= 'ha;
    #100;
    WA <= 'd2;
    WD <= 'hb;
    #100;
    WA <= 'd3;
    WD <= 'hc;
    #100;
    WE <= 0;
    WA <= 'd0;
    WD <= 'h0;
    RA <= 'd2;
    #100;
    RA <= 'd3;
    #30;
    $finish;
end
endmodule
