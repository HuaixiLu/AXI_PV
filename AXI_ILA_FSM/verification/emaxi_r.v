module EmeshAxiMasterBridge_read(
__ILA_EmeshAxiMasterBridge_read_grant__,
araddr,
arburst,
arlen,
arsize,
clk,
m_axi_aresetn,
m_axi_arready,
m_axi_rdata,
m_axi_rid,
m_axi_rlast,
m_axi_rresp,
m_axi_rvalid,
nondet_unknown12_n25,
nondet_unknown13_n33,
nondet_unknown14_n41,
nondet_unknown15_n49,
nondet_unknown16_n29,
nondet_unknown17_n37,
nondet_unknown18_n45,
nondet_unknown19_n53,
read_ready,
read_valid,
rst,
__ILA_EmeshAxiMasterBridge_read_acc_decode__,
__ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__,
__ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__,
__ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__,
__ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Busy__,
__ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__,
__ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Wait__,
__ILA_EmeshAxiMasterBridge_read_valid__,
m_axi_arid,
m_axi_araddr,
m_axi_arlen,
m_axi_arsize,
m_axi_arburst,
m_axi_arlock,
m_axi_arcache,
m_axi_arprot,
m_axi_arqos,
m_axi_arvalid,
m_axi_rready,
tx_ractive,
tx_arlen
);
input      [5:0] __ILA_EmeshAxiMasterBridge_read_grant__;
input     [31:0] araddr;
input      [1:0] arburst;
input      [7:0] arlen;
input      [2:0] arsize;
input            clk;
input            m_axi_aresetn;
input            m_axi_arready;
input     [63:0] m_axi_rdata;
input     [11:0] m_axi_rid;
input            m_axi_rlast;
input      [1:0] m_axi_rresp;
input            m_axi_rvalid;
input     [31:0] nondet_unknown12_n25;
input      [7:0] nondet_unknown13_n33;
input      [2:0] nondet_unknown14_n41;
input      [1:0] nondet_unknown15_n49;
input     [31:0] nondet_unknown16_n29;
input      [7:0] nondet_unknown17_n37;
input      [2:0] nondet_unknown18_n45;
input      [1:0] nondet_unknown19_n53;
input            read_ready;
input            read_valid;
input            rst;
output      [5:0] __ILA_EmeshAxiMasterBridge_read_acc_decode__;
output            __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__;
output            __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__;
output            __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__;
output            __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Busy__;
output            __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__;
output            __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Wait__;
output            __ILA_EmeshAxiMasterBridge_read_valid__;
output reg     [11:0] m_axi_arid;
output reg     [31:0] m_axi_araddr;
output reg      [7:0] m_axi_arlen;
output reg      [2:0] m_axi_arsize;
output reg      [1:0] m_axi_arburst;
output reg            m_axi_arlock;
output reg      [3:0] m_axi_arcache;
output reg      [2:0] m_axi_arprot;
output reg      [3:0] m_axi_arqos;
output reg            m_axi_arvalid;
output reg            m_axi_rready;
output reg            tx_ractive;
output reg      [7:0] tx_arlen;
wire      [5:0] __ILA_EmeshAxiMasterBridge_read_acc_decode__;
wire            __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__;
wire            __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__;
wire            __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__;
wire            __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Busy__;
wire            __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__;
wire            __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Wait__;
wire      [5:0] __ILA_EmeshAxiMasterBridge_read_grant__;
wire            __ILA_EmeshAxiMasterBridge_read_valid__;
wire     [31:0] araddr;
wire      [1:0] arburst;
wire      [7:0] arlen;
wire      [2:0] arsize;
wire            bv_1_0_n0;
wire            bv_1_1_n3;
wire      [7:0] bv_8_1_n60;
wire            clk;
wire            m_axi_aresetn;
wire            m_axi_arready;
wire     [63:0] m_axi_rdata;
wire     [11:0] m_axi_rid;
wire            m_axi_rlast;
wire      [1:0] m_axi_rresp;
wire            m_axi_rvalid;
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
wire     [31:0] n26;
wire     [31:0] n27;
wire            n28;
wire     [31:0] n30;
wire     [31:0] n31;
wire            n32;
wire      [7:0] n34;
wire      [7:0] n35;
wire            n36;
wire      [7:0] n38;
wire      [7:0] n39;
wire            n4;
wire            n40;
wire      [2:0] n42;
wire      [2:0] n43;
wire            n44;
wire      [2:0] n46;
wire      [2:0] n47;
wire            n48;
wire            n5;
wire      [1:0] n50;
wire      [1:0] n51;
wire            n52;
wire      [1:0] n54;
wire      [1:0] n55;
wire            n56;
wire            n57;
wire            n58;
wire            n59;
wire            n6;
wire            n61;
wire            n62;
wire      [7:0] n63;
wire            n7;
wire            n8;
wire            n9;
wire     [31:0] nondet_unknown12_n25;
wire      [7:0] nondet_unknown13_n33;
wire      [2:0] nondet_unknown14_n41;
wire      [1:0] nondet_unknown15_n49;
wire     [31:0] nondet_unknown16_n29;
wire      [7:0] nondet_unknown17_n37;
wire      [2:0] nondet_unknown18_n45;
wire      [1:0] nondet_unknown19_n53;
wire            read_ready;
wire            read_valid;
wire            rst;
assign __ILA_EmeshAxiMasterBridge_read_valid__ = 1'b1 ;
assign bv_1_0_n0 = 1'h0 ;
assign n1 =  ( m_axi_aresetn ) == ( bv_1_0_n0 )  ;
assign __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__ = n1 ;
assign __ILA_EmeshAxiMasterBridge_read_acc_decode__[0] = __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__ ;
assign n2 =  ( m_axi_arvalid ) == ( bv_1_0_n0 )  ;
assign bv_1_1_n3 = 1'h1 ;
assign n4 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n5 =  ( n2 ) & (n4 )  ;
assign __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__ = n5 ;
assign __ILA_EmeshAxiMasterBridge_read_acc_decode__[1] = __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__ ;
assign n6 =  ( m_axi_arvalid ) == ( bv_1_1_n3 )  ;
assign n7 =  ( m_axi_arready ) == ( bv_1_0_n0 )  ;
assign n8 =  ( n6 ) & (n7 )  ;
assign n9 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n10 =  ( n8 ) & (n9 )  ;
assign __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ = n10 ;
assign __ILA_EmeshAxiMasterBridge_read_acc_decode__[2] = __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ ;
assign n11 =  ( m_axi_arvalid ) == ( bv_1_1_n3 )  ;
assign n12 =  ( m_axi_arready ) == ( bv_1_1_n3 )  ;
assign n13 =  ( n11 ) & (n12 )  ;
assign n14 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n15 =  ( n13 ) & (n14 )  ;
assign __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ = n15 ;
assign __ILA_EmeshAxiMasterBridge_read_acc_decode__[3] = __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ ;
assign n16 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n17 =  ( m_axi_rready ) == ( bv_1_0_n0 )  ;
assign n18 =  ( n16 ) & (n17 )  ;
assign __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Wait__ = n18 ;
assign __ILA_EmeshAxiMasterBridge_read_acc_decode__[4] = __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Wait__ ;
assign n19 =  ( m_axi_aresetn ) == ( bv_1_1_n3 )  ;
assign n20 =  ( m_axi_rvalid ) == ( bv_1_1_n3 )  ;
assign n21 =  ( n19 ) & (n20 )  ;
assign n22 =  ( m_axi_rvalid ) == ( bv_1_1_n3 )  ;
assign n23 =  ( n21 ) & (n22 )  ;
assign __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Busy__ = n23 ;
assign __ILA_EmeshAxiMasterBridge_read_acc_decode__[5] = __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Busy__ ;
assign n24 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n26 = nondet_unknown12_n25 ;
assign n27 =  ( n24 ) ? ( araddr ) : ( n26 ) ;
assign n28 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n30 = nondet_unknown16_n29 ;
assign n31 =  ( n28 ) ? ( araddr ) : ( n30 ) ;
assign n32 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n34 = nondet_unknown13_n33 ;
assign n35 =  ( n32 ) ? ( arlen ) : ( n34 ) ;
assign n36 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n38 = nondet_unknown17_n37 ;
assign n39 =  ( n36 ) ? ( arlen ) : ( n38 ) ;
assign n40 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n42 = nondet_unknown14_n41 ;
assign n43 =  ( n40 ) ? ( arsize ) : ( n42 ) ;
assign n44 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n46 = nondet_unknown18_n45 ;
assign n47 =  ( n44 ) ? ( arsize ) : ( n46 ) ;
assign n48 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n50 = nondet_unknown15_n49 ;
assign n51 =  ( n48 ) ? ( arburst ) : ( n50 ) ;
assign n52 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n54 = nondet_unknown19_n53 ;
assign n55 =  ( n52 ) ? ( arburst ) : ( n54 ) ;
assign n56 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n57 =  ( n56 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
assign n58 =  ( read_valid ) == ( bv_1_1_n3 )  ;
assign n59 =  ( n58 ) ? ( bv_1_1_n3 ) : ( bv_1_0_n0 ) ;
assign bv_8_1_n60 = 8'h1 ;
assign n61 =  ( tx_arlen ) == ( bv_8_1_n60 )  ;
assign n62 =  ( n61 ) ? ( bv_1_0_n0 ) : ( tx_ractive ) ;
assign n63 =  ( tx_arlen ) - ( bv_8_1_n60 )  ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_EmeshAxiMasterBridge_read_valid__) begin
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ && __ILA_EmeshAxiMasterBridge_read_grant__[2] ) begin
           m_axi_arid <= m_axi_arid;
       end
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__ && __ILA_EmeshAxiMasterBridge_read_grant__[1] ) begin
           m_axi_araddr <= n27;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ && __ILA_EmeshAxiMasterBridge_read_grant__[2] ) begin
           m_axi_araddr <= m_axi_araddr;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ && __ILA_EmeshAxiMasterBridge_read_grant__[3] ) begin
           m_axi_araddr <= n31;
       end
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__ && __ILA_EmeshAxiMasterBridge_read_grant__[1] ) begin
           m_axi_arlen <= n35;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ && __ILA_EmeshAxiMasterBridge_read_grant__[2] ) begin
           m_axi_arlen <= m_axi_arlen;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ && __ILA_EmeshAxiMasterBridge_read_grant__[3] ) begin
           m_axi_arlen <= n39;
       end
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__ && __ILA_EmeshAxiMasterBridge_read_grant__[1] ) begin
           m_axi_arsize <= n43;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ && __ILA_EmeshAxiMasterBridge_read_grant__[2] ) begin
           m_axi_arsize <= m_axi_arsize;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ && __ILA_EmeshAxiMasterBridge_read_grant__[3] ) begin
           m_axi_arsize <= n47;
       end
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__ && __ILA_EmeshAxiMasterBridge_read_grant__[1] ) begin
           m_axi_arburst <= n51;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ && __ILA_EmeshAxiMasterBridge_read_grant__[2] ) begin
           m_axi_arburst <= m_axi_arburst;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ && __ILA_EmeshAxiMasterBridge_read_grant__[3] ) begin
           m_axi_arburst <= n55;
       end
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__ && __ILA_EmeshAxiMasterBridge_read_grant__[0] ) begin
           m_axi_arvalid <= bv_1_0_n0;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Prepare__ && __ILA_EmeshAxiMasterBridge_read_grant__[1] ) begin
           m_axi_arvalid <= n57;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Asserted__ && __ILA_EmeshAxiMasterBridge_read_grant__[2] ) begin
           m_axi_arvalid <= m_axi_arvalid;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ && __ILA_EmeshAxiMasterBridge_read_grant__[3] ) begin
           m_axi_arvalid <= n59;
       end
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Reset__ && __ILA_EmeshAxiMasterBridge_read_grant__[0] ) begin
           m_axi_rready <= bv_1_0_n0;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Wait__ && __ILA_EmeshAxiMasterBridge_read_grant__[4] ) begin
           m_axi_rready <= read_ready;
       end
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ && __ILA_EmeshAxiMasterBridge_read_grant__[3] ) begin
           tx_ractive <= bv_1_1_n3;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Busy__ && __ILA_EmeshAxiMasterBridge_read_grant__[5] ) begin
           tx_ractive <= n62;
       end
       if ( __ILA_EmeshAxiMasterBridge_read_decode_of_AR_Master_Commit__ && __ILA_EmeshAxiMasterBridge_read_grant__[3] ) begin
           tx_arlen <= m_axi_arlen;
       end else if ( __ILA_EmeshAxiMasterBridge_read_decode_of_R_Master_Busy__ && __ILA_EmeshAxiMasterBridge_read_grant__[5] ) begin
           tx_arlen <= n63;
       end
   end
end
endmodule
