module mqtt_top
    import lookup_engine_pkg::*;
    import msg_fifo_pkg::*;
#(
    parameter DATA_WIDTH=1024
)(
    input clk,
    input rst_n,
    
    input[DATA_WIDTH-1:0]       s_axis_tdata,
    input                       s_axis_tvalid,
    output                      s_axis_tready,
    input[DATA_WIDTH/8-1:0]     s_axis_tkeep,
    input                       s_axis_tlast,

    output[DATA_WIDTH-1:0]      m_axis_tdata,
    output                      m_axis_tvalid,
    input                       m_axis_tready,
    output[DATA_WIDTH/8-1:0]    m_axis_tkeep,
    output                      m_axis_tlast,

    input[32-1:0]               rx_src_addr,
    input[16-1:0]               rx_src_port,
    input[48-1:0]               rx_dst_mac,
    input[32-1:0]               rx_dst_addr,
    input[16-1:0]               rx_dst_port,
    input[48-1:0]               my_mac,
    input[32-1:0]               my_addr,

    output[32-1:0]              tx_dst_ip,
    output[16-1:0]              tx_dst_port
);

//parser to lookup engine
le_request_t    par2le_tdata;
logic           par2le_tvalid;
logic           par2le_tready;
//parser to msg fifo
msg_fifo_t      par2msg_tdata;
logic           par2msg_tvalid;
logic           par2msg_tready;

//lookup engine to pkt_gen
le_response_t   le2pkt_tdata;
logic           le2pkt_tvalid;
logic           le2pkt_tready;
//parser to msg fifo
msg_fifo_t      msg2pkt_tdata;
logic           msg2pkt_tvalid;
logic           msg2pkt_tready;

/*
udp_mqtt_parser_0 parser_inst(
    .ap_clk(clk),                                                                 
    .ap_rst_n(rst_n),                                                               
    .s_axis_input_frame_TDATA(s_axis_tdata),                                               
    .s_axis_input_frame_TVALID(s_axis_tvalid),                                              
    .s_axis_input_frame_TREADY(s_axis_tready),                                              
    .s_axis_input_frame_TKEEP(s_axis_tkeep),                                               
    .s_axis_input_frame_TLAST(s_axis_tlast),                                               
    .m_axis_mqtt_le_V_TDATA(par2le_tdata),                                                 
    .m_axis_mqtt_le_V_TVALID(par2le_tvalid),                                                
    .m_axis_mqtt_le_V_TREADY(par2le_tready),                                                
    .m_axis_mqtt_msg_V_TDATA(par2msg_tdata),                                                
    .m_axis_mqtt_msg_V_TVALID(par2msg_tvalid),                                               
    .m_axis_mqtt_msg_V_TREADY(par2msg_tready),                                               
    .src_addr_V(src_addr),                                                             
    .src_port_V(src_port),                                                             
    .dst_mac_V(dst_mac),                                                              
    .dst_addr_V(dst_addr),                                                             
    .dst_port_V(dst_port),                                                             
    .my_mac_V(my_mac),                                                               
    .my_addr_V(my_addr)
);
*/


udp_mqtt_parser parser_inst(
    .clk(clk),
    .rst(!rst_n),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tvalid(s_axis_tvalid),
    .s_axis_tready(s_axis_tready),
    .s_axis_tkeep(s_axis_tkeep),
    .s_axis_tlast(s_axis_tlast),

    .m_axis_le_tdata(par2le_tdata),
    .m_axis_le_tvalid(par2le_tvalid),
    .m_axis_le_tready(par2le_tready),

    .m_axis_msg_fifo_tdata(par2msg_tdata),
    .m_axis_msg_fifo_tvalid(par2msg_tvalid),
    .m_axis_msg_fifo_tready(par2msg_tready),
    
    .src_ip(rx_src_addr),
    .src_port(rx_src_port),
    .dest_mac(rx_dst_mac),
    .dest_ip(rx_dst_addr),
    .dest_port(rx_dst_port),
    .my_mac(my_mac),
    .my_ip(my_addr)
);

lookup_engine le_inst(
    .clk(clk),
    .rst(!rst_n),
    .s_axis_tdata(par2le_tdata),
    .s_axis_tvalid(par2le_tvalid),
    .s_axis_tready(par2le_tready),
    .m_axis_tdata(le2pkt_tdata),
    .m_axis_tvalid(le2pkt_tvalid),
    .m_axis_tready(le2pkt_tready)
);

msg_fifo msg_fifo_inst(
    .clk(clk),
    .rst(!rst_n),
    .s_axis_tdata(par2msg_tdata),
    .s_axis_tvalid(par2msg_tvalid),
    .s_axis_tready(par2msg_tready),
    .m_axis_tdata(msg2pkt_tdata),
    .m_axis_tvalid(msg2pkt_tvalid),
    .m_axis_tready(msg2pkt_tready)
);

/*
udp_mqtt_pkt_gen_0 pkt_gen_inst(
    .ap_clk(clk),                                                                 
    .ap_rst_n(!rst),                                                               
    .s_axis_mqtt_le_output_V_TDATA(le2pkt_tdata),                                          
    .s_axis_mqtt_le_output_V_TVALID(le2pkt_tvalid),                                         
    .s_axis_mqtt_le_output_V_TREADY(le2pkt_tready),                                         
    .s_axis_mqtt_msg_fifo_V_TDATA(msg2pkt_tdata),                                           
    .s_axis_mqtt_msg_fifo_V_TVALID(msg2pkt_tvalid),                                          
    .s_axis_mqtt_msg_fifo_V_TREADY(msg2pkt_tready),                                          
    .m_axis_output_frame_TDATA(m_axis_tdata),                                              
    .m_axis_output_frame_TVALID(m_axis_tvalid),                                             
    .m_axis_output_frame_TREADY(m_axis_tready),                                             
    .m_axis_output_frame_TKEEP(m_axis_tkeep),                                              
    .m_axis_output_frame_TLAST(m_axis_tlast)
);
*/

udp_mqtt_pkt_gen pkt_gen_inst(
    .clk(clk),
    .rst(!rst_n),
    .s_axis_le_tdata(le2pkt_tdata),
    .s_axis_le_tvalid(le2pkt_tvalid),
    .s_axis_le_tready(le2pkt_tready),
    .s_axis_msg_fifo_tdata(msg2pkt_tdata),
    .s_axis_msg_fifo_tvalid(msg2pkt_tvalid),
    .s_axis_msg_fifo_tready(msg2pkt_tready),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tlast(m_axis_tlast),
    .dst_ip(tx_dst_ip),
    .dst_port(tx_dst_port)
);

/*
// debug core
ila_mqtt_top ila_mqtt_top(
    .clk(clk),
    .probe0(s_axis_tdata),
    .probe1(s_axis_tvalid),
    .probe2(s_axis_tready),
    
    // parser -> lookup
    .probe3(par2le_tdata),
    .probe4(par2le_tvalid),
    .probe5(par2le_tready),
    
    // parser -> fifo
    .probe6(par2msg_tdata),
    .probe7(par2msg_tready),
    .probe8(par2msg_tvalid),
    
    // lookup -> pkt_gen
    .probe9(le2pkt_tdata),
    .probe10(le2pkt_tready),
    .probe11(le2pkt_tvalid),
    
    // fifo -> pkt_gen
    .probe12(msg2pkt_tdata),
    .probe13(msg2pkt_tready),
    .probe14(msg2pkt_tvalid) 
);
*/

endmodule
