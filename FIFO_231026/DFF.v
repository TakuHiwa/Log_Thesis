module DFF(
    input D,
    input clk,
    input reset,
    output Qo,
    output nQo
    );
    
    reg Q;
    assign Qo = Q;
    assign nQo = ~Q;
    
    initial begin
        Q <= 0;
    end
    
    always @(posedge clk) begin
        if(reset)
            Q <= 0;
        else
            Q <= D;
    end 
    
endmodule
