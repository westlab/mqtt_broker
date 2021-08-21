// for simple dual port bram (write and read)
module simple_ht
#(
    parameter KEY_WIDTH     =256,
    parameter VALUE_WIDTH   =48,
    parameter MEM_DEPTH     =65536,
    parameter MEM_DEPTH_W   =16,
    parameter HASH_WIDTH    =32,
    parameter NAME          ="TOPIC"
)(
    input       clk,
    input       rst,

    input   logic[KEY_WIDTH-1:0]        r_key,
    //output  logic                       r_out_valid,
    output  logic[VALUE_WIDTH-1:0]      r_value,

    input   logic[KEY_WIDTH-1:0]        w_key,
    input   logic                       w_en,
    input   logic[VALUE_WIDTH-1:0]      w_value
/*
    //BRAM interface(1 cycle, A:write, B:read)
    output logic[VALUE_WIDTH-1:0]       din_a,
    output logic[MEM_DEPTH_W-1:0]       addr_a,
    output logic                        we_a,
    output logic                        en_a,
    
    output logic[MEM_DEPTH_W-1:0]       addr_b,
    output logic                        en_b,
    input  logic[VALUE_WIDTH-1:0]       dout_b  
*/
);

logic[VALUE_WIDTH-1:0]       din_a;
logic[MEM_DEPTH_W-1:0]       addr_a;
logic                        we_a;
logic                        en_a;

logic[MEM_DEPTH_W-1:0]       addr_b;
logic                        en_b;
logic[VALUE_WIDTH-1:0]       dout_b;  

logic [HASH_WIDTH-1:0] hashed_w_key;
logic [HASH_WIDTH-1:0] hashed_r_key;
CRC32_D32 crc32_d32_a(
    .data_i     (w_key[32-1:0]),
    .crc32_o    (hashed_w_key)
);

CRC32_D32 crc32_d32_b(
    .data_i     (r_key[32-1:0]),
    .crc32_o    (hashed_r_key)
);
assign addr_a = hashed_w_key[MEM_DEPTH_W-1:0];
assign din_a = w_value;
assign we_a = w_en;
assign en_a = '1;

assign addr_b = hashed_r_key[MEM_DEPTH_W-1:0];
assign en_b = '1;
assign r_value = dout_b;
/*
//for simulation
simple_dual_port_bram #(
    .MEM_DEPTH      (MEM_DEPTH),
    .MEM_DEPTH_W    (MEM_DEPTH_W),
    .VALUE_WIDTH    (VALUE_WIDTH)
) bram_inst(
    .clk(clk),
    .rst(rst),
    .dina   (din_a),
    .addra  (addr_a),
    .wea    (we_a),
    .addrb  (addr_b),
    .doutb  (dout_b)
);
*/
generate
    if(NAME == "TOPIC") begin
        topic_blk_mem_gen_0 topic_bram_inst(
            .clka(clk),
            .wea(we_a),
            .addra(addr_a),
            .dina(din_a),
            .clkb(clk),
            .addrb(addr_b),
            .doutb(dout_b)
        );
    end
    else if (NAME == "SUB") begin
        sub_blk_mem_gen_0 sub_bram_inst(
            .clka(clk),
            .wea(we_a),
            .addra(addr_a),
            .dina(din_a),
            .clkb(clk),
            .addrb(addr_b),
            .doutb(dout_b)
        );
    end
    else begin
        simple_dual_port_bram #(
            .MEM_DEPTH      (MEM_DEPTH),
            .MEM_DEPTH_W    (MEM_DEPTH_W),
            .VALUE_WIDTH    (VALUE_WIDTH)
        ) bram_inst(
            .clk(clk),
            .rst(rst),
            .dina   (din_a),
            .addra  (addr_a),
            .wea    (we_a),
            .addrb  (addr_b),
            .doutb  (dout_b)
        );
    end
endgenerate

endmodule