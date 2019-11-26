module EmeshAxiSlaveBridge_read(
__ILA_EmeshAxiSlaveBridge_read_grant__,
clk,
read_data_15_0,
read_data_31_0,
read_data_7_0,
read_resp,
read_valid,
rst,
s_axi_araddr,
s_axi_arburst,
s_axi_arcache,
s_axi_aresetn,
s_axi_arid,
s_axi_arlen,
s_axi_arlock,
s_axi_arprot,
s_axi_arqos,
s_axi_arsize,
s_axi_arvalid,
s_axi_rready,
__ILA_EmeshAxiSlaveBridge_read_acc_decode__,
__ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__,
__ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Wait__,
__ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__,
__ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__,
__ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__,
__ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__,
__ILA_EmeshAxiSlaveBridge_read_valid__,
s_axi_arready,
s_axi_rid,
s_axi_rdata,
s_axi_rlast,
s_axi_rresp,
s_axi_rvalid,
tx_ractive,
tx_arlen,
tx_arsize,
tx_araddr,
tx_arburst
);
input      [5:0] __ILA_EmeshAxiSlaveBridge_read_grant__;
input            clk;
input     [15:0] read_data_15_0;
input     [31:0] read_data_31_0;
input      [7:0] read_data_7_0;
input      [1:0] read_resp;
input            read_valid;
input            rst;
input     [31:0] s_axi_araddr;
input      [1:0] s_axi_arburst;
input      [3:0] s_axi_arcache;
input            s_axi_aresetn;
input     [11:0] s_axi_arid;
input      [7:0] s_axi_arlen;
input            s_axi_arlock;
input      [2:0] s_axi_arprot;
input      [3:0] s_axi_arqos;
input      [2:0] s_axi_arsize;
input            s_axi_arvalid;
input            s_axi_rready;
output      [5:0] __ILA_EmeshAxiSlaveBridge_read_acc_decode__;
output            __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__;
output            __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Wait__;
output            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__;
output            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__;
output            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__;
output            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__;
output            __ILA_EmeshAxiSlaveBridge_read_valid__;
output reg            s_axi_arready;
output reg     [11:0] s_axi_rid;
output reg     [31:0] s_axi_rdata;
output reg            s_axi_rlast;
output reg      [1:0] s_axi_rresp;
output reg            s_axi_rvalid;
output reg            tx_ractive;
output reg      [7:0] tx_arlen;
output reg      [2:0] tx_arsize;
output reg     [31:0] tx_araddr;
output reg      [1:0] tx_arburst;
wire      [5:0] __ILA_EmeshAxiSlaveBridge_read_acc_decode__;
wire            __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__;
wire            __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Wait__;
wire            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__;
wire            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__;
wire            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__;
wire            __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__;
wire      [5:0] __ILA_EmeshAxiSlaveBridge_read_grant__;
wire            __ILA_EmeshAxiSlaveBridge_read_valid__;
wire     [11:0] bv_12_0_n38;
wire            bv_1_0_n0;
wire            bv_1_1_n2;
wire      [1:0] bv_2_0_n42;
wire      [1:0] bv_2_1_n48;
wire     [29:0] bv_30_1_n72;
wire     [31:0] bv_32_0_n39;
wire      [2:0] bv_3_0_n69;
wire      [7:0] bv_8_0_n54;
wire      [7:0] bv_8_1_n57;
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
wire            n4;
wire            n40;
wire      [1:0] n41;
wire            n43;
wire     [15:0] n44;
wire     [15:0] n45;
wire     [31:0] n46;
wire      [1:0] n47;
wire            n49;
wire            n5;
wire     [31:0] n50;
wire     [31:0] n51;
wire     [31:0] n52;
wire     [31:0] n53;
wire            n55;
wire            n56;
wire            n58;
wire            n59;
wire            n6;
wire            n60;
wire      [1:0] n61;
wire            n62;
wire            n63;
wire            n64;
wire            n65;
wire            n66;
wire            n67;
wire      [7:0] n68;
wire            n7;
wire            n70;
wire     [29:0] n71;
wire     [29:0] n73;
wire     [31:0] n74;
wire     [31:0] n75;
wire            n8;
wire            n9;
wire     [15:0] read_data_15_0;
wire     [31:0] read_data_31_0;
wire      [7:0] read_data_7_0;
wire      [1:0] read_resp;
wire            read_valid;
wire            rst;
wire     [31:0] s_axi_araddr;
wire      [1:0] s_axi_arburst;
wire      [3:0] s_axi_arcache;
wire            s_axi_aresetn;
wire     [11:0] s_axi_arid;
wire      [7:0] s_axi_arlen;
wire            s_axi_arlock;
wire      [2:0] s_axi_arprot;
wire      [3:0] s_axi_arqos;
wire      [2:0] s_axi_arsize;
wire            s_axi_arvalid;
wire            s_axi_rready;
assign __ILA_EmeshAxiSlaveBridge_read_valid__ = 1'b1 ;
assign bv_1_0_n0 = 1'h0 ;
assign n1 =  ( s_axi_aresetn ) == ( bv_1_0_n0 )  ;
assign __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ = n1 ;
assign __ILA_EmeshAxiSlaveBridge_read_acc_decode__[0] = __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ ;
assign bv_1_1_n2 = 1'h1 ;
assign n3 =  ( s_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n4 =  ( s_axi_arready ) == ( bv_1_0_n0 )  ;
assign n5 =  ( n3 ) & (n4 )  ;
assign n6 =  ( tx_ractive ) == ( bv_1_0_n0 )  ;
assign n7 =  ( n5 ) & (n6 )  ;
assign __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Wait__ = n7 ;
assign __ILA_EmeshAxiSlaveBridge_read_acc_decode__[1] = __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Wait__ ;
assign n8 =  ( tx_ractive ) == ( bv_1_0_n0 )  ;
assign n9 =  ( s_axi_rvalid ) == ( bv_1_0_n0 )  ;
assign n10 =  ( n8 ) & (n9 )  ;
assign n11 =  ( s_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n12 =  ( n10 ) & (n11 )  ;
assign n13 =  ( s_axi_arvalid ) == ( bv_1_1_n2 )  ;
assign n14 =  ( n12 ) & (n13 )  ;
assign n15 =  ( s_axi_arready ) == ( bv_1_1_n2 )  ;
assign n16 =  ( n14 ) & (n15 )  ;
assign __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ = n16 ;
assign __ILA_EmeshAxiSlaveBridge_read_acc_decode__[2] = __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ ;
assign n17 =  ( s_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n18 =  ( tx_ractive ) == ( bv_1_1_n2 )  ;
assign n19 =  ( n17 ) & (n18 )  ;
assign n20 =  ( s_axi_rvalid ) == ( bv_1_0_n0 )  ;
assign n21 =  ( n19 ) & (n20 )  ;
assign n22 =  ( s_axi_arready ) == ( bv_1_0_n0 )  ;
assign n23 =  ( n21 ) & (n22 )  ;
assign __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__ = n23 ;
assign __ILA_EmeshAxiSlaveBridge_read_acc_decode__[3] = __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__ ;
assign n24 =  ( s_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n25 =  ( s_axi_rready ) == ( bv_1_0_n0 )  ;
assign n26 =  ( n24 ) & (n25 )  ;
assign n27 =  ( s_axi_rvalid ) == ( bv_1_1_n2 )  ;
assign n28 =  ( n26 ) & (n27 )  ;
assign __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__ = n28 ;
assign __ILA_EmeshAxiSlaveBridge_read_acc_decode__[4] = __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__ ;
assign n29 =  ( s_axi_aresetn ) == ( bv_1_1_n2 )  ;
assign n30 =  ( s_axi_rready ) == ( bv_1_1_n2 )  ;
assign n31 =  ( n29 ) & (n30 )  ;
assign n32 =  ( s_axi_rvalid ) == ( bv_1_1_n2 )  ;
assign n33 =  ( n31 ) & (n32 )  ;
assign n34 =  ( tx_ractive ) == ( bv_1_1_n2 )  ;
assign n35 =  ( n33 ) & (n34 )  ;
assign n36 =  ( s_axi_arready ) == ( bv_1_0_n0 )  ;
assign n37 =  ( n35 ) & (n36 )  ;
assign __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ = n37 ;
assign __ILA_EmeshAxiSlaveBridge_read_acc_decode__[5] = __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ ;
assign bv_12_0_n38 = 12'h0 ;
assign bv_32_0_n39 = 32'h0 ;
assign n40 =  ( read_valid ) == ( bv_1_1_n2 )  ;
assign n41 = tx_arsize[1:0] ;
assign bv_2_0_n42 = 2'h0 ;
assign n43 =  ( n41 ) == ( bv_2_0_n42 )  ;
assign n44 =  { ( read_data_7_0 ) , ( read_data_7_0 ) }  ;
assign n45 =  { ( read_data_7_0 ) , ( read_data_7_0 ) }  ;
assign n46 =  { ( n44 ) , ( n45 ) }  ;
assign n47 = tx_arsize[1:0] ;
assign bv_2_1_n48 = 2'h1 ;
assign n49 =  ( n47 ) == ( bv_2_1_n48 )  ;
assign n50 =  { ( read_data_15_0 ) , ( read_data_15_0 ) }  ;
assign n51 =  ( n49 ) ? ( n50 ) : ( read_data_31_0 ) ;
assign n52 =  ( n43 ) ? ( n46 ) : ( n51 ) ;
assign n53 =  ( n40 ) ? ( n52 ) : ( s_axi_rdata ) ;
assign bv_8_0_n54 = 8'h0 ;
assign n55 =  ( s_axi_arlen ) == ( bv_8_0_n54 )  ;
assign n56 =  ( n55 ) ? ( bv_1_1_n2 ) : ( bv_1_0_n0 ) ;
assign bv_8_1_n57 = 8'h1 ;
assign n58 =  ( tx_arlen ) == ( bv_8_1_n57 )  ;
assign n59 =  ( n58 ) ? ( bv_1_1_n2 ) : ( s_axi_rlast ) ;
assign n60 =  ( read_valid ) == ( bv_1_1_n2 )  ;
assign n61 =  ( n60 ) ? ( read_resp ) : ( s_axi_rresp ) ;
assign n62 =  ( read_valid ) == ( bv_1_1_n2 )  ;
assign n63 =  ( n62 ) ? ( bv_1_1_n2 ) : ( s_axi_rvalid ) ;
assign n64 =  ( read_valid ) == ( bv_1_1_n2 )  ;
assign n65 =  ( n64 ) ? ( bv_1_1_n2 ) : ( bv_1_0_n0 ) ;
assign n66 =  ( s_axi_rlast ) == ( bv_1_1_n2 )  ;
assign n67 =  ( n66 ) ? ( bv_1_0_n0 ) : ( tx_ractive ) ;
assign n68 =  ( tx_arlen ) - ( bv_8_1_n57 )  ;
assign bv_3_0_n69 = 3'h0 ;
assign n70 =  ( tx_arburst ) == ( bv_2_1_n48 )  ;
assign n71 = tx_araddr[31:2] ;
assign bv_30_1_n72 = 30'h1 ;
assign n73 =  ( n71 ) + ( bv_30_1_n72 )  ;
assign n74 =  { ( n73 ) , ( bv_2_0_n42 ) }  ;
assign n75 =  ( n70 ) ? ( n74 ) : ( tx_araddr ) ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_EmeshAxiSlaveBridge_read_valid__) begin
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           s_axi_arready <= bv_1_1_n2;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Wait__ && __ILA_EmeshAxiSlaveBridge_read_grant__[1] ) begin
           s_axi_arready <= bv_1_1_n2;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           s_axi_arready <= bv_1_0_n0;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           s_axi_rid <= bv_12_0_n38;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           s_axi_rid <= s_axi_arid;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           s_axi_rdata <= bv_32_0_n39;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__ && __ILA_EmeshAxiSlaveBridge_read_grant__[3] ) begin
           s_axi_rdata <= n53;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__ && __ILA_EmeshAxiSlaveBridge_read_grant__[4] ) begin
           s_axi_rdata <= s_axi_rdata;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           s_axi_rlast <= bv_1_0_n0;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           s_axi_rlast <= n56;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ && __ILA_EmeshAxiSlaveBridge_read_grant__[5] ) begin
           s_axi_rlast <= n59;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           s_axi_rresp <= bv_2_0_n42;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ && __ILA_EmeshAxiSlaveBridge_read_grant__[5] ) begin
           s_axi_rresp <= n61;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           s_axi_rvalid <= bv_1_0_n0;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Prepare__ && __ILA_EmeshAxiSlaveBridge_read_grant__[3] ) begin
           s_axi_rvalid <= n63;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Asserted__ && __ILA_EmeshAxiSlaveBridge_read_grant__[4] ) begin
           s_axi_rvalid <= s_axi_rvalid;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ && __ILA_EmeshAxiSlaveBridge_read_grant__[5] ) begin
           s_axi_rvalid <= n65;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           tx_ractive <= bv_1_0_n0;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           tx_ractive <= bv_1_1_n2;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ && __ILA_EmeshAxiSlaveBridge_read_grant__[5] ) begin
           tx_ractive <= n67;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           tx_arlen <= bv_8_0_n54;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           tx_arlen <= s_axi_arlen;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ && __ILA_EmeshAxiSlaveBridge_read_grant__[5] ) begin
           tx_arlen <= n68;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           tx_arsize <= bv_3_0_n69;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           tx_arsize <= s_axi_arsize;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           tx_araddr <= bv_32_0_n39;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           tx_araddr <= s_axi_araddr;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Busy__ && __ILA_EmeshAxiSlaveBridge_read_grant__[5] ) begin
           tx_araddr <= n75;
       end
       if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_R_Slave_Reset__ && __ILA_EmeshAxiSlaveBridge_read_grant__[0] ) begin
           tx_arburst <= bv_2_0_n42;
       end else if ( __ILA_EmeshAxiSlaveBridge_read_decode_of_AR_Slave_Commit__ && __ILA_EmeshAxiSlaveBridge_read_grant__[2] ) begin
           tx_arburst <= s_axi_arburst;
       end
   end
end
endmodule
