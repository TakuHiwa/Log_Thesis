`timescale 1ns / 1ps
module Arbiter #(
    parameter NumReq = 3
)(
    input logic[NumReq-1:0] req,
    output logic[NumReq-1:0] grant
);
always_comb begin : FixedPriority
    grant = '0;
    for (int i = 0; i < NumReq; i++) begin
        if(req[i] == 1) begin
            grant[i] = 1;
            break;
        end
    end
end
endmodule