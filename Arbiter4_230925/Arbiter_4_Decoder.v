
module Arbiter_4_Decoder(
    input wire Q2,
    input wire Q1,
    input wire Q0,
    output wire Y3,
    output wire Y2,
    output wire Y1,
    output wire Y0
    );
    
    assign Y3 = (~Q2) & (~Q1) & (Q0);
    assign Y2 = (~Q2) & (Q1) & (~Q0);
    assign Y1 = (~Q2) & (Q1) & (Q0);
    assign Y0 = Q2;
    
endmodule
