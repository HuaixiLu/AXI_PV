module ILA_Master_write(
__ILA_ILA_Master_write_grant__,
awaddr,
awburst,
awlen,
awsize,
bready,
clk,
m_axi_aresetn,
m_axi_awready,
m_axi_bid,
m_axi_bresp,
m_axi_bvalid,
m_axi_wready,
nondet_unknown0_n33,
nondet_unknown10_n73,
nondet_unknown11_n81,
nondet_unknown1_n41,
nondet_unknown2_n49,
nondet_unknown3_n57,
nondet_unknown4_n37,
nondet_unknown5_n45,
nondet_unknown6_n53,
nondet_unknown7_n61,
nondet_unknown8_n69,
nondet_unknown9_n77,
rst,
wdata,
write_addr_valid,
write_valid,
wstrb,
__ILA_ILA_Master_write_acc_decode__,
__ILA_ILA_Master_write_decode_of_AW_Master_Asserted__,
__ILA_ILA_Master_write_decode_of_AW_Master_Commit__,
__ILA_ILA_Master_write_decode_of_AW_Master_Prepare__,
__ILA_ILA_Master_write_decode_of_B_Master_Wait__,
__ILA_ILA_Master_write_decode_of_W_Master_Asserted__,
__ILA_ILA_Master_write_decode_of_W_Master_Busy__,
__ILA_ILA_Master_write_decode_of_W_Master_Prepare__,
__ILA_ILA_Master_write_decode_of_W_Master_Reset__,
__ILA_ILA_Master_write_valid__,
m_axi_awid,
m_axi_awaddr,
m_axi_awlen,
m_axi_awsize,
m_axi_awburst,
m_axi_awlock,
m_axi_awcache,
m_axi_awprot,
m_axi_awqos,
m_axi_awvalid,
m_axi_wid,
m_axi_wdata,
m_axi_wstrb,
m_axi_wlast,
m_axi_wvalid,
m_axi_bready,
tx_wactive,
tx_bwait,
tx_awlen
);
input      [7:0] __ILA_ILA_Master_write_grant__;
input     [31:0] awaddr;
input      [1:0] awburst;
input      [7:0] awlen;
input      [2:0] awsize;
input            bready;
input            clk;
input            m_axi_aresetn;
input            m_axi_awready;
input     [11:0] m_axi_bid;
input      [1:0] m_axi_bresp;
input            m_axi_bvalid;
input            m_axi_wready;
input     [31:0] nondet_unknown0_n33;
input     [63:0] nondet_unknown10_n73;
input      [7:0] nondet_unknown11_n81;
input      [7:0] nondet_unknown1_n41;
input      [2:0] nondet_unknown2_n49;
input      [1:0] nondet_unknown3_n57;
input     [31:0] nondet_unknown4_n37;
input      [7:0] nondet_unknown5_n45;
input      [2:0] nondet_unknown6_n53;
input      [1:0] nondet_unknown7_n61;
input     [63:0] nondet_unknown8_n69;
input      [7:0] nondet_unknown9_n77;
input            rst;
input     [63:0] wdata;
input            write_addr_valid;
input            write_valid;
input      [7:0] wstrb;
output      [7:0] __ILA_ILA_Master_write_acc_decode__;
output            __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__;
output            __ILA_ILA_Master_write_decode_of_AW_Master_Commit__;
output            __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__;
output            __ILA_ILA_Master_write_decode_of_B_Master_Wait__;
output            __ILA_ILA_Master_write_decode_of_W_Master_Asserted__;
output            __ILA_ILA_Master_write_decode_of_W_Master_Busy__;
output            __ILA_ILA_Master_write_decode_of_W_Master_Prepare__;
output            __ILA_ILA_Master_write_decode_of_W_Master_Reset__;
output            __ILA_ILA_Master_write_valid__;
output reg     [11:0] m_axi_awid;
output reg     [31:0] m_axi_awaddr;
output reg      [7:0] m_axi_awlen;
output reg      [2:0] m_axi_awsize;
output reg      [1:0] m_axi_awburst;
output reg            m_axi_awlock;
output reg      [3:0] m_axi_awcache;
output reg      [2:0] m_axi_awprot;
output reg      [3:0] m_axi_awqos;
output reg            m_axi_awvalid;
output reg     [11:0] m_axi_wid;
output reg     [63:0] m_axi_wdata;
output reg      [7:0] m_axi_wstrb;
output reg            m_axi_wlast;
output reg            m_axi_wvalid;
output reg            m_axi_bready;
output reg            tx_wactive;
output reg            tx_bwait;
output reg      [7:0] tx_awlen;
wire      [7:0] __ILA_ILA_Master_write_acc_decode__;
wire            __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__;
wire            __ILA_ILA_Master_write_decode_of_AW_Master_Commit__;
wire            __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__;
wire            __ILA_ILA_Master_write_decode_of_B_Master_Wait__;
wire            __ILA_ILA_Master_write_decode_of_W_Master_Asserted__;
wire            __ILA_ILA_Master_write_decode_of_W_Master_Busy__;
wire            __ILA_ILA_Master_write_decode_of_W_Master_Prepare__;
wire            __ILA_ILA_Master_write_decode_of_W_Master_Reset__;
wire      [7:0] __ILA_ILA_Master_write_grant__;
wire            __ILA_ILA_Master_write_valid__;
wire     [31:0] awaddr;
wire      [1:0] awburst;
wire      [7:0] awlen;
wire      [2:0] awsize;
wire            bready;
wire            bv_1_0_n0;
wire            bv_1_1_n3;
wire      [7:0] bv_8_0_n84;
wire      [7:0] bv_8_1_n87;
wire            clk;
wire            m_axi_aresetn;
wire            m_axi_awready;
wire     [11:0] m_axi_bid;
wire      [1:0] m_axi_bresp;
wire            m_axi_bvalid;
wire            m_axi_wready;
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
wire            n32;
wire     [31:0] n34;
wire     [31:0] n35;
wire            n36;
wire     [31:0] n38;
wire     [31:0] n39;
wire            n4;
wire            n40;
wire      [7:0] n42;
wire      [7:0] n43;
wire            n44;
wire      [7:0] n46;
wire      [7:0] n47;
wire            n48;
wire            n5;
wire      [2:0] n50;
wire      [2:0] n51;
wire            n52;
wire      [2:0] n54;
wire      [2:0] n55;
wire            n56;
wire      [1:0] n58;
wire      [1:0] n59;
wire            n6;
wire            n60;
wire      [1:0] n62;
wire      [1:0] n63;
wire            n64;
wire            n65;
wire            n66;
wire            n67;
wire            n68;
wire            n7;
wire     [63:0] n70;
wire     [63:0] n71;
wire            n72;
wire     [63:0] n74;
wire     [63:0] n75;
wire            n76;
wire      [7:0] n78;
wire      [7:0] n79;
wire            n8;
wire            n80;
wire      [7:0] n82;
wire      [7:0] n83;
wire            n85;
wire            n86;
wire            n88;
wire            n89;
wire            n9;
wire            n90;
wire            n91;
wire            n92;
wire            n93;
wire            n94;
wire            n95;
wire      [7:0] n96;
wire     [31:0] nondet_unknown0_n33;
wire     [63:0] nondet_unknown10_n73;
wire      [7:0] nondet_unknown11_n81;
wire      [7:0] nondet_unknown1_n41;
wire      [2:0] nondet_unknown2_n49;
wire      [1:0] nondet_unknown3_n57;
wire     [31:0] nondet_unknown4_n37;
wire      [7:0] nondet_unknown5_n45;
wire      [2:0] nondet_unknown6_n53;
wire      [1:0] nondet_unknown7_n61;
wire     [63:0] nondet_unknown8_n69;
wire      [7:0] nondet_unknown9_n77;
wire            rst;
wire     [63:0] wdata;
wire            write_addr_valid;
wire            write_valid;
wire      [7:0] wstrb;
assign __ILA_ILA_Master_write_valid__ = 1'b1 ;
assign bv_1_0_n0 = 1'h0 ;
assign n1 =  ( m_axi_aresetn ) == ( bv_1_0_n0 )  ;
assign __ILA_ILA_Master_write_decode_of_W_Master_Reset__ = n1 ;
assign __ILA_ILA_Master_write_acc_decode__[0] = __ILA_ILA_Master_write_decode_of_W_Master_Reset__ ;
assign n2 =  ( m_axi_awvalid ) == ( bv_1_0_n0 )  ;
assign bv_1_1_n3 = 1'h1 ;
assign n4 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n5 =  ( n2 ) & (n4 )  ;
assign __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ = n5 ;
assign __ILA_ILA_Master_write_acc_decode__[1] = __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ ;
assign n6 =  ( m_axi_awvalid ) == ( bv_1_1_n3 )  ;
assign n7 =  ( m_axi_awready ) == ( bv_1_0_n0 )  ;
assign n8 =  ( n6 ) & (n7 )  ;
assign n9 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n10 =  ( n8 ) & (n9 )  ;
assign __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ = n10 ;
assign __ILA_ILA_Master_write_acc_decode__[2] = __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ ;
assign n11 =  ( m_axi_awvalid ) == ( bv_1_1_n3 )  ;
assign n12 =  ( m_axi_awready ) == ( bv_1_1_n3 )  ;
assign n13 =  ( n11 ) & (n12 )  ;
assign n14 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n15 =  ( n13 ) & (n14 )  ;
assign __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ = n15 ;
assign __ILA_ILA_Master_write_acc_decode__[3] = __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ ;
assign n16 =  ( m_axi_wvalid ) == ( bv_1_0_n0 )  ;
assign n17 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n18 =  ( n16 ) & (n17 )  ;
assign __ILA_ILA_Master_write_decode_of_W_Master_Prepare__ = n18 ;
assign __ILA_ILA_Master_write_acc_decode__[4] = __ILA_ILA_Master_write_decode_of_W_Master_Prepare__ ;
assign n19 =  ( m_axi_wvalid ) == ( bv_1_1_n3 )  ;
assign n20 =  ( m_axi_wready ) == ( bv_1_0_n0 )  ;
assign n21 =  ( n19 ) & (n20 )  ;
assign n22 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n23 =  ( n21 ) & (n22 )  ;
assign __ILA_ILA_Master_write_decode_of_W_Master_Asserted__ = n23 ;
assign __ILA_ILA_Master_write_acc_decode__[5] = __ILA_ILA_Master_write_decode_of_W_Master_Asserted__ ;
assign n24 =  ( m_axi_wvalid ) == ( bv_1_1_n3 )  ;
assign n25 =  ( m_axi_wready ) == ( bv_1_1_n3 )  ;
assign n26 =  ( n24 ) & (n25 )  ;
assign n27 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n28 =  ( n26 ) & (n27 )  ;
assign __ILA_ILA_Master_write_decode_of_W_Master_Busy__ = n28 ;
assign __ILA_ILA_Master_write_acc_decode__[6] = __ILA_ILA_Master_write_decode_of_W_Master_Busy__ ;
assign n29 =  ( m_axi_bready ) == ( bv_1_0_n0 )  ;
assign n30 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n31 =  ( n29 ) & (n30 )  ;
assign __ILA_ILA_Master_write_decode_of_B_Master_Wait__ = n31 ;
assign __ILA_ILA_Master_write_acc_decode__[7] = __ILA_ILA_Master_write_decode_of_B_Master_Wait__ ;
assign n32 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n34 = nondet_unknown0_n33 ;
assign n35 =  ( n32 ) ? ( awaddr ) : ( n34 ) ;
assign n36 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n38 = nondet_unknown4_n37 ;
assign n39 =  ( n36 ) ? ( awaddr ) : ( n38 ) ;
assign n40 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n42 = nondet_unknown1_n41 ;
assign n43 =  ( n40 ) ? ( awlen ) : ( n42 ) ;
assign n44 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n46 = nondet_unknown5_n45 ;
assign n47 =  ( n44 ) ? ( awlen ) : ( n46 ) ;
assign n48 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n50 = nondet_unknown2_n49 ;
assign n51 =  ( n48 ) ? ( awsize ) : ( n50 ) ;
assign n52 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n54 = nondet_unknown6_n53 ;
assign n55 =  ( n52 ) ? ( awsize ) : ( n54 ) ;
assign n56 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n58 = nondet_unknown3_n57 ;
assign n59 =  ( n56 ) ? ( awburst ) : ( n58 ) ;
assign n60 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n62 = nondet_unknown7_n61 ;
assign n63 =  ( n60 ) ? ( awburst ) : ( n62 ) ;
assign n64 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n65 =  ( n64 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
assign n66 =  ( write_addr_valid ) == ( bv_1_1_n3 )  ;
assign n67 =  ( n66 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
assign n68 =  ( write_valid ) == ( bv_1_1_n3 )  ;
assign n70 = nondet_unknown8_n69 ;
assign n71 =  ( n68 ) ? ( wdata ) : ( n70 ) ;
assign n72 =  ( write_valid ) == ( bv_1_1_n3 )  ;
assign n74 = nondet_unknown10_n73 ;
assign n75 =  ( n72 ) ? ( wdata ) : ( n74 ) ;
assign n76 =  ( write_valid ) == ( bv_1_1_n3 )  ;
assign n78 = nondet_unknown9_n77 ;
assign n79 =  ( n76 ) ? ( wstrb ) : ( n78 ) ;
assign n80 =  ( write_valid ) == ( bv_1_1_n3 )  ;
assign n82 = nondet_unknown11_n81 ;
assign n83 =  ( n80 ) ? ( wstrb ) : ( n82 ) ;
assign bv_8_0_n84 = 8'h0 ;
assign n85 =  ( m_axi_awlen ) == ( bv_8_0_n84 )  ;
assign n86 =  ( n85 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
assign bv_8_1_n87 = 8'h1 ;
assign n88 =  ( tx_awlen ) == ( bv_8_1_n87 )  ;
assign n89 =  ( n88 ) ? ( bv_1_1_n3 ) : ( m_axi_wlast ) ;
assign n90 =  ( write_valid ) == ( bv_1_1_n3 )  ;
assign n91 =  ( n90 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
assign n92 =  ( write_valid ) == ( bv_1_1_n3 )  ;
assign n93 =  ( n92 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
assign n94 =  ( tx_awlen ) == ( bv_8_1_n87 )  ;
assign n95 =  ( n94 ) ? ( bv_1_0_n0 ) : ( tx_wactive ) ;
assign n96 =  ( tx_awlen ) - ( bv_8_1_n87 )  ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_ILA_Master_write_valid__) begin
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awid <= m_axi_awid;
       end
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awaddr <= n35;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awaddr <= m_axi_awaddr;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           m_axi_awaddr <= n39;
       end
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awlen <= n43;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awlen <= m_axi_awlen;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           m_axi_awlen <= n47;
       end
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awsize <= n51;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awsize <= m_axi_awsize;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           m_axi_awsize <= n55;
       end
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awburst <= n59;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awburst <= m_axi_awburst;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           m_axi_awburst <= n63;
       end
       if ( __ILA_ILA_Master_write_decode_of_W_Master_Reset__ && __ILA_ILA_Master_write_grant__[0] ) begin
           m_axi_awvalid <= bv_1_0_n0;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Prepare__ && __ILA_ILA_Master_write_grant__[1] ) begin
           m_axi_awvalid <= n65;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Asserted__ && __ILA_ILA_Master_write_grant__[2] ) begin
           m_axi_awvalid <= m_axi_awvalid;
       end else if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           m_axi_awvalid <= n67;
       end
       if ( __ILA_ILA_Master_write_decode_of_W_Master_Prepare__ && __ILA_ILA_Master_write_grant__[4] ) begin
           m_axi_wdata <= n71;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Asserted__ && __ILA_ILA_Master_write_grant__[5] ) begin
           m_axi_wdata <= m_axi_wdata;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Busy__ && __ILA_ILA_Master_write_grant__[6] ) begin
           m_axi_wdata <= n75;
       end
       if ( __ILA_ILA_Master_write_decode_of_W_Master_Prepare__ && __ILA_ILA_Master_write_grant__[4] ) begin
           m_axi_wstrb <= n79;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Asserted__ && __ILA_ILA_Master_write_grant__[5] ) begin
           m_axi_wstrb <= m_axi_wstrb;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Busy__ && __ILA_ILA_Master_write_grant__[6] ) begin
           m_axi_wstrb <= n83;
       end
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           m_axi_wlast <= n86;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Busy__ && __ILA_ILA_Master_write_grant__[6] ) begin
           m_axi_wlast <= n89;
       end
       if ( __ILA_ILA_Master_write_decode_of_W_Master_Reset__ && __ILA_ILA_Master_write_grant__[0] ) begin
           m_axi_wvalid <= bv_1_0_n0;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Prepare__ && __ILA_ILA_Master_write_grant__[4] ) begin
           m_axi_wvalid <= n91;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Asserted__ && __ILA_ILA_Master_write_grant__[5] ) begin
           m_axi_wvalid <= m_axi_wvalid;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Busy__ && __ILA_ILA_Master_write_grant__[6] ) begin
           m_axi_wvalid <= n93;
       end
       if ( __ILA_ILA_Master_write_decode_of_B_Master_Wait__ && __ILA_ILA_Master_write_grant__[7] ) begin
           m_axi_bready <= bready;
       end
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           tx_wactive <= bv_1_1_n3;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Busy__ && __ILA_ILA_Master_write_grant__[6] ) begin
           tx_wactive <= n95;
       end
       if ( __ILA_ILA_Master_write_decode_of_AW_Master_Commit__ && __ILA_ILA_Master_write_grant__[3] ) begin
           tx_awlen <= m_axi_awlen;
       end else if ( __ILA_ILA_Master_write_decode_of_W_Master_Busy__ && __ILA_ILA_Master_write_grant__[6] ) begin
           tx_awlen <= n96;
       end
   end
end
endmodule
