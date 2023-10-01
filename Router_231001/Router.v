`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/06 02:57:59
// Design Name: 
// Module Name: Router
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


module Router #(
    parameter Width = 8, Addr_width = 8, Select = 3, Num_input = 5
    )
    (
    input wire clk,
    input wire rst,
    
    input wire[Width-1:0] IL,
    input wire[Width-1:0] IN,
    input wire[Width-1:0] IE,
    input wire[Width-1:0] IW,
    input wire[Width-1:0] IS,
    input wire [Select-1:0] S_L,
    input wire [Select-1:0] S_N,
    input wire [Select-1:0] S_E,
    input wire [Select-1:0] S_W,
    input wire [Select-1:0] S_S,
    output wire[Width-1:0] OL,
    output wire[Width-1:0] ON,
    output wire[Width-1:0] OE,
    output wire[Width-1:0] OW,
    output wire[Width-1:0] OS,
    output wire[Num_input-1:0] request
    );
    
    
    
    // 接続用
    wire[Width-1:0] I_tmp_L;
    wire[Width-1:0] I_tmp_N;
    wire[Width-1:0] I_tmp_E;
    wire[Width-1:0] I_tmp_W;
    wire[Width-1:0] I_tmp_S;
    wire [Select-1:0] S_tmp_L;
    wire [Select-1:0] S_tmp_N;
    wire [Select-1:0] S_tmp_E;
    wire [Select-1:0] S_tmp_W;
    wire [Select-1:0] S_tmp_S;
    wire[Width-1:0] O_tmp_L;
    wire[Width-1:0] O_tmp_N;
    wire[Width-1:0] O_tmp_E;
    wire[Width-1:0] O_tmp_W;
    wire[Width-1:0] O_tmp_S;
    
//    wire[Num_input-1:0] request;
    wire[Num_input-1:0] grant;
    wire rL;    // full fifoL
    wire rN;
    wire rE;
    wire rW;
    wire rS;
    assign rL = request[0];
    assign rN  = request[1];
    assign rE  = request[2];
    assign rW  = request[3];
    assign rS  = request[4];
    
    Input_Unit iu_L(.clk(clk), .rst(rst), .full(rL));
    Input_Unit iu_N(.clk(clk), .rst(rst), .full(rN));
    Input_Unit iu_E(.clk(clk), .rst(rst), .full(rE));
    Input_Unit iu_W(.clk(clk), .rst(rst), .full(rW));
    Input_Unit iu_S(.clk(clk), .rst(rst), .full(rS));    
    Arbiter_5 ab(rL, rN, rE, rW, rS);
    Crossbar cb(I_tmp_L, I_tmp_N, I_tmp_E, I_tmp_S, S_tmp_L, S_tmp_N, S_tmp_E, S_tmp_S, O_tmp_L, O_tmp_N, O_tmp_E, O_tmp_W, O_tmp_S);
    
endmodule
