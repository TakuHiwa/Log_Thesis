module Address_Counter(
    input clk,
    input en,
    output Q0,
    output Q1
    );
    
    wire ack = clk & en; 
    
    Counter counter(.clk(ack), .Q0o(Q0), .Q1o(Q1));
endmodule
