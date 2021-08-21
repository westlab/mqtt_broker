package cuckoo_pkg;

parameter KEY_WIDTH = 256;
parameter KEY_LENGTH = KEY_WIDTH / 8;
parameter VALUE_WIDTH = 32;

parameter MEM_WIDTH = KEY_WIDTH + VALUE_WIDTH;
parameter MEM_DEPTH = 1024;
parameter MEM_DEPTH_W = $clog2(MEM_DEPTH);

typedef logic[MEM_DEPTH_W-1:0]      ck_hashed_key_t;
typedef logic[KEY_WIDTH-1:0]        ck_key_t;
typedef logic[VALUE_WIDTH-1:0]      ck_value_t;       

typedef enum logic[1:0] {
    CK_OPS_SEARCH = 2'b00,
    CK_OPS_INSERT = 2'b01,
    CK_OPS_DELETE = 2'b10,
    CK_OPS_ERROR  = 2'b11
} ck_ops_t;

typedef enum logic[1:0] {
    CK_RES_SUCCESS = 2'b00,
    CK_RES_REINSERT = 2'b01,
    CK_RES_ERROR = 2'b11
} ck_result_t;

typedef struct packed {
    ck_key_t    key;
    ck_value_t  value;
} ck_kv_t;

typedef struct packed {
    ck_kv_t kv;
    ck_ops_t opcode;
} ck_request_t;

typedef struct packed {
    ck_kv_t kv;
    ck_hashed_key_t hkey0;
    ck_hashed_key_t hkey1;
    ck_ops_t opcode;
} ck_search_request_t;

typedef struct packed {
    ck_kv_t kv;
    ck_hashed_key_t hkey0;
    ck_hashed_key_t hkey1;
    ck_ops_t opcode;
    ck_kv_t stored_kv0;
    ck_kv_t stored_kv1;
} ck_execute_request_t;

typedef struct packed {
    ck_kv_t kv;
    ck_ops_t opcode;
    ck_result_t result;
} ck_response_t;

endpackage