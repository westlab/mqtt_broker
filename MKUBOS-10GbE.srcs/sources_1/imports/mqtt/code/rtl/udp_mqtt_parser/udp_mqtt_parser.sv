module udp_mqtt_parser
    import lookup_engine_pkg::*;
    import msg_fifo_pkg::*;
#(
    parameter DATA_WIDTH = 1024
)(
    input clk,
    input rst,
    

    input [DATA_WIDTH-1:0]      s_axis_tdata,
    input [DATA_WIDTH/8-1:0]    s_axis_tkeep,
    input                       s_axis_tlast,
    input                       s_axis_tvalid,
    output                      s_axis_tready,
    
    output le_request_t     m_axis_le_tdata,
    output logic            m_axis_le_tvalid,
    input logic             m_axis_le_tready,


    output msg_fifo_t       m_axis_msg_fifo_tdata,
    output logic            m_axis_msg_fifo_tvalid,
    input  logic            m_axis_msg_fifo_tready,

    input [31:0]            src_ip,
    input [15:0]            src_port,
    
    input [47:0]            dest_mac,
    input [31:0]            dest_ip,
    input [15:0]            dest_port,
    
    input [47:0]            my_mac,
    input [31:0]            my_ip
);

le_request_t    disp2dup_tdata;
logic           disp2dup_tvalid;
logic           disp2dup_tready; 

udp_mqtt_parser_dispatcher #(
    .DATA_WIDTH(DATA_WIDTH)
) dispatcher_inst (
    .clk(clk),
    .rst(rst),
    
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tkeep(s_axis_tkeep),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),

    .m_axis_le_tdata(disp2dup_tdata),
    .m_axis_le_tvalid(disp2dup_tvalid),
    .m_axis_le_tready(disp2dup_tready),

    .m_axis_msg_fifo_tdata(m_axis_msg_fifo_tdata),
    .m_axis_msg_fifo_tvalid(m_axis_msg_fifo_tvalid),
    .m_axis_msg_fifo_tready(m_axis_msg_fifo_tready),

    .src_ip(src_ip),
    .src_port(src_port),
    .dest_mac(dest_mac),
    .dest_ip(dest_ip),
    .dest_port(dest_port),
    .my_mac(my_mac),
    .my_ip(my_ip)
);

udp_mqtt_parser_duplicator #(

) duplicator_inst (
    .clk(clk),
    .rst(rst),
    .s_axis_le_req_tdata(disp2dup_tdata),
    .s_axis_le_req_tvalid(disp2dup_tvalid),
    .s_axis_le_req_tready(disp2dup_tready),
    .m_axis_le_req_tdata(m_axis_le_tdata),
    .m_axis_le_req_tvalid(m_axis_le_tvalid),
    .m_axis_le_req_tready(m_axis_le_tready)
);


endmodule