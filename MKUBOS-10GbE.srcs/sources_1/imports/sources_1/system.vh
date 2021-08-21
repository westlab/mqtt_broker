//-----------------------------------------------------------------------
// definitions for 10GbE FPGA

// FPGA ID number
`define FPGA_ID   (16'h5002 + 0)

// address offset in axi32regs
`define OFFSET_ID_VERSION           8'h00
`define OFFSET_SCRATCHPAD           8'h04
`define OFFSET_COMPLETION_STATUS0   8'h08
`define OFFSET_COMPLETION_STATUS1   8'h0C
`define OFFSET_COMPLETION_STATUS2   8'h10
`define OFFSET_COMPLETION_STATUS3   8'h14
`define OFFSET_RESTART_TX_RX        8'h18
`define OFFSET_SYS_RESET            8'h1C