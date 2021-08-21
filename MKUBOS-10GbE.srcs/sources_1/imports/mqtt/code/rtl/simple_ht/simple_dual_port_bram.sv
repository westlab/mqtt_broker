module simple_dual_port_bram
#(
    parameter MEM_DEPTH   = 4096,
    parameter MEM_DEPTH_W = 12,
    parameter VALUE_WIDTH = 32
)(
    input clk,
    input rst,

    input logic[VALUE_WIDTH-1:0]    dina,
    input logic[MEM_DEPTH_W-1:0]    addra,
    input logic                     wea,

    input logic[MEM_DEPTH_W-1:0]    addrb,

    output logic[VALUE_WIDTH-1:0]   doutb
);

(* ram_style = "block" *)reg [VALUE_WIDTH-1:0] mem[MEM_DEPTH-1:0];
integer i;

always_ff @(posedge clk) begin
    if(rst) begin
        for(i = 0; i < MEM_DEPTH; i = i + 1) begin
            mem[i] <= 0;
        end
    end else begin
        if(wea) begin
            mem[addra] <= dina;
        end
        doutb <= mem[addrb];
    end
end

endmodule