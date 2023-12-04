`timescale 1ns / 1ps

module MUX2_tb();

parameter Data_Width = 8;
parameter Select = 1;

reg [Data_Width-1:0] X0;
reg [Data_Width-1:0] X1;
reg S;
wire [Data_Width-1:0] Y;

MUX2 mux_uut(
    .X1(X1),
    .X0(X0),
    .S(S),
    .Y(Y)
);

initial begin
    X0 <= 'd1; X1 <= 'd2;
    S <= 'bz;
end

initial begin
    #100;
    // リセット
    S <= 0; #30;
    
    S <= 1; #30;

    #30;
    $finish;
end

endmodule