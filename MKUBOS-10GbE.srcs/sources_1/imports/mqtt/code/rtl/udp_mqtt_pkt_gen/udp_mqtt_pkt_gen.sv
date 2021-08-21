module udp_mqtt_pkt_gen
    import lookup_engine_pkg::*;
    import msg_fifo_pkg::*;
#(
    parameter DATA_WIDTH=1024
)(
    input clk,
    input rst,
    
    input le_response_t     s_axis_le_tdata,
    input                   s_axis_le_tvalid,
    output                  s_axis_le_tready,

    input msg_fifo_t        s_axis_msg_fifo_tdata,
    input                   s_axis_msg_fifo_tvalid,
    output                  s_axis_msg_fifo_tready,

    output logic[DATA_WIDTH-1:0]    m_axis_tdata,
    output logic                    m_axis_tvalid,
    input  logic                    m_axis_tready,
    output logic[DATA_WIDTH/8-1:0]  m_axis_tkeep,
    output logic                    m_axis_tlast,

    output logic[31:0]              dst_ip,
    output logic[15:0]              dst_port
);
assign m_axis_tlast = 1;
logic pub_finished_reg;

localparam PTR_WIDTH=7;

//mqtt offsets
localparam  MSG_LENGTH_BYTE_OFFSET=1;
localparam  TOPIC_LENGTH_BYTE_OFFSET=2;
localparam[PTR_WIDTH-1:0]  TOPIC_START=4;

logic[DATA_WIDTH-1:0]   tdata_next;
logic[DATA_WIDTH/8-1:0]   tkeep_next;


//may be not use (due to 1 cycle delay)
msg_fifo_t msg_fifo_reg;

logic[PTR_WIDTH-1:0] msg_start;
//logic[PTR_WIDTH-1:0] msg_end;

assign  s_axis_le_tready = (!m_axis_tvalid || m_axis_tready);
assign  s_axis_msg_fifo_tready = (!m_axis_tvalid || m_axis_tready) && pub_finished_reg;

//debug
logic[TOPIC_WIDTH-1:0] input_topic;
logic[MSG_WIDTH-1:0] input_msg;
logic[15:0]         input_topic_len;
logic[7:0]         input_msg_len;
logic[2:0]          input_mqtt_ops;
assign input_mqtt_ops = s_axis_le_tdata.mqtt_ops;
assign input_topic = s_axis_msg_fifo_tdata.topic;
assign input_msg = s_axis_msg_fifo_tdata.msg;
assign input_topic_len = s_axis_msg_fifo_tdata.topic_len;
assign input_msg_len = s_axis_msg_fifo_tdata.msg_len;


always_comb begin
    msg_start=TOPIC_START+s_axis_msg_fifo_tdata.topic_len+1;
    //msg_end = msg_fifo_tdata_next.msg_len +1;

    // --- packet making start---
    tdata_next[3:0] = 4'h0;
    //mqtt_ops
    case(s_axis_le_tdata.mqtt_ops)
        LE_MQTT_PUBLISH:    tdata_next[7:4] = 4'h3;
        LE_MQTT_SUBSCRIBE:  tdata_next[7:4] = 4'h8;
        default:            tdata_next[7:4] = 4'hF;
    endcase
    //msg_len and topic_len
    tdata_next[MSG_LENGTH_BYTE_OFFSET*8+7:MSG_LENGTH_BYTE_OFFSET*8] = s_axis_msg_fifo_tdata.msg_len;
    tdata_next[TOPIC_LENGTH_BYTE_OFFSET*8+15:TOPIC_LENGTH_BYTE_OFFSET*8] = {<<8{s_axis_msg_fifo_tdata.topic_len}};
    //fill topic
    tdata_next[TOPIC_START*8 +: TOPIC_WIDTH] = s_axis_msg_fifo_tdata.topic;
    //fill msg
    tdata_next[msg_start*8 +: MSG_WIDTH] = s_axis_msg_fifo_tdata.msg;

    tkeep_next = s_axis_msg_fifo_tdata.k;
end

always_ff @(posedge clk) begin
    if(rst) begin
        m_axis_tvalid <= 0;
        pub_finished_reg <= 0;
        m_axis_tdata <= '0;
    end
    else begin
        if(s_axis_le_tvalid && s_axis_le_tready) begin
            m_axis_tdata <= tdata_next;
            dst_ip <= s_axis_le_tdata.sub_ip;
            dst_port <= s_axis_le_tdata.sub_port;
            m_axis_tkeep <= tkeep_next;
            m_axis_tvalid <= 1;
            if(s_axis_le_tdata.is_last_pub && s_axis_le_tdata.is_last_topic) begin
                pub_finished_reg <= 1;
            end
            else begin
                pub_finished_reg <= 0;
            end
        end
        else if(m_axis_tvalid && m_axis_tready) begin
            m_axis_tvalid <= 0;
            if(pub_finished_reg) begin
                pub_finished_reg <= 0;
            end
        end
        if(s_axis_msg_fifo_tvalid && s_axis_msg_fifo_tready) begin
            msg_fifo_reg <= s_axis_msg_fifo_tdata;
        end
    end
end




endmodule
