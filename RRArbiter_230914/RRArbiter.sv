`timescale 1ns / 1ps
module RRArbiter #(
    parameter NumReq = 3
)(
    input logic clk,
    input logic rstN,
    input logic[NumReq-1:0] req_in,
    output logic[NumReq-1:0] grant_out
    );
wire[NumReq-1:0] unmaskedGrant;
wire[NumReq-1:0] maskedReq;
wire[NumReq-1:0] maskedGrant;
reg[NumReq-1:0] mask = '1, maskNext = '1;
Arbiter #(
    .NumReq(NumReq)
) nonmasked(
    .req(req_in),
    .grant(unmaskedGrant)
);
Arbiter #(
    .NumReq(NumReq)
) masked(
    .req(maskedReq),
    .grant(maskedGrant)
);
assign maskedReq = req_in & mask;
assign grant_out = (maskedReq == '0) ? unmaskedGrant : maskedGrant;
always_comb begin : AssignMask
     if(grant_out == '0) begin
         maskNext <= mask;                  
     end else begin
        maskNext <= '1;
        for (int i = 0; i < NumReq; i++) begin
            maskNext[i] <= 1'b0;
            if(grant_out[i] == 1) break;
        end
    end
end
always_ff @( posedge clk ) begin : Reload
    if(!rstN) mask <= '1;
    else mask <= maskNext;
end
endmodule