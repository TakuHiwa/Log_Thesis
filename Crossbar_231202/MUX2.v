`timescale 1ns / 1ps

module MUX2 #(
    parameter Data_Width = 8, Select_Width = 1
    )
    (
    input wire[Data_Width-1:0] X0,
    input wire[Data_Width-1:0] X1,
    input wire S,
    output wire[Data_Width-1:0] Y
    );

    MUX_b1_s2 mux1(X0[0], X1[0], S, Y[0]);
    MUX_b1_s2 mux2(X0[1], X1[1], S, Y[1]);
    MUX_b1_s2 mux3(X0[2], X1[2], S, Y[2]);
    MUX_b1_s2 mux4(X0[3], X1[3], S, Y[3]);
    MUX_b1_s2 mux5(X0[4], X1[4], S, Y[4]);
    MUX_b1_s2 mux6(X0[5], X1[5], S, Y[5]);
    MUX_b1_s2 mux7(X0[6], X1[6], S, Y[6]);
    MUX_b1_s2 mux8(X0[7], X1[7], S, Y[7]);

endmodule
