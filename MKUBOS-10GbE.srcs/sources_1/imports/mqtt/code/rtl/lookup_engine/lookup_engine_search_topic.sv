module lookup_engine_search_topic
    import lookup_engine_pkg::*;
#()(
    input   clk,
    input   rst,

    input   le_request_t    req,
    input   logic           req_valid,
    output  logic           req_ready,

    input   le_request_t    research_req,
    input   logic           research_req_valid,
    output  logic           research_req_ready,

    output  le_search_sub_t res,
    output  logic           res_valid,
    input   logic           res_ready,

    // hash table interfaces
    output  le_topic_t      r_key,
    input   le_recnum_t     r_value
    /*
    output  le_topic_t      m_axis_ht_tdata,
    output  logic           m_axis_ht_tvalid,
    input   logic           m_axis_ht_tready,

    input   le_topic_table_output_t     s_axis_ht_tdata,
    input   logic                       s_axis_ht_tvalid,
    output  logic                       s_axis_ht_tready
    */
);

//debug
le_mqtt_ops_t input_mqtt_ops;
assign input_mqtt_ops = req.mqtt_ops;

assign research_req_ready = !res_valid || res_ready; //empty or append
assign req_ready = !research_req_valid && (!res_valid || res_ready);

assign r_key = research_req_valid ? research_req.topic : req.topic; // research or not
assign res.max_recnum = r_value;

always_ff @(posedge clk) begin
    if(rst)begin
        res.mqtt_ops <= LE_MQTT_ERROR;
        res.topic <= '0;
        res.sub_ip <= '0;
        res.sub_port <= '0;
        res.is_last_topic <= 0;
        res_valid <= 0;
    end else begin
        // {req or research_req} to hash stage interface
        if (research_req_valid && research_req_ready) begin
            res.mqtt_ops <= research_req.mqtt_ops;
            res.topic <= research_req.topic;
            res.sub_ip <= research_req.sub_ip;
            res.sub_port <= research_req.sub_port;
            res.is_last_topic <= research_req.is_last_topic;
            res_valid <= 1;
        end
        else if(req_valid && req_ready) begin
            res.mqtt_ops <= req.mqtt_ops;
            res.topic <= req.topic;
            res.sub_ip <= req.sub_ip;
            res.sub_port <= req.sub_port;
            res.is_last_topic <= req.is_last_topic;
            res_valid <= 1;
        end
        else if(res_valid && res_ready) begin
            res_valid <= 0;
        end
    end
end

endmodule
