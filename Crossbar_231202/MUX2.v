`timescale 1ns / 1ps

module MUX2 #(
    parameter Data_Width = 8, Select_Width = 2
    )
    (
    input wire[Data_Width-1:0] X0,
    input wire[Data_Width-1:0] X1,
    input wire [Select_Width-1:0] S,
    output wire[Data_Width-1:0] Y
    );

    wire s0 = (S & 'b0);
    wire s1 = (S & 'b1);

    assign Y = (X0 & s0) | (X1 & s1);

endmodule
