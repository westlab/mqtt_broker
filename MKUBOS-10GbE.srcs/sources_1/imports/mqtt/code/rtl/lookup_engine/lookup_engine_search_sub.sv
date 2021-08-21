module lookup_engine_search_sub
    import lookup_engine_pkg::*;
#()(
    input   le_search_sub_t     req,
    input   logic               req_valid,
    output  logic               req_ready,
    
    output  le_execute_t        res,
    output  logic               res_valid,
    input   logic               res_ready,

    // hash table interface (search only)
    output  le_sub_table_key_t  r_key,
    input   le_sub_dest_t       r_value,

    input clk,
    input rst
);
//debug
le_mqtt_ops_t input_mqtt_ops;
assign input_mqtt_ops = req.mqtt_ops;

logic nearly_finished;

le_recnum_t     itr_max;
le_recnum_t     itr_recnum;
le_mqtt_ops_t   mqtt_ops_reg;
le_topic_t      topic_reg;
le_sub_addr_t   sub_ip_reg;
le_sub_port_t   sub_port_reg;
le_recnum_t     max_recnum_reg;
logic           is_last_topic_reg;

assign nearly_finished = (itr_recnum == itr_max);

assign r_key.topic  = (req_valid && req_ready) ? req.topic  : topic_reg;
assign r_key.recnum = (req_valid && req_ready) ? '0         : itr_recnum;
assign res.mqtt_ops = mqtt_ops_reg;
assign res.topic = topic_reg;
assign res.max_recnum = max_recnum_reg;
assign res.is_last_pub = nearly_finished;
assign res.is_last_topic = is_last_topic_reg;

//req_ready:
assign req_ready = (itr_max == '0) || (nearly_finished && res_valid && res_ready) || (!res_valid && res_ready);

always_comb begin
    case(req.mqtt_ops)
        LE_MQTT_PUBLISH:    {res.sub_ip, res.sub_port} = r_value;
        LE_MQTT_SUBSCRIBE:  {res.sub_ip, res.sub_port} = {sub_ip_reg, sub_port_reg};
        default:            {res.sub_ip, res.sub_port} = {sub_ip_reg, sub_port_reg};
    endcase
end

always_ff @(posedge clk) begin
    if(rst) begin
        itr_max <= '0;
        itr_recnum <= '0;
        res_valid <= 0;
        mqtt_ops_reg <= LE_MQTT_ERROR;
        topic_reg <= '0;
        sub_ip_reg <= '0;
        sub_port_reg <= '0;
        is_last_topic_reg <= 0;
        max_recnum_reg <= '0;
    end
    else begin
        if(req_valid && req_ready) begin // new input
            topic_reg <= req.topic;
            sub_ip_reg <= req.sub_ip;
            sub_port_reg <= req.sub_port;
            is_last_topic_reg <= req.is_last_topic;
            max_recnum_reg <= req.max_recnum;
            res_valid <= 1;
            if(req.mqtt_ops == LE_MQTT_PUBLISH ) begin
                if(req.max_recnum != '0) begin
                    itr_max <= req.max_recnum;
                    itr_recnum <= 1;
                    mqtt_ops_reg <= req.mqtt_ops;
                end else begin // publish but no subscriber
                    mqtt_ops_reg <= LE_MQTT_NO_SUBSCRIBER; 
                end
            end else begin
                mqtt_ops_reg <= req.mqtt_ops;
                itr_max <= '0;
                itr_recnum <= '0;
            end
        end
        else if(res_valid && res_ready) begin
            if (nearly_finished) begin
                res_valid <= 0;
                itr_recnum <= 0;
            end
            else begin
                res_valid <= 1;
                itr_recnum <= itr_recnum + 1;
            end
        end
        
    end
end

endmodule
