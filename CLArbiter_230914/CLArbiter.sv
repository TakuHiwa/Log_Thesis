`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 17:02:24
// Design Name: 
// Module Name: CLArbiter
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



module CLArbiter #(
    parameter NumReq = 3
)(
    input logic clk,
    input logic rstN,
    input logic[NumReq-1:0] req_in,
    output logic[NumReq-1:0] grant_out, 
    output logic[NumReq-1:0] test,
    output int test2,
    output int test3
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

int r_p;     // (t = time) t-1 previous request's place(index)
int Num;

assign test = mask;        // ---DEBUG---      
assign test2 = r_p;
assign test3 = Num;

always_comb begin : AssignMask
    for(int i = 0; i < NumReq; i++) begin       // Get t-1 grant_out's index
        if(grant_out[i]) begin
            r_p <= i;
            break;
        end
    end
    if(req_in[r_p])
        maskNext <= mask;        // if previous request still arive, keep it available
    else begin
        maskNext <= maskNext << 1;              // if previous request is 0, left-shift 1bit
        if(maskNext == '0) maskNext <= 3'b001;
    end
end

always_ff @( posedge clk ) begin : Reload
    if(!rstN) mask <= '1;
    else mask <= maskNext;
end

endmodule
