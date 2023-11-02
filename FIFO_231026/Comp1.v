module Comp1(
    input X,
    input Y,
    output Zx,
    output Zy,
    output Zeq
    );

    assign Zx = X & ~Y;
    assign Zy = ~X & Y;
    assign Zeq = ~(Zx | Zy);
    
endmodule
