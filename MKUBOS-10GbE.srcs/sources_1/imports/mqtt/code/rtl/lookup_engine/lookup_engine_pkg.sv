`ifndef LOOKUP_ENGINE_PKG
`define LOOKUP_ENGINE_PKG
package lookup_engine_pkg;


//topic table parameter
parameter TOPIC_WIDTH = 256;
parameter TOPIC_LENGTH = TOPIC_WIDTH/8;
parameter TOPIC_LENGTH_W = $clog2(TOPIC_LENGTH);
parameter RECNUM_WIDTH = 12; //RECNUM: record number
parameter TOPIC_MEM_DEPTH = 65536;
parameter TOPIC_MEM_DEPTH_W = $clog2(TOPIC_MEM_DEPTH);

//subscriber table parameter
parameter SUB_MEM_DEPTH = 65536;
parameter SUB_MEM_DEPTH_W = $clog2(SUB_MEM_DEPTH);
parameter IP_ADDR_WIDTH = 32; //ip addr
parameter SUB_DEST_WIDTH = 32+16; //ip addr + port


typedef logic[TOPIC_WIDTH-1:0]      le_topic_t;
typedef logic[IP_ADDR_WIDTH-1:0]    le_sub_addr_t; //subscriber's destination IP addr
typedef logic[16-1:0]               le_sub_port_t;
typedef logic[SUB_DEST_WIDTH-1:0]   le_sub_dest_t;
typedef logic[RECNUM_WIDTH-1:0]     le_recnum_t;

typedef logic[3-1:0]                le_ht_result_t;
parameter LE_HT_SUCCESS = 0;

typedef enum logic[2:0]{
    LE_MQTT_ERROR = 3'd0,
    LE_MQTT_PUBLISH = 3'd1,
    LE_MQTT_SUBSCRIBE = 3'd2,
    LE_MQTT_NO_SUBSCRIBER = 3'd3
} le_mqtt_ops_t;

typedef struct packed {
    le_topic_t      topic;
    le_recnum_t     recnum;
} le_sub_table_key_t;
parameter SUB_KEY_WIDTH = $bits(le_sub_table_key_t);

typedef struct packed {
    le_mqtt_ops_t   mqtt_ops;
    le_topic_t      topic;
    le_sub_addr_t   sub_ip;
    le_sub_port_t   sub_port;
    logic           is_last_topic;
} le_request_t;

typedef struct packed {
    le_mqtt_ops_t   mqtt_ops;
    le_topic_t      topic;
    le_sub_addr_t   sub_ip;
    le_sub_port_t   sub_port;
    le_recnum_t     max_recnum;
    logic           is_last_topic;
} le_search_sub_t;

typedef struct packed {
    le_mqtt_ops_t   mqtt_ops;
    le_topic_t      topic;
    le_sub_addr_t   sub_ip;
    le_sub_port_t   sub_port;
    le_recnum_t     max_recnum;
    logic           is_last_pub;
    logic           is_last_topic;
    //le_recnum_t     recnum;
} le_execute_t;

typedef struct packed {
    le_mqtt_ops_t   mqtt_ops;
    le_topic_t      topic; // not required?
    le_sub_addr_t   sub_ip;
    le_sub_port_t   sub_port;
    le_recnum_t     max_recnum;
    logic           is_last_pub;
    logic         is_last_topic;
} le_response_t;



endpackage

`endif
