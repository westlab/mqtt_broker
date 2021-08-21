module lookup_engine_execute
    import lookup_engine_pkg::*;
#()(
    input clk,
    input rst,
    
    input   le_execute_t    req,
    input   logic           req_valid,
    output logic            req_ready,

    output le_response_t    res,
    output logic            res_valid,
    input  logic            res_ready,

    //topic table interface
    output le_topic_t       topic_w_key,
    output logic            topic_w_en,
    output le_recnum_t      topic_w_value,

    //subscriber table interface
    output le_sub_table_key_t   sub_w_key,
    output logic                sub_w_en,
    output le_sub_dest_t        sub_w_value
);
//debug
le_mqtt_ops_t input_mqtt_ops;
assign input_mqtt_ops = req.mqtt_ops;


assign topic_w_key = req.topic;
assign sub_w_key.topic = req.topic;
assign sub_w_value = {req.sub_ip, req.sub_port};

assign req_ready = !res_valid || res_ready;



/*
typedef enum logic [1:0] {
    LE_ES_ERROR             = 2'0,
    LE_ES_PUBLISH           = 2'1, //NOP in this stage
    LE_ES_ADD_SUBSCRIBER    = 2'2
} _le_exec_state_t;
_le_exec_state_t exec_state;
*/


always_comb begin
    case(req.mqtt_ops)
        LE_MQTT_PUBLISH: begin
            topic_w_en = 0;
            sub_w_en = 0;
            topic_w_value = 'x;
            sub_w_key.recnum = 'x;
        end
        LE_MQTT_SUBSCRIBE: begin
            topic_w_en = req_valid? 1 : 0;
            sub_w_en = req_valid? 1 : 0;
            topic_w_value = req.max_recnum+ 1'b1; //add new entry
            sub_w_key.recnum = req.max_recnum;
        end
        default: begin
            topic_w_en = 0;
            sub_w_en = 0;
            topic_w_value = 'x;
            sub_w_key.recnum = 'x;
        end
    endcase 
end



always_ff @(posedge clk) begin
    if(rst) begin
        res.mqtt_ops <= LE_MQTT_ERROR;
        res.topic <= '0;
        res.sub_ip <= '0;
        res.sub_port <= '0;
        res.max_recnum <= '0;
        res.is_last_pub <= 0;
        res.is_last_topic <= 0;
        res_valid <= 0;
    end
    else begin
        if(req_valid && req_ready) begin
            res.mqtt_ops <= req.mqtt_ops;
            res.topic <= req.topic;
            res.sub_ip <= req.sub_ip;
            res.sub_port <= req.sub_port;
            res.max_recnum <= req.max_recnum;
            res.is_last_pub <= req.is_last_pub;
            res.is_last_topic <= req.is_last_topic;
            res_valid <= 1;
        end
        else if (res_valid && res_ready) begin
            res_valid <= 0;
        end
    end
end

endmodule
