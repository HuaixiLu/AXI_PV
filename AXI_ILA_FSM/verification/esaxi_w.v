module ILA_Slave_write(
__ILA_ILA_Slave_write_grant__,
clk,
rst,
s_axi_aresetn,
s_axi_awaddr,
s_axi_awburst,
s_axi_awcache,
s_axi_awid,
s_axi_awlen,
s_axi_awlock,
s_axi_awprot,
s_axi_awqos,
s_axi_awsize,
s_axi_awvalid,
s_axi_bready,
s_axi_wdata,
s_axi_wid,
s_axi_wlast,
s_axi_wstrb,
s_axi_wvalid,
write_ready,
__ILA_ILA_Slave_write_acc_decode__,
__ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__,
__ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__,
__ILA_ILA_Slave_write_decode_of_B_Slave_Commit__,
__ILA_ILA_Slave_write_decode_of_W_Slave_Busy__,
__ILA_ILA_Slave_write_decode_of_W_Slave_Reset__,
__ILA_ILA_Slave_write_decode_of_W_Slave_Wait__,
__ILA_ILA_Slave_write_valid__,
s_axi_awready,
s_axi_wready,
s_axi_bid,
s_axi_bresp,
s_axi_bvalid,
tx_wactive,
tx_bwait,
tx_awlen,
tx_awsize,
tx_awaddr,
tx_awburst
);
input      [5:0] __ILA_ILA_Slave_write_grant__;
input            clk;
input            rst;
input            s_axi_aresetn;
input     [31:0] s_axi_awaddr;
input      [1:0] s_axi_awburst;
input      [3:0] s_axi_awcache;
input     [11:0] s_axi_awid;
input      [7:0] s_axi_awlen;
input            s_axi_awlock;
input      [2:0] s_axi_awprot;
input      [3:0] s_axi_awqos;
input      [2:0] s_axi_awsize;
input            s_axi_awvalid;
input            s_axi_bready;
input     [31:0] s_axi_wdata;
input     [11:0] s_axi_wid;
input            s_axi_wlast;
input      [3:0] s_axi_wstrb;
input            s_axi_wvalid;
input            write_ready;
output      [5:0] __ILA_ILA_Slave_write_acc_decode__;
output            __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__;
output            __ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__;
output            __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__;
output            __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__;
output            __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__;
output            __ILA_ILA_Slave_write_decode_of_W_Slave_Wait__;
output            __ILA_ILA_Slave_write_valid__;
output reg            s_axi_awready;
output reg            s_axi_wready;
output reg     [11:0] s_axi_bid;
output reg      [1:0] s_axi_bresp;
output reg            s_axi_bvalid;
output reg            tx_wactive;
output reg            tx_bwait;
output reg      [7:0] tx_awlen;
output reg      [2:0] tx_awsize;
output reg     [31:0] tx_awaddr;
output reg      [1:0] tx_awburst;
wire      [5:0] __ILA_ILA_Slave_write_acc_decode__;
wire            __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__;
wire            __ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__;
wire            __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__;
wire            __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__;
wire            __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__;
wire            __ILA_ILA_Slave_write_decode_of_W_Slave_Wait__;
wire      [5:0] __ILA_ILA_Slave_write_grant__;
wire            __ILA_ILA_Slave_write_valid__;
wire     [11:0] bv_12_0_n32;
wire            bv_1_0_n0;
wire            bv_1_1_n3;
wire      [1:0] bv_2_0_n33;
wire      [1:0] bv_2_1_n47;
wire     [29:0] bv_30_1_n50;
wire     [31:0] bv_32_0_n46;
wire      [2:0] bv_3_0_n45;
wire      [7:0] bv_8_0_n42;
wire      [7:0] bv_8_1_n43;
wire            clk;
wire            n1;
wire            n10;
wire            n11;
wire            n12;
wire            n13;
wire            n14;
wire            n15;
wire            n16;
wire            n17;
wire            n18;
wire            n19;
wire            n2;
wire            n20;
wire            n21;
wire            n22;
wire            n23;
wire            n24;
wire            n25;
wire            n26;
wire            n27;
wire            n28;
wire            n29;
wire            n30;
wire            n31;
wire            n34;
wire      [1:0] n35;
wire            n36;
wire            n37;
wire            n38;
wire            n39;
wire            n4;
wire            n40;
wire            n41;
wire      [7:0] n44;
wire            n48;
wire     [29:0] n49;
wire            n5;
wire     [29:0] n51;
wire     [31:0] n52;
wire     [31:0] n53;
wire            n6;
wire            n7;
wire            n8;
wire            n9;
wire            rst;
wire            s_axi_aresetn;
wire     [31:0] s_axi_awaddr;
wire      [1:0] s_axi_awburst;
wire      [3:0] s_axi_awcache;
wire     [11:0] s_axi_awid;
wire      [7:0] s_axi_awlen;
wire            s_axi_awlock;
wire      [2:0] s_axi_awprot;
wire      [3:0] s_axi_awqos;
wire      [2:0] s_axi_awsize;
wire            s_axi_awvalid;
wire            s_axi_bready;
wire     [31:0] s_axi_wdata;
wire     [11:0] s_axi_wid;
wire            s_axi_wlast;
wire      [3:0] s_axi_wstrb;
wire            s_axi_wvalid;
wire            write_ready;
assign __ILA_ILA_Slave_write_valid__ = 1'b1 ;
assign bv_1_0_n0 = 1'h0 ;
assign n1 =  ( s_axi_aresetn ) == ( bv_1_0_n0 )  ;
assign __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ = n1 ;
assign __ILA_ILA_Slave_write_acc_decode__[0] = __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ ;
assign n2 =  ( s_axi_awready ) == ( bv_1_0_n0 )  ;
assign bv_1_1_n3 = 1'h1 ;
assign n4 =  ( s_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n5 =  ( n2 ) & (n4 )  ;
assign __ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__ = n5 ;
assign __ILA_ILA_Slave_write_acc_decode__[1] = __ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__ ;
assign n6 =  ( s_axi_awready ) == ( bv_1_1_n3 )  ;
assign n7 =  ( s_axi_awvalid ) == ( bv_1_1_n3 )  ;
assign n8 =  ( n6 ) & (n7 )  ;
assign n9 =  ( s_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n10 =  ( n8 ) & (n9 )  ;
assign __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ = n10 ;
assign __ILA_ILA_Slave_write_acc_decode__[2] = __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ ;
assign n11 =  ( s_axi_wready ) == ( bv_1_0_n0 )  ;
assign n12 =  ( s_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n13 =  ( n11 ) & (n12 )  ;
assign __ILA_ILA_Slave_write_decode_of_W_Slave_Wait__ = n13 ;
assign __ILA_ILA_Slave_write_acc_decode__[3] = __ILA_ILA_Slave_write_decode_of_W_Slave_Wait__ ;
assign n14 =  ( s_axi_wready ) == ( bv_1_1_n3 )  ;
assign n15 =  ( s_axi_wvalid ) == ( bv_1_1_n3 )  ;
assign n16 =  ( n14 ) & (n15 )  ;
assign n17 =  ( s_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n18 =  ( n16 ) & (n17 )  ;
assign __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ = n18 ;
assign __ILA_ILA_Slave_write_acc_decode__[4] = __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ ;
assign n19 =  ( s_axi_bvalid ) == ( bv_1_1_n3 )  ;
assign n20 =  ( s_axi_bready ) == ( bv_1_1_n3 )  ;
assign n21 =  ( n19 ) & (n20 )  ;
assign n22 =  ( s_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n23 =  ( n21 ) & (n22 )  ;
assign __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__ = n23 ;
assign __ILA_ILA_Slave_write_acc_decode__[5] = __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__ ;
assign n24 =  ( tx_wactive ) == ( bv_1_0_n0 )  ;
assign n25 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n26 =  ( n24 ) & (n25 )  ;
assign n27 =  ( n26 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
assign n28 =  ( tx_wactive ) == ( bv_1_1_n3 )  ;
assign n29 =  ( n28 ) ? ( write_ready ) : ( bv_1_0_n0 ) ;
assign n30 =  ( s_axi_wlast ) == ( bv_1_1_n3 )  ;
assign n31 =  ( n30 ) ? ( bv_1_0_n0 ) : ( write_ready ) ;
assign bv_12_0_n32 = 12'h0 ;
assign bv_2_0_n33 = 2'h0 ;
assign n34 =  ( s_axi_wlast ) == ( bv_1_1_n3 )  ;
assign n35 =  ( n34 ) ? ( bv_2_0_n33 ) : ( s_axi_bresp ) ;
assign n36 =  ( s_axi_wlast ) == ( bv_1_1_n3 )  ;
assign n37 =  ( n36 ) ? ( bv_1_1_n3 ) : ( s_axi_bvalid ) ;
assign n38 =  ( s_axi_wlast ) == ( bv_1_1_n3 )  ;
assign n39 =  ( n38 ) ? ( bv_1_0_n0 ) : ( tx_wactive ) ;
assign n40 =  ( s_axi_wlast ) == ( bv_1_1_n3 )  ;
assign n41 =  ( n40 ) ? ( bv_1_1_n3 ) : ( tx_bwait ) ;
assign bv_8_0_n42 = 8'h0 ;
assign bv_8_1_n43 = 8'h1 ;
assign n44 =  ( tx_awlen ) - ( bv_8_1_n43 )  ;
assign bv_3_0_n45 = 3'h0 ;
assign bv_32_0_n46 = 32'h0 ;
assign bv_2_1_n47 = 2'h1 ;
assign n48 =  ( tx_awburst ) == ( bv_2_1_n47 )  ;
assign n49 = tx_awaddr[31:2] ;
assign bv_30_1_n50 = 30'h1 ;
assign n51 =  ( n49 ) + ( bv_30_1_n50 )  ;
assign n52 =  { ( n51 ) , ( bv_2_0_n33 ) }  ;
assign n53 =  ( n48 ) ? ( n52 ) : ( tx_awaddr ) ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_ILA_Slave_write_valid__) begin
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           s_axi_awready <= bv_1_1_n3;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__ && __ILA_ILA_Slave_write_grant__[1] ) begin
           s_axi_awready <= n27;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           s_axi_awready <= bv_1_0_n0;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Wait__ && __ILA_ILA_Slave_write_grant__[3] ) begin
           s_axi_wready <= n29;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           s_axi_wready <= n31;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           s_axi_bid <= bv_12_0_n32;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           s_axi_bid <= s_axi_awid;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           s_axi_bresp <= bv_2_0_n33;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           s_axi_bresp <= n35;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           s_axi_bvalid <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           s_axi_bvalid <= n37;
       end else if ( __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[5] ) begin
           s_axi_bvalid <= bv_1_0_n0;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_wactive <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_wactive <= bv_1_1_n3;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           tx_wactive <= n39;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_bwait <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           tx_bwait <= n41;
       end else if ( __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[5] ) begin
           tx_bwait <= bv_1_0_n0;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_awlen <= bv_8_0_n42;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_awlen <= s_axi_awlen;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           tx_awlen <= n44;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_awsize <= bv_3_0_n45;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_awsize <= s_axi_awsize;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_awaddr <= bv_32_0_n46;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_awaddr <= s_axi_awaddr;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           tx_awaddr <= n53;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_awburst <= bv_2_0_n33;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_awburst <= s_axi_awburst;
       end
   end
end
endmodule
