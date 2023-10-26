`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/26 15:14:12
// Design Name: 
// Module Name: B_SRAM
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


module B_SRAM #(
    parameter width_adr = 2, width_data = 72*4
)(
    input wr_en,
    input [width_adr-1:0] wr_adr,
    input [width_data-1:0] wr_dt,
    input clk,
    input [width_adr-1:0] rd_adr,
    output [width_data-1:0] rd_dto
    );
    
    // module : sram
    (* ram_style = "block" *)
    reg [width_data-1:0] memcell [2**width_adr - 1:0];
    
    reg [width_data-1:0] rd_dt;
    
    // sram controller
    always @(posedge clk) begin
        if(wr_en) begin
            memcell[wr_adr] <= wr_dt;
        end
        rd_dt <= memcell[rd_adr];
    end
    
    // output
    assign rd_dto = rd_dt;
    
endmodule
