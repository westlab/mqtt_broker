module udp_mqtt_parser_dispatcher
    import lookup_engine_pkg::*;
    import msg_fifo_pkg::*;
#(
    parameter DATA_WIDTH=1024
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

localparam  PTR_WIDTH=7;

//mqtt offsets
localparam  MSG_LENGTH_BYTE_OFFSET=1;
localparam  TOPIC_LENGTH_BYTE_OFFSET=2;                                             
localparam[PTR_WIDTH-1:0]  TOPIC_START=4;



le_request_t    le_tdata_next;
/*
le_request_t
    le_mqtt_ops_t   mqtt_ops;                                                   
    le_topic_t      topic;                                                      
    le_sub_addr_t   sub_ip;                                                     
    le_sub_port_t   sub_port;                                                   
*/

msg_fifo_t      msg_fifo_tdata_next;
/*
msg_fifo_t
    le_topic_t              topic;                                              
    logic[8-1:0]           topic_len;                                           
    logic[MSG_WIDTH-1:0]    msg;                                                
    logic[16-1:0]           msg_len;                                            
    logic[ 128 -1:0]        k;    
*/

le_topic_t      zero_topic = '0;
logic[MSG_WIDTH-1:0]    zero_msg = '0;
//controlo wire
logic[PTR_WIDTH-1:0]    topic_end;
logic[PTR_WIDTH-1:0]    msg_start;
logic[PTR_WIDTH-1:0]    msg_end;
logic[15:0]             tmp_topic_len;
byte tmp_topic_bytes[0:TOPIC_WIDTH/8-1];
byte topic_bytes[0:TOPIC_WIDTH/8-1];



assign s_axis_tready = (!m_axis_le_tvalid || m_axis_le_tready) && (!m_axis_msg_fifo_tvalid || m_axis_msg_fifo_tready);   

logic   unrelated_packet;
always_comb begin
    unrelated_packet = 0;
    if(dest_mac != my_mac) begin
        unrelated_packet = 1;
    end
    else if (dest_ip != my_ip) begin
        unrelated_packet = 1;
    end
    else
    if (dest_port != 16'd1883) begin
        unrelated_packet = 1;
    end
end

assign msg_fifo_tdata_next.k = s_axis_tkeep;
always_comb begin
    msg_fifo_tdata_next.msg_len     = s_axis_tdata[MSG_LENGTH_BYTE_OFFSET*8+7:MSG_LENGTH_BYTE_OFFSET*8];
    tmp_topic_len =s_axis_tdata[TOPIC_LENGTH_BYTE_OFFSET*8+15:TOPIC_LENGTH_BYTE_OFFSET*8];
    msg_fifo_tdata_next.topic_len   = {tmp_topic_len[7:0], tmp_topic_len[15:8]};
    topic_end = TOPIC_START + msg_fifo_tdata_next.topic_len - 1;
    msg_start = TOPIC_START + msg_fifo_tdata_next.topic_len + 1;
    msg_end   = msg_fifo_tdata_next.msg_len + 1;

    tmp_topic_bytes = {<<8{ s_axis_tdata[TOPIC_START*8 +: TOPIC_WIDTH]}};
    for (int i=0; i < TOPIC_WIDTH/8; i++) begin
        if(i < msg_fifo_tdata_next.topic_len) begin
            topic_bytes[i] = tmp_topic_bytes[i];
        end
        else begin
            topic_bytes[i] = '0;
        end
    end
    msg_fifo_tdata_next.topic = {>>{topic_bytes}};
    msg_fifo_tdata_next.topic = {<<8{msg_fifo_tdata_next.topic}};
        
    msg_fifo_tdata_next.topic[msg_fifo_tdata_next.topic_len*8 +: TOPIC_WIDTH] = zero_topic;

    msg_fifo_tdata_next.msg = s_axis_tdata[msg_start*8 +: MSG_WIDTH];
    msg_fifo_tdata_next.msg[msg_fifo_tdata_next.msg_len*8 +: MSG_WIDTH] = zero_msg;
    
    case(s_axis_tdata[7:4])
        4'h3: le_tdata_next.mqtt_ops = LE_MQTT_PUBLISH;
        4'h8: le_tdata_next.mqtt_ops = LE_MQTT_SUBSCRIBE;
        default: le_tdata_next.mqtt_ops = LE_MQTT_ERROR;
    endcase
    le_tdata_next.topic = msg_fifo_tdata_next.topic;
    le_tdata_next.sub_ip  = src_ip;
    le_tdata_next.sub_port = src_port;
end

always_ff @(posedge clk) begin
    if(rst) begin
        m_axis_le_tvalid <=0;
        m_axis_msg_fifo_tvalid <= 0;
    end
    else begin
        if(s_axis_tvalid && s_axis_tready) begin
            m_axis_le_tdata <= le_tdata_next;
            m_axis_le_tvalid <= unrelated_packet ? 0 : 1;
            m_axis_msg_fifo_tdata <= msg_fifo_tdata_next;
            m_axis_msg_fifo_tvalid <= unrelated_packet ? 0: 1;
        end
        else begin
            if(m_axis_le_tvalid && m_axis_le_tready) begin
                m_axis_le_tvalid <= 0;
            end

            if(m_axis_msg_fifo_tvalid && m_axis_msg_fifo_tready) begin
                m_axis_msg_fifo_tvalid <= 0;
            end
        end

    end
end

//debug wires
logic[4-1:0]            input_s_axis_mqtt_ops;
assign input_s_axis_mqtt_ops=s_axis_tdata[7:4];
logic[3-1:0]            input_mqtt_ops;
logic[TOPIC_WIDTH-1:0]  input_topic;
logic[MSG_WIDTH-1:0]    input_msg;
logic[PTR_WIDTH-1:0]    input_topic_len;
logic[PTR_WIDTH-1:0]    input_msg_len;
assign input_mqtt_ops = le_tdata_next.mqtt_ops;
assign input_topic = msg_fifo_tdata_next.topic;
assign input_topic_len = msg_fifo_tdata_next.topic_len;
assign input_msg = msg_fifo_tdata_next.msg;
assign input_msg_len = msg_fifo_tdata_next.msg_len;


endmodule
