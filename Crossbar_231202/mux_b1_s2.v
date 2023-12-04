`timescale 1ns / 1ps

module mux_b1_s2 (
    input wire X0,
    input wire X1,
    input wire S,
    output wire Y
    );
    
    assign Y = (X0 & ~S) | (X1 & S);

endmodule
