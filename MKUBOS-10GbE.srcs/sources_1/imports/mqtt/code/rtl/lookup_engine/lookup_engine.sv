module lookup_engine
    import lookup_engine_pkg::*;
#()(
    input       clk,
    input       rst,
    
    input le_request_t      s_axis_tdata,
    input                   s_axis_tvalid,
    output                  s_axis_tready,
    
    output le_response_t    m_axis_tdata,
    output                  m_axis_tvalid,
    input                   m_axis_tready
);

//internal wires
le_topic_t          topic_r_key;
le_recnum_t         topic_r_value;
le_topic_t          topic_w_key;
logic               topic_w_en;
le_recnum_t         topic_w_value;

le_sub_table_key_t  sub_r_key;
le_sub_dest_t       sub_r_value;
le_sub_table_key_t  sub_w_key;
logic               sub_w_en;
le_sub_dest_t       sub_w_value;

le_search_sub_t     search_topic2search_sub;
logic               search_topic2search_sub_valid;
logic               search_topic2search_sub_ready;

le_execute_t        search_sub2execute;
logic               search_sub2execute_valid;
logic               search_sub2execute_ready;

//topic table
simple_ht #(
    .KEY_WIDTH      (TOPIC_WIDTH),
    .VALUE_WIDTH    (RECNUM_WIDTH),
    .MEM_DEPTH      (TOPIC_MEM_DEPTH),
    .MEM_DEPTH_W    (TOPIC_MEM_DEPTH_W),
    .NAME           ("TOPIC")
) topic_simple_ht(
    .clk    (clk),
    .rst    (rst),
    .r_key  (topic_r_key),
    .r_value(topic_r_value),
    .w_key  (topic_w_key),
    .w_en   (topic_w_en),
    .w_value(topic_w_value)
);

//subscriber table
simple_ht #(
    .KEY_WIDTH      (SUB_KEY_WIDTH),
    .VALUE_WIDTH    (SUB_DEST_WIDTH),
    .MEM_DEPTH      (SUB_MEM_DEPTH),
    .MEM_DEPTH_W    (SUB_MEM_DEPTH_W),
    .NAME           ("SUB")
) sub_simple_ht(
    .clk    (clk),
    .rst    (rst),
    .r_key  (sub_r_key),
    .r_value(sub_r_value),
    .w_key  (sub_w_key),
    .w_en   (sub_w_en),
    .w_value(sub_w_value)
);

lookup_engine_search_topic le_search_topic(
    .clk(clk),
    .rst(rst),

    .req(s_axis_tdata),
    .req_valid(s_axis_tvalid),
    .req_ready(s_axis_tready),

    .research_req('0),
    .research_req_valid('0),
    .research_req_ready(),

    .res(search_topic2search_sub),
    .res_valid(search_topic2search_sub_valid),
    .res_ready(search_topic2search_sub_ready),

    //ht interfaces
    .r_key(topic_r_key),
    .r_value(topic_r_value)
);

lookup_engine_search_sub le_search_sub(
    .clk(clk),
    .rst(rst),
    
    .req(search_topic2search_sub),
    .req_valid(search_topic2search_sub_valid),
    .req_ready(search_topic2search_sub_ready),

    .res(search_sub2execute),
    .res_valid(search_sub2execute_valid),
    .res_ready(search_sub2execute_ready),

    .r_key(sub_r_key),
    .r_value(sub_r_value)
);

lookup_engine_execute le_execute(
    .clk(clk),
    .rst(rst),

    .req(search_sub2execute),
    .req_valid(search_sub2execute_valid),
    .req_ready(search_sub2execute_ready),
    .res(m_axis_tdata),
    .res_valid(m_axis_tvalid),
    .res_ready(m_axis_tready),

    .topic_w_key(topic_w_key),
    .topic_w_en(topic_w_en),
    .topic_w_value(topic_w_value),
    
    .sub_w_key(sub_w_key),
    .sub_w_en(sub_w_en),
    .sub_w_value(sub_w_value)
);

//debug wires
logic           le_input_is_last_pub;
assign le_input_is_last_pub = s_axis_tdata.is_last_topic;
le_mqtt_ops_t   search_topic_mqtt_ops;
le_mqtt_ops_t   search_sub_mqtt_ops;
le_mqtt_ops_t   execute_mqtt_ops;
assign search_topic_mqtt_ops = s_axis_tdata.mqtt_ops;
assign search_sub_mqtt_ops = search_topic2search_sub.mqtt_ops;
assign execute_mqtt_ops = search_sub2execute.mqtt_ops;

le_mqtt_ops_t   le_output_mqtt_ops;
le_topic_t      le_output_topic;
le_sub_addr_t   le_output_sub_ip;
le_sub_port_t   le_output_sub_port;
le_recnum_t     le_output_max_recnum;
logic           le_output_is_last_pub;
logic           le_output_is_last_topic;

assign le_output_mqtt_ops = m_axis_tdata.mqtt_ops;
assign le_output_topic = m_axis_tdata.topic;
assign le_output_sub_ip = m_axis_tdata.sub_ip;
assign le_output_sub_port = m_axis_tdata.sub_port;
assign le_output_max_recnum = m_axis_tdata.max_recnum;
assign le_output_is_last_pub = m_axis_tdata.is_last_pub;
assign le_output_is_last_topic = m_axis_tdata.is_last_topic;

endmodule
