`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 17:41:29
// Design Name: 
// Module Name: CLArbiter_tb
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

module CLArbiter_tb();

parameter NumReq = 3;
logic clk;
logic rstN;
logic[NumReq-1:0] req_in;
logic[NumReq-1:0] grant_out;
logic[NumReq-1:0] mask_test;
int request_place_test;
int Num_test;

CLArbiter cla_uut(
    .clk(clk),
    .rstN(rstN),
    .req_in(req_in),
    .grant_out(grant_out),
    .test(mask_test),
    .test2(request_place_test),
    .test3(Num_test)
);

initial begin
    req_in <= 'bz;
    grant_out <= 'bz;
    rstN <= 0; #30;
    rstN <= 1; 
end

always begin
    clk <= 0; #10;
    clk <= 1; #10;
end

reg[NumReq-1:0] data1;

initial begin
    #100;
    data1 = 3'b000;
    req_in <= data1; #100;
    data1 = 3'b001;
    req_in <= data1; #100
    data1 = 3'b100;
    req_in <= data1; #100;
    data1 = 3'b111;
    req_in <= data1; #100
    data1 = 3'b110;
    req_in <= data1; #100
    data1 = 3'b111;
    req_in <= data1; #100
    data1 = 3'b101;
    req_in <= data1; #100
    data1 = 3'b011;
    req_in <= data1; #100
    data1 = 3'b001;
    req_in <= data1; #100
    data1 = 3'b000;
    req_in <= data1; #100
    #10000;
    $finish;
end

endmodule