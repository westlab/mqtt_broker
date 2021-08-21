module udp_mqtt_parser_duplicator
    import lookup_engine_pkg::*;
#()(
   input    clk,
   input    rst,
   
   input    le_request_t        s_axis_le_req_tdata,
   input    logic               s_axis_le_req_tvalid,
   output   logic               s_axis_le_req_tready,

   output   le_request_t        m_axis_le_req_tdata,
   output   logic               m_axis_le_req_tvalid,
   input    logic               m_axis_le_req_tready
);

le_request_t                le_req_tdata_next_recursive;
le_topic_t                  topic_next;
le_topic_t                  le_req_tvalid_next;
logic [TOPIC_LENGTH-1:0]    slash_hot_array;
logic [TOPIC_LENGTH-1:0]    sharp_hot_array;
logic                       is_recursive_end;
logic [TOPIC_LENGTH_W-1:0]  last_slash_pos;

logic [TOPIC_LENGTH_W-1:0]  slash_count;
logic [TOPIC_LENGTH_W-1:0]  sharp_count;

logic [TOPIC_WIDTH-1:0] zero_topic;
assign zero_topic = '0;

/*
function [TOPIC_LENGTH-1:0] get_char_hot_array(input [TOPIC_WIDTH-1:0] topic, input [7:0] char);
begin
    for(int i = 0; i<TOPIC_LENGTH;i++) begin
        get_char_hot_array[i] = (topic[i*8 +: 8] == char);
    end
end
endfunction

function [TOPIC_LENGTH_W-1:0] count_array(input [TOPIC_LENGTH-1:0] array);
begin
    count_array=0;
    for(int i = 0; i<TOPIC_LENGTH; i++) begin
        count_array += array[i];
    end
end
endfunction
*/
get_char_hot_array #(
    .TOPIC_WIDTH(TOPIC_WIDTH)
) get_slash_hot_array (
    .topic(m_axis_le_req_tdata.topic),
    .character("/"),
    .char_hot_array(slash_hot_array)
);

get_char_hot_array #(
    .TOPIC_WIDTH(TOPIC_WIDTH)
) get_sharp_hot_array (
    .topic(m_axis_le_req_tdata.topic),
    .character("#"),
    .char_hot_array(sharp_hot_array)
);

count_array #(
    .TOPIC_WIDTH(TOPIC_WIDTH)
) slash_counter (
    .array(slash_hot_array),
    .count(slash_count)
);

count_array #(
    .TOPIC_WIDTH(TOPIC_WIDTH)
) sharp_counter (
    .array(sharp_hot_array),
    .count(sharp_count)
);

assign s_axis_le_req_tready = (!m_axis_le_req_tvalid || m_axis_le_req_tready) &&
                             ((m_axis_le_req_tdata.mqtt_ops != LE_MQTT_PUBLISH) || is_recursive_end);

assign le_req_tdata_next_recursive.mqtt_ops = m_axis_le_req_tdata.mqtt_ops;
assign le_req_tdata_next_recursive.topic = topic_next;
assign le_req_tdata_next_recursive.sub_ip = m_axis_le_req_tdata.sub_ip;
assign le_req_tdata_next_recursive.sub_port = m_axis_le_req_tdata.sub_port;

//assign slash_hot_array = get_char_hot_array(m_axis_le_req_tdata.topic, "/");
//assign sharp_hot_array = get_char_hot_array(m_axis_le_req_tdata.topic, "#");
//assign is_recursive_end = (count_array(slash_hot_array) == 1) && (count_array(sharp_hot_array) == 1);
assign is_recursive_end = ((slash_count == 1) && (sharp_count == 1)) || slash_count == 0;

// priority encoder (search "/" excluding "/#")
always_comb begin
    last_slash_pos = 0;
    for (int i=0; i < TOPIC_LENGTH-1; i++) begin
        // exclud
        if(slash_hot_array[i] && ( !sharp_hot_array[i+1] || !(|sharp_hot_array)) )begin
            last_slash_pos = i;
        end
    end
end

always_comb begin
    topic_next = m_axis_le_req_tdata.topic;
    if(last_slash_pos != '0) begin
        topic_next[last_slash_pos*8+8 +: 8] = "#";
        topic_next[last_slash_pos*8+16 +: 8] = 8'h00;
        topic_next[last_slash_pos*8+24 +: TOPIC_WIDTH] = zero_topic;
    end
end

always_ff @(posedge clk) begin
    if(rst)begin
        m_axis_le_req_tvalid <= 0;
        m_axis_le_req_tdata.mqtt_ops <= LE_MQTT_ERROR;
        m_axis_le_req_tdata.topic <= '0;
        m_axis_le_req_tdata.sub_ip <= '0;
        m_axis_le_req_tdata.sub_port <= '0;
    end
    else begin
        if(s_axis_le_req_tvalid && s_axis_le_req_tready) begin
            m_axis_le_req_tdata.mqtt_ops <= s_axis_le_req_tdata.mqtt_ops;
            m_axis_le_req_tdata.topic <= s_axis_le_req_tdata.topic;
            m_axis_le_req_tdata.sub_ip <= s_axis_le_req_tdata.sub_ip;
            m_axis_le_req_tdata.sub_port <= s_axis_le_req_tdata.sub_port;
            m_axis_le_req_tvalid <= 1;
        end
        else if(m_axis_le_req_tvalid && m_axis_le_req_tready) begin
            if(!is_recursive_end && (m_axis_le_req_tdata.mqtt_ops == LE_MQTT_PUBLISH)) begin
                m_axis_le_req_tdata.mqtt_ops <= le_req_tdata_next_recursive.mqtt_ops;
                m_axis_le_req_tdata.topic <= le_req_tdata_next_recursive.topic;
                m_axis_le_req_tdata.sub_ip <= le_req_tdata_next_recursive.sub_ip;
                m_axis_le_req_tdata.sub_port <= le_req_tdata_next_recursive.sub_port;
                m_axis_le_req_tvalid <= 1;
            end else begin
                m_axis_le_req_tvalid <= 0;
            end
        end
    end
end

assign m_axis_le_req_tdata.is_last_topic = is_recursive_end;

//debug wires
le_mqtt_ops_t   duplicator_out_mqtt_ops;
le_topic_t      duplicator_out_topic;
le_sub_addr_t   duplicator_out_sub_ip;
le_sub_port_t   duplicator_out_sub_port;

assign duplicator_out_mqtt_ops = m_axis_le_req_tdata.mqtt_ops;
assign duplicator_out_topic = m_axis_le_req_tdata.topic;
assign duplicator_out_sub_ip = m_axis_le_req_tdata.sub_ip;
assign duplicator_out_sub_port = m_axis_le_req_tdata.sub_port;




endmodule