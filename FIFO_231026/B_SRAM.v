module B_SRAM #(
    parameter width_adr = 2, width_data = 72*4
)(
    input wr_en,
    input [width_adr-1:0] wr_adr,
    input [width_data-1:0] wr_dt,
    input clk,
    input rd_en,
    input [width_adr-1:0] rd_adr,
    output [width_data-1:0] rd_dto
    );
    
    // module : sram
    (* ram_style = "block" *)
    reg [width_data-1:0] memcell [2**width_adr - 1:0];
    
    reg [width_data-1:0] rd_dt;
    
    // sram controller
    always @(posedge clk) begin
        if(wr_en) 
            memcell[wr_adr] <= wr_dt;
        
        if(rd_en) 
            rd_dt <= memcell[rd_adr];
    end
    
    // output
    assign rd_dto = rd_dt;
    
endmodule
