module Write_Channel #(parameter IDW =  12, // ID
    parameter AW  =  32, // Addr
    parameter DW  =  32 )
   (
   input              clk,   // global clock signal.
   input              resetn, // global reset singal.
   //Write address channel
   input  [AW-1 : 0] awaddr_in,
   input  [7 : 0]    awlen_in,
   input  [2 : 0]    awsize_in,
   input  [1 : 0]    awburst_in,
   input             awvalid_in,

   output reg [AW-1 : 0] axi_awaddr,  // master interface write address   
   output reg [7 : 0]    axi_awlen,  // burst length.
   output reg [2 : 0]    axi_awsize,  // burst size.
   output reg [1 : 0]    axi_awburst, // burst type.
   output reg            axi_awvalid, // write address valid
   output reg            axi_awready, // write address ready

   //Write data channel
   input  [63 : 0]   wdata_in,
   input  [7 : 0]    wstrb_in,
   input             wvalid_in,
   input             wready_in,

   output reg [63 : 0]   axi_wdata,   // master interface write data.
   output reg [7 : 0]    axi_wstrb,   // byte write strobes
   output reg            axi_wlast,   // last transfer in a write burst.
   output reg            axi_wvalid,  // indicates data is ready to go
   output reg            axi_wready,  // slave is ready for data

   //Write response channel
   input             bready_in,
   output reg [1 : 0]    axi_bresp,   // status of the write transaction.
   output reg            axi_bvalid,  // channel is a valid write response
   output reg            axi_bready  // master can accept write response.
   );

                        
    ILA_Master_Write m_w (
        .__ILA_ILA_Master_write_grant__ (),
        .awaddr     (awaddr_in),
        .awburst    (awburst_in),
        .awlen      (awlen_in),
        .awsize     (awsize_in),
        .clk        (clk),
        .m_axi_aresetn  (resetn),
        .m_axi_awready  (axi_awready),
        .m_axi_bid      (),
        .m_axi_bresp    (),
        .m_axi_bvalid   (axi_bvalid),
        .m_axi_wready   (axi_wready),

        .nondet_unknown0_n35 (),
        .nondet_unknown10_n75 (),
        .nondet_unknown11_n83 (),
        .nondet_unknown1_n43 (),

        .nondet_unknown2_n51 (),
        .nondet_unknown3_n59 (),
        .nondet_unknown4_n39 (),
        .nondet_unknown5_n47 (),

        .nondet_unknown6_n55 (),
        .nondet_unknown7_n63 (),
        .nondet_unknown8_n71 (),
        .nondet_unknown9_n79 (),
        .rst (),
        .wdata              (wdata_in),
        .write_addr_valid   (awvalid_in),
        .write_valid        (wvalid_in),
        .wstrb              (wstrb_in),

        .__ILA_ILA_Master_write_acc_decode__ (),
        .__ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ (),
        .__ILA_ILA_Master_write_decode_of_AW_Master_Commit__ (),
        .__ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ (),
        .__ILA_ILA_Master_write_decode_of_B_Master_Commit__ (),
        .__ILA_ILA_Master_write_decode_of_W_Master_Asserted__ (),
        .__ILA_ILA_Master_write_decode_of_W_Master_Busy__ (),
        .__ILA_ILA_Master_write_decode_of_W_Master_Prepare__ (),
        .__ILA_ILA_Master_write_decode_of_W_Master_Reset__ (),
        .__ILA_ILA_Master_write_valid__ (),
        
        .m_axi_awid (),
        .m_axi_awaddr   (axi_awaddr),
        .m_axi_awlen    (axi_awlen),
        .m_axi_awsize   (axi_awsize),
        .m_axi_awburst  (axi_awburst),
        .m_axi_awlock   (),
        .m_axi_awcache  (),
        .m_axi_awprot   (),
        .m_axi_awqos    (),
        .m_axi_awvalid  (axi_awvalid),

        .m_axi_wid,
        .m_axi_wdata    (axi_wdata),
        .m_axi_wstrb    (axi_wstrb),
        .m_axi_wlast    (axi_wlast),
        .m_axi_wvalid   (axi_wvalid),
        .m_axi_bready   (axi_bready),
        .tx_wactive (),
        .tx_bwait (),
        .tx_awlen ()
   );

ILA_Slave_write s_w(
        .__ILA_ILA_Slave_write_grant__ (),
        .clk    (clk),
        .rst    (),
        .s_axi_aresetn  (resetn),
        .s_axi_awaddr   (axi_awaddr),
        .s_axi_awburst  (axi_awburst),
        .s_axi_awcache  (),
        .s_axi_awid     (),
        .s_axi_awlen    (axi_awlen),
        .s_axi_awlock   (),
        .s_axi_awprot   (),
        .s_axi_awqos    (),
        .s_axi_awsize   (axi_awsize),
        .s_axi_awvalid  (axi_awvalid),
        .s_axi_bready   (axi_bready),
        .s_axi_wdata    (axi_wdata),
        .s_axi_wid      (),
        .s_axi_wlast    (axi_wlast),
        .s_axi_wstrb    (axi_wstrb),
        .s_axi_wvalid   (axi_wvalid),
        .write_ready    (wready_in),

        .__ILA_ILA_Slave_write_acc_decode__ (),
        .__ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ (),
        .__ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__ (),
        .__ILA_ILA_Slave_write_decode_of_B_Slave_Commit__ (),
        .__ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ (),
        .__ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ (),
        .__ILA_ILA_Slave_write_decode_of_W_Slave_Wait__ (),
        .__ILA_ILA_Slave_write_valid__ (),

        .s_axi_awready  (axi_awready),
        .s_axi_wready   (axi_wready),
        .s_axi_bid      (),
        .s_axi_bresp    (),
        .s_axi_bvalid   (axi_bvalid),
        .tx_wactive (),
        .tx_bwait (),
        .tx_awlen (),
        .tx_awsize (),
        .tx_awaddr (),
        .tx_awburst ()
);

endmodule
