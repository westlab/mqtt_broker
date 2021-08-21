`ifndef MSG_FIFO_PKG
`define MSG_FIFO_PKG
package msg_fifo_pkg;
//import lookup_engine_pkg::*;

parameter MSG_WIDTH=256;

typedef struct packed {
    //le_topic_t              topic;
    logic[256-1:0]          topic;
    logic[8-1:0]            topic_len;
    logic[MSG_WIDTH-1:0]    msg;
    logic[16-1:0]           msg_len;
    logic[ 128 -1:0]        k;
} msg_fifo_t;


endpackage
`endif
