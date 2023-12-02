`timescale 1ns / 1ps

module Crossbar2_tb();

parameter Width = 8;
parameter Select = 2;

    wire[Data_Width-1:0] X0;
    wire[Data_Width-1:0] X1;
    wire [Select-1:0] S0;
    wire [Select-1:0] S1;
    wire[Data_Width-1:0] Y0;
    wire[Data_Width-1:0] Y1;

Crossbar2 cb2_uut(
    .X1(X1),
    .X0(X0),
    .S1(S1),
    .S0(S0),
    .Y1(Y1),
    .Y0(Y0)
);

initial begin
    X0 <= 'd1; X1 <= 'd2;
    S0 <= 'bz; S1 <= 'bz;
end

initial begin
    #100;
    // リセット
    S0 <= 'b0; S1 <= 'b0; #30;

    S0 <= 'b1; #30;

    // リセット
    S0 <= 'b0; S1 <= 'b0;
    S1 <= 'b1; #30;

    #30;
    $finish;
end

endmodule