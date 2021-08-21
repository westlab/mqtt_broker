package common_pkg;

    // ------------------------------
    // Packet specification
    // ------------------------------
    parameter PKT_PIPELINE_BYTES    = 256;
    parameter PKT_PIPELINE_BITS     = PKT_PIPELINE_BYTES * 8;
    

    // ------------------------------
    // MQTT function
    // ------------------------------
    // max length of topics
    parameter TOPIC_BYTES           = 32;
    parameter TOPIC_BITS            = TOPIC_BYTES * 8;
    parameter TOPIC_BYTES_WIDTH     = $clog2(TOPIC_BYTES);
    parameter TOPIC_BITS_WIDTH      = $clog2(TOPIC_BITS);

    // max length of messages
    parameter MESSAGE_BYTES = 64;
    parameter MESSAGE_BITS  = MESSAGE_BYTES * 8;

    // for entry iteration to achieve looking up with wildcard and multi-subscribers
    parameter MAX_ENTRY     = 1024;
    parameter ENTRY_BITS    = $clog2(MAX_ENTRY);
    
endpackage