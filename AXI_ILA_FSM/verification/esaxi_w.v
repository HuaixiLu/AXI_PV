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
wire     [11:0] bv_12_0_n44;
wire            bv_1_0_n0;
wire            bv_1_1_n7;
wire      [1:0] bv_2_0_n45;
wire      [1:0] bv_2_1_n60;
wire     [29:0] bv_30_1_n63;
wire     [31:0] bv_32_0_n59;
wire      [2:0] bv_3_0_n58;
wire      [7:0] bv_8_0_n55;
wire      [7:0] bv_8_1_n56;
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
wire            n3;
wire            n30;
wire            n31;
wire            n32;
wire            n33;
wire            n34;
wire            n35;
wire            n36;
wire            n37;
wire            n38;
wire            n39;
wire            n4;
wire            n40;
wire            n41;
wire            n42;
wire            n43;
wire            n46;
wire      [1:0] n47;
wire            n48;
wire            n49;
wire            n5;
wire            n50;
wire            n51;
wire            n52;
wire            n53;
wire            n54;
wire      [7:0] n57;
wire            n6;
wire            n61;
wire     [29:0] n62;
wire     [29:0] n64;
wire     [31:0] n65;
wire     [31:0] n66;
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
assign n2 =  ( tx_wactive ) == ( bv_1_0_n0 )  ;
assign n3 =  ( tx_bwait ) == ( bv_1_0_n0 )  ;
assign n4 =  ( n2 ) & (n3 )  ;
assign n5 =  ( s_axi_awready ) == ( bv_1_0_n0 )  ;
assign n6 =  ( n4 ) & (n5 )  ;
assign bv_1_1_n7 = 1'h1 ;
assign n8 =  ( s_axi_aresetn ) == ( bv_1_1_n7 )  ;
assign n9 =  ( n6 ) & (n8 )  ;
assign __ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__ = n9 ;
assign __ILA_ILA_Slave_write_acc_decode__[1] = __ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__ ;
assign n10 =  ( tx_wactive ) == ( bv_1_0_n0 )  ;
assign n11 =  ( s_axi_awready ) == ( bv_1_1_n7 )  ;
assign n12 =  ( n10 ) & (n11 )  ;
assign n13 =  ( s_axi_awvalid ) == ( bv_1_1_n7 )  ;
assign n14 =  ( n12 ) & (n13 )  ;
assign n15 =  ( s_axi_aresetn ) == ( bv_1_1_n7 )  ;
assign n16 =  ( n14 ) & (n15 )  ;
assign __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ = n16 ;
assign __ILA_ILA_Slave_write_acc_decode__[2] = __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ ;
assign n17 =  ( tx_wactive ) == ( bv_1_1_n7 )  ;
assign n18 =  ( s_axi_wready ) == ( bv_1_0_n0 )  ;
assign n19 =  ( n17 ) & (n18 )  ;
assign n20 =  ( s_axi_aresetn ) == ( bv_1_1_n7 )  ;
assign n21 =  ( n19 ) & (n20 )  ;
assign __ILA_ILA_Slave_write_decode_of_W_Slave_Wait__ = n21 ;
assign __ILA_ILA_Slave_write_acc_decode__[3] = __ILA_ILA_Slave_write_decode_of_W_Slave_Wait__ ;
assign n22 =  ( tx_wactive ) == ( bv_1_1_n7 )  ;
assign n23 =  ( s_axi_wready ) == ( bv_1_1_n7 )  ;
assign n24 =  ( n22 ) & (n23 )  ;
assign n25 =  ( s_axi_wvalid ) == ( bv_1_1_n7 )  ;
assign n26 =  ( n24 ) & (n25 )  ;
assign n27 =  ( s_axi_bvalid ) == ( bv_1_0_n0 )  ;
assign n28 =  ( n26 ) & (n27 )  ;
assign n29 =  ( s_axi_awready ) == ( bv_1_0_n0 )  ;
assign n30 =  ( n28 ) & (n29 )  ;
assign n31 =  ( s_axi_aresetn ) == ( bv_1_1_n7 )  ;
assign n32 =  ( n30 ) & (n31 )  ;
assign __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ = n32 ;
assign __ILA_ILA_Slave_write_acc_decode__[4] = __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ ;
assign n33 =  ( tx_bwait ) == ( bv_1_1_n7 )  ;
assign n34 =  ( s_axi_wready ) == ( bv_1_0_n0 )  ;
assign n35 =  ( n33 ) & (n34 )  ;
assign n36 =  ( s_axi_bvalid ) == ( bv_1_1_n7 )  ;
assign n37 =  ( n35 ) & (n36 )  ;
assign n38 =  ( s_axi_bready ) == ( bv_1_1_n7 )  ;
assign n39 =  ( n37 ) & (n38 )  ;
assign n40 =  ( s_axi_aresetn ) == ( bv_1_1_n7 )  ;
assign n41 =  ( n39 ) & (n40 )  ;
assign __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__ = n41 ;
assign __ILA_ILA_Slave_write_acc_decode__[5] = __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__ ;
assign n42 =  ( s_axi_wlast ) == ( bv_1_1_n7 )  ;
assign n43 =  ( n42 ) ? ( bv_1_0_n0 ) : ( write_ready ) ;
assign bv_12_0_n44 = 12'h0 ;
assign bv_2_0_n45 = 2'h0 ;
assign n46 =  ( s_axi_wlast ) == ( bv_1_1_n7 )  ;
assign n47 =  ( n46 ) ? ( bv_2_0_n45 ) : ( s_axi_bresp ) ;
assign n48 =  ( s_axi_wlast ) == ( bv_1_1_n7 )  ;
assign n49 =  ( n48 ) ? ( bv_1_1_n7 ) : ( s_axi_bvalid ) ;
assign n50 =  ( s_axi_wlast ) == ( bv_1_1_n7 )  ;
assign n51 =  ( n50 ) ? ( bv_1_0_n0 ) : ( tx_wactive ) ;
assign n52 =  ( s_axi_wlast ) == ( bv_1_1_n7 )  ;
assign n53 = ~ ( s_axi_bready ) ;
assign n54 =  ( n52 ) ? ( n53 ) : ( tx_bwait ) ;
assign bv_8_0_n55 = 8'h0 ;
assign bv_8_1_n56 = 8'h1 ;
assign n57 =  ( tx_awlen ) - ( bv_8_1_n56 )  ;
assign bv_3_0_n58 = 3'h0 ;
assign bv_32_0_n59 = 32'h0 ;
assign bv_2_1_n60 = 2'h1 ;
assign n61 =  ( tx_awburst ) == ( bv_2_1_n60 )  ;
assign n62 = tx_awaddr[31:2] ;
assign bv_30_1_n63 = 30'h1 ;
assign n64 =  ( n62 ) + ( bv_30_1_n63 )  ;
assign n65 =  { ( n64 ) , ( bv_2_0_n45 ) }  ;
assign n66 =  ( n61 ) ? ( n65 ) : ( tx_awaddr ) ;
always @(posedge clk) begin
   if(rst) begin
        s_axi_awready <= 1'b1;
   end
   else if(__ILA_ILA_Slave_write_valid__) begin
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           s_axi_awready <= bv_1_1_n7;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Wait__ && __ILA_ILA_Slave_write_grant__[1] ) begin
           s_axi_awready <= bv_1_1_n7;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           s_axi_awready <= bv_1_0_n0;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Wait__ && __ILA_ILA_Slave_write_grant__[3] ) begin
           s_axi_wready <= write_ready;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           s_axi_wready <= n43;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           s_axi_bid <= bv_12_0_n44;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           s_axi_bid <= s_axi_awid;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           s_axi_bresp <= bv_2_0_n45;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           s_axi_bresp <= n47;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           s_axi_bvalid <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           s_axi_bvalid <= n49;
       end else if ( __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[5] ) begin
           s_axi_bvalid <= bv_1_0_n0;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_wactive <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_wactive <= bv_1_1_n7;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           tx_wactive <= n51;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_bwait <= bv_1_0_n0;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           tx_bwait <= n54;
       end else if ( __ILA_ILA_Slave_write_decode_of_B_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[5] ) begin
           tx_bwait <= bv_1_0_n0;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_awlen <= bv_8_0_n55;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_awlen <= s_axi_awlen;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           tx_awlen <= n57;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_awsize <= bv_3_0_n58;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_awsize <= s_axi_awsize;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_awaddr <= bv_32_0_n59;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_awaddr <= s_axi_awaddr;
       end else if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Busy__ && __ILA_ILA_Slave_write_grant__[4] ) begin
           tx_awaddr <= n66;
       end
       if ( __ILA_ILA_Slave_write_decode_of_W_Slave_Reset__ && __ILA_ILA_Slave_write_grant__[0] ) begin
           tx_awburst <= bv_2_0_n45;
       end else if ( __ILA_ILA_Slave_write_decode_of_AW_Slave_Commit__ && __ILA_ILA_Slave_write_grant__[2] ) begin
           tx_awburst <= s_axi_awburst;
       end
   end
end
endmodule
