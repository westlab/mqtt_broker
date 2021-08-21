//---------------------------------------------------------------------------------
// AXI-Lite 32-bit width registers
//
//---------------------------------------------------------------------------------
// Revision information (new..old):
//
// 2020-02-25 by yfuji
//    initial code based on AXI4 peripheral IP
//---------------------------------------------------------------------------------

`resetall
`include "system.vh"
`include "version.vh"

`default_nettype none
`timescale 1ns / 10ps

module axi32regs # (
   parameter integer AXI_ADDR_WIDTH	= 8)     // Width of S_AXI address
(
   input wire        S_AXI_aclk,       // Global Clock signal
   input wire        S_AXI_aresetn,    // Global Reset signal. This signal is active-low
   input wire        S_AXI_awvalid,    // Write address valid
   output reg        S_AXI_awready,    // Write address ready
   input wire        S_AXI_wvalid,     // Write valid
   output reg        S_AXI_wready,     // Write ready
   output reg        S_AXI_bvalid,     // Write response valid
   input wire [2:0]  S_AXI_awprot,     // Write protection type, not used
   output reg [1:0]  S_AXI_bresp,      // Write response
   input wire [3:0]  S_AXI_wstrb,      // Write strobes, optional usage
   input wire [AXI_ADDR_WIDTH-1:0]  S_AXI_awaddr,     // Write address
   input wire [31:0] S_AXI_wdata,      // Write data
   input wire        S_AXI_bready,     // Response ready
   input wire        S_AXI_arvalid,    // Read address valid
   output reg        S_AXI_arready,    // Read address ready
   output reg        S_AXI_rvalid,     // Read valid
   input wire        S_AXI_rready,     // Read ready
   input wire [2:0]  S_AXI_arprot,     // Read protection type, not used
   output reg [1:0]  S_AXI_rresp,      // Read response
   input wire [AXI_ADDR_WIDTH-1:0]  S_AXI_araddr,     // Read address
   output reg [31:0] S_AXI_rdata,      // Read data

   // user read ports
   input wire [4:0]     Rport_completion_status0,
   input wire [4:0]     Rport_completion_status1,
   input wire [4:0]     Rport_completion_status2,
   input wire [4:0]     Rport_completion_status3,
   

   // user write ports
   output reg           Wport_restart_tx_rx,
   output reg           Wport_sys_resetp,
   //
   output wire [15:0]   Testsig_o);       // test signal output

   // AXI4-Lite signals
   wire        slv_reg_rden;  // read enable
   wire        slv_reg_wren;  // write enable
   reg         aw_en;         // axi_awaddr enable
   reg [31:0]  reg_rdata;     // selected read data
   reg [AXI_ADDR_WIDTH-1:0]   axi_awaddr;
   reg [AXI_ADDR_WIDTH-1:0]   axi_araddr;

   // user logic signals
   reg [31:0]  reg_scratchpad;
   reg [1:0]   reg_shutdown;

   integer     i;

   // global AXI clock/reset
   wire  clk   = S_AXI_aclk;
   wire  rst   = ~S_AXI_aresetn;    // reset, active-high

   // Implement S_AXI_awready generation
   // S_AXI_awready is asserted for one S_AXI_aclk clock cycle when both
   // S_AXI_awvalid and S_AXI_wvalid are asserted. S_AXI_awready is
   // de-asserted when reset is low.
   always @(posedge S_AXI_aclk) begin
      if (rst) begin
         S_AXI_awready <= 1'b0;
         aw_en <= 1'b1;
      end
      else begin
         if (~S_AXI_awready && S_AXI_awvalid && S_AXI_wvalid && aw_en) begin
            // slave is ready to accept write address when
            // there is a valid write address and write data
            // on the write address and data bus. This design
            // expects no outstanding transactions.
            S_AXI_awready <= 1'b1;
            aw_en <= 1'b0;
         end
         else if (S_AXI_bready && S_AXI_bvalid) begin
            aw_en <= 1'b1;
            S_AXI_awready <= 1'b0;
         end
         else begin
            S_AXI_awready <= 1'b0;
         end
      end
   end

   // Implement axi_awaddr latching
   // This process is used to latch the address when both
   // S_AXI_awvalid and S_AXI_wvalid are valid.
   always @(posedge S_AXI_aclk) begin
      if (rst) begin
         axi_awaddr <= 0;
      end
      else begin
         if (~S_AXI_awready && S_AXI_awvalid && S_AXI_wvalid && aw_en) begin
            axi_awaddr <= S_AXI_awaddr;
         end
      end
   end

   // Implement S_AXI_wready generation
   // S_AXI_wready is asserted for one S_AXI_aclk clock cycle when both
   // S_AXI_awvalid and S_AXI_wvalid are asserted. S_AXI_wready is
   // de-asserted when reset is low.
   always @(posedge S_AXI_aclk) begin
      if (rst) begin
         S_AXI_wready <= 1'b0;
      end
      else begin
         if (~S_AXI_wready && S_AXI_wvalid && S_AXI_awvalid && aw_en) begin
            // slave is ready to accept write data when
            // there is a valid write address and write data
            // on the write address and data bus. This design
            // expects no outstanding transactions.
            S_AXI_wready <= 1'b1;
         end
         else begin
            S_AXI_wready <= 1'b0;
         end
      end
   end
   
   // The write data is accepted and written to memory mapped registers when
   // S_AXI_awready, S_AXI_wvalid, S_AXI_wready and S_AXI_wvalid are asserted.
   // Slave register write enable is asserted when valid address and data are available
   // and the slave is ready to accept the write address and write data.
   assign slv_reg_wren = S_AXI_wready && S_AXI_wvalid && S_AXI_awready && S_AXI_awvalid;

   // Implement write response logic generation
   // The write response and response valid signals are asserted by the slave
   // when S_AXI_wready, S_AXI_wvalid, S_AXI_wready and S_AXI_wvalid are asserted.
   // This marks the acceptance of address and indicates the status of
   // write transaction.
   always @(posedge S_AXI_aclk) begin
      if (rst) begin
         S_AXI_bvalid  <= 0;
         S_AXI_bresp   <= 2'b0;
      end
      else begin
         if (S_AXI_awready && S_AXI_awvalid && ~S_AXI_bvalid && S_AXI_wready && S_AXI_wvalid) begin
            // indicates a valid write response is available
            S_AXI_bvalid <= 1'b1;
            S_AXI_bresp  <= 2'b0; // 'OKAY' response
         end                   // work error responses in future
         else begin
            if (S_AXI_bready && S_AXI_bvalid) begin
               //check if bready is asserted while bvalid is high)
               //(there is a possibility that bready is always asserted high)
               S_AXI_bvalid <= 1'b0;
            end
         end
      end
   end

   // Implement S_AXI_arready generation
   // S_AXI_arready is asserted for one S_AXI_aclk clock cycle when
   // S_AXI_arvalid is asserted. S_AXI_awready is
   // de-asserted when reset (active low) is asserted.
   // The read address is also latched when S_AXI_arvalid is
   // asserted. axi_araddr is reset to zero on reset assertion.
   always @(posedge S_AXI_aclk) begin
      if (rst) begin
         S_AXI_arready <= 1'b0;
         axi_araddr  <= 32'b0;
      end
      else begin
         if (~S_AXI_arready && S_AXI_arvalid) begin
            // indicates that the slave has acceped the valid read address
            S_AXI_arready <= 1'b1;
            // Read address latching
            axi_araddr  <= S_AXI_araddr;
         end
         else begin
            S_AXI_arready <= 1'b0;
         end
      end
   end

   // Implement axi_arvalid generation
   // S_AXI_rvalid is asserted for one S_AXI_aclk clock cycle when both
   // S_AXI_arvalid and S_AXI_arready are asserted. The slave registers
   // data are available on the S_AXI_rdata bus at this instance. The
   // assertion of S_AXI_rvalid marks the validity of read data on the
   // bus and S_AXI_rresp indicates the status of read transaction.S_AXI_rvalid
   // is deasserted on reset (active low). S_AXI_rresp and S_AXI_rdata are
   // cleared to zero on reset (active low).
	always @(posedge S_AXI_aclk) begin
      if (rst) begin
         S_AXI_rvalid <= 0;
         S_AXI_rresp  <= 0;
      end
      else begin
         if (S_AXI_arready && S_AXI_arvalid && ~S_AXI_rvalid) begin
            // Valid read data is available at the read data bus
            S_AXI_rvalid <= 1'b1;
            S_AXI_rresp  <= 2'b0; // 'OKAY' response
         end
         else if (S_AXI_rvalid && S_AXI_rready) begin
            // Read data is accepted by the master
            S_AXI_rvalid <= 1'b0;
         end
      end
   end

   // Slave register read enable is asserted when valid address is available
   // and the slave is ready to accept the read address.
   assign slv_reg_rden = S_AXI_arready & S_AXI_arvalid & ~S_AXI_rvalid;

   // Output register or memory read data
   always @(posedge S_AXI_aclk) begin
      if (rst) begin
         S_AXI_rdata  <= 0;
      end
      else begin
         // When there is a valid read address (S_AXI_arvalid) with
         // acceptance of read address by the slave (S_AXI_arready),
         // output the read dada
         if (slv_reg_rden) begin
            S_AXI_rdata <= reg_rdata;
         end
      end
   end

   //------------------------------------------------------------------------------
   // User registers to write
   
   // Implement memory mapped register select and write logic generation
   // These registers are cleared when reset (active low) is applied.
   // Slave register write enable is asserted when valid address and data are available
   // and the slave is ready to accept the write address and write data.
   always @(posedge S_AXI_aclk) begin
      if (rst) begin
         reg_scratchpad    <= 0;
      end
      else begin
         if (slv_reg_wren) begin
            case (axi_awaddr)
            // example of using S_AXI_wstrb
            // `OFFSET_SCRATCHPAD: begin
            //    for (i = 0; i <= 3; i = i+1)
            //       if (S_AXI_wstrb[i] == 1) begin
            //          reg_scratchpad[(i*8) +: 8] <= S_AXI_wdata[(i*8) +: 8];
            //      end
            `OFFSET_SCRATCHPAD:             reg_scratchpad <= S_AXI_wdata;
            `OFFSET_RESTART_TX_RX:          Wport_restart_tx_rx <= S_AXI_wdata;
            `OFFSET_SYS_RESET:              Wport_sys_resetp <= S_AXI_wdata;
            endcase
         end
      end
   end
   

   // Generates write enable pulses
   /* skip --
   always @(posedge S_AXI_aclk) begin
      if (rst) begin
         Reg_MODE_en  <= 0;
      end
      else begin
         if (slv_reg_wren) begin
            case (axi_awaddr)
            `OFFSET_MODE:  Reg_MODE_en  <= 1;
            endcase
         end
         else begin  // negate all write enables
            Reg_MODE_en  <= 0;
         end
      end
   end
   -- skip */
   
   //------------------------------------------------------------------------------
   // User registers to read

   // Implement memory mapped register select and read logic generation
   always @(*) begin
      // Address decoding for reading registers
      case (axi_araddr)
      `OFFSET_ID_VERSION:  reg_rdata <= (`FPGA_ID << 16) + `FPGA_VERSION;
      `OFFSET_SCRATCHPAD:  reg_rdata <= reg_scratchpad;
      `OFFSET_COMPLETION_STATUS0:  reg_rdata <= Rport_completion_status0;
      `OFFSET_COMPLETION_STATUS1:  reg_rdata <= Rport_completion_status1;
      `OFFSET_COMPLETION_STATUS2:  reg_rdata <= Rport_completion_status2;
      `OFFSET_COMPLETION_STATUS3:  reg_rdata <= Rport_completion_status3;
      default :            reg_rdata <= 0;
      endcase
   end

   //------------------------------------------------------------------------------
   // test signal output for debug
   assign Testsig_o = 0;      // not used

endmodule

`resetall
// vim:ts=3 sw=3 et
