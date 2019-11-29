//#############################################################################
//# Function: FSM of AXI Protocol                                             #
//#############################################################################
//# Author:   Huaixi Lu                                                       #
//# Email:    huaixil@princeton.edu                                           # 
//#############################################################################
module axi_protocol #( parameter IDW 12, // ID
                       parameter AW 32, // Addr
                       parameter DW 32 
                        )
   (
   input              axi_aclk;    // global clock signal.
   input              axi_aresetn; // global reset singal.

   //Write address channel
   input  [AW-1 : 0] awaddr_in;
   input  [7 : 0]    awlen_in;
   input  [2 : 0]    awsize_in;
   input  [1 : 0]    awburst_in;
   input             awvalid_in;

   output [AW-1 : 0] axi_awaddr;  // master interface write address   
   output [7 : 0]    axi_awlen;   // burst length.
   output [2 : 0]    axi_awsize;  // burst size.
   output [1 : 0]    axi_awburst; // burst type.
   output            axi_awvalid; // write address valid
   output            axi_awready; // write address ready

   //Write data channel
   input  [63 : 0]   wdata_in;
   input  [7 : 0]    wstrb_in;
   input             wvalid_in;
   input             wready_in;

   output [63 : 0]   axi_wdata;   // master interface write data.
   output [7 : 0]    axi_wstrb;   // byte write strobes
   output            axi_wlast;   // last transfer in a write burst.
   output            axi_wvalid;  // indicates data is ready to go
   output            axi_wready;  // slave is ready for data

   //Write response channel
   input             bready_in;
   output [1 : 0]    axi_bresp;   // status of the write transaction.
   output            axi_bvalid;  // channel is a valid write response
   output            axi_bready;  // master can accept write response.

   //Read address channel
   output [AW-1 :0]  axi_araddr;  // initial address of a read burst
   output [7 : 0]    axi_arlen;   // burst length
   output [2 : 0]    axi_arsize;  // burst size
   output [1 : 0]    axi_arburst; // burst type
   output            axi_arvalid; // valid read address
   output            axi_arready; // slave is ready to accept an address

   //Read data channel   
   output [63 : 0]   axi_rdata;   // master read data
   output [1 : 0]    axi_rresp;   // status of the read transfer
   output            axi_rlast;   // last transfer in a read burst
   output            axi_rvalid;  // signaling the required read data
   output            axi_rready;  // master can accept the readback data
);

localparam WAIT   = 2'b00;
localparam COMMIT = 2'b01; // ready == 1 && valid == 1
localparam ASSERT = 2'b10; // ready == 0 && valid == 1

// -----------------//
//  AW Channel FSM  //
// -----------------//

// internal states
reg w_active;
reg b_wait;
reg [AW-1:0] aw_addr;
reg [7  : 0] aw_len;
reg [2  : 0] aw_size;
reg [1  : 0] aw_burst;
reg [1:0] aw_state;

always @(posedge axi_aclk)
    if(!axi_aresetn) begin
        axi_awvalid <= 1'b0;        
        axi_awready <= 1'b1;
        w_active <= 1'b0;
        b_wait <= 1'b0;
        aw_state <= WAIT;                
    end
    else begin
        case(aw_state)
            WAIT:
                begin
                    if ( ((~w_active && ~b_wait) || axi_awready) && awvalid_in) begin
                        axi_awready <= 1'b1;
                        axi_awvalid <= 1'b1;
                        aw_state <= COMMIT;
                        axi_awaddr  <= awaddr_in;
                        axi_awlen   <= awlen_in; 
                        axi_awsize  <= awsize_in;
                        axi_awburst <= awburst_in;
                    else if (awvalid_in) begin
                        aw_state <= ASSERT;
                        axi_awaddr  <= awaddr_in;
                        axi_awlen   <= awlen_in; 
                        axi_awsize  <= awsize_in;
                        axi_awburst <= awburst_in;
                    else if (~w_active && ~b_wait)
                        axi_awready <= 1'b1;
                end

            COMMIT:
                begin
                    w_active <= 1'b1;
                    axi_awready <= 1'b0;
                    aw_addr  <= axi_awaddr;
                    aw_len   <= axi_awlen; 
                    aw_size  <= axi_awsize;
                    aw_burst <= axi_awburst;
                    if (awvalid_in) begin 
                        aw_state <= ASSERT;
                        axi_awvalid <= 1'b1;
                        axi_awaddr  <= awaddr_in;
                        axi_awlen   <= awlen_in; 
                        axi_awsize  <= awsize_in;
                        axi_awburst <= awburst_in;
                    end
                    else
                        aw_state <= WAIT;
                end
            
            ASSERT:
                    if (~w_active && ~b_wait) begin
                        axi_awready <= 1'b1;
                        aw_state <= COMMIT;
                    end
    end

