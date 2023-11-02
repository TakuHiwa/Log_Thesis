module Address_Counter3(
    input clk,
    input en,
    output Q0,
    output Q1,
    output Q2
    );
    
    wire ack = clk & en; 
    
    Counter3 counter(.clk(ack), .Q0o(Q0), .Q1o(Q1), .Q2o(Q2));
endmodule