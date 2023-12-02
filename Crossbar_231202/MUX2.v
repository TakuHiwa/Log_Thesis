`timescale 1ns / 1ps

module MUX2 #(
    parameter Width = 8, Select = 2
    )
    (
    input wire[Data_Width-1:0] X0,
    input wire[Data_Width-1:0] X1,
    input wire [Select-1:0] Select
    output wire[Data_Width-1:0] Y
    );

    wire s0 = (Select == 0)
    wire s1 = (Select == 1)

    assign Y = (X0 & s0) | (X1 & s1)

endmodule