// -----------------//
//  W Channel FSM  //
// -----------------//

// internal states
reg [1:0] w_state;

always @(posedge axi_aclk)
    if(!axi_aresetn) begin
        axi_wvalid <= 1'b0;
        axi_wlast <= 1'b0;
        w_state <= WAIT;
    end
    else begin
        case(w_state)
            WAIT: // valid == 0
                if (w_active) begin
                    if(wvalid_in && wready_in) begin
                        axi_wvalid <= 1'b1;
                        axi_wready <= 1'b1;
                        axi_wdata  <= wdata_in;
                        axi_wstrb  <= wstrb_in;
                        w_state <= COMMIT;
                        if (axi_awlen == 8'b0) axi_wlast <= 1'b1;
                    end
                    else if(wvalid_in) begin
                        axi_wvalid <= 1'b1;
                        axi_wdata  <= wdata_in;
                        axi_wstrb  <= wstrb_in;
                        w_state <= ASSERT;
                    end
                    else
                        axi_wready <= wready_in;
                end
                else if(wvalid_in) begin
                    axi_wvalid <= 1'b1;
                    axi_wdata  <= wdata_in;
                    axi_wstrb  <= wstrb_in;
                    w_state <= ASSERT;
                end
            COMMIT: // ready && valid == 1
                begin
                   if(wvalid_in && wready_in) begin
                        axi_wdata  <= wdata_in;
                        axi_wstrb  <= wstrb_in;
                    end
                    else if(wvalid_in) begin
                        axi_wready <= 1'b0;
                        axi_wdata  <= wdata_in;
                        axi_wstrb  <= wstrb_in;
                        w_state <= ASSERT;
                    end
                    else begin
                        axi_wready <= wready_in;
                        axi_wvalid <= 1'b0;
                        w_state <= WAIT;
                    end
                    aw_len <= aw_len - 1'b1;
                    if (aw_len == 1'b1) axi_wlast <= 1'b1;
                    if (axi_wlast == 1'b1) begin
                        w_active <= 1'b0;
                        axi_wready <= 1'b0;
                        if (wvalid_in) begin
                            w_state <= ASSERT;
                            axi_wvalid <= 1'b1;
                            axi_wdata  <= wdata_in;
                            axi_wstrb  <= wstrb_in;
                        end
                        else begin 
                            w_state <= WAIT;
                            axi_wvalid <= 1'b0;
                        end
                    end
                end
            ASSERT: // valid == 1 && ready == 0
                if (w_active && wready_in) begin
                    w_state <= COMMIT;
                    axi_wready <= 1'b1;
                    if (axi_awlen == 8'b0) axi_wlast <= 1'b1;
                end
    end

// -----------------//
//  B Channel FSM  //
// -----------------//

// internal states
reg [1:0] b_state;

always @(posedge axi_aclk)
    if(!axi_aresetn) begin
        axi_bvalid <= 1'b0;
        b_state <= WAIT;
    end
    else begin
        case(b_state)
            WAIT:
                if (w_state == COMMIT && axi_wlast == 1 && (bready_in || axi_bready)) begin
                    axi_bvalid <= 1'b1;
                    axi_bready <= 1'b1;
                    axi_bresp <= 2'b00;
                    b_state <= COMMIT;
                end
                else if (w_state == COMMIT && axi_wlast == 1) begin
                    axi_bvalid <= 1'b1;
                    axi_bresp <= 2'b00;
                    b_state <= ASSERT;
                    b_wait <= 1'b1;
                end
                else
                    axi_bready <= bready_in;
            COMMIT: 
            begin
                b_wait <= 1'b0;
                b_state <= WAIT;
                axi_bvalid <= 1'b0;
            end

            ASSERT:
            if (bready_in) begin
                axi_bready <= 1'b1;
                b_state <= COMMIT;
            end
    end

endmodule // axi_protocol


