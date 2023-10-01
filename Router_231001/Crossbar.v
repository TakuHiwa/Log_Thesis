`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/01 13:30:23
// Design Name: 
// Module Name: Crossbar
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


module Crossbar #(
    parameter Width = 8, Addr_width = 8, Select = 3
    )
    (
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
    output wire[Width-1:0] OS
    );
    
    reg MOL, MON, MOE, MOW, MOS;
    assign OL = MOL;
    assign ON = MON;
    assign OE = MOE;
    assign OW = MOW;
    assign OS = MOS;

    always @(*) begin
        // Localに通す線を選ぶ
        // うけとったすべての入力とその行先を制御
        case (S_L)
            3'd1: MOL = IL;
            3'd2: MOL = IN;
            3'd3: MOL = IE;
            3'd4: MOL = IW;
            3'd5: MOL = IS;
            default: MOL = 8'd0;
        endcase
        
        case (S_N)
            3'd1: MON = IL;
            3'd2: MON = IN;
            3'd3: MON = IE;
            3'd4: MON = IW;
            3'd5: MON = IS;
            default: MON = 8'd0;
        endcase
        
        case (S_E)
            3'd1: MOE = IL;
            3'd2: MOE = IN;
            3'd3: MOE = IE;
            3'd4: MOE = IW;
            3'd5: MOE = IS;
            default: MOE = 8'd0;
        endcase
        
        case (S_W)
            3'd1: MOW = IL;
            3'd2: MOW = IN;
            3'd3: MOW = IE;
            3'd4: MOW = IW;
            3'd5: MOW = IS;
            default: MOW = 8'd0;
        endcase
        
        case (S_S)
            3'd1: MOS = IL;
            3'd2: MOS = IN;
            3'd3: MOS = IE;
            3'd4: MOS = IW;
            3'd5: MOS = IS;
            default: MOS = 8'd0;
        endcase
    end
endmodule
