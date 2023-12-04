`timescale 1ns / 1ps

module Crossbar2 #(
    parameter Data_Width = 8, Select_Width = 2
    )
    (
    input wire[Data_Width-1:0] X0,
    input wire[Data_Width-1:0] X1,
    input wire [Select_Width-1:0] S0,
    input wire [Select_Width-1:0] S1,
    output wire[Data_Width-1:0] Y0,
    output wire[Data_Width-1:0] Y1
    );

    // switchと同等
    MUX2 mx0(X0, X1, S0, Y0);
    MUX2 mx1(X0, X1, S1, Y1);

endmodule
