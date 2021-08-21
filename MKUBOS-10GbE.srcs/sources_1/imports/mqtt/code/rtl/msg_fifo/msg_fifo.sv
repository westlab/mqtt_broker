module msg_fifo 
    import msg_fifo_pkg::*;
#()(
    input clk,
    input rst,

    input msg_fifo_t    s_axis_tdata,
    input               s_axis_tvalid,
    output              s_axis_tready,

    output msg_fifo_t   m_axis_tdata,
    output              m_axis_tvalid,
    input               m_axis_tready
);

msg_axis_fifo #(
    .DEPTH(2048),
    .DATA_WIDTH($bits(msg_fifo_t)),
    .KEEP_ENABLE(0),
    .LAST_ENABLE(0),
    .USER_ENABLE(0)
) axis_fifo_t(
    .clk(clk),
    .rst(rst),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready)
);


endmodule
