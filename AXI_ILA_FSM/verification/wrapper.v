//#############################################################################
//# Function: Combination of FSM and ILA model                                #
//#############################################################################
//# Author:   Huaixi Lu                                                       #
//# Email:    huaixil@princeton.edu                                           # 
//#############################################################################
module wrapper #(parameter IDW =  12, // ID
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

    //Write data channel
    input  [63 : 0]   wdata_in,
    input  [7 : 0]    wstrb_in,
    input             wvalid_in,
    input             wready_in,
    //Write response channel
    input             bready_in

);

// FSM interface
wire [AW-1 : 0] fsm_axi_awaddr;  // master interface write address   
wire [7 : 0]    fsm_axi_awlen; // burst length.
wire [2 : 0]    fsm_axi_awsize;  // burst size.
wire [1 : 0]    fsm_axi_awburst; // burst type.
wire            fsm_axi_awvalid; // write address valid
wire            fsm_axi_awready; // write address ready

wire [63 : 0]   fsm_axi_wdata;   // master interface write data.
wire [7 : 0]    fsm_axi_wstrb;   // byte write strobes
wire            fsm_axi_wlast;   // last transfer in a write burst.
wire            fsm_axi_wvalid;  // indicates data is ready to go
wire            fsm_axi_wready;  // slave is ready for data

wire [1 : 0]    fsm_axi_bresp;  // status of the write transaction.
wire            fsm_axi_bvalid;  // channel is a valid write response
wire            fsm_axi_bready; // master can accept write response.

//ILA interface
wire [AW-1 : 0] ila_axi_awaddr;  // master interface write address   
wire [7 : 0]    ila_axi_awlen; // burst length.
wire [2 : 0]    ila_axi_awsize;  // burst size.
wire [1 : 0]    ila_axi_awburst; // burst type.
wire            ila_axi_awvalid; // write address valid
wire            ila_axi_awready; // write address ready

wire [63 : 0]   ila_axi_wdata;   // master interface write data.
wire [7 : 0]    ila_axi_wstrb;   // byte write strobes
wire            ila_axi_wlast;   // last transfer in a write burst.
wire            ila_axi_wvalid;  // indicates data is ready to go
wire            ila_axi_wready;  // slave is ready for data

wire [1 : 0]    ila_axi_bresp;  // status of the write transaction.
wire            ila_axi_bvalid;  // channel is a valid write response
wire            ila_axi_bready; // master can accept write response.


axi_protocol #( .IDW(104), 
                .AW(32),
                .DW(32) )
fsm(
    .axi_aclk (clk),
    .axi_aresetn (resetn),
    
    .awaddr_in (awaddr_in), 
    .awburst_in (awburst_in), 
    .awlen_in (awlen_in), 
    .awsize_in (awsize_in), 
    .awvalid_in (awvalid_in),

    .axi_awaddr (fsm_axi_awaddr), 
    .axi_awlen (fsm_axi_awlen), 
    .axi_awsize (fsm_axi_awsize), 
    .axi_awburst (fsm_axi_awburst), 
    .axi_awvalid (fsm_axi_awvalid), 
    .axi_awready (fsm_axi_awready),

    .wdata_in (wdata_in), 
    .wstrb_in (wstrb_in), 
    .wvalid_in (wvalid_in), 
    .wready_in (wready_in),
    
    .axi_wdata (fsm_axi_wdata), 
    .axi_wlast (fsm_axi_wlast), 
    .axi_wstrb (fsm_axi_wstrb), 
    .axi_wvalid (fsm_axi_wvalid), 
    .axi_wready (fsm_axi_wready),

    .bready_in (bready_in), 
    
    .axi_bresp (fsm_axi_bresp), 
    .axi_bvalid (fsm_axi_bvalid), 
    .axi_bready (fsm_axi_bready)

    .axi_araddr (), 
    .axi_arlen (),
    .axi_arsize (), 
    .axi_arburst (), 
    .axi_arvalid (), 
    .axi_arready (), 
    
    .axi_rdata(), 
    .axi_rresp(), 
    .axi_rlast(), 
    .axi_rvalid(), 
    .axi_rready()
);

Write_Channel #( .IDW(104), 
                .AW(32),
                .DW(32) )
ila(
    .clk (clk),
    .resetn (resetn),
    
    .awaddr_in (awaddr_in), 
    .awburst_in (awburst_in), 
    .awlen_in (awlen_in), 
    .awsize_in (awsize_in), 
    .awvalid_in (awvalid_in),

    .axi_awaddr (ila_axi_awaddr), 
    .axi_awlen (ila_axi_awlen), 
    .axi_awsize (ila_axi_awsize), 
    .axi_awburst (ila_axi_awburst), 
    .axi_awvalid (ila_axi_awvalid), 
    .axi_awready (ila_axi_awready),

    .wdata_in (wdata_in), 
    .wstrb_in (wstrb_in), 
    .wvalid_in (wvalid_in), 
    .wready_in (wready_in),
    
    .axi_wdata (ila_axi_wdata), 
    .axi_wlast (ila_axi_wlast), 
    .axi_wstrb (ila_axi_wstrb), 
    .axi_wvalid (ila_axi_wvalid), 
    .axi_wready (ila_axi_wready),

    .bready_in (bready_in), 
    
    .axi_bresp (ila_axi_bresp), 
    .axi_bvalid (ila_axi_bvalid), 
    .axi_bready (ila_axi_bready)

);

    