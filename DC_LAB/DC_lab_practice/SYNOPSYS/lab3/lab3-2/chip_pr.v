// IC Compiler II Verilog Writer
// Generated on 05/20/2020 at 10:30:59
// Library Name: CS_NDM
// Block Name: CHIP
// User Label: 
// Write Command: write_verilog -top_module_first -hierarchy all -exclude { corner_cells filler_cells leaf_module_declarations pad_spacer_cells pg_netlist pg_objects physical_only_cells scalar_wire_declarations supply_statements unconnected_ports } chip_pr.v
module CHIP ( Y , X , reset , clk ) ;
output [9:0] Y ;
input  [7:0] X ;
input  reset ;
input  clk ;

wire [7:0] i_X ;
wire [9:0] i_Y ;

CS top ( .Y ( i_Y ) , .X ( i_X ) , .reset ( i_reset ) , .clk ( i_clk ) ) ;
PDIDGZ_33 ipad_clk ( .PAD ( clk ) , .C ( i_clk ) ) ;
PDIDGZ_33 ipad_reset ( .PAD ( reset ) , .C ( i_reset ) ) ;
PDIDGZ_33 ipad_X7 ( .PAD ( X[7] ) , .C ( i_X[7] ) ) ;
PDIDGZ_33 ipad_X6 ( .PAD ( X[6] ) , .C ( i_X[6] ) ) ;
PDIDGZ_33 ipad_X5 ( .PAD ( X[5] ) , .C ( i_X[5] ) ) ;
PDIDGZ_33 ipad_X4 ( .PAD ( X[4] ) , .C ( i_X[4] ) ) ;
PDIDGZ_33 ipad_X3 ( .PAD ( X[3] ) , .C ( i_X[3] ) ) ;
PDIDGZ_33 ipad_X2 ( .PAD ( X[2] ) , .C ( i_X[2] ) ) ;
PDIDGZ_33 ipad_X1 ( .PAD ( X[1] ) , .C ( i_X[1] ) ) ;
PDIDGZ_33 ipad_X0 ( .PAD ( X[0] ) , .C ( i_X[0] ) ) ;
PDO16CDG_33 opad_Y9 ( .I ( i_Y[9] ) , .PAD ( Y[9] ) ) ;
PDO16CDG_33 opad_Y8 ( .I ( i_Y[8] ) , .PAD ( Y[8] ) ) ;
PDO16CDG_33 opad_Y7 ( .I ( i_Y[7] ) , .PAD ( Y[7] ) ) ;
PDO16CDG_33 opad_Y6 ( .I ( i_Y[6] ) , .PAD ( Y[6] ) ) ;
PDO16CDG_33 opad_Y5 ( .I ( i_Y[5] ) , .PAD ( Y[5] ) ) ;
PDO16CDG_33 opad_Y4 ( .I ( ropt_net_152 ) , .PAD ( Y[4] ) ) ;
PDO16CDG_33 opad_Y3 ( .I ( ZBUF_4_1 ) , .PAD ( Y[3] ) ) ;
PDO16CDG_33 opad_Y2 ( .I ( ZBUF_4_0 ) , .PAD ( Y[2] ) ) ;
PDO16CDG_33 opad_Y1 ( .I ( ZBUF_4_2 ) , .PAD ( Y[1] ) ) ;
PDO16CDG_33 opad_Y0 ( .I ( i_Y[0] ) , .PAD ( Y[0] ) ) ;
PVDD2DGZ_33 iovdd1 () ;
PVDD2DGZ_33 iovdd2 () ;
PVDD2DGZ_33 iovdd3 () ;
PVDD2DGZ_33 iovdd4 () ;
PVDD2DGZ_33 iovdd5 () ;
PVDD2DGZ_33 iovdd6 () ;
PVDD2DGZ_33 iovdd7 () ;
PVDD2DGZ_33 iovdd8 () ;
PVSS2DGZ_33 iovss1 () ;
PVSS2DGZ_33 iovss2 () ;
PVSS2DGZ_33 iovss3 () ;
PVSS2DGZ_33 iovss4 () ;
PVSS2DGZ_33 iovss5 () ;
PVSS2DGZ_33 iovss6 () ;
PVSS2DGZ_33 iovss7 () ;
PVSS2DGZ_33 iovss8 () ;
BUFX12 ZBUF_4_inst_819 ( .A ( i_Y[2] ) , .Y ( ZBUF_4_0 ) ) ;
CLKBUFX40 ZBUF_4_inst_820 ( .A ( i_Y[3] ) , .Y ( ZBUF_4_1 ) ) ;
BUFX10 ZBUF_4_inst_822 ( .A ( i_Y[1] ) , .Y ( ZBUF_4_2 ) ) ;
CLKBUFX40 ropt_d_inst_2637 ( .A ( i_Y[4] ) , .Y ( ropt_net_152 ) ) ;
endmodule


module CS ( Y , X , reset , clk ) ;
output [9:0] Y ;
input  [7:0] X ;
input  reset ;
input  clk ;

wire [7:3] X9 ;
wire [11:0] Xt ;
wire [6:0] X1_d ;
wire [11:0] Xt_temp ;
wire [11:0] S1 ;
wire [11:0] S2 ;
wire [11:0] S3 ;
wire [11:0] S4 ;
wire [11:0] S5 ;
wire [11:0] S6 ;
wire [11:0] S7 ;
wire [11:0] S8 ;
wire [11:0] S9 ;
wire [7:3] X1 ;
wire [7:3] X2 ;
wire [7:3] X3 ;
wire [7:3] X4 ;
wire [7:3] X5 ;
wire [7:3] X6 ;
wire [7:3] X7 ;
wire [7:3] X8 ;

DFFRQXL X8_reg_7_ ( .D ( X9[7] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X8[7] ) ) ;
DFFRQXL X8_reg_6_ ( .D ( ZBUF_507_3 ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X8[6] ) ) ;
DFFRQXL X8_reg_4_ ( .D ( ZBUF_635_2 ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X8[4] ) ) ;
DFFRQXL X8_reg_3_ ( .D ( ZBUF_659_2 ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X8[3] ) ) ;
DFFRQXL X7_reg_7_ ( .D ( X8[7] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X7[7] ) ) ;
DFFRQXL X6_reg_7_ ( .D ( X7[7] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X6[7] ) ) ;
DFFRQXL X5_reg_7_ ( .D ( X6[7] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X5[7] ) ) ;
DFFRQXL X4_reg_7_ ( .D ( X5[7] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X4[7] ) ) ;
DFFRQXL X3_reg_7_ ( .D ( X4[7] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X3[7] ) ) ;
DFFRQXL X2_reg_7_ ( .D ( X3[7] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X2[7] ) ) ;
DFFRQXL X1_reg_7_ ( .D ( X2[7] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X1[7] ) ) ;
DFFRQXL X7_reg_6_ ( .D ( X8[6] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X7[6] ) ) ;
DFFRQXL X6_reg_6_ ( .D ( X7[6] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X6[6] ) ) ;
DFFRQXL X5_reg_6_ ( .D ( X6[6] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X5[6] ) ) ;
DFFRQXL X4_reg_6_ ( .D ( X5[6] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X4[6] ) ) ;
DFFRQXL X3_reg_6_ ( .D ( X4[6] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X3[6] ) ) ;
DFFRQXL X2_reg_6_ ( .D ( X3[6] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X2[6] ) ) ;
DFFRQXL X1_reg_6_ ( .D ( X2[6] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X1[6] ) ) ;
DFFRQXL X7_reg_5_ ( .D ( X8[5] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X7[5] ) ) ;
DFFRQXL X6_reg_5_ ( .D ( X7[5] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X6[5] ) ) ;
DFFRQXL X5_reg_5_ ( .D ( X6[5] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X5[5] ) ) ;
DFFRQXL X4_reg_5_ ( .D ( X5[5] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X4[5] ) ) ;
DFFRQXL X3_reg_5_ ( .D ( X4[5] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X3[5] ) ) ;
DFFRQXL X2_reg_5_ ( .D ( X3[5] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X2[5] ) ) ;
DFFRQXL X1_reg_5_ ( .D ( X2[5] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X1[5] ) ) ;
DFFRQXL X7_reg_4_ ( .D ( X8[4] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X7[4] ) ) ;
DFFRQXL X6_reg_4_ ( .D ( X7[4] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X6[4] ) ) ;
DFFRQXL X5_reg_4_ ( .D ( X6[4] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X5[4] ) ) ;
DFFRQXL X4_reg_4_ ( .D ( X5[4] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X4[4] ) ) ;
DFFRQXL X3_reg_4_ ( .D ( X4[4] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X3[4] ) ) ;
DFFRQXL X2_reg_4_ ( .D ( X3[4] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X2[4] ) ) ;
DFFRQXL X1_reg_4_ ( .D ( X2[4] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X1[4] ) ) ;
DFFRQXL X7_reg_3_ ( .D ( X8[3] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X7[3] ) ) ;
DFFRQXL X6_reg_3_ ( .D ( X7[3] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X6[3] ) ) ;
DFFRQXL X5_reg_3_ ( .D ( X6[3] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X5[3] ) ) ;
DFFRQXL X4_reg_3_ ( .D ( X5[3] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X4[3] ) ) ;
DFFRQXL X3_reg_3_ ( .D ( X4[3] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X3[3] ) ) ;
DFFRQXL X2_reg_3_ ( .D ( X3[3] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X2[3] ) ) ;
DFFRQXL X1_reg_3_ ( .D ( X2[3] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( X1[3] ) ) ;
DFFRQXL S9_reg_11_ ( .D ( N41 ) , .CK ( clk ) , .RN ( n2225 ) , 
    .Q ( S9[11] ) ) ;
DFFRQXL S9_reg_10_ ( .D ( N40 ) , .CK ( clk ) , .RN ( n2225 ) , 
    .Q ( S9[10] ) ) ;
DFFRQXL S9_reg_9_ ( .D ( N39 ) , .CK ( clk ) , .RN ( n2225 ) , .Q ( S9[9] ) ) ;
DFFRQXL S8_reg_9_ ( .D ( S9[9] ) , .CK ( clk ) , .RN ( n2225 ) , 
    .Q ( S8[9] ) ) ;
DFFRQXL S9_reg_8_ ( .D ( N38 ) , .CK ( clk ) , .RN ( n2225 ) , .Q ( S9[8] ) ) ;
DFFRQXL S9_reg_7_ ( .D ( N37 ) , .CK ( clk ) , .RN ( n2225 ) , .Q ( S9[7] ) ) ;
DFFRQXL S9_reg_6_ ( .D ( N36 ) , .CK ( clk ) , .RN ( n2224 ) , .Q ( S9[6] ) ) ;
DFFRQXL S9_reg_5_ ( .D ( N35 ) , .CK ( clk ) , .RN ( n2224 ) , .Q ( S9[5] ) ) ;
DFFRQXL S9_reg_4_ ( .D ( N34 ) , .CK ( clk ) , .RN ( n2224 ) , .Q ( S9[4] ) ) ;
DFFRQXL S9_reg_3_ ( .D ( N33 ) , .CK ( clk ) , .RN ( n2221 ) , .Q ( S9[3] ) ) ;
DFFRQXL S8_reg_2_ ( .D ( ZBUF_748_2 ) , .CK ( clk ) , .RN ( n2222 ) , 
    .Q ( S8[2] ) ) ;
DFFRQX1 S9_reg_0_ ( .D ( X[0] ) , .CK ( clk ) , .RN ( n2222 ) , .Q ( S9[0] ) ) ;
DFFRQXL S7_reg_11_ ( .D ( S8[11] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S7[11] ) ) ;
DFFRQXL S6_reg_11_ ( .D ( S7[11] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S6[11] ) ) ;
DFFRQXL S5_reg_11_ ( .D ( S6[11] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S5[11] ) ) ;
DFFRQXL S4_reg_11_ ( .D ( S5[11] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S4[11] ) ) ;
DFFRQXL S3_reg_11_ ( .D ( S4[11] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S3[11] ) ) ;
DFFRQXL S2_reg_11_ ( .D ( S3[11] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S2[11] ) ) ;
DFFRQXL S1_reg_11_ ( .D ( S2[11] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S1[11] ) ) ;
DFFRQXL S7_reg_10_ ( .D ( S8[10] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S7[10] ) ) ;
DFFRQXL S6_reg_10_ ( .D ( S7[10] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S6[10] ) ) ;
DFFRQXL S5_reg_10_ ( .D ( S6[10] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S5[10] ) ) ;
DFFRQXL S4_reg_10_ ( .D ( S5[10] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S4[10] ) ) ;
DFFRQXL S3_reg_10_ ( .D ( S4[10] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S3[10] ) ) ;
DFFRQXL S2_reg_10_ ( .D ( S3[10] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S2[10] ) ) ;
DFFRQXL S1_reg_10_ ( .D ( S2[10] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S1[10] ) ) ;
DFFRQXL S7_reg_9_ ( .D ( S8[9] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S7[9] ) ) ;
DFFRQXL S6_reg_9_ ( .D ( S7[9] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S6[9] ) ) ;
DFFRQXL S5_reg_9_ ( .D ( S6[9] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S5[9] ) ) ;
DFFRQXL S4_reg_9_ ( .D ( S5[9] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S4[9] ) ) ;
DFFRQXL S3_reg_9_ ( .D ( S4[9] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S3[9] ) ) ;
DFFRQXL S2_reg_9_ ( .D ( S3[9] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S2[9] ) ) ;
DFFRQXL S6_reg_8_ ( .D ( S7[8] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S6[8] ) ) ;
DFFRQXL S5_reg_8_ ( .D ( S6[8] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S5[8] ) ) ;
DFFRQXL S1_reg_8_ ( .D ( S2[8] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( S1[8] ) ) ;
DFFRQXL S5_reg_0_ ( .D ( S6[0] ) , .CK ( clk ) , .RN ( n2222 ) , 
    .Q ( S5[0] ) ) ;
DFFRQXL S1_reg_0_ ( .D ( S2[0] ) , .CK ( clk ) , .RN ( n2222 ) , 
    .Q ( S1[0] ) ) ;
DFFRQXL Xt_reg_11_ ( .D ( Xt_temp[11] ) , .CK ( clk ) , .RN ( n2223 ) , 
    .Q ( Xt[11] ) ) ;
DFFRQX1 Xt_reg_9_ ( .D ( Xt_temp[9] ) , .CK ( clk ) , .RN ( n2225 ) , 
    .Q ( Xt[9] ) ) ;
DFFRQX1 Xt_reg_8_ ( .D ( Xt_temp[8] ) , .CK ( clk ) , .RN ( n2225 ) , 
    .Q ( Xt[8] ) ) ;
DFFSX2 S6_reg_0_ ( .D ( n2181 ) , .CK ( clk ) , .SN ( n2222 ) , .Q ( n2182 ) , 
    .QN ( S6[0] ) ) ;
DFFSX2 S2_reg_0_ ( .D ( n2193 ) , .CK ( clk ) , .SN ( n2222 ) , .Q ( n2197 ) , 
    .QN ( S2[0] ) ) ;
DFFSX2 S8_reg_8_ ( .D ( n2155 ) , .CK ( clk ) , .SN ( n2225 ) , .Q ( n2170 ) , 
    .QN ( S8[8] ) ) ;
DFFSX2 S7_reg_8_ ( .D ( n2152 ) , .CK ( clk ) , .SN ( n2223 ) , .Q ( n2178 ) , 
    .QN ( S7[8] ) ) ;
DFFSX2 S2_reg_8_ ( .D ( n2191 ) , .CK ( clk ) , .SN ( n2223 ) , .Q ( n2195 ) , 
    .QN ( S2[8] ) ) ;
DFFSX2 S3_reg_8_ ( .D ( n2188 ) , .CK ( clk ) , .SN ( n2223 ) , .Q ( n2191 ) , 
    .QN ( S3[8] ) ) ;
DFFSX2 S7_reg_0_ ( .D ( n2177 ) , .CK ( clk ) , .SN ( n2222 ) , .Q ( n2181 ) , 
    .QN ( S7[0] ) ) ;
DFFSX2 S3_reg_0_ ( .D ( n2190 ) , .CK ( clk ) , .SN ( n2222 ) , .Q ( n2193 ) , 
    .QN ( S3[0] ) ) ;
DFFSX2 S8_reg_0_ ( .D ( n2161 ) , .CK ( clk ) , .SN ( n2222 ) , .Q ( n2177 ) , 
    .QN ( S8[0] ) ) ;
DFFSX2 S4_reg_0_ ( .D ( n2187 ) , .CK ( clk ) , .SN ( n2222 ) , .Q ( n2190 ) , 
    .QN ( S4[0] ) ) ;
DFFSX2 S4_reg_8_ ( .D ( n2183 ) , .CK ( clk ) , .SN ( n2223 ) , .Q ( n2188 ) , 
    .QN ( S4[8] ) ) ;
DFFSX2 Xt_reg_10_ ( .D ( n2151 ) , .CK ( clk ) , .SN ( n2223 ) , 
    .Q ( n2163 ) , .QN ( Xt[10] ) ) ;
DFFSQXL S7_reg_7_ ( .D ( n2171 ) , .CK ( clk ) , .SN ( n2225 ) , 
    .Q ( n2150 ) ) ;
DFFSQXL S7_reg_6_ ( .D ( n2172 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2149 ) ) ;
DFFSQXL S7_reg_5_ ( .D ( n2173 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2148 ) ) ;
DFFSQXL S7_reg_4_ ( .D ( n2174 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2147 ) ) ;
DFFSQXL S7_reg_3_ ( .D ( n2175 ) , .CK ( clk ) , .SN ( n2221 ) , 
    .Q ( n2146 ) ) ;
DFFSQXL S6_reg_7_ ( .D ( n2150 ) , .CK ( clk ) , .SN ( n2225 ) , 
    .Q ( n2145 ) ) ;
DFFSQXL S6_reg_6_ ( .D ( n2149 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2144 ) ) ;
DFFSQXL S6_reg_5_ ( .D ( n2148 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2143 ) ) ;
DFFSQXL S6_reg_3_ ( .D ( n2146 ) , .CK ( clk ) , .SN ( n2221 ) , 
    .Q ( n2142 ) ) ;
DFFSQXL S5_reg_7_ ( .D ( n2145 ) , .CK ( clk ) , .SN ( n2225 ) , 
    .Q ( n2141 ) ) ;
DFFSQXL S5_reg_6_ ( .D ( n2144 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2140 ) ) ;
DFFSQXL S5_reg_5_ ( .D ( n2143 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2139 ) ) ;
DFFSQXL S5_reg_3_ ( .D ( n2142 ) , .CK ( clk ) , .SN ( n2221 ) , 
    .Q ( n2138 ) ) ;
DFFSQXL S4_reg_7_ ( .D ( n2141 ) , .CK ( clk ) , .SN ( n2225 ) , 
    .Q ( n2137 ) ) ;
DFFSQXL S4_reg_6_ ( .D ( n2140 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2136 ) ) ;
DFFSQXL S4_reg_5_ ( .D ( n2139 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2135 ) ) ;
DFFSQXL S4_reg_4_ ( .D ( n2184 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2134 ) ) ;
DFFSQXL S4_reg_3_ ( .D ( n2138 ) , .CK ( clk ) , .SN ( n2221 ) , 
    .Q ( n2133 ) ) ;
DFFSQXL S3_reg_7_ ( .D ( n2137 ) , .CK ( clk ) , .SN ( n2225 ) , 
    .Q ( n2132 ) ) ;
DFFSQXL S3_reg_6_ ( .D ( n2136 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2131 ) ) ;
DFFSQXL S3_reg_5_ ( .D ( n2135 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2130 ) ) ;
DFFSQXL S3_reg_4_ ( .D ( n2134 ) , .CK ( clk ) , .SN ( n2221 ) , 
    .Q ( n2129 ) ) ;
DFFSQXL S3_reg_3_ ( .D ( n2133 ) , .CK ( clk ) , .SN ( n2221 ) , 
    .Q ( n2128 ) ) ;
DFFSQXL S2_reg_7_ ( .D ( n2132 ) , .CK ( clk ) , .SN ( n2225 ) , 
    .Q ( n2127 ) ) ;
DFFSQXL S2_reg_6_ ( .D ( n2131 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2126 ) ) ;
DFFSQXL S2_reg_5_ ( .D ( n2130 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2125 ) ) ;
DFFSQXL S2_reg_4_ ( .D ( n2129 ) , .CK ( clk ) , .SN ( n2221 ) , 
    .Q ( n2124 ) ) ;
DFFSQXL S2_reg_3_ ( .D ( n2128 ) , .CK ( clk ) , .SN ( n2221 ) , 
    .Q ( n2123 ) ) ;
DFFSQXL S1_reg_7_ ( .D ( n2127 ) , .CK ( clk ) , .SN ( n2225 ) , 
    .Q ( n2199 ) ) ;
DFFSQXL S1_reg_6_ ( .D ( n2126 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2200 ) ) ;
DFFSQXL S1_reg_5_ ( .D ( n2125 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2201 ) ) ;
DFFSQXL S1_reg_4_ ( .D ( n2124 ) , .CK ( clk ) , .SN ( n2226 ) , 
    .Q ( n2202 ) ) ;
DFFSQXL S1_reg_3_ ( .D ( n2123 ) , .CK ( clk ) , .SN ( n2221 ) , 
    .Q ( n2203 ) ) ;
DFFSQXL S3_reg_1_ ( .D ( n2189 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2122 ) ) ;
DFFSQXL S1_reg_1_ ( .D ( n2196 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2121 ) ) ;
DFFSQXL S8_reg_1_ ( .D ( n2162 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2120 ) ) ;
DFFSQXL S4_reg_1_ ( .D ( n2186 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2119 ) ) ;
DFFSQXL S2_reg_1_ ( .D ( n2122 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2118 ) ) ;
DFFSQX1 X1_d_reg_1_ ( .D ( n2121 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2169 ) ) ;
DFFSQX2 X1_d_reg_2_ ( .D ( n2204 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2168 ) ) ;
DFFSQXL S6_reg_2_ ( .D ( n2179 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2117 ) ) ;
DFFSQXL S6_reg_1_ ( .D ( n2180 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2116 ) ) ;
DFFSQXL S4_reg_2_ ( .D ( n2185 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2115 ) ) ;
DFFSQXL S2_reg_2_ ( .D ( n2192 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2114 ) ) ;
DFFSQXL S7_reg_2_ ( .D ( n2176 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2113 ) ) ;
DFFSQXL S7_reg_1_ ( .D ( n2120 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2112 ) ) ;
DFFSQXL S5_reg_2_ ( .D ( n2117 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2111 ) ) ;
DFFSQXL S5_reg_1_ ( .D ( n2116 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2110 ) ) ;
DFFSQXL S3_reg_2_ ( .D ( n2115 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2109 ) ) ;
DFFSQXL S1_reg_2_ ( .D ( n2114 ) , .CK ( clk ) , .SN ( n2222 ) , 
    .Q ( n2108 ) ) ;
DFFSQXL S6_reg_4_ ( .D ( n2147 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2107 ) ) ;
DFFSQXL S5_reg_4_ ( .D ( n2107 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2184 ) ) ;
DFFSQXL S8_reg_7_ ( .D ( n2156 ) , .CK ( clk ) , .SN ( n2225 ) , 
    .Q ( n2171 ) ) ;
DFFSQXL S8_reg_6_ ( .D ( n2157 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2172 ) ) ;
DFFSQXL S8_reg_5_ ( .D ( n2158 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2173 ) ) ;
DFFSQXL S8_reg_4_ ( .D ( n2159 ) , .CK ( clk ) , .SN ( n2224 ) , 
    .Q ( n2174 ) ) ;
DFFSQXL S8_reg_3_ ( .D ( n2160 ) , .CK ( clk ) , .SN ( n2221 ) , 
    .Q ( n2175 ) ) ;
DFFSQX1 X1_d_reg_4_ ( .D ( n2106 ) , .CK ( clk ) , .SN ( n2221 ) , 
    .Q ( n2166 ) ) ;
DFFSQX1 X1_d_reg_3_ ( .D ( n2105 ) , .CK ( clk ) , .SN ( n2221 ) , 
    .Q ( n2167 ) ) ;
DFFSQX1 X1_d_reg_7_ ( .D ( n2104 ) , .CK ( clk ) , .SN ( n2226 ) , 
    .Q ( n2164 ) ) ;
DFFSQX1 X1_d_reg_5_ ( .D ( n2103 ) , .CK ( clk ) , .SN ( n2226 ) , 
    .Q ( n2165 ) ) ;
DFFSQXL X8_reg_5_ ( .D ( n2205 ) , .CK ( clk ) , .SN ( n2226 ) , 
    .Q ( n2102 ) ) ;
DFFSQXL S8_reg_11_ ( .D ( n2153 ) , .CK ( clk ) , .SN ( n2223 ) , 
    .Q ( n2101 ) ) ;
DFFSQXL S8_reg_10_ ( .D ( n2154 ) , .CK ( clk ) , .SN ( n2225 ) , 
    .Q ( n2100 ) ) ;
DFFSX2 S1_reg_9_ ( .D ( n2194 ) , .CK ( clk ) , .SN ( n2223 ) , .Q ( n2198 ) , 
    .QN ( S1[9] ) ) ;
INVXL U3 ( .A ( n2100 ) , .Y ( S8[10] ) ) ;
INVXL U4 ( .A ( n2101 ) , .Y ( S8[11] ) ) ;
INVXL U5 ( .A ( n2102 ) , .Y ( X8[5] ) ) ;
INVXL U6 ( .A ( X1[5] ) , .Y ( n2103 ) ) ;
INVXL U7 ( .A ( X1[7] ) , .Y ( n2104 ) ) ;
INVXL U8 ( .A ( X1[3] ) , .Y ( n2105 ) ) ;
INVXL U9 ( .A ( X1[4] ) , .Y ( n2106 ) ) ;
NOR2XL U10 ( .A ( n5 ) , .B ( n4 ) , .Y ( n77 ) ) ;
NOR2XL U12 ( .A ( n7 ) , .B ( n6 ) , .Y ( n72 ) ) ;
NOR2XL U13 ( .A ( n77 ) , .B ( n72 ) , .Y ( n9 ) ) ;
NOR2XL U16 ( .A ( n3 ) , .B ( n2227 ) , .Y ( n85 ) ) ;
NOR2XL U17 ( .A ( ZBUF_75_3 ) , .B ( S9[0] ) , .Y ( n1 ) ) ;
INVXL U18 ( .A ( n1 ) , .Y ( n83 ) ) ;
NAND2XL U19 ( .A ( ZBUF_75_3 ) , .B ( S9[0] ) , .Y ( n82 ) ) ;
INVXL U20 ( .A ( n82 ) , .Y ( n2 ) ) ;
AOI21XL U21 ( .A0 ( n83 ) , .A1 ( X1_d[0] ) , .B0 ( n2 ) , .Y ( n88 ) ) ;
NAND2XL U22 ( .A ( n3 ) , .B ( n2227 ) , .Y ( n86 ) ) ;
OAI21XL U23 ( .A0 ( n85 ) , .A1 ( n88 ) , .B0 ( n86 ) , .Y ( n71 ) ) ;
NAND2XL U24 ( .A ( n5 ) , .B ( n4 ) , .Y ( n78 ) ) ;
NAND2XL U25 ( .A ( n7 ) , .B ( n6 ) , .Y ( n73 ) ) ;
OAI21XL U26 ( .A0 ( n72 ) , .A1 ( n78 ) , .B0 ( n73 ) , .Y ( n8 ) ) ;
AOI21XL U27 ( .A0 ( n9 ) , .A1 ( n71 ) , .B0 ( n8 ) , .Y ( n53 ) ) ;
ADDFX2 U28 ( .A ( ZBUF_390_4 ) , .B ( ZBUF_659_2 ) , .CI ( n2167 ) , 
    .CO ( n11 ) , .S ( n7 ) ) ;
NOR2XL U29 ( .A ( n12 ) , .B ( n11 ) , .Y ( n60 ) ) ;
ADDFX2 U30 ( .A ( ZBUF_331_0 ) , .B ( ZBUF_635_2 ) , .CI ( n2166 ) , 
    .CO ( n13 ) , .S ( n12 ) ) ;
NOR2XL U31 ( .A ( n14 ) , .B ( n13 ) , .Y ( n62 ) ) ;
NOR2XL U32 ( .A ( n60 ) , .B ( n62 ) , .Y ( n55 ) ) ;
INVX1 U33 ( .A ( X1_d[6] ) , .Y ( n1270 ) ) ;
NOR2XL U35 ( .A ( n16 ) , .B ( n15 ) , .Y ( n10 ) ) ;
INVXL U36 ( .A ( n10 ) , .Y ( n57 ) ) ;
NAND2XL U37 ( .A ( n55 ) , .B ( n57 ) , .Y ( n19 ) ) ;
NAND2XL U38 ( .A ( n12 ) , .B ( n11 ) , .Y ( n67 ) ) ;
NAND2XL U39 ( .A ( n14 ) , .B ( n13 ) , .Y ( n63 ) ) ;
OAI21XL U40 ( .A0 ( n62 ) , .A1 ( n67 ) , .B0 ( n63 ) , .Y ( n54 ) ) ;
NAND2XL U41 ( .A ( n16 ) , .B ( n15 ) , .Y ( n56 ) ) ;
INVXL U42 ( .A ( n56 ) , .Y ( n17 ) ) ;
AOI21XL U43 ( .A0 ( n54 ) , .A1 ( n57 ) , .B0 ( n17 ) , .Y ( n18 ) ) ;
OAI21XL U44 ( .A0 ( n53 ) , .A1 ( n19 ) , .B0 ( n18 ) , .Y ( n52 ) ) ;
NOR2XL U46 ( .A ( n22 ) , .B ( n21 ) , .Y ( n20 ) ) ;
INVXL U47 ( .A ( n20 ) , .Y ( n50 ) ) ;
NAND2XL U48 ( .A ( n22 ) , .B ( n21 ) , .Y ( n49 ) ) ;
INVXL U49 ( .A ( n49 ) , .Y ( n23 ) ) ;
AOI21XL U50 ( .A0 ( n52 ) , .A1 ( n50 ) , .B0 ( n23 ) , .Y ( n48 ) ) ;
INVXL U52 ( .A ( Xt[8] ) , .Y ( n24 ) ) ;
NOR2XL U53 ( .A ( n25 ) , .B ( n24 ) , .Y ( n44 ) ) ;
NAND2XL U54 ( .A ( n25 ) , .B ( n24 ) , .Y ( n45 ) ) ;
OAI21XL U55 ( .A0 ( n48 ) , .A1 ( n44 ) , .B0 ( n45 ) , .Y ( n43 ) ) ;
INVXL U56 ( .A ( Xt[9] ) , .Y ( n27 ) ) ;
NOR2XL U57 ( .A ( n27 ) , .B ( Xt[8] ) , .Y ( n26 ) ) ;
NAND2XL U59 ( .A ( n27 ) , .B ( Xt[8] ) , .Y ( n4000 ) ) ;
INVXL U60 ( .A ( n4000 ) , .Y ( n28 ) ) ;
AOI21XL U61 ( .A0 ( n43 ) , .A1 ( n4100 ) , .B0 ( n28 ) , .Y ( n3300 ) ) ;
NOR2XL U62 ( .A ( n2163 ) , .B ( Xt[9] ) , .Y ( n32 ) ) ;
INVXL U63 ( .A ( n32 ) , .Y ( n29 ) ) ;
NAND2XL U64 ( .A ( n2163 ) , .B ( Xt[9] ) , .Y ( n31 ) ) ;
NAND2XL U65 ( .A ( n29 ) , .B ( n31 ) , .Y ( n30 ) ) ;
INVXL U67 ( .A ( n2017 ) , .Y ( n2151 ) ) ;
INVXL U68 ( .A ( S8[8] ) , .Y ( n2152 ) ) ;
OAI21XL U69 ( .A0 ( n3300 ) , .A1 ( n32 ) , .B0 ( n31 ) , .Y ( n3900 ) ) ;
INVXL U70 ( .A ( Xt[11] ) , .Y ( n3500 ) ) ;
NOR2XL U71 ( .A ( n3500 ) , .B ( Xt[10] ) , .Y ( n3400 ) ) ;
NAND2XL U73 ( .A ( n3500 ) , .B ( Xt[10] ) , .Y ( n3600 ) ) ;
NAND2XL U74 ( .A ( n3700 ) , .B ( n3600 ) , .Y ( n3800 ) ) ;
INVXL U76 ( .A ( S9[11] ) , .Y ( n2153 ) ) ;
INVXL U77 ( .A ( S9[10] ) , .Y ( n2154 ) ) ;
NAND2XL U78 ( .A ( n4100 ) , .B ( n4000 ) , .Y ( n42 ) ) ;
INVXL U80 ( .A ( n44 ) , .Y ( n46 ) ) ;
NAND2XL U81 ( .A ( n46 ) , .B ( n45 ) , .Y ( n47 ) ) ;
INVXL U83 ( .A ( S9[8] ) , .Y ( n2155 ) ) ;
NAND2XL U84 ( .A ( n50 ) , .B ( n49 ) , .Y ( n51 ) ) ;
INVXL U86 ( .A ( S9[7] ) , .Y ( n2156 ) ) ;
AOI21XL U88 ( .A0 ( n70 ) , .A1 ( n55 ) , .B0 ( n54 ) , .Y ( n59 ) ) ;
NAND2XL U89 ( .A ( n57 ) , .B ( n56 ) , .Y ( n58 ) ) ;
INVXL U91 ( .A ( S9[6] ) , .Y ( n2157 ) ) ;
INVXL U92 ( .A ( n60 ) , .Y ( n68 ) ) ;
INVXL U93 ( .A ( n67 ) , .Y ( n61 ) ) ;
AOI21XL U94 ( .A0 ( n70 ) , .A1 ( n68 ) , .B0 ( n61 ) , .Y ( n66 ) ) ;
INVXL U95 ( .A ( n62 ) , .Y ( n64 ) ) ;
NAND2XL U96 ( .A ( n64 ) , .B ( n63 ) , .Y ( n65 ) ) ;
INVXL U98 ( .A ( S9[5] ) , .Y ( n2158 ) ) ;
NAND2XL U99 ( .A ( n68 ) , .B ( n67 ) , .Y ( n69 ) ) ;
INVXL U101 ( .A ( S9[4] ) , .Y ( n2159 ) ) ;
INVXL U102 ( .A ( n71 ) , .Y ( n81 ) ) ;
OAI21XL U103 ( .A0 ( n81 ) , .A1 ( n77 ) , .B0 ( n78 ) , .Y ( n76 ) ) ;
INVXL U104 ( .A ( n72 ) , .Y ( n74 ) ) ;
NAND2XL U105 ( .A ( n74 ) , .B ( n73 ) , .Y ( n75 ) ) ;
INVXL U107 ( .A ( S9[3] ) , .Y ( n2160 ) ) ;
INVXL U108 ( .A ( n77 ) , .Y ( n79 ) ) ;
NAND2XL U109 ( .A ( n79 ) , .B ( n78 ) , .Y ( n80 ) ) ;
NAND2XL U111 ( .A ( n83 ) , .B ( n82 ) , .Y ( n84 ) ) ;
INVXL U113 ( .A ( S9[0] ) , .Y ( n2161 ) ) ;
INVXL U114 ( .A ( n85 ) , .Y ( n87 ) ) ;
NAND2XL U115 ( .A ( n87 ) , .B ( n86 ) , .Y ( n89 ) ) ;
INVXL U117 ( .A ( S9[1] ) , .Y ( n2162 ) ) ;
INVXL U118 ( .A ( S8[2] ) , .Y ( n2176 ) ) ;
CLKINVX1 U119 ( .A ( n2113 ) , .Y ( n1911 ) ) ;
INVX1 U120 ( .A ( n1911 ) , .Y ( n2179 ) ) ;
INVXL U121 ( .A ( n2112 ) , .Y ( n1930 ) ) ;
INVXL U122 ( .A ( n1930 ) , .Y ( n2180 ) ) ;
INVXL U123 ( .A ( S5[8] ) , .Y ( n2183 ) ) ;
INVXL U124 ( .A ( n2111 ) , .Y ( n1909 ) ) ;
INVXL U125 ( .A ( n1909 ) , .Y ( n2185 ) ) ;
INVXL U126 ( .A ( n2110 ) , .Y ( n1928 ) ) ;
INVXL U127 ( .A ( n1928 ) , .Y ( n2186 ) ) ;
INVXL U128 ( .A ( S5[0] ) , .Y ( n2187 ) ) ;
INVXL U129 ( .A ( n2119 ) , .Y ( n1935 ) ) ;
INVXL U130 ( .A ( n1935 ) , .Y ( n2189 ) ) ;
INVXL U131 ( .A ( n2109 ) , .Y ( n1912 ) ) ;
INVXL U132 ( .A ( n1912 ) , .Y ( n2192 ) ) ;
INVXL U133 ( .A ( S2[9] ) , .Y ( n2194 ) ) ;
INVXL U134 ( .A ( n2118 ) , .Y ( n1933 ) ) ;
INVXL U135 ( .A ( n1933 ) , .Y ( n2196 ) ) ;
INVXL U136 ( .A ( n2108 ) , .Y ( n1914 ) ) ;
INVXL U137 ( .A ( n1914 ) , .Y ( n2204 ) ) ;
OR2X6 U143 ( .A ( S9[1] ) , .B ( Xt[1] ) , .Y ( n1244 ) ) ;
NOR2XL U148 ( .A ( n95 ) , .B ( n1171 ) , .Y ( n94 ) ) ;
INVXL U149 ( .A ( n94 ) , .Y ( n267 ) ) ;
NOR2XL U150 ( .A ( n2187 ) , .B ( n2227 ) , .Y ( n270 ) ) ;
ADDHX4 U151 ( .A ( ZBUF_75_3 ) , .B ( S9[0] ) , .CO ( n1245 ) , .S ( n1397 ) ) ;
NAND2XL U153 ( .A ( n2187 ) , .B ( n2227 ) , .Y ( n271 ) ) ;
NAND2XL U155 ( .A ( n95 ) , .B ( n1171 ) , .Y ( n266 ) ) ;
INVXL U156 ( .A ( n266 ) , .Y ( n96 ) ) ;
NAND2X1 U161 ( .A ( n99 ) , .B ( n98 ) , .Y ( n258 ) ) ;
NAND2XL U164 ( .A ( n103 ) , .B ( n102 ) , .Y ( n241 ) ) ;
BUFX8 ZBUF_46_inst_2631 ( .A ( n2024 ) , .Y ( ZBUF_46_0 ) ) ;
NOR2X1 U172 ( .A ( n119 ) , .B ( n118 ) , .Y ( n225 ) ) ;
INVXL U179 ( .A ( n217 ) , .Y ( n117 ) ) ;
NOR2XL U185 ( .A ( n117 ) , .B ( n218 ) , .Y ( n126 ) ) ;
CLKNAND2X2 U187 ( .A ( n121 ) , .B ( n120 ) , .Y ( n228 ) ) ;
INVXL U189 ( .A ( n216 ) , .Y ( n124 ) ) ;
NAND2XL U190 ( .A ( n123 ) , .B ( n122 ) , .Y ( n219 ) ) ;
OAI21XL U191 ( .A0 ( n124 ) , .A1 ( n218 ) , .B0 ( n219 ) , .Y ( n125 ) ) ;
AOI21X1 U192 ( .A0 ( n297 ) , .A1 ( n126 ) , .B0 ( n125 ) , .Y ( n134 ) ) ;
INVXL U196 ( .A ( n185 ) , .Y ( n132 ) ) ;
NAND2XL U197 ( .A ( n131 ) , .B ( n130 ) , .Y ( n184 ) ) ;
NAND2XL U198 ( .A ( n132 ) , .B ( n184 ) , .Y ( n133 ) ) ;
INVX1 U200 ( .A ( n339 ) , .Y ( n794 ) ) ;
INVXL U205 ( .A ( n2117 ) , .Y ( n1910 ) ) ;
INVXL U206 ( .A ( n1910 ) , .Y ( n140 ) ) ;
INVXL U213 ( .A ( n2116 ) , .Y ( n1929 ) ) ;
INVXL U214 ( .A ( n1929 ) , .Y ( n145 ) ) ;
NOR2X2 U215 ( .A ( n142 ) , .B ( n1171 ) , .Y ( n141 ) ) ;
CLKINVX2 U216 ( .A ( n141 ) , .Y ( n263 ) ) ;
NOR2XL U217 ( .A ( n2182 ) , .B ( n2227 ) , .Y ( n274 ) ) ;
NAND2XL U218 ( .A ( n2182 ) , .B ( n2227 ) , .Y ( n275 ) ) ;
CLKNAND2X2 U220 ( .A ( n142 ) , .B ( n1171 ) , .Y ( n262 ) ) ;
INVXL U221 ( .A ( n262 ) , .Y ( n143 ) ) ;
NAND2X1 U226 ( .A ( n147 ) , .B ( n146 ) , .Y ( n253 ) ) ;
NAND2X1 U229 ( .A ( n151 ) , .B ( n150 ) , .Y ( n248 ) ) ;
NOR2X2 U237 ( .A ( n168 ) , .B ( n167 ) , .Y ( n232 ) ) ;
INVXL U244 ( .A ( n210 ) , .Y ( n166 ) ) ;
NOR2XL U250 ( .A ( n166 ) , .B ( n211 ) , .Y ( n175 ) ) ;
NAND2XL U252 ( .A ( n170 ) , .B ( n169 ) , .Y ( n235 ) ) ;
INVXL U254 ( .A ( n209 ) , .Y ( n173 ) ) ;
NAND2XL U255 ( .A ( n172 ) , .B ( n171 ) , .Y ( n212 ) ) ;
OAI21X1 U256 ( .A0 ( n173 ) , .A1 ( n211 ) , .B0 ( n212 ) , .Y ( n174 ) ) ;
NOR2X2 U260 ( .A ( n180 ) , .B ( n179 ) , .Y ( n197 ) ) ;
INVXL U261 ( .A ( n197 ) , .Y ( n181 ) ) ;
NAND2XL U262 ( .A ( n180 ) , .B ( n179 ) , .Y ( n196 ) ) ;
NAND2X2 U263 ( .A ( n181 ) , .B ( n196 ) , .Y ( n182 ) ) ;
NAND2XL U266 ( .A ( n217 ) , .B ( n187 ) , .Y ( n189 ) ) ;
NOR2XL U271 ( .A ( n194 ) , .B ( n193 ) , .Y ( n192 ) ) ;
INVXL U272 ( .A ( n192 ) , .Y ( n374 ) ) ;
NAND2XL U273 ( .A ( n194 ) , .B ( n193 ) , .Y ( n308 ) ) ;
NAND2XL U274 ( .A ( n374 ) , .B ( n308 ) , .Y ( n195 ) ) ;
INVXL U276 ( .A ( n779 ) , .Y ( n208 ) ) ;
NOR2X1 U277 ( .A ( n211 ) , .B ( n197 ) , .Y ( n199 ) ) ;
NAND2XL U278 ( .A ( n210 ) , .B ( n199 ) , .Y ( n201 ) ) ;
OAI21XL U279 ( .A0 ( n197 ) , .A1 ( n212 ) , .B0 ( n196 ) , .Y ( n198 ) ) ;
INVXL U283 ( .A ( S6[8] ) , .Y ( n345 ) ) ;
INVXL U285 ( .A ( n204 ) , .Y ( n351 ) ) ;
NAND2XL U286 ( .A ( n206 ) , .B ( n205 ) , .Y ( n344 ) ) ;
NAND2XL U287 ( .A ( n351 ) , .B ( n344 ) , .Y ( n207 ) ) ;
INVXL U291 ( .A ( n211 ) , .Y ( n213 ) ) ;
NAND2XL U292 ( .A ( n213 ) , .B ( n212 ) , .Y ( n214 ) ) ;
INVXL U294 ( .A ( n327 ) , .Y ( n771 ) ) ;
AOI21XL U295 ( .A0 ( n297 ) , .A1 ( n217 ) , .B0 ( n216 ) , .Y ( n222 ) ) ;
INVXL U296 ( .A ( n218 ) , .Y ( n220 ) ) ;
NAND2XL U297 ( .A ( n220 ) , .B ( n219 ) , .Y ( n221 ) ) ;
NAND2XL U299 ( .A ( n771 ) , .B ( n769 ) , .Y ( n223 ) ) ;
INVXL U301 ( .A ( n225 ) , .Y ( n295 ) ) ;
INVXL U302 ( .A ( n294 ) , .Y ( n226 ) ) ;
INVXL U304 ( .A ( n227 ) , .Y ( n229 ) ) ;
NAND2XL U305 ( .A ( n229 ) , .B ( n228 ) , .Y ( n230 ) ) ;
INVXL U307 ( .A ( n232 ) , .Y ( n299 ) ) ;
INVXL U308 ( .A ( n298 ) , .Y ( n233 ) ) ;
AOI21X1 U309 ( .A0 ( n301 ) , .A1 ( n299 ) , .B0 ( n233 ) , .Y ( n238 ) ) ;
INVXL U310 ( .A ( n234 ) , .Y ( n236 ) ) ;
NAND2XL U311 ( .A ( n236 ) , .B ( n235 ) , .Y ( n237 ) ) ;
INVXL U315 ( .A ( n240 ) , .Y ( n242 ) ) ;
NAND2XL U316 ( .A ( n242 ) , .B ( n241 ) , .Y ( n243 ) ) ;
INVXL U319 ( .A ( n246 ) , .Y ( n285 ) ) ;
INVXL U321 ( .A ( n247 ) , .Y ( n249 ) ) ;
NAND2X2 U322 ( .A ( n249 ) , .B ( n248 ) , .Y ( n250 ) ) ;
NAND2XL U325 ( .A ( n254 ) , .B ( n253 ) , .Y ( n256 ) ) ;
INVXL U327 ( .A ( n257 ) , .Y ( n259 ) ) ;
NAND2XL U328 ( .A ( n259 ) , .B ( n258 ) , .Y ( n261 ) ) ;
NAND2XL U330 ( .A ( n263 ) , .B ( n262 ) , .Y ( n265 ) ) ;
NAND2XL U332 ( .A ( n267 ) , .B ( n266 ) , .Y ( n269 ) ) ;
XNOR2XL U333 ( .A ( n269 ) , .B ( n268 ) , .Y ( n278 ) ) ;
INVXL U335 ( .A ( n270 ) , .Y ( n272 ) ) ;
NAND2XL U336 ( .A ( n272 ) , .B ( n271 ) , .Y ( n273 ) ) ;
INVXL U338 ( .A ( n274 ) , .Y ( n276 ) ) ;
NAND2XL U339 ( .A ( n276 ) , .B ( n275 ) , .Y ( n277 ) ) ;
INVXL U341 ( .A ( n1598 ) , .Y ( n743 ) ) ;
OAI2B2XL U342 ( .A1N ( n388 ) , .A0 ( n278 ) , .B0 ( n1599 ) , .B1 ( n743 ) , 
    .Y ( n279 ) ) ;
OAI21XL U343 ( .A0 ( n388 ) , .A1 ( n399 ) , .B0 ( n279 ) , .Y ( n280 ) ) ;
INVXL U345 ( .A ( n281 ) , .Y ( n283 ) ) ;
NAND2XL U346 ( .A ( n283 ) , .B ( n282 ) , .Y ( n284 ) ) ;
INVXL U349 ( .A ( n286 ) , .Y ( n288 ) ) ;
NAND2XL U350 ( .A ( n288 ) , .B ( n287 ) , .Y ( n289 ) ) ;
INVXL U352 ( .A ( n293 ) , .Y ( n731 ) ) ;
OAI21XL U353 ( .A0 ( n291 ) , .A1 ( n729 ) , .B0 ( n731 ) , .Y ( n304 ) ) ;
NOR2BXL U354 ( .AN ( n757 ) , .B ( n732 ) , .Y ( n292 ) ) ;
OAI2B1XL U355 ( .A1N ( n293 ) , .A0 ( n729 ) , .B0 ( n292 ) , .Y ( n303 ) ) ;
NAND2XL U356 ( .A ( n295 ) , .B ( n294 ) , .Y ( n296 ) ) ;
CLKINVX1 U358 ( .A ( n331 ) , .Y ( n805 ) ) ;
NAND2XL U359 ( .A ( n299 ) , .B ( n298 ) , .Y ( n300 ) ) ;
INVXL U363 ( .A ( S5[9] ) , .Y ( n316 ) ) ;
ADDFX1 U364 ( .A ( Xt[9] ) , .B ( S5[9] ) , .CI ( n2183 ) , .CO ( n309 ) , 
    .S ( n193 ) ) ;
INVXL U366 ( .A ( n306 ) , .Y ( n377 ) ) ;
NAND2XL U367 ( .A ( n374 ) , .B ( n377 ) , .Y ( n307 ) ) ;
INVXL U369 ( .A ( n308 ) , .Y ( n373 ) ) ;
NAND2XL U370 ( .A ( n310 ) , .B ( n309 ) , .Y ( n376 ) ) ;
INVXL U371 ( .A ( n376 ) , .Y ( n311 ) ) ;
AOI21XL U372 ( .A0 ( n373 ) , .A1 ( n377 ) , .B0 ( n311 ) , .Y ( n312 ) ) ;
INVXL U373 ( .A ( n312 ) , .Y ( n313 ) ) ;
INVXL U375 ( .A ( S5[10] ) , .Y ( n315 ) ) ;
ADDFHXL U377 ( .A ( Xt[10] ) , .B ( S5[10] ) , .CI ( n316 ) , .CO ( n318 ) , 
    .S ( n310 ) ) ;
NOR2XL U378 ( .A ( n319 ) , .B ( n318 ) , .Y ( n317 ) ) ;
NAND2XL U380 ( .A ( n319 ) , .B ( n318 ) , .Y ( n320 ) ) ;
NAND2XL U381 ( .A ( n321 ) , .B ( n320 ) , .Y ( n322 ) ) ;
INVX1 U383 ( .A ( n809 ) , .Y ( n341 ) ) ;
OAI2B11X2 U384 ( .A1N ( n787 ) , .A0 ( n3301 ) , .B0 ( n324 ) , .C0 ( n341 ) , 
    .Y ( n382 ) ) ;
NOR2BXL U385 ( .AN ( n329 ) , .B ( n331 ) , .Y ( n325 ) ) ;
NAND2XL U386 ( .A ( n3301 ) , .B ( n325 ) , .Y ( n326 ) ) ;
NAND2XL U388 ( .A ( n328 ) , .B ( n341 ) , .Y ( n335 ) ) ;
INVXL U389 ( .A ( n329 ) , .Y ( n806 ) ) ;
NAND2XL U393 ( .A ( n333 ) , .B ( n332 ) , .Y ( n334 ) ) ;
CLKNAND2X2 U396 ( .A ( n381 ) , .B ( n384 ) , .Y ( n372 ) ) ;
NOR2X1 U397 ( .A ( n809 ) , .B ( n779 ) , .Y ( n337 ) ) ;
INVX2 U398 ( .A ( n778 ) , .Y ( n338 ) ) ;
NAND2X2 U399 ( .A ( n339 ) , .B ( n338 ) , .Y ( n336 ) ) ;
NOR2XL U401 ( .A ( n339 ) , .B ( n338 ) , .Y ( n3401 ) ) ;
NAND3X2 U402 ( .A ( n341 ) , .B ( n792 ) , .C ( n3401 ) , .Y ( n342 ) ) ;
INVXL U404 ( .A ( n344 ) , .Y ( n356 ) ) ;
AOI21XL U405 ( .A0 ( n3601 ) , .A1 ( n351 ) , .B0 ( n356 ) , .Y ( n3501 ) ) ;
INVXL U406 ( .A ( S6[9] ) , .Y ( n362 ) ) ;
ADDFX1 U407 ( .A ( Xt[9] ) , .B ( S6[9] ) , .CI ( n345 ) , .CO ( n347 ) , 
    .S ( n205 ) ) ;
NOR2XL U408 ( .A ( n348 ) , .B ( n347 ) , .Y ( n346 ) ) ;
NAND2XL U410 ( .A ( n348 ) , .B ( n347 ) , .Y ( n353 ) ) ;
NAND2XL U411 ( .A ( n355 ) , .B ( n353 ) , .Y ( n349 ) ) ;
XOR2X1 U412 ( .A ( n3501 ) , .B ( n349 ) , .Y ( n3701 ) ) ;
NAND2XL U413 ( .A ( n351 ) , .B ( n355 ) , .Y ( n352 ) ) ;
INVXL U415 ( .A ( n353 ) , .Y ( n354 ) ) ;
AOI21XL U416 ( .A0 ( n356 ) , .A1 ( n355 ) , .B0 ( n354 ) , .Y ( n357 ) ) ;
INVXL U417 ( .A ( n357 ) , .Y ( n358 ) ) ;
INVXL U419 ( .A ( S6[10] ) , .Y ( n361 ) ) ;
ADDFHXL U421 ( .A ( Xt[10] ) , .B ( S6[10] ) , .CI ( n362 ) , .CO ( n364 ) , 
    .S ( n348 ) ) ;
NOR2XL U422 ( .A ( n365 ) , .B ( n364 ) , .Y ( n363 ) ) ;
NAND2XL U424 ( .A ( n365 ) , .B ( n364 ) , .Y ( n366 ) ) ;
NAND2X2 U425 ( .A ( n367 ) , .B ( n366 ) , .Y ( n368 ) ) ;
INVX2 U427 ( .A ( n808 ) , .Y ( n744 ) ) ;
NOR2X1 U429 ( .A ( n389 ) , .B ( n3901 ) , .Y ( n371 ) ) ;
AOI21XL U431 ( .A0 ( n375 ) , .A1 ( n374 ) , .B0 ( n373 ) , .Y ( n379 ) ) ;
NAND2XL U432 ( .A ( n377 ) , .B ( n376 ) , .Y ( n378 ) ) ;
NAND2X3 U435 ( .A ( n3801 ) , .B ( n394 ) , .Y ( n781 ) ) ;
INVXL U437 ( .A ( n389 ) , .Y ( n383 ) ) ;
NAND2X2 U438 ( .A ( n391 ) , .B ( n383 ) , .Y ( n386 ) ) ;
INVX2 U442 ( .A ( n772 ) , .Y ( n387 ) ) ;
INVXL U444 ( .A ( n388 ) , .Y ( n4001 ) ) ;
INVXL U448 ( .A ( n394 ) , .Y ( n395 ) ) ;
CLKNAND2X2 U449 ( .A ( n395 ) , .B ( n812 ) , .Y ( n396 ) ) ;
INVXL U453 ( .A ( n750 ) , .Y ( n850 ) ) ;
INVXL U460 ( .A ( n2120 ) , .Y ( n1931 ) ) ;
INVXL U461 ( .A ( n1931 ) , .Y ( n407 ) ) ;
NOR2X2 U462 ( .A ( n404 ) , .B ( n1171 ) , .Y ( n403 ) ) ;
INVX1 U463 ( .A ( n403 ) , .Y ( n458 ) ) ;
NOR2XL U464 ( .A ( n2177 ) , .B ( n2227 ) , .Y ( n626 ) ) ;
NAND2XL U465 ( .A ( n2177 ) , .B ( n2227 ) , .Y ( n627 ) ) ;
NAND2X1 U467 ( .A ( n404 ) , .B ( n1171 ) , .Y ( n457 ) ) ;
INVX2 U468 ( .A ( n457 ) , .Y ( n405 ) ) ;
CLKNAND2X2 U473 ( .A ( n409 ) , .B ( n408 ) , .Y ( n609 ) ) ;
NAND2X1 U476 ( .A ( n413 ) , .B ( n412 ) , .Y ( n599 ) ) ;
NAND2X2 U493 ( .A ( n522 ) , .B ( n433 ) , .Y ( n435 ) ) ;
NAND2XL U495 ( .A ( n427 ) , .B ( n426 ) , .Y ( n586 ) ) ;
NAND2XL U497 ( .A ( n429 ) , .B ( n428 ) , .Y ( n524 ) ) ;
NAND2XL U498 ( .A ( n431 ) , .B ( n430 ) , .Y ( n467 ) ) ;
OAI21X1 U499 ( .A0 ( n466 ) , .A1 ( n524 ) , .B0 ( n467 ) , .Y ( n432 ) ) ;
INVX1 U504 ( .A ( n437 ) , .Y ( n568 ) ) ;
INVXL U505 ( .A ( S8[9] ) , .Y ( n449 ) ) ;
ADDFX1 U506 ( .A ( Xt[9] ) , .B ( S8[9] ) , .CI ( n2170 ) , .CO ( n442 ) , 
    .S ( n440 ) ) ;
NOR2XL U507 ( .A ( n443 ) , .B ( n442 ) , .Y ( n438 ) ) ;
INVXL U508 ( .A ( n438 ) , .Y ( n571 ) ) ;
NAND2XL U509 ( .A ( n568 ) , .B ( n571 ) , .Y ( n439 ) ) ;
CLKNAND2X2 U511 ( .A ( n441 ) , .B ( n440 ) , .Y ( n545 ) ) ;
INVXL U512 ( .A ( n545 ) , .Y ( n567 ) ) ;
NAND2XL U513 ( .A ( n443 ) , .B ( n442 ) , .Y ( n570 ) ) ;
INVXL U514 ( .A ( n570 ) , .Y ( n444 ) ) ;
AOI21XL U515 ( .A0 ( n567 ) , .A1 ( n571 ) , .B0 ( n444 ) , .Y ( n445 ) ) ;
INVXL U516 ( .A ( n445 ) , .Y ( n446 ) ) ;
AOI21XL U517 ( .A0 ( n569 ) , .A1 ( n447 ) , .B0 ( n446 ) , .Y ( n456 ) ) ;
INVXL U518 ( .A ( S8[10] ) , .Y ( n448 ) ) ;
ADDFHXL U520 ( .A ( Xt[10] ) , .B ( S8[10] ) , .CI ( n449 ) , .CO ( n451 ) , 
    .S ( n443 ) ) ;
NOR2XL U521 ( .A ( n452 ) , .B ( n451 ) , .Y ( n450 ) ) ;
NAND2XL U523 ( .A ( n452 ) , .B ( n451 ) , .Y ( n453 ) ) ;
NAND2XL U524 ( .A ( n454 ) , .B ( n453 ) , .Y ( n455 ) ) ;
NOR2XL U528 ( .A ( n815 ) , .B ( n631 ) , .Y ( n703 ) ) ;
INVXL U530 ( .A ( n522 ) , .Y ( n462 ) ) ;
NOR2XL U531 ( .A ( n462 ) , .B ( n523 ) , .Y ( n465 ) ) ;
INVXL U532 ( .A ( n521 ) , .Y ( n463 ) ) ;
OAI21XL U533 ( .A0 ( n463 ) , .A1 ( n523 ) , .B0 ( n524 ) , .Y ( n464 ) ) ;
INVXL U535 ( .A ( n466 ) , .Y ( n468 ) ) ;
NAND2XL U536 ( .A ( n468 ) , .B ( n467 ) , .Y ( n469 ) ) ;
NOR2X2 U548 ( .A ( n658 ) , .B ( n656 ) , .Y ( n487 ) ) ;
NOR2XL U549 ( .A ( n477 ) , .B ( n1171 ) , .Y ( n476 ) ) ;
CLKINVX2 U550 ( .A ( n476 ) , .Y ( n619 ) ) ;
NOR2XL U551 ( .A ( n2181 ) , .B ( n2227 ) , .Y ( n622 ) ) ;
NAND2XL U552 ( .A ( n2181 ) , .B ( n2227 ) , .Y ( n623 ) ) ;
NAND2X2 U554 ( .A ( n477 ) , .B ( n1171 ) , .Y ( n618 ) ) ;
CLKINVX2 U555 ( .A ( n618 ) , .Y ( n478 ) ) ;
NAND2X1 U560 ( .A ( n481 ) , .B ( n480 ) , .Y ( n614 ) ) ;
NAND2X2 U563 ( .A ( n485 ) , .B ( n484 ) , .Y ( n659 ) ) ;
INVXL U578 ( .A ( n530 ) , .Y ( n500 ) ) ;
NOR2XL U584 ( .A ( n500 ) , .B ( n529 ) , .Y ( n509 ) ) ;
CLKNAND2X2 U586 ( .A ( n504 ) , .B ( n503 ) , .Y ( n593 ) ) ;
INVXL U588 ( .A ( n535 ) , .Y ( n507 ) ) ;
NAND2X1 U589 ( .A ( n506 ) , .B ( n505 ) , .Y ( n532 ) ) ;
OAI21XL U590 ( .A0 ( n507 ) , .A1 ( n529 ) , .B0 ( n532 ) , .Y ( n508 ) ) ;
INVXL U595 ( .A ( n533 ) , .Y ( n515 ) ) ;
NAND2XL U596 ( .A ( n514 ) , .B ( n513 ) , .Y ( n531 ) ) ;
NAND2X2 U597 ( .A ( n515 ) , .B ( n531 ) , .Y ( n516 ) ) ;
AOI21X1 U599 ( .A0 ( n639 ) , .A1 ( n530 ) , .B0 ( n535 ) , .Y ( n520 ) ) ;
INVXL U600 ( .A ( n529 ) , .Y ( n518 ) ) ;
NAND2XL U601 ( .A ( n518 ) , .B ( n532 ) , .Y ( n519 ) ) ;
INVXL U603 ( .A ( n768 ) , .Y ( n528 ) ) ;
AOI21X1 U604 ( .A0 ( n643 ) , .A1 ( n522 ) , .B0 ( n521 ) , .Y ( n527 ) ) ;
INVXL U605 ( .A ( n523 ) , .Y ( n525 ) ) ;
NAND2XL U606 ( .A ( n525 ) , .B ( n524 ) , .Y ( n526 ) ) ;
NAND2X1 U608 ( .A ( n528 ) , .B ( n767 ) , .Y ( n547 ) ) ;
NOR2X1 U609 ( .A ( n529 ) , .B ( n533 ) , .Y ( n536 ) ) ;
CLKNAND2X2 U610 ( .A ( n530 ) , .B ( n536 ) , .Y ( n538 ) ) ;
OAI21XL U611 ( .A0 ( n533 ) , .A1 ( n532 ) , .B0 ( n531 ) , .Y ( n534 ) ) ;
NOR2XL U615 ( .A ( n543 ) , .B ( n542 ) , .Y ( n541 ) ) ;
INVXL U616 ( .A ( n541 ) , .Y ( n575 ) ) ;
NAND2XL U617 ( .A ( n543 ) , .B ( n542 ) , .Y ( n550 ) ) ;
CLKNAND2X2 U618 ( .A ( n575 ) , .B ( n550 ) , .Y ( n544 ) ) ;
CLKINVX2 U620 ( .A ( n777 ) , .Y ( n678 ) ) ;
INVXL U625 ( .A ( S7[9] ) , .Y ( n558 ) ) ;
ADDFX1 U626 ( .A ( Xt[9] ) , .B ( S7[9] ) , .CI ( n2178 ) , .CO ( n551 ) , 
    .S ( n542 ) ) ;
NOR2XL U627 ( .A ( n552 ) , .B ( n551 ) , .Y ( n548 ) ) ;
INVXL U628 ( .A ( n548 ) , .Y ( n578 ) ) ;
NAND2XL U629 ( .A ( n575 ) , .B ( n578 ) , .Y ( n549 ) ) ;
INVXL U631 ( .A ( n550 ) , .Y ( n574 ) ) ;
NAND2XL U632 ( .A ( n552 ) , .B ( n551 ) , .Y ( n577 ) ) ;
INVXL U633 ( .A ( n577 ) , .Y ( n553 ) ) ;
AOI21XL U634 ( .A0 ( n574 ) , .A1 ( n578 ) , .B0 ( n553 ) , .Y ( n554 ) ) ;
INVXL U635 ( .A ( n554 ) , .Y ( n555 ) ) ;
INVXL U637 ( .A ( S7[10] ) , .Y ( n557 ) ) ;
ADDFHXL U639 ( .A ( Xt[10] ) , .B ( S7[10] ) , .CI ( n558 ) , .CO ( n560 ) , 
    .S ( n552 ) ) ;
NOR2XL U640 ( .A ( n561 ) , .B ( n560 ) , .Y ( n559 ) ) ;
NAND2XL U642 ( .A ( n561 ) , .B ( n560 ) , .Y ( n562 ) ) ;
NAND2X2 U643 ( .A ( n563 ) , .B ( n562 ) , .Y ( n564 ) ) ;
NAND2XL U648 ( .A ( n571 ) , .B ( n570 ) , .Y ( n572 ) ) ;
AOI21X1 U651 ( .A0 ( n576 ) , .A1 ( n575 ) , .B0 ( n574 ) , .Y ( n580 ) ) ;
NAND2XL U652 ( .A ( n578 ) , .B ( n577 ) , .Y ( n579 ) ) ;
NAND2X2 U655 ( .A ( n683 ) , .B ( n687 ) , .Y ( n680 ) ) ;
NAND2X2 U656 ( .A ( n582 ) , .B ( n680 ) , .Y ( n706 ) ) ;
INVX1 U657 ( .A ( n706 ) , .Y ( n693 ) ) ;
INVXL U658 ( .A ( n583 ) , .Y ( n641 ) ) ;
INVXL U659 ( .A ( n640 ) , .Y ( n584 ) ) ;
INVXL U661 ( .A ( n585 ) , .Y ( n587 ) ) ;
NAND2XL U662 ( .A ( n587 ) , .B ( n586 ) , .Y ( n588 ) ) ;
INVXL U664 ( .A ( n590 ) , .Y ( n637 ) ) ;
INVXL U665 ( .A ( n636 ) , .Y ( n591 ) ) ;
INVXL U667 ( .A ( n592 ) , .Y ( n594 ) ) ;
NAND2XL U668 ( .A ( n594 ) , .B ( n593 ) , .Y ( n595 ) ) ;
INVXL U671 ( .A ( n676 ) , .Y ( n648 ) ) ;
CLKINVX2 U672 ( .A ( n597 ) , .Y ( n607 ) ) ;
OAI21XL U673 ( .A0 ( n607 ) , .A1 ( n603 ) , .B0 ( n604 ) , .Y ( n602 ) ) ;
INVXL U674 ( .A ( n598 ) , .Y ( n600 ) ) ;
NAND2XL U675 ( .A ( n600 ) , .B ( n599 ) , .Y ( n601 ) ) ;
INVXL U677 ( .A ( n603 ) , .Y ( n605 ) ) ;
NAND2X2 U678 ( .A ( n605 ) , .B ( n604 ) , .Y ( n606 ) ) ;
NAND2X1 U681 ( .A ( n610 ) , .B ( n609 ) , .Y ( n612 ) ) ;
INVXL U683 ( .A ( n613 ) , .Y ( n615 ) ) ;
NAND2XL U684 ( .A ( n615 ) , .B ( n614 ) , .Y ( n617 ) ) ;
INVXL U688 ( .A ( n622 ) , .Y ( n624 ) ) ;
NAND2XL U689 ( .A ( n624 ) , .B ( n623 ) , .Y ( n625 ) ) ;
XNOR2XL U690 ( .A ( n625 ) , .B ( n1397 ) , .Y ( n745 ) ) ;
INVXL U691 ( .A ( n626 ) , .Y ( n628 ) ) ;
NAND2XL U692 ( .A ( n628 ) , .B ( n627 ) , .Y ( n629 ) ) ;
XNOR2XL U693 ( .A ( n629 ) , .B ( n1397 ) , .Y ( n630 ) ) ;
INVXL U694 ( .A ( n630 ) , .Y ( n746 ) ) ;
OAI2B2XL U695 ( .A1N ( n631 ) , .A0 ( n701 ) , .B0 ( n745 ) , .B1 ( n746 ) , 
    .Y ( n634 ) ) ;
INVXL U696 ( .A ( n631 ) , .Y ( n632 ) ) ;
NAND2XL U697 ( .A ( n632 ) , .B ( n701 ) , .Y ( n633 ) ) ;
NAND2XL U698 ( .A ( n634 ) , .B ( n633 ) , .Y ( n635 ) ) ;
NAND3XL U700 ( .A ( n666 ) , .B ( n724 ) , .C ( n649 ) , .Y ( n646 ) ) ;
NAND2XL U701 ( .A ( n637 ) , .B ( n636 ) , .Y ( n638 ) ) ;
INVXL U703 ( .A ( n710 ) , .Y ( n644 ) ) ;
NAND2XL U704 ( .A ( n641 ) , .B ( n640 ) , .Y ( n642 ) ) ;
NAND2XL U706 ( .A ( n644 ) , .B ( n671 ) , .Y ( n645 ) ) ;
OAI2BB1X1 U707 ( .A0N ( n646 ) , .A1N ( n645 ) , .B0 ( n687 ) , .Y ( n647 ) ) ;
NOR2BXL U709 ( .AN ( n720 ) , .B ( n718 ) , .Y ( n654 ) ) ;
CLKINVX1 U710 ( .A ( n649 ) , .Y ( n668 ) ) ;
INVXL U712 ( .A ( n656 ) , .Y ( n651 ) ) ;
NAND2XL U713 ( .A ( n651 ) , .B ( n655 ) , .Y ( n652 ) ) ;
AOI2BB2XL U715 ( .B0 ( n724 ) , .B1 ( n654 ) , .A0N ( n668 ) , .A1N ( n728 ) , 
    .Y ( n664 ) ) ;
INVXL U716 ( .A ( n728 ) , .Y ( n653 ) ) ;
OAI21XL U717 ( .A0 ( n654 ) , .A1 ( n724 ) , .B0 ( n653 ) , .Y ( n663 ) ) ;
INVXL U718 ( .A ( n666 ) , .Y ( n711 ) ) ;
OAI21X1 U719 ( .A0 ( n657 ) , .A1 ( n656 ) , .B0 ( n655 ) , .Y ( n662 ) ) ;
INVXL U720 ( .A ( n658 ) , .Y ( n660 ) ) ;
NAND2X2 U721 ( .A ( n660 ) , .B ( n659 ) , .Y ( n661 ) ) ;
INVXL U724 ( .A ( n713 ) , .Y ( n665 ) ) ;
OAI21X1 U725 ( .A0 ( n666 ) , .A1 ( n724 ) , .B0 ( n665 ) , .Y ( n667 ) ) ;
AOI21X1 U726 ( .A0 ( n711 ) , .A1 ( n668 ) , .B0 ( n667 ) , .Y ( n669 ) ) ;
INVXL U728 ( .A ( n671 ) , .Y ( n708 ) ) ;
NAND2XL U729 ( .A ( n708 ) , .B ( n710 ) , .Y ( n675 ) ) ;
INVXL U730 ( .A ( n767 ) , .Y ( n673 ) ) ;
INVXL U731 ( .A ( n785 ) , .Y ( n672 ) ) ;
OAI21X2 U733 ( .A0 ( n676 ) , .A1 ( n675 ) , .B0 ( n674 ) , .Y ( n688 ) ) ;
INVXL U735 ( .A ( n704 ) , .Y ( n677 ) ) ;
NAND2XL U736 ( .A ( n693 ) , .B ( n677 ) , .Y ( n686 ) ) ;
CLKNAND2X2 U738 ( .A ( n680 ) , .B ( n679 ) , .Y ( n697 ) ) ;
AND3X2 U739 ( .A ( n682 ) , .B ( n681 ) , .C ( n791 ) , .Y ( n685 ) ) ;
INVXL U740 ( .A ( n683 ) , .Y ( n684 ) ) ;
NAND2X2 U741 ( .A ( n685 ) , .B ( n684 ) , .Y ( n698 ) ) ;
NAND2X2 U742 ( .A ( n697 ) , .B ( n698 ) , .Y ( n707 ) ) ;
INVXL U743 ( .A ( n707 ) , .Y ( n705 ) ) ;
NAND2X1 U744 ( .A ( n686 ) , .B ( n705 ) , .Y ( n702 ) ) ;
NAND2X2 U745 ( .A ( n687 ) , .B ( n815 ) , .Y ( n696 ) ) ;
NAND2X2 U746 ( .A ( n688 ) , .B ( n696 ) , .Y ( n695 ) ) ;
INVX1 U747 ( .A ( n689 ) , .Y ( n692 ) ) ;
INVX1 U748 ( .A ( n690 ) , .Y ( n691 ) ) ;
AOI2BB2X2 U753 ( .B0 ( n703 ) , .B1 ( n702 ) , .A0N ( n1695 ) , 
    .A1N ( n701 ) , .Y ( n748 ) ) ;
CLKINVX1 U754 ( .A ( n748 ) , .Y ( n849 ) ) ;
CLKNAND2X2 U755 ( .A ( n705 ) , .B ( n704 ) , .Y ( n723 ) ) ;
NAND2X2 U759 ( .A ( n775 ) , .B ( n708 ) , .Y ( n709 ) ) ;
OAI21X1 U760 ( .A0 ( n710 ) , .A1 ( n1695 ) , .B0 ( n709 ) , .Y ( n1616 ) ) ;
NAND2X2 U761 ( .A ( n775 ) , .B ( n711 ) , .Y ( n712 ) ) ;
OAI21X1 U762 ( .A0 ( n713 ) , .A1 ( n1695 ) , .B0 ( n712 ) , .Y ( n837 ) ) ;
NOR2X2 U763 ( .A ( n1616 ) , .B ( n837 ) , .Y ( n742 ) ) ;
INVXL U764 ( .A ( n742 ) , .Y ( n741 ) ) ;
INVX1 U765 ( .A ( n1616 ) , .Y ( n835 ) ) ;
INVX2 U766 ( .A ( n807 ) , .Y ( n717 ) ) ;
NAND2BX1 U767 ( .AN ( n1677 ) , .B ( n714 ) , .Y ( n715 ) ) ;
NAND2XL U769 ( .A ( n835 ) , .B ( n838 ) , .Y ( n740 ) ) ;
NAND2BX4 U771 ( .AN ( n1695 ) , .B ( n719 ) , .Y ( n761 ) ) ;
NOR2X2 U772 ( .A ( n815 ) , .B ( n720 ) , .Y ( n721 ) ) ;
NAND3X2 U773 ( .A ( n723 ) , .B ( n722 ) , .C ( n721 ) , .Y ( n759 ) ) ;
INVXL U775 ( .A ( n815 ) , .Y ( n726 ) ) ;
INVXL U776 ( .A ( n724 ) , .Y ( n725 ) ) ;
NAND2XL U777 ( .A ( n726 ) , .B ( n725 ) , .Y ( n727 ) ) ;
MXI2X3 U778 ( .A ( n728 ) , .B ( n727 ) , .S0 ( n1695 ) , .Y ( n1626 ) ) ;
NAND3BX2 U781 ( .AN ( n757 ) , .B ( n772 ) , .C ( n781 ) , .Y ( n734 ) ) ;
CLKINVX1 U785 ( .A ( n1626 ) , .Y ( n735 ) ) ;
NAND2X2 U786 ( .A ( n1612 ) , .B ( n735 ) , .Y ( n736 ) ) ;
INVXL U788 ( .A ( n1612 ) , .Y ( n737 ) ) ;
NAND2X2 U792 ( .A ( n742 ) , .B ( n838 ) , .Y ( n798 ) ) ;
INVX1 U793 ( .A ( n798 ) , .Y ( n800 ) ) ;
NOR2XL U795 ( .A ( n1677 ) , .B ( n1599 ) , .Y ( n751 ) ) ;
INVXL U796 ( .A ( n745 ) , .Y ( n747 ) ) ;
INVXL U800 ( .A ( n1601 ) , .Y ( n754 ) ) ;
NAND2XL U801 ( .A ( n1601 ) , .B ( n751 ) , .Y ( n752 ) ) ;
NAND3XL ctmTdsLR_1_934 ( .A ( n762 ) , .B ( n763 ) , .C ( n1626 ) , 
    .Y ( n766 ) ) ;
INVXL U804 ( .A ( n757 ) , .Y ( n758 ) ) ;
NAND4X2 U805 ( .A ( n761 ) , .B ( n807 ) , .C ( n758 ) , .D ( n759 ) , 
    .Y ( n763 ) ) ;
NAND2X2 U808 ( .A ( n1611 ) , .B ( n1625 ) , .Y ( n765 ) ) ;
NOR2X2 U812 ( .A ( n1677 ) , .B ( n769 ) , .Y ( n770 ) ) ;
NAND3BX4 ctmTdsLR_1_1086 ( .AN ( popt_net_95 ) , .B ( n1583 ) , .C ( n1584 ) , 
    .Y ( n1707 ) ) ;
AOI2BB2X2 U818 ( .B0 ( n781 ) , .B1 ( n780 ) , .A0N ( n1677 ) , 
    .A1N ( n779 ) , .Y ( n1660 ) ) ;
CLKNAND2X2 U819 ( .A ( n1658 ) , .B ( n1660 ) , .Y ( n822 ) ) ;
OAI2BB1X1 U820 ( .A0N ( n1634 ) , .A1N ( n1636 ) , .B0 ( n822 ) , 
    .Y ( n782 ) ) ;
INVX1 U821 ( .A ( n782 ) , .Y ( n797 ) ) ;
INVX1 U822 ( .A ( n1636 ) , .Y ( n783 ) ) ;
INVXL U826 ( .A ( n787 ) , .Y ( n788 ) ) ;
NAND2BX2 U827 ( .AN ( n1677 ) , .B ( n788 ) , .Y ( n802 ) ) ;
NOR2XL U830 ( .A ( n808 ) , .B ( n792 ) , .Y ( n793 ) ) ;
MXI2X1 U831 ( .A ( n794 ) , .B ( n793 ) , .S0 ( n1677 ) , .Y ( n819 ) ) ;
CLKNAND2X2 U832 ( .A ( n1641 ) , .B ( n819 ) , .Y ( n795 ) ) ;
INVXL U838 ( .A ( n1660 ) , .Y ( n804 ) ) ;
NAND2XL U841 ( .A ( n1677 ) , .B ( n808 ) , .Y ( n817 ) ) ;
NAND2XL U842 ( .A ( n1695 ) , .B ( n815 ) , .Y ( n1600 ) ) ;
NOR2X1 U843 ( .A ( n810 ) , .B ( n809 ) , .Y ( n811 ) ) ;
NOR2X2 U844 ( .A ( n812 ) , .B ( n811 ) , .Y ( n1669 ) ) ;
OAI22X1 U845 ( .A0 ( n816 ) , .A1 ( n815 ) , .B0 ( n814 ) , .B1 ( n813 ) , 
    .Y ( n1670 ) ) ;
NAND3X2 U848 ( .A ( n840 ) , .B ( n1615 ) , .C ( n818 ) , .Y ( n827 ) ) ;
INVXL U849 ( .A ( n819 ) , .Y ( n1642 ) ) ;
NAND2BX2 U850 ( .AN ( n1641 ) , .B ( n1642 ) , .Y ( n821 ) ) ;
NAND2X2 U851 ( .A ( n820 ) , .B ( n821 ) , .Y ( n843 ) ) ;
CLKNAND2X2 U852 ( .A ( n821 ) , .B ( n840 ) , .Y ( n823 ) ) ;
AOI21X1 U853 ( .A0 ( n823 ) , .A1 ( n822 ) , .B0 ( n834 ) , .Y ( n825 ) ) ;
NAND2X2 U854 ( .A ( n825 ) , .B ( n824 ) , .Y ( n826 ) ) ;
INVX1 U857 ( .A ( n838 ) , .Y ( n1624 ) ) ;
AOI21X1 U858 ( .A0 ( n1624 ) , .A1 ( n837 ) , .B0 ( n830 ) , .Y ( n831 ) ) ;
NOR2X2 U860 ( .A ( n835 ) , .B ( n834 ) , .Y ( n842 ) ) ;
INVX1 U862 ( .A ( n837 ) , .Y ( n1623 ) ) ;
OAI22X2 ctmTdsLR_1_941 ( .A0 ( n1716 ) , .A1 ( n1492 ) , .B0 ( ZBUF_770_7 ) , 
    .B1 ( n1491 ) , .Y ( n1619 ) ) ;
INVX4 ctmTdsLR_1_968 ( .A ( n1229 ) , .Y ( n1452 ) ) ;
INVXL U879 ( .A ( n2122 ) , .Y ( n1932 ) ) ;
INVXL U880 ( .A ( n1932 ) , .Y ( n860 ) ) ;
NOR2XL U881 ( .A ( n857 ) , .B ( n1171 ) , .Y ( n856 ) ) ;
INVXL U882 ( .A ( n856 ) , .Y ( n1109 ) ) ;
NAND2XL U884 ( .A ( n2193 ) , .B ( n2227 ) , .Y ( n1113 ) ) ;
NAND2XL U886 ( .A ( n857 ) , .B ( n1171 ) , .Y ( n1108 ) ) ;
INVXL U887 ( .A ( n1108 ) , .Y ( n858 ) ) ;
NAND2XL U892 ( .A ( n862 ) , .B ( n861 ) , .Y ( n1100 ) ) ;
NAND2XL U895 ( .A ( n866 ) , .B ( n865 ) , .Y ( n1073 ) ) ;
INVX1 U904 ( .A ( n919 ) , .Y ( n962 ) ) ;
INVXL U906 ( .A ( n961 ) , .Y ( n875 ) ) ;
AOI21X1 U907 ( .A0 ( n998 ) , .A1 ( n962 ) , .B0 ( n875 ) , .Y ( n884 ) ) ;
INVX1 U913 ( .A ( n928 ) , .Y ( n882 ) ) ;
CLKNAND2X2 U914 ( .A ( n881 ) , .B ( n880 ) , .Y ( n927 ) ) ;
NAND2XL U915 ( .A ( n882 ) , .B ( n927 ) , .Y ( n883 ) ) ;
INVXL U921 ( .A ( n2115 ) , .Y ( n1915 ) ) ;
INVXL U922 ( .A ( n1915 ) , .Y ( n890 ) ) ;
NOR2XL U929 ( .A ( n892 ) , .B ( n1171 ) , .Y ( n891 ) ) ;
INVXL U930 ( .A ( n891 ) , .Y ( n1105 ) ) ;
NAND2XL U932 ( .A ( n2190 ) , .B ( n2227 ) , .Y ( n1117 ) ) ;
NAND2XL U934 ( .A ( n892 ) , .B ( n1171 ) , .Y ( n1104 ) ) ;
INVXL U935 ( .A ( n1104 ) , .Y ( n893 ) ) ;
NAND2XL U940 ( .A ( n896 ) , .B ( n895 ) , .Y ( n1095 ) ) ;
NAND2XL U943 ( .A ( n900 ) , .B ( n899 ) , .Y ( n1079 ) ) ;
INVXL U952 ( .A ( n969 ) , .Y ( n959 ) ) ;
INVXL U954 ( .A ( n971 ) , .Y ( n909 ) ) ;
AOI21X1 U955 ( .A0 ( n1008 ) , .A1 ( n959 ) , .B0 ( n909 ) , .Y ( n918 ) ) ;
INVXL U961 ( .A ( n972 ) , .Y ( n916 ) ) ;
NAND2XL U962 ( .A ( n915 ) , .B ( n914 ) , .Y ( n970 ) ) ;
NAND2XL U963 ( .A ( n916 ) , .B ( n970 ) , .Y ( n917 ) ) ;
NAND2X2 U976 ( .A ( n990 ) , .B ( n934 ) , .Y ( n936 ) ) ;
CLKNAND2X2 U978 ( .A ( n930 ) , .B ( n929 ) , .Y ( n993 ) ) ;
NAND2XL U979 ( .A ( n932 ) , .B ( n931 ) , .Y ( n1000 ) ) ;
OAI21XL U980 ( .A0 ( n999 ) , .A1 ( n993 ) , .B0 ( n1000 ) , .Y ( n933 ) ) ;
NOR2XL U984 ( .A ( n943 ) , .B ( n942 ) , .Y ( n939 ) ) ;
INVXL U985 ( .A ( n939 ) , .Y ( n1062 ) ) ;
INVXL U986 ( .A ( S3[9] ) , .Y ( n951 ) ) ;
ADDFX1 U987 ( .A ( Xt[9] ) , .B ( S3[9] ) , .CI ( n2191 ) , .CO ( n944 ) , 
    .S ( n942 ) ) ;
NAND2XL U990 ( .A ( n1062 ) , .B ( n1065 ) , .Y ( n941 ) ) ;
NAND2XL U992 ( .A ( n943 ) , .B ( n942 ) , .Y ( n1033 ) ) ;
INVXL U993 ( .A ( n1033 ) , .Y ( n1061 ) ) ;
NAND2XL U994 ( .A ( n945 ) , .B ( n944 ) , .Y ( n1064 ) ) ;
INVXL U995 ( .A ( n1064 ) , .Y ( n946 ) ) ;
AOI21XL U996 ( .A0 ( n1061 ) , .A1 ( n1065 ) , .B0 ( n946 ) , .Y ( n947 ) ) ;
INVXL U997 ( .A ( n947 ) , .Y ( n948 ) ) ;
INVXL U999 ( .A ( S3[10] ) , .Y ( n950 ) ) ;
ADDFHXL U1001 ( .A ( Xt[10] ) , .B ( S3[10] ) , .CI ( n951 ) , .CO ( n953 ) , 
    .S ( n945 ) ) ;
NOR2XL U1002 ( .A ( n954 ) , .B ( n953 ) , .Y ( n952 ) ) ;
NAND2XL U1004 ( .A ( n954 ) , .B ( n953 ) , .Y ( n955 ) ) ;
NAND2XL U1005 ( .A ( n956 ) , .B ( n955 ) , .Y ( n957 ) ) ;
INVX2 U1007 ( .A ( n1152 ) , .Y ( n984 ) ) ;
NAND2XL U1008 ( .A ( n959 ) , .B ( n971 ) , .Y ( n960 ) ) ;
NAND2X2 U1010 ( .A ( n962 ) , .B ( n961 ) , .Y ( n963 ) ) ;
INVXL U1012 ( .A ( n1482 ) , .Y ( n964 ) ) ;
NOR2XL U1014 ( .A ( n1135 ) , .B ( n965 ) , .Y ( n989 ) ) ;
AOI21X1 U1015 ( .A0 ( n998 ) , .A1 ( n990 ) , .B0 ( n992 ) , .Y ( n968 ) ) ;
INVXL U1016 ( .A ( n994 ) , .Y ( n966 ) ) ;
NAND2XL U1017 ( .A ( n966 ) , .B ( n993 ) , .Y ( n967 ) ) ;
INVXL U1019 ( .A ( n1547 ) , .Y ( n982 ) ) ;
AOI21X1 U1022 ( .A0 ( n1008 ) , .A1 ( n1018 ) , .B0 ( n1023 ) , .Y ( n981 ) ) ;
INVXL U1028 ( .A ( n1017 ) , .Y ( n979 ) ) ;
NAND2XL U1029 ( .A ( n978 ) , .B ( n977 ) , .Y ( n1020 ) ) ;
NAND2X2 U1030 ( .A ( n979 ) , .B ( n1020 ) , .Y ( n980 ) ) ;
INVX2 U1033 ( .A ( n983 ) , .Y ( n1497 ) ) ;
OAI2BB2X2 ctmTdsLR_1_1062 ( .B0 ( n1695 ) , .B1 ( n777 ) , .A0N ( n774 ) , 
    .A1N ( n775 ) , .Y ( n1658 ) ) ;
INVXL U1036 ( .A ( n1548 ) , .Y ( n987 ) ) ;
CLKNAND2X2 U1037 ( .A ( n987 ) , .B ( n1547 ) , .Y ( n1137 ) ) ;
INVXL U1039 ( .A ( n990 ) , .Y ( n991 ) ) ;
NOR2XL U1040 ( .A ( n991 ) , .B ( n994 ) , .Y ( n997 ) ) ;
INVXL U1041 ( .A ( n992 ) , .Y ( n995 ) ) ;
OAI21XL U1042 ( .A0 ( n995 ) , .A1 ( n994 ) , .B0 ( n993 ) , .Y ( n996 ) ) ;
INVXL U1044 ( .A ( n999 ) , .Y ( n1001 ) ) ;
NAND2XL U1045 ( .A ( n1001 ) , .B ( n1000 ) , .Y ( n1002 ) ) ;
XOR2X1 U1046 ( .A ( n1003 ) , .B ( n1002 ) , .Y ( n1549 ) ) ;
INVXL U1047 ( .A ( n1018 ) , .Y ( n1004 ) ) ;
NOR2XL U1048 ( .A ( n1004 ) , .B ( n1017 ) , .Y ( n1007 ) ) ;
INVXL U1049 ( .A ( n1023 ) , .Y ( n1005 ) ) ;
OAI21XL U1050 ( .A0 ( n1005 ) , .A1 ( n1017 ) , .B0 ( n1020 ) , .Y ( n1006 ) ) ;
AOI21XL U1051 ( .A0 ( n1008 ) , .A1 ( n1007 ) , .B0 ( n1006 ) , .Y ( n1016 ) ) ;
INVXL U1055 ( .A ( n1021 ) , .Y ( n1014 ) ) ;
NAND2XL U1056 ( .A ( n1013 ) , .B ( n1012 ) , .Y ( n1019 ) ) ;
NAND2XL U1057 ( .A ( n1014 ) , .B ( n1019 ) , .Y ( n1015 ) ) ;
NAND2XL U1060 ( .A ( n1018 ) , .B ( n1024 ) , .Y ( n1026 ) ) ;
OAI21XL U1061 ( .A0 ( n1021 ) , .A1 ( n1020 ) , .B0 ( n1019 ) , .Y ( n1022 ) ) ;
NOR2XL U1065 ( .A ( n1031 ) , .B ( n1030 ) , .Y ( n1029 ) ) ;
INVXL U1066 ( .A ( n1029 ) , .Y ( n1041 ) ) ;
NAND2XL U1067 ( .A ( n1031 ) , .B ( n1030 ) , .Y ( n1035 ) ) ;
NAND2XL U1068 ( .A ( n1041 ) , .B ( n1035 ) , .Y ( n1032 ) ) ;
NAND2XL U1070 ( .A ( n1062 ) , .B ( n1033 ) , .Y ( n1034 ) ) ;
NOR2BXL U1072 ( .AN ( n1558 ) , .B ( n1557 ) , .Y ( n1139 ) ) ;
AOI2B1X1 U1073 ( .A1N ( n1549 ) , .A0 ( n1550 ) , .B0 ( n1139 ) , 
    .Y ( n1069 ) ) ;
INVXL U1074 ( .A ( n1035 ) , .Y ( n1046 ) ) ;
INVXL U1076 ( .A ( S4[9] ) , .Y ( n1052 ) ) ;
ADDFX1 U1077 ( .A ( Xt[9] ) , .B ( S4[9] ) , .CI ( n2188 ) , .CO ( n1037 ) , 
    .S ( n1030 ) ) ;
NOR2XL U1078 ( .A ( n1038 ) , .B ( n1037 ) , .Y ( n1036 ) ) ;
INVXL U1079 ( .A ( n1036 ) , .Y ( n1045 ) ) ;
NAND2XL U1080 ( .A ( n1038 ) , .B ( n1037 ) , .Y ( n1043 ) ) ;
NAND2XL U1081 ( .A ( n1045 ) , .B ( n1043 ) , .Y ( n1039 ) ) ;
XOR2X1 U1082 ( .A ( n1040 ) , .B ( n1039 ) , .Y ( n1141 ) ) ;
INVXL U1083 ( .A ( n1141 ) , .Y ( n1060 ) ) ;
NAND2XL U1084 ( .A ( n1041 ) , .B ( n1045 ) , .Y ( n1042 ) ) ;
INVXL U1086 ( .A ( n1043 ) , .Y ( n1044 ) ) ;
AOI21XL U1087 ( .A0 ( n1046 ) , .A1 ( n1045 ) , .B0 ( n1044 ) , .Y ( n1047 ) ) ;
INVXL U1088 ( .A ( n1047 ) , .Y ( n1048 ) ) ;
INVXL U1090 ( .A ( S4[10] ) , .Y ( n1051 ) ) ;
ADDFHXL U1092 ( .A ( Xt[10] ) , .B ( S4[10] ) , .CI ( n1052 ) , 
    .CO ( n1054 ) , .S ( n1038 ) ) ;
NOR2XL U1093 ( .A ( n1055 ) , .B ( n1054 ) , .Y ( n1053 ) ) ;
NAND2XL U1095 ( .A ( n1055 ) , .B ( n1054 ) , .Y ( n1056 ) ) ;
NAND2XL U1096 ( .A ( n1057 ) , .B ( n1056 ) , .Y ( n1058 ) ) ;
INVX6 U1098 ( .A ( n1588 ) , .Y ( n1516 ) ) ;
NAND2XL U1101 ( .A ( n1065 ) , .B ( n1064 ) , .Y ( n1066 ) ) ;
XOR2X1 U1102 ( .A ( n1067 ) , .B ( n1066 ) , .Y ( n1068 ) ) ;
CLKINVX1 U1106 ( .A ( n1070 ) , .Y ( n1150 ) ) ;
INVXL U1107 ( .A ( n1071 ) , .Y ( n1092 ) ) ;
OAI21XL U1108 ( .A0 ( n1092 ) , .A1 ( n1088 ) , .B0 ( n1089 ) , .Y ( n1076 ) ) ;
INVXL U1109 ( .A ( n1072 ) , .Y ( n1074 ) ) ;
NAND2XL U1110 ( .A ( n1074 ) , .B ( n1073 ) , .Y ( n1075 ) ) ;
INVXL U1112 ( .A ( n1130 ) , .Y ( n1483 ) ) ;
INVXL U1113 ( .A ( n1077 ) , .Y ( n1087 ) ) ;
INVXL U1115 ( .A ( n1078 ) , .Y ( n1080 ) ) ;
NAND2XL U1116 ( .A ( n1080 ) , .B ( n1079 ) , .Y ( n1081 ) ) ;
INVXL U1118 ( .A ( n1083 ) , .Y ( n1085 ) ) ;
NAND2XL U1119 ( .A ( n1085 ) , .B ( n1084 ) , .Y ( n1086 ) ) ;
XOR2XL U1120 ( .A ( n1087 ) , .B ( n1086 ) , .Y ( n1124 ) ) ;
INVXL U1121 ( .A ( n1088 ) , .Y ( n1090 ) ) ;
NAND2XL U1122 ( .A ( n1090 ) , .B ( n1089 ) , .Y ( n1091 ) ) ;
XOR2XL U1123 ( .A ( n1092 ) , .B ( n1091 ) , .Y ( n1518 ) ) ;
INVXL U1124 ( .A ( n1518 ) , .Y ( n1093 ) ) ;
NAND2XL U1127 ( .A ( n1096 ) , .B ( n1095 ) , .Y ( n1098 ) ) ;
NAND2XL U1130 ( .A ( n1101 ) , .B ( n1100 ) , .Y ( n1103 ) ) ;
NAND2XL U1132 ( .A ( n1105 ) , .B ( n1104 ) , .Y ( n1107 ) ) ;
NAND2XL U1134 ( .A ( n1109 ) , .B ( n1108 ) , .Y ( n1111 ) ) ;
INVXL U1137 ( .A ( n1112 ) , .Y ( n1114 ) ) ;
NAND2XL U1138 ( .A ( n1114 ) , .B ( n1113 ) , .Y ( n1115 ) ) ;
INVXL U1140 ( .A ( n1116 ) , .Y ( n1118 ) ) ;
NAND2XL U1141 ( .A ( n1118 ) , .B ( n1117 ) , .Y ( n1119 ) ) ;
INVXL U1143 ( .A ( n1605 ) , .Y ( n1120 ) ) ;
OAI2B2XL U1144 ( .A1N ( n1161 ) , .A0 ( n1121 ) , .B0 ( n1606 ) , 
    .B1 ( n1120 ) , .Y ( n1122 ) ) ;
OAI21XL U1145 ( .A0 ( n1161 ) , .A1 ( n1159 ) , .B0 ( n1122 ) , .Y ( n1123 ) ) ;
AOI2B1XL U1146 ( .A1N ( n1514 ) , .A0 ( n1511 ) , .B0 ( n1123 ) , 
    .Y ( n1127 ) ) ;
NOR2BXL U1147 ( .AN ( n1514 ) , .B ( n1511 ) , .Y ( n1126 ) ) ;
INVXL U1148 ( .A ( n1124 ) , .Y ( n1515 ) ) ;
NAND2XL U1149 ( .A ( n1515 ) , .B ( n1518 ) , .Y ( n1125 ) ) ;
OAI21XL U1150 ( .A0 ( n1127 ) , .A1 ( n1126 ) , .B0 ( n1125 ) , .Y ( n1132 ) ) ;
INVXL U1151 ( .A ( n1128 ) , .Y ( n1484 ) ) ;
INVXL U1152 ( .A ( n1129 ) , .Y ( n1485 ) ) ;
OAI2BB1X2 U1154 ( .A0N ( n1133 ) , .A1N ( n1132 ) , .B0 ( n1131 ) , 
    .Y ( n1134 ) ) ;
NOR2X1 U1155 ( .A ( n1134 ) , .B ( n1152 ) , .Y ( n1138 ) ) ;
INVX2 U1156 ( .A ( n1135 ) , .Y ( n1136 ) ) ;
NAND3X2 U1157 ( .A ( n1138 ) , .B ( n1137 ) , .C ( n1136 ) , .Y ( n1148 ) ) ;
INVXL U1159 ( .A ( n1139 ) , .Y ( n1140 ) ) ;
AND2XL U1160 ( .A ( n1140 ) , .B ( n1549 ) , .Y ( n1153 ) ) ;
NOR2BXL U1162 ( .AN ( n1557 ) , .B ( n1558 ) , .Y ( n1142 ) ) ;
AOI21X1 U1165 ( .A0 ( n1153 ) , .A1 ( n1154 ) , .B0 ( n1155 ) , .Y ( n1145 ) ) ;
NAND2X2 U1166 ( .A ( n1146 ) , .B ( n1145 ) , .Y ( n1147 ) ) ;
NOR2BX1 U1168 ( .AN ( n1148 ) , .B ( n1588 ) , .Y ( n1149 ) ) ;
AOI31X1 U1170 ( .A0 ( n1154 ) , .A1 ( n1153 ) , .A2 ( n1516 ) , 
    .B0 ( n1152 ) , .Y ( n1157 ) ) ;
NAND2XL U1171 ( .A ( n1155 ) , .B ( n1516 ) , .Y ( n1156 ) ) ;
NAND2XL U1173 ( .A ( n1718 ) , .B ( n1159 ) , .Y ( n1160 ) ) ;
OAI21X2 U1174 ( .A0 ( n1559 ) , .A1 ( n1161 ) , .B0 ( n1160 ) , .Y ( n1533 ) ) ;
INVXL U1175 ( .A ( n1533 ) , .Y ( n1597 ) ) ;
NOR2XL U1176 ( .A ( n1163 ) , .B ( n1171 ) , .Y ( n1162 ) ) ;
NAND2XL U1178 ( .A ( n1163 ) , .B ( n1171 ) , .Y ( n1239 ) ) ;
NAND2XL U1179 ( .A ( n1242 ) , .B ( n1239 ) , .Y ( n1164 ) ) ;
NOR2XL U1180 ( .A ( n2197 ) , .B ( n2227 ) , .Y ( n1394 ) ) ;
NAND2XL U1181 ( .A ( n2197 ) , .B ( n2227 ) , .Y ( n1395 ) ) ;
XNOR2X1 U1183 ( .A ( n1164 ) , .B ( n1241 ) , .Y ( n1388 ) ) ;
INVX2 U1191 ( .A ( n2121 ) , .Y ( n1934 ) ) ;
INVX2 U1192 ( .A ( n1934 ) , .Y ( n1175 ) ) ;
NOR2X1 U1193 ( .A ( n1172 ) , .B ( n1171 ) , .Y ( n1167 ) ) ;
INVX2 U1194 ( .A ( n1167 ) , .Y ( n1226 ) ) ;
INVXL U1195 ( .A ( S1[0] ) , .Y ( n1169 ) ) ;
NOR2XL U1196 ( .A ( n1169 ) , .B ( n2227 ) , .Y ( n1390 ) ) ;
NAND2XL U1197 ( .A ( n1169 ) , .B ( n2227 ) , .Y ( n1391 ) ) ;
NAND2XL U1199 ( .A ( n1172 ) , .B ( n1171 ) , .Y ( n1225 ) ) ;
INVXL U1200 ( .A ( n1225 ) , .Y ( n1173 ) ) ;
NAND2XL U1205 ( .A ( n1177 ) , .B ( n1176 ) , .Y ( n1384 ) ) ;
NAND2XL U1207 ( .A ( n1179 ) , .B ( n1178 ) , .Y ( n1417 ) ) ;
NAND2XL U1208 ( .A ( n1181 ) , .B ( n1180 ) , .Y ( n1406 ) ) ;
NOR2X1 U1213 ( .A ( n1193 ) , .B ( n1192 ) , .Y ( n1428 ) ) ;
NOR2X1 U1224 ( .A ( n1293 ) , .B ( n1297 ) , .Y ( n1201 ) ) ;
NAND2X1 U1225 ( .A ( n1289 ) , .B ( n1201 ) , .Y ( n1203 ) ) ;
NAND2XL U1227 ( .A ( n1195 ) , .B ( n1194 ) , .Y ( n1454 ) ) ;
NAND2XL U1230 ( .A ( n1199 ) , .B ( n1198 ) , .Y ( n1298 ) ) ;
OAI21XL U1231 ( .A0 ( n1297 ) , .A1 ( n1292 ) , .B0 ( n1298 ) , .Y ( n1200 ) ) ;
INVXL U1235 ( .A ( S1[8] ) , .Y ( n1206 ) ) ;
NOR2XL U1236 ( .A ( n1210 ) , .B ( n1209 ) , .Y ( n1205 ) ) ;
INVXL U1237 ( .A ( n1205 ) , .Y ( n1335 ) ) ;
ADDFX1 U1238 ( .A ( Xt[9] ) , .B ( S1[9] ) , .CI ( n1206 ) , .CO ( n1211 ) , 
    .S ( n1209 ) ) ;
NAND2XL U1241 ( .A ( n1335 ) , .B ( n1308 ) , .Y ( n1208 ) ) ;
INVXL U1242 ( .A ( n1208 ) , .Y ( n1216 ) ) ;
NAND2XL U1243 ( .A ( n1210 ) , .B ( n1209 ) , .Y ( n1334 ) ) ;
INVXL U1244 ( .A ( n1334 ) , .Y ( n1306 ) ) ;
NAND2XL U1245 ( .A ( n1212 ) , .B ( n1211 ) , .Y ( n1307 ) ) ;
INVXL U1246 ( .A ( n1307 ) , .Y ( n1213 ) ) ;
AOI21XL U1247 ( .A0 ( n1306 ) , .A1 ( n1308 ) , .B0 ( n1213 ) , .Y ( n1214 ) ) ;
INVXL U1248 ( .A ( n1214 ) , .Y ( n1215 ) ) ;
INVXL U1250 ( .A ( S1[10] ) , .Y ( n1217 ) ) ;
ADDFX1 U1252 ( .A ( Xt[10] ) , .B ( S1[10] ) , .CI ( n2198 ) , .CO ( n1219 ) , 
    .S ( n1212 ) ) ;
NOR2XL U1253 ( .A ( n1220 ) , .B ( n1219 ) , .Y ( n1218 ) ) ;
NAND2XL U1255 ( .A ( n1220 ) , .B ( n1219 ) , .Y ( n1221 ) ) ;
NAND2XL U1256 ( .A ( n1222 ) , .B ( n1221 ) , .Y ( n1223 ) ) ;
NAND2XL U1258 ( .A ( n1226 ) , .B ( n1225 ) , .Y ( n1228 ) ) ;
NOR2XL U1260 ( .A ( n1590 ) , .B ( n1399 ) , .Y ( n1480 ) ) ;
INVXL U1263 ( .A ( n1293 ) , .Y ( n1230 ) ) ;
NAND2XL U1264 ( .A ( n1230 ) , .B ( n1292 ) , .Y ( n1231 ) ) ;
INVXL U1270 ( .A ( n2114 ) , .Y ( n1913 ) ) ;
INVXL U1271 ( .A ( n1913 ) , .Y ( n1238 ) ) ;
INVXL U1278 ( .A ( n1239 ) , .Y ( n1240 ) ) ;
NAND2X1 U1283 ( .A ( n1247 ) , .B ( n1246 ) , .Y ( n1379 ) ) ;
NAND2XL U1286 ( .A ( n1251 ) , .B ( n1250 ) , .Y ( n1374 ) ) ;
INVX4 U1289 ( .A ( n1322 ) , .Y ( n1435 ) ) ;
NAND2X1 U1302 ( .A ( n1265 ) , .B ( n1264 ) , .Y ( n1437 ) ) ;
AOI21X1 U1304 ( .A0 ( n1435 ) , .A1 ( n1313 ) , .B0 ( n1318 ) , .Y ( n1275 ) ) ;
INVXL U1310 ( .A ( n1312 ) , .Y ( n1273 ) ) ;
NAND2XL U1311 ( .A ( n1272 ) , .B ( n1271 ) , .Y ( n1315 ) ) ;
NAND2XL U1312 ( .A ( n1273 ) , .B ( n1315 ) , .Y ( n1274 ) ) ;
XOR2X1 U1313 ( .A ( n1275 ) , .B ( n1274 ) , .Y ( n1543 ) ) ;
INVXL U1315 ( .A ( n1313 ) , .Y ( n1276 ) ) ;
NOR2XL U1316 ( .A ( n1276 ) , .B ( n1312 ) , .Y ( n1279 ) ) ;
INVXL U1317 ( .A ( n1318 ) , .Y ( n1277 ) ) ;
OAI21XL U1318 ( .A0 ( n1277 ) , .A1 ( n1312 ) , .B0 ( n1315 ) , .Y ( n1278 ) ) ;
AOI21X1 U1319 ( .A0 ( n1435 ) , .A1 ( n1279 ) , .B0 ( n1278 ) , .Y ( n1287 ) ) ;
INVXL U1323 ( .A ( n1316 ) , .Y ( n1285 ) ) ;
NAND2XL U1324 ( .A ( n1284 ) , .B ( n1283 ) , .Y ( n1314 ) ) ;
NAND2XL U1325 ( .A ( n1285 ) , .B ( n1314 ) , .Y ( n1286 ) ) ;
CLKINVX2 U1327 ( .A ( n1554 ) , .Y ( n1288 ) ) ;
NAND2XL U1328 ( .A ( n1303 ) , .B ( n1288 ) , .Y ( n1305 ) ) ;
INVXL U1329 ( .A ( n1289 ) , .Y ( n1290 ) ) ;
NOR2XL U1330 ( .A ( n1290 ) , .B ( n1293 ) , .Y ( n1296 ) ) ;
INVXL U1331 ( .A ( n1291 ) , .Y ( n1294 ) ) ;
OAI21XL U1332 ( .A0 ( n1294 ) , .A1 ( n1293 ) , .B0 ( n1292 ) , .Y ( n1295 ) ) ;
AOI21X1 U1333 ( .A0 ( n1452 ) , .A1 ( n1296 ) , .B0 ( n1295 ) , .Y ( n1301 ) ) ;
INVXL U1334 ( .A ( n1297 ) , .Y ( n1299 ) ) ;
NAND2XL U1335 ( .A ( n1299 ) , .B ( n1298 ) , .Y ( n1300 ) ) ;
XOR2XL U1336 ( .A ( n1301 ) , .B ( n1300 ) , .Y ( n1302 ) ) ;
NOR2X1 U1337 ( .A ( n1590 ) , .B ( n1302 ) , .Y ( n1552 ) ) ;
INVXL U1338 ( .A ( n1303 ) , .Y ( n1304 ) ) ;
AOI21X1 U1340 ( .A0 ( n1337 ) , .A1 ( n1335 ) , .B0 ( n1306 ) , .Y ( n1310 ) ) ;
NAND2XL U1341 ( .A ( n1308 ) , .B ( n1307 ) , .Y ( n1309 ) ) ;
XOR2X3 U1342 ( .A ( n1310 ) , .B ( n1309 ) , .Y ( n1311 ) ) ;
CLKINVX1 U1343 ( .A ( n1311 ) , .Y ( n1462 ) ) ;
NAND2X2 U1345 ( .A ( n1313 ) , .B ( n1319 ) , .Y ( n1321 ) ) ;
OAI21XL U1346 ( .A0 ( n1316 ) , .A1 ( n1315 ) , .B0 ( n1314 ) , .Y ( n1317 ) ) ;
NOR2XL U1350 ( .A ( n1326 ) , .B ( n1325 ) , .Y ( n1324 ) ) ;
NAND2XL U1352 ( .A ( n1326 ) , .B ( n1325 ) , .Y ( n1332 ) ) ;
INVXL U1353 ( .A ( n1332 ) , .Y ( n1345 ) ) ;
AOI21XL U1354 ( .A0 ( n1349 ) , .A1 ( n1340 ) , .B0 ( n1345 ) , .Y ( n1331 ) ) ;
ADDFX1 U1355 ( .A ( Xt[9] ) , .B ( S2[9] ) , .CI ( n2195 ) , .CO ( n1328 ) , 
    .S ( n1325 ) ) ;
NAND2XL U1358 ( .A ( n1329 ) , .B ( n1328 ) , .Y ( n1342 ) ) ;
NAND2XL U1359 ( .A ( n1344 ) , .B ( n1342 ) , .Y ( n1330 ) ) ;
XOR2X2 U1360 ( .A ( n1331 ) , .B ( n1330 ) , .Y ( n1463 ) ) ;
NAND2XL U1361 ( .A ( n1340 ) , .B ( n1332 ) , .Y ( n1333 ) ) ;
NAND2XL U1363 ( .A ( n1335 ) , .B ( n1334 ) , .Y ( n1336 ) ) ;
INVXL U1365 ( .A ( n1458 ) , .Y ( n1338 ) ) ;
AOI22XL U1366 ( .A0 ( n1462 ) , .A1 ( n1463 ) , .B0 ( n1563 ) , 
    .B1 ( n1338 ) , .Y ( n1339 ) ) ;
NAND2X2 U1367 ( .A ( n1448 ) , .B ( n1339 ) , .Y ( n1445 ) ) ;
NOR2X2 U1368 ( .A ( n1590 ) , .B ( n1458 ) , .Y ( n1363 ) ) ;
INVXL U1369 ( .A ( n1363 ) , .Y ( n1562 ) ) ;
INVXL U1370 ( .A ( n1563 ) , .Y ( n1459 ) ) ;
NAND2XL U1371 ( .A ( n1340 ) , .B ( n1344 ) , .Y ( n1341 ) ) ;
INVXL U1373 ( .A ( n1342 ) , .Y ( n1343 ) ) ;
AOI21XL U1374 ( .A0 ( n1345 ) , .A1 ( n1344 ) , .B0 ( n1343 ) , .Y ( n1346 ) ) ;
INVXL U1375 ( .A ( n1346 ) , .Y ( n1347 ) ) ;
AOI21X1 U1376 ( .A0 ( n1349 ) , .A1 ( n1348 ) , .B0 ( n1347 ) , .Y ( n1357 ) ) ;
INVXL U1377 ( .A ( S2[10] ) , .Y ( n1350 ) ) ;
ADDFHXL U1379 ( .A ( Xt[10] ) , .B ( S2[10] ) , .CI ( n2194 ) , 
    .CO ( n1352 ) , .S ( n1329 ) ) ;
NOR2XL U1380 ( .A ( n1353 ) , .B ( n1352 ) , .Y ( n1351 ) ) ;
NAND2XL U1382 ( .A ( n1353 ) , .B ( n1352 ) , .Y ( n1354 ) ) ;
NAND2XL U1383 ( .A ( n1355 ) , .B ( n1354 ) , .Y ( n1356 ) ) ;
NOR2X2 U1385 ( .A ( n1463 ) , .B ( n1589 ) , .Y ( n1568 ) ) ;
INVXL U1386 ( .A ( n1568 ) , .Y ( n1358 ) ) ;
NOR2BXL U1391 ( .AN ( n1543 ) , .B ( n1544 ) , .Y ( n1360 ) ) ;
NOR2XL U1395 ( .A ( n1363 ) , .B ( n1563 ) , .Y ( n1364 ) ) ;
INVXL U1398 ( .A ( n1367 ) , .Y ( n1372 ) ) ;
INVXL U1399 ( .A ( n1371 ) , .Y ( n1368 ) ) ;
NAND2XL U1400 ( .A ( n1368 ) , .B ( n1370 ) , .Y ( n1369 ) ) ;
OAI21X1 U1402 ( .A0 ( n1372 ) , .A1 ( n1371 ) , .B0 ( n1370 ) , .Y ( n1377 ) ) ;
INVXL U1403 ( .A ( n1373 ) , .Y ( n1375 ) ) ;
NAND2XL U1404 ( .A ( n1375 ) , .B ( n1374 ) , .Y ( n1376 ) ) ;
INVX1 U1406 ( .A ( n1414 ) , .Y ( n1489 ) ) ;
AOI21X6 ctmTdsLR_1_1088 ( .A0 ( n153 ) , .A1 ( n246 ) , .B0 ( n152 ) , 
    .Y ( n202 ) ) ;
XOR2X1 U1409 ( .A ( n1382 ) , .B ( n1381 ) , .Y ( n1421 ) ) ;
INVX1 U1410 ( .A ( n1421 ) , .Y ( n1521 ) ) ;
INVXL U1411 ( .A ( n1383 ) , .Y ( n1385 ) ) ;
NAND2XL U1412 ( .A ( n1385 ) , .B ( n1384 ) , .Y ( n1387 ) ) ;
NAND2X1 U1414 ( .A ( n1521 ) , .B ( n1519 ) , .Y ( n1403 ) ) ;
INVXL U1415 ( .A ( n1399 ) , .Y ( n1389 ) ) ;
NAND2XL U1416 ( .A ( n1389 ) , .B ( n1388 ) , .Y ( n1401 ) ) ;
INVXL U1417 ( .A ( n1390 ) , .Y ( n1392 ) ) ;
NAND2XL U1418 ( .A ( n1392 ) , .B ( n1391 ) , .Y ( n1393 ) ) ;
XNOR2XL U1419 ( .A ( n1393 ) , .B ( n1397 ) , .Y ( n1528 ) ) ;
INVXL U1420 ( .A ( n1528 ) , .Y ( n1608 ) ) ;
INVXL U1421 ( .A ( n1394 ) , .Y ( n1396 ) ) ;
NAND2XL U1422 ( .A ( n1396 ) , .B ( n1395 ) , .Y ( n1398 ) ) ;
XNOR2XL U1423 ( .A ( n1398 ) , .B ( n1397 ) , .Y ( n1527 ) ) ;
NAND2XL U1424 ( .A ( n1608 ) , .B ( n1527 ) , .Y ( n1400 ) ) ;
AOI22XL U1425 ( .A0 ( n1401 ) , .A1 ( n1400 ) , .B0 ( n1481 ) , 
    .B1 ( n1399 ) , .Y ( n1402 ) ) ;
NAND2X2 U1426 ( .A ( n1403 ) , .B ( n1402 ) , .Y ( n1424 ) ) ;
NAND2XL U1427 ( .A ( n1489 ) , .B ( n1424 ) , .Y ( n1411 ) ) ;
INVXL U1430 ( .A ( n1405 ) , .Y ( n1407 ) ) ;
NAND2XL U1431 ( .A ( n1407 ) , .B ( n1406 ) , .Y ( n1408 ) ) ;
INVXL U1433 ( .A ( n1487 ) , .Y ( n1410 ) ) ;
OAI211X1 ctmTdsLR_1_995 ( .A0 ( n392 ) , .A1 ( n382 ) , .B0 ( n371 ) , 
    .C0 ( n372 ) , .Y ( n3801 ) ) ;
NOR2XL U1435 ( .A ( n1590 ) , .B ( n1412 ) , .Y ( n1469 ) ) ;
INVXL U1436 ( .A ( n1424 ) , .Y ( n1413 ) ) ;
NAND3XL U1437 ( .A ( n1414 ) , .B ( n1509 ) , .C ( n1413 ) , .Y ( n1415 ) ) ;
NOR2XL U1439 ( .A ( n1469 ) , .B ( n1466 ) , .Y ( n1444 ) ) ;
INVXL U1440 ( .A ( n1416 ) , .Y ( n1418 ) ) ;
NAND2XL U1441 ( .A ( n1418 ) , .B ( n1417 ) , .Y ( n1419 ) ) ;
NOR2BXL U1443 ( .AN ( n1421 ) , .B ( n1519 ) , .Y ( n1423 ) ) ;
NAND2XL U1444 ( .A ( n1509 ) , .B ( n1423 ) , .Y ( n1422 ) ) ;
AOI21XL U1445 ( .A0 ( n1534 ) , .A1 ( n1422 ) , .B0 ( n1590 ) , .Y ( n1427 ) ) ;
NOR2XL U1446 ( .A ( n1423 ) , .B ( n1509 ) , .Y ( n1425 ) ) ;
AOI22XL U1447 ( .A0 ( n1487 ) , .A1 ( n1489 ) , .B0 ( n1425 ) , 
    .B1 ( n1424 ) , .Y ( n1426 ) ) ;
NAND2X2 U1448 ( .A ( n1427 ) , .B ( n1426 ) , .Y ( n1471 ) ) ;
INVXL U1449 ( .A ( n1428 ) , .Y ( n1451 ) ) ;
NAND2XL U1450 ( .A ( n1451 ) , .B ( n1449 ) , .Y ( n1429 ) ) ;
NOR2X2 U1452 ( .A ( n1590 ) , .B ( n1467 ) , .Y ( n1490 ) ) ;
INVXL U1453 ( .A ( n1430 ) , .Y ( n1434 ) ) ;
NAND2XL U1454 ( .A ( n1434 ) , .B ( n1432 ) , .Y ( n1431 ) ) ;
NAND2XL U1456 ( .A ( n1490 ) , .B ( n1491 ) , .Y ( n1443 ) ) ;
INVXL U1457 ( .A ( n1432 ) , .Y ( n1433 ) ) ;
AOI21X1 U1458 ( .A0 ( n1435 ) , .A1 ( n1434 ) , .B0 ( n1433 ) , .Y ( n1440 ) ) ;
INVXL U1459 ( .A ( n1436 ) , .Y ( n1438 ) ) ;
NAND2XL U1460 ( .A ( n1438 ) , .B ( n1437 ) , .Y ( n1439 ) ) ;
INVXL U1466 ( .A ( n1449 ) , .Y ( n1450 ) ) ;
AOI21XL U1467 ( .A0 ( n1452 ) , .A1 ( n1451 ) , .B0 ( n1450 ) , .Y ( n1457 ) ) ;
INVXL U1468 ( .A ( n1453 ) , .Y ( n1455 ) ) ;
NAND2XL U1469 ( .A ( n1455 ) , .B ( n1454 ) , .Y ( n1456 ) ) ;
XOR2X1 U1470 ( .A ( n1457 ) , .B ( n1456 ) , .Y ( n1494 ) ) ;
AOI211X1 U1471 ( .A0 ( n1459 ) , .A1 ( n1458 ) , .B0 ( n1590 ) , 
    .C0 ( n1494 ) , .Y ( n1461 ) ) ;
NOR2X1 U1472 ( .A ( n1498 ) , .B ( n1491 ) , .Y ( n1468 ) ) ;
CLKNAND2X2 U1473 ( .A ( n1468 ) , .B ( n1467 ) , .Y ( n1460 ) ) ;
OAI211X2 U1474 ( .A0 ( n1463 ) , .A1 ( n1462 ) , .B0 ( n1461 ) , 
    .C0 ( n1460 ) , .Y ( n1465 ) ) ;
INVXL U1475 ( .A ( n1589 ) , .Y ( n1464 ) ) ;
NAND2XL U1476 ( .A ( n1465 ) , .B ( n1464 ) , .Y ( n1475 ) ) ;
AOI2BB1X1 U1477 ( .A0N ( n1468 ) , .A1N ( n1467 ) , .B0 ( n1466 ) , 
    .Y ( n1473 ) ) ;
NOR2XL U1478 ( .A ( n1589 ) , .B ( n1498 ) , .Y ( n1472 ) ) ;
INVXL U1479 ( .A ( n1469 ) , .Y ( n1470 ) ) ;
NAND4X2 U1480 ( .A ( n1473 ) , .B ( n1472 ) , .C ( n1471 ) , .D ( n1470 ) , 
    .Y ( n1474 ) ) ;
MXI2X1 U1483 ( .A ( n1481 ) , .B ( n1480 ) , .S0 ( ZBUF_770_7 ) , 
    .Y ( n1596 ) ) ;
NOR2X2 U1485 ( .A ( n1604 ) , .B ( n1482 ) , .Y ( n1505 ) ) ;
CLKNAND2X2 U1486 ( .A ( n1718 ) , .B ( n1483 ) , .Y ( n1503 ) ) ;
INVX1 U1487 ( .A ( n1559 ) , .Y ( n1486 ) ) ;
NAND2X2 U1488 ( .A ( n1486 ) , .B ( n1484 ) , .Y ( n1507 ) ) ;
CLKNAND2X2 U1489 ( .A ( n1486 ) , .B ( n1485 ) , .Y ( n1504 ) ) ;
NAND4X2 ctmTdsLR_1_1013 ( .A ( n1446 ) , .B ( n1366 ) , .C ( n1445 ) , 
    .D ( n1441 ) , .Y ( n1479 ) ) ;
NOR2XL U1491 ( .A ( n1590 ) , .B ( n1487 ) , .Y ( n1488 ) ) ;
INVXL U1495 ( .A ( n1490 ) , .Y ( n1492 ) ) ;
NAND2BX2 ctmTdsLR_1_979 ( .AN ( popt_net_58 ) , .B ( n1441 ) , .Y ( n1442 ) ) ;
INVX1 U1498 ( .A ( n1494 ) , .Y ( n1495 ) ) ;
AOI2BB2X1 U1500 ( .B0 ( n1718 ) , .B1 ( n1497 ) , .A0N ( n1559 ) , 
    .A1N ( n1496 ) , .Y ( n1650 ) ) ;
INVXL U1501 ( .A ( n1650 ) , .Y ( n1501 ) ) ;
INVX1 U1502 ( .A ( ZBUF_770_7 ) , .Y ( n1500 ) ) ;
INVXL U1503 ( .A ( n1498 ) , .Y ( n1499 ) ) ;
NAND2X1 U1504 ( .A ( n1500 ) , .B ( n1499 ) , .Y ( n1581 ) ) ;
NAND3X2 U1505 ( .A ( n1582 ) , .B ( n1501 ) , .C ( n1581 ) , .Y ( n1565 ) ) ;
INVX2 U1507 ( .A ( n1697 ) , .Y ( n1508 ) ) ;
NAND2X2 U1508 ( .A ( n1504 ) , .B ( n1503 ) , .Y ( n1700 ) ) ;
CLKINVX1 U1509 ( .A ( n1505 ) , .Y ( n1506 ) ) ;
CLKNAND2X2 U1510 ( .A ( n1507 ) , .B ( n1506 ) , .Y ( n1618 ) ) ;
OAI21X1 U1511 ( .A0 ( n1700 ) , .A1 ( n1699 ) , .B0 ( n1618 ) , .Y ( n1701 ) ) ;
INVXL U1513 ( .A ( n1534 ) , .Y ( n1510 ) ) ;
NOR2XL U1514 ( .A ( ZBUF_770_7 ) , .B ( n1509 ) , .Y ( n1526 ) ) ;
AOI21X1 U1515 ( .A0 ( n1510 ) , .A1 ( ZBUF_770_7 ) , .B0 ( n1526 ) , 
    .Y ( n1628 ) ) ;
INVXL U1516 ( .A ( n1511 ) , .Y ( n1512 ) ) ;
CLKNAND2X2 U1517 ( .A ( n1718 ) , .B ( n1512 ) , .Y ( n1513 ) ) ;
OAI21X1 U1518 ( .A0 ( n1559 ) , .A1 ( n1514 ) , .B0 ( n1513 ) , .Y ( n1522 ) ) ;
INVX1 U1519 ( .A ( n1522 ) , .Y ( n1614 ) ) ;
NAND2XL U1520 ( .A ( n1516 ) , .B ( n1515 ) , .Y ( n1517 ) ) ;
NAND2XL U1523 ( .A ( n1614 ) , .B ( n1629 ) , .Y ( n1525 ) ) ;
NOR2XL U1524 ( .A ( n1590 ) , .B ( n1519 ) , .Y ( n1520 ) ) ;
MXI2X2 U1525 ( .A ( n1521 ) , .B ( n1520 ) , .S0 ( ZBUF_770_7 ) , 
    .Y ( n1613 ) ) ;
INVXL U1526 ( .A ( n1613 ) , .Y ( n1536 ) ) ;
NAND2XL U1527 ( .A ( n1536 ) , .B ( n1629 ) , .Y ( n1524 ) ) ;
AND3XL U1528 ( .A ( n1522 ) , .B ( n1613 ) , .C ( n1540 ) , .Y ( n1523 ) ) ;
AOI31X1 U1529 ( .A0 ( n1628 ) , .A1 ( n1525 ) , .A2 ( n1524 ) , 
    .B0 ( n1523 ) , .Y ( n1542 ) ) ;
INVXL U1530 ( .A ( n1526 ) , .Y ( n1539 ) ) ;
MXI2XL U1531 ( .A ( n1605 ) , .B ( n1606 ) , .S0 ( n1559 ) , .Y ( n1531 ) ) ;
INVXL U1532 ( .A ( n1527 ) , .Y ( n1607 ) ) ;
NOR2XL U1533 ( .A ( n1590 ) , .B ( n1528 ) , .Y ( n1529 ) ) ;
MXI2XL U1534 ( .A ( n1607 ) , .B ( n1529 ) , .S0 ( ZBUF_770_7 ) , 
    .Y ( n1530 ) ) ;
OAI22X1 U1535 ( .A0 ( n1533 ) , .A1 ( n1596 ) , .B0 ( n1531 ) , 
    .B1 ( n1530 ) , .Y ( n1532 ) ) ;
OAI2BB1X1 U1536 ( .A0N ( n1596 ) , .A1N ( n1533 ) , .B0 ( n1532 ) , 
    .Y ( n1538 ) ) ;
NAND2X2 ctmTdsLR_1_929 ( .A ( n756 ) , .B ( popt_net_33 ) , .Y ( n833 ) ) ;
INVXL U1541 ( .A ( n1543 ) , .Y ( n1546 ) ) ;
NOR2XL U1542 ( .A ( n1590 ) , .B ( n1544 ) , .Y ( n1545 ) ) ;
MXI2X1 U1543 ( .A ( n1546 ) , .B ( n1545 ) , .S0 ( ZBUF_770_7 ) , 
    .Y ( n1637 ) ) ;
INVXL U1545 ( .A ( n1549 ) , .Y ( n1551 ) ) ;
AOI2BB2X1 U1546 ( .B0 ( n1718 ) , .B1 ( n1551 ) , .A0N ( n1559 ) , 
    .A1N ( n1550 ) , .Y ( n1644 ) ) ;
INVXL U1547 ( .A ( n1644 ) , .Y ( n1555 ) ) ;
MXI2X1 U1549 ( .A ( n1554 ) , .B ( n1553 ) , .S0 ( ZBUF_770_7 ) , 
    .Y ( n1556 ) ) ;
INVXL U1550 ( .A ( n1556 ) , .Y ( n1643 ) ) ;
CLKNAND2X2 U1552 ( .A ( n1644 ) , .B ( n1556 ) , .Y ( n1579 ) ) ;
INVXL U1553 ( .A ( n1557 ) , .Y ( n1560 ) ) ;
AOI2BB2X2 U1554 ( .B0 ( n1718 ) , .B1 ( n1560 ) , .A0N ( n1559 ) , 
    .A1N ( n1558 ) , .Y ( n1567 ) ) ;
NAND2X2 U1556 ( .A ( n1567 ) , .B ( n1662 ) , .Y ( n1584 ) ) ;
NAND2X1 U1557 ( .A ( n1579 ) , .B ( n1584 ) , .Y ( n1586 ) ) ;
INVXL U1558 ( .A ( n1586 ) , .Y ( n1564 ) ) ;
NAND2BX2 U1559 ( .AN ( n1587 ) , .B ( n1564 ) , .Y ( n1712 ) ) ;
AOI21X1 U1560 ( .A0 ( n1700 ) , .A1 ( n1699 ) , .B0 ( n1618 ) , .Y ( n1566 ) ) ;
CLKNAND2X2 U1561 ( .A ( n1566 ) , .B ( n1565 ) , .Y ( n1698 ) ) ;
INVX2 U1563 ( .A ( n1567 ) , .Y ( n1663 ) ) ;
INVX2 U1564 ( .A ( n1662 ) , .Y ( n1573 ) ) ;
NOR2X2 U1565 ( .A ( n1569 ) , .B ( n1568 ) , .Y ( n1673 ) ) ;
INVXL U1566 ( .A ( n1570 ) , .Y ( n1571 ) ) ;
NAND2XL U1567 ( .A ( n1572 ) , .B ( n1571 ) , .Y ( n1591 ) ) ;
NAND2X1 ctmTdsLR_1_987 ( .A ( n1411 ) , .B ( popt_net_63 ) , .Y ( n1412 ) ) ;
AOI31X1 U1570 ( .A0 ( n1699 ) , .A1 ( n1618 ) , .A2 ( n1700 ) , 
    .B0 ( n1574 ) , .Y ( n1575 ) ) ;
INVX4 ctmTdsLR_1_1038 ( .A ( popt_net_98 ) , .Y ( n461 ) ) ;
OAI21X2 ctmTdsLR_2_1039 ( .A0 ( popt_net_96 ) , .A1 ( n603 ) , 
    .B0 ( popt_net_97 ) , .Y ( popt_net_98 ) ) ;
NAND2X2 U1576 ( .A ( n1648 ) , .B ( n1650 ) , .Y ( n1583 ) ) ;
NAND2XL U1579 ( .A ( n1604 ) , .B ( n1588 ) , .Y ( n1681 ) ) ;
AND2XL U1580 ( .A ( n1590 ) , .B ( n1589 ) , .Y ( n1593 ) ) ;
INVXL U1581 ( .A ( n1591 ) , .Y ( n1672 ) ) ;
INVXL U1582 ( .A ( n1673 ) , .Y ( n1592 ) ) ;
NAND2XL U1583 ( .A ( n1672 ) , .B ( n1592 ) , .Y ( n1710 ) ) ;
MXI2XL U1588 ( .A ( n1599 ) , .B ( n1598 ) , .S0 ( n1677 ) , .Y ( n1603 ) ) ;
NOR2XL U1590 ( .A ( n1680 ) , .B ( n1601 ) , .Y ( n1602 ) ) ;
MXI2X1 U1591 ( .A ( n1603 ) , .B ( n1602 ) , .S0 ( n1693 ) , .Y ( n1745 ) ) ;
MXI2XL U1592 ( .A ( n1606 ) , .B ( n1605 ) , .S0 ( n1604 ) , .Y ( n1744 ) ) ;
NAND2XL U1593 ( .A ( n1744 ) , .B ( n1681 ) , .Y ( n1609 ) ) ;
MXI2XL U1594 ( .A ( n1608 ) , .B ( n1607 ) , .S0 ( n1716 ) , .Y ( n1741 ) ) ;
MXI2XL U1595 ( .A ( n1609 ) , .B ( n1741 ) , .S0 ( n1742 ) , .Y ( n1610 ) ) ;
OAI22X2 U1599 ( .A0 ( n1753 ) , .A1 ( n1734 ) , .B0 ( n1727 ) , 
    .B1 ( n1747 ) , .Y ( n1631 ) ) ;
INVXL U1600 ( .A ( n1615 ) , .Y ( n1617 ) ) ;
MXI2X3 U1601 ( .A ( n1617 ) , .B ( n1616 ) , .S0 ( n1693 ) , .Y ( n1786 ) ) ;
INVXL U1602 ( .A ( n1618 ) , .Y ( n1621 ) ) ;
INVXL U1603 ( .A ( n1619 ) , .Y ( n1620 ) ) ;
INVXL U1605 ( .A ( n1699 ) , .Y ( n1622 ) ) ;
AOI2BB2X2 U1608 ( .B0 ( n1786 ) , .B1 ( n1645 ) , .A0N ( n1779 ) , 
    .A1N ( n1777 ) , .Y ( n1655 ) ) ;
INVXL U1609 ( .A ( n1625 ) , .Y ( n1627 ) ) ;
MXI2X1 U1610 ( .A ( n1627 ) , .B ( n1626 ) , .S0 ( n1693 ) , .Y ( n1763 ) ) ;
NAND2X1 U1614 ( .A ( n1777 ) , .B ( n1779 ) , .Y ( n1633 ) ) ;
OAI21X1 U1615 ( .A0 ( n1763 ) , .A1 ( n1765 ) , .B0 ( n1633 ) , .Y ( n1654 ) ) ;
INVXL U1616 ( .A ( n1634 ) , .Y ( n1635 ) ) ;
INVXL U1618 ( .A ( n1637 ) , .Y ( n1639 ) ) ;
MXI2X2 U1620 ( .A ( n1640 ) , .B ( n1639 ) , .S0 ( n2239 ) , .Y ( n1856 ) ) ;
MXI2X2 U1621 ( .A ( n1642 ) , .B ( n1641 ) , .S0 ( n1693 ) , .Y ( n1862 ) ) ;
MXI2X1 U1622 ( .A ( n1644 ) , .B ( n1643 ) , .S0 ( n2239 ) , .Y ( n1860 ) ) ;
AOI2BB2X4 U1623 ( .B0 ( n1857 ) , .B1 ( n1856 ) , .A0N ( n1862 ) , 
    .A1N ( n1860 ) , .Y ( n1667 ) ) ;
INVXL U1627 ( .A ( n1648 ) , .Y ( n1649 ) ) ;
MXI2X1 U1628 ( .A ( n1650 ) , .B ( n1649 ) , .S0 ( n2239 ) , .Y ( n1664 ) ) ;
NAND2X2 U1630 ( .A ( n1667 ) , .B ( n1652 ) , .Y ( n1653 ) ) ;
OAI21X3 ctmTdsLR_1_901 ( .A0 ( n1890 ) , .A1 ( n1883 ) , .B0 ( popt_net_18 ) , 
    .Y ( n1905 ) ) ;
INVXL U1633 ( .A ( n1658 ) , .Y ( n1659 ) ) ;
AOI2BB2X1 U1636 ( .B0 ( n1862 ) , .B1 ( n1860 ) , .A0N ( n1815 ) , 
    .A1N ( n1817 ) , .Y ( n1684 ) ) ;
INVX1 U1637 ( .A ( n1664 ) , .Y ( n1833 ) ) ;
INVX2 U1638 ( .A ( n1832 ) , .Y ( n1665 ) ) ;
OAI22X2 U1639 ( .A0 ( n1833 ) , .A1 ( n1665 ) , .B0 ( n1857 ) , 
    .B1 ( n1856 ) , .Y ( n1666 ) ) ;
CLKNAND2X2 U1640 ( .A ( n1667 ) , .B ( n1666 ) , .Y ( n1685 ) ) ;
NAND3XL U1641 ( .A ( n1688 ) , .B ( n1684 ) , .C ( n1685 ) , .Y ( n1668 ) ) ;
CLKNAND2X2 U1642 ( .A ( n1815 ) , .B ( n1817 ) , .Y ( n1689 ) ) ;
NAND2X1 U1643 ( .A ( n1668 ) , .B ( n1689 ) , .Y ( n1674 ) ) ;
INVXL U1644 ( .A ( n1669 ) , .Y ( n1671 ) ) ;
NOR2XL U1645 ( .A ( n1671 ) , .B ( n1670 ) , .Y ( n1828 ) ) ;
NAND2XL U1646 ( .A ( n1673 ) , .B ( n1672 ) , .Y ( n1830 ) ) ;
ACHCINX2 U1647 ( .CIN ( n1674 ) , .A ( n1828 ) , .B ( n1830 ) , 
    .CO ( n1679 ) ) ;
NOR2XL U1648 ( .A ( ZBUF_62_8 ) , .B ( n2230 ) , .Y ( n1676 ) ) ;
NOR2XL U1650 ( .A ( ZBUF_62_8 ) , .B ( n1677 ) , .Y ( n1678 ) ) ;
NAND2BX2 U1651 ( .AN ( n1679 ) , .B ( n1678 ) , .Y ( n1981 ) ) ;
OAI22X1 U1652 ( .A0 ( X6[5] ) , .A1 ( n1982 ) , .B0 ( n1981 ) , 
    .B1 ( X5[5] ) , .Y ( n1726 ) ) ;
NAND2XL U1653 ( .A ( n1693 ) , .B ( n1680 ) , .Y ( n1797 ) ) ;
AOI2BB2X2 U1655 ( .B0 ( n1828 ) , .B1 ( n1830 ) , .A0N ( n1797 ) , 
    .A1N ( n1683 ) , .Y ( n1690 ) ) ;
NAND2X4 U1658 ( .A ( n1688 ) , .B ( n1687 ) , .Y ( n1692 ) ) ;
OAI21X1 U1659 ( .A0 ( n1828 ) , .A1 ( n1830 ) , .B0 ( n1689 ) , .Y ( n1691 ) ) ;
NAND2X2 U1660 ( .A ( n1691 ) , .B ( n1690 ) , .Y ( n1816 ) ) ;
NAND2X8 U1661 ( .A ( n1692 ) , .B ( n1816 ) , .Y ( n1861 ) ) ;
NAND2X2 U1662 ( .A ( n1861 ) , .B ( ZBUF_62_8 ) , .Y ( n1696 ) ) ;
INVXL U1663 ( .A ( n1695 ) , .Y ( n1694 ) ) ;
OAI22XL U1666 ( .A0 ( X7[5] ) , .A1 ( n1984 ) , .B0 ( n1983 ) , 
    .B1 ( X8[5] ) , .Y ( n1725 ) ) ;
OAI21XL U1667 ( .A0 ( n1704 ) , .A1 ( n1698 ) , .B0 ( n1697 ) , .Y ( n1706 ) ) ;
AND2XL U1668 ( .A ( n1700 ) , .B ( n1699 ) , .Y ( n1703 ) ) ;
INVXL U1669 ( .A ( n1701 ) , .Y ( n1702 ) ) ;
OAI21XL U1670 ( .A0 ( n1704 ) , .A1 ( n1703 ) , .B0 ( n1702 ) , .Y ( n1705 ) ) ;
INVXL U1672 ( .A ( n1707 ) , .Y ( n1708 ) ) ;
NAND2XL U1673 ( .A ( n1709 ) , .B ( n1708 ) , .Y ( n1714 ) ) ;
NAND2XL U1674 ( .A ( n1718 ) , .B ( n1710 ) , .Y ( n1711 ) ) ;
AOI31XL U1675 ( .A0 ( n1714 ) , .A1 ( n1713 ) , .A2 ( n1712 ) , 
    .B0 ( n1711 ) , .Y ( n1715 ) ) ;
NAND2BX4 U1676 ( .AN ( n1861 ) , .B ( n1715 ) , .Y ( n1986 ) ) ;
INVXL U1677 ( .A ( n1742 ) , .Y ( n1721 ) ) ;
NOR2XL U1678 ( .A ( n1721 ) , .B ( n1716 ) , .Y ( n1717 ) ) ;
OAI22XL U1680 ( .A0 ( X3[5] ) , .A1 ( n1986 ) , .B0 ( n1985 ) , 
    .B1 ( X1[5] ) , .Y ( n1724 ) ) ;
NOR2XL U1681 ( .A ( n1742 ) , .B ( n1718 ) , .Y ( n1719 ) ) ;
NAND2BX4 U1682 ( .AN ( n1861 ) , .B ( n1719 ) , .Y ( n1988 ) ) ;
NOR2XL U1683 ( .A ( n1721 ) , .B ( n1720 ) , .Y ( n1722 ) ) ;
OAI22XL U1685 ( .A0 ( X4[5] ) , .A1 ( n1988 ) , .B0 ( n1987 ) , 
    .B1 ( X2[5] ) , .Y ( n1723 ) ) ;
OR4X2 U1686 ( .A ( n1726 ) , .B ( n1725 ) , .C ( n1724 ) , .D ( n1723 ) , 
    .Y ( n1908 ) ) ;
INVXL U1687 ( .A ( ZBUF_482_2 ) , .Y ( n2205 ) ) ;
INVXL U1688 ( .A ( n1727 ) , .Y ( n1751 ) ) ;
NOR2XL U1690 ( .A ( Xt_temp[1] ) , .B ( n2162 ) , .Y ( n1728 ) ) ;
INVXL U1691 ( .A ( n1728 ) , .Y ( n1736 ) ) ;
NOR2XL U1692 ( .A ( Xt_temp[0] ) , .B ( n2161 ) , .Y ( n1737 ) ) ;
INVXL U1693 ( .A ( n1737 ) , .Y ( n1730 ) ) ;
INVXL U1695 ( .A ( n1735 ) , .Y ( n1729 ) ) ;
AOI21XL U1696 ( .A0 ( n1736 ) , .A1 ( n1730 ) , .B0 ( n1729 ) , .Y ( n1768 ) ) ;
INVXL U1697 ( .A ( ZBUF_748_2 ) , .Y ( n1731 ) ) ;
NOR2XL U1698 ( .A ( Xt_temp[2] ) , .B ( n1731 ) , .Y ( n1767 ) ) ;
INVXL U1699 ( .A ( n1767 ) , .Y ( n1732 ) ) ;
NAND2XL U1700 ( .A ( Xt_temp[2] ) , .B ( n1731 ) , .Y ( n1766 ) ) ;
NAND2XL U1701 ( .A ( n1732 ) , .B ( n1766 ) , .Y ( n1733 ) ) ;
XOR2X1 U1702 ( .A ( n1768 ) , .B ( n1733 ) , .Y ( n1750 ) ) ;
INVX1 U1703 ( .A ( n1750 ) , .Y ( n1758 ) ) ;
INVXL U1704 ( .A ( n1734 ) , .Y ( n1748 ) ) ;
MXI2XL U1705 ( .A ( n1748 ) , .B ( n1753 ) , .S0 ( n1861 ) , .Y ( n1739 ) ) ;
NAND2XL U1706 ( .A ( n1736 ) , .B ( n1735 ) , .Y ( n1738 ) ) ;
XOR2XL U1707 ( .A ( n1738 ) , .B ( n1737 ) , .Y ( n1755 ) ) ;
AOI2BB2X2 U1708 ( .B0 ( n1740 ) , .B1 ( n1758 ) , .A0N ( n1739 ) , 
    .A1N ( n1755 ) , .Y ( n1762 ) ) ;
XNOR2XL U1709 ( .A ( Xt_temp[0] ) , .B ( n2161 ) , .Y ( n1761 ) ) ;
INVXL U1710 ( .A ( n1741 ) , .Y ( n1743 ) ) ;
MXI2XL U1711 ( .A ( n1744 ) , .B ( n1743 ) , .S0 ( n1742 ) , .Y ( n1746 ) ) ;
MXI2XL U1712 ( .A ( n1746 ) , .B ( n1745 ) , .S0 ( n1861 ) , .Y ( n1760 ) ) ;
INVXL U1713 ( .A ( n1747 ) , .Y ( n1749 ) ) ;
AOI21XL U1714 ( .A0 ( n1749 ) , .A1 ( n1758 ) , .B0 ( n1748 ) , .Y ( n1756 ) ) ;
NOR2XL U1715 ( .A ( n1751 ) , .B ( n1750 ) , .Y ( n1752 ) ) ;
OAI21X1 U1716 ( .A0 ( n1753 ) , .A1 ( n1752 ) , .B0 ( n1861 ) , .Y ( n1754 ) ) ;
OAI21X1 U1718 ( .A0 ( n1740 ) , .A1 ( n1758 ) , .B0 ( n1757 ) , .Y ( n1759 ) ) ;
AOI31X4 U1719 ( .A0 ( n1762 ) , .A1 ( n1761 ) , .A2 ( n1760 ) , 
    .B0 ( n1759 ) , .Y ( n1869 ) ) ;
INVXL U1720 ( .A ( n1763 ) , .Y ( n1764 ) ) ;
OAI21XL U1722 ( .A0 ( n1768 ) , .A1 ( n1767 ) , .B0 ( n1766 ) , .Y ( n1793 ) ) ;
INVXL U1723 ( .A ( n1793 ) , .Y ( n1774 ) ) ;
NOR2XL U1724 ( .A ( Xt_temp[3] ) , .B ( n2160 ) , .Y ( n1788 ) ) ;
NAND2XL U1725 ( .A ( Xt_temp[3] ) , .B ( n2160 ) , .Y ( n1790 ) ) ;
OAI21XL U1726 ( .A0 ( n1774 ) , .A1 ( n1788 ) , .B0 ( n1790 ) , .Y ( n1771 ) ) ;
NOR2XL U1727 ( .A ( Xt_temp[4] ) , .B ( n2159 ) , .Y ( n1791 ) ) ;
INVXL U1728 ( .A ( n1791 ) , .Y ( n1769 ) ) ;
NAND2XL U1729 ( .A ( Xt_temp[4] ) , .B ( n2159 ) , .Y ( n1789 ) ) ;
NAND2XL U1730 ( .A ( n1769 ) , .B ( n1789 ) , .Y ( n1770 ) ) ;
XNOR2X1 U1731 ( .A ( n1771 ) , .B ( n1770 ) , .Y ( n1782 ) ) ;
INVXL U1732 ( .A ( n1782 ) , .Y ( n1839 ) ) ;
INVXL U1733 ( .A ( n1788 ) , .Y ( n1772 ) ) ;
NAND2XL U1734 ( .A ( n1772 ) , .B ( n1790 ) , .Y ( n1773 ) ) ;
XOR2XL U1735 ( .A ( n1774 ) , .B ( n1773 ) , .Y ( n1780 ) ) ;
INVXL U1736 ( .A ( n1780 ) , .Y ( n1775 ) ) ;
NAND2XL U1737 ( .A ( n1839 ) , .B ( n1775 ) , .Y ( n1841 ) ) ;
INVXL U1738 ( .A ( n1841 ) , .Y ( n1776 ) ) ;
NAND2XL U1739 ( .A ( n1840 ) , .B ( n1776 ) , .Y ( n1785 ) ) ;
INVXL U1740 ( .A ( n1777 ) , .Y ( n1778 ) ) ;
MXI2X1 U1741 ( .A ( n1779 ) , .B ( n1778 ) , .S0 ( n1861 ) , .Y ( n1842 ) ) ;
INVX1 U1742 ( .A ( n1842 ) , .Y ( n1781 ) ) ;
NAND2XL U1743 ( .A ( n1782 ) , .B ( n1780 ) , .Y ( n1838 ) ) ;
NAND2X1 U1744 ( .A ( n1781 ) , .B ( n1838 ) , .Y ( n1784 ) ) ;
INVXL U1745 ( .A ( n1840 ) , .Y ( n1783 ) ) ;
MXI2X2 U1747 ( .A ( n1787 ) , .B ( n1786 ) , .S0 ( n1861 ) , .Y ( n1875 ) ) ;
NOR2XL U1748 ( .A ( n1791 ) , .B ( n1788 ) , .Y ( n1794 ) ) ;
OAI21XL U1749 ( .A0 ( n1791 ) , .A1 ( n1790 ) , .B0 ( n1789 ) , .Y ( n1792 ) ) ;
AOI21XL U1750 ( .A0 ( n1794 ) , .A1 ( n1793 ) , .B0 ( n1792 ) , .Y ( n1801 ) ) ;
NOR2XL U1751 ( .A ( Xt_temp[5] ) , .B ( n2158 ) , .Y ( n1800 ) ) ;
INVXL U1752 ( .A ( n1800 ) , .Y ( n1795 ) ) ;
NAND2XL U1753 ( .A ( Xt_temp[5] ) , .B ( n2158 ) , .Y ( n1799 ) ) ;
NAND2XL U1754 ( .A ( n1795 ) , .B ( n1799 ) , .Y ( n1796 ) ) ;
XOR2XL U1755 ( .A ( n1801 ) , .B ( n1796 ) , .Y ( n1872 ) ) ;
INVXL U1756 ( .A ( n1797 ) , .Y ( n1798 ) ) ;
NAND2X2 U1757 ( .A ( n1861 ) , .B ( n1798 ) , .Y ( n1814 ) ) ;
OAI21X1 U1758 ( .A0 ( n1801 ) , .A1 ( n1800 ) , .B0 ( n1799 ) , .Y ( n1837 ) ) ;
NOR2XL U1759 ( .A ( Xt_temp[6] ) , .B ( n2157 ) , .Y ( n1802 ) ) ;
INVXL U1760 ( .A ( n1802 ) , .Y ( n1835 ) ) ;
NAND2XL U1761 ( .A ( Xt_temp[6] ) , .B ( n2157 ) , .Y ( n1834 ) ) ;
INVXL U1762 ( .A ( n1834 ) , .Y ( n1803 ) ) ;
AOI21XL U1763 ( .A0 ( n1837 ) , .A1 ( n1835 ) , .B0 ( n1803 ) , .Y ( n1855 ) ) ;
NOR2XL U1764 ( .A ( Xt_temp[7] ) , .B ( n2156 ) , .Y ( n1851 ) ) ;
NAND2XL U1765 ( .A ( Xt_temp[7] ) , .B ( n2156 ) , .Y ( n1852 ) ) ;
OAI21XL U1766 ( .A0 ( n1855 ) , .A1 ( n1851 ) , .B0 ( n1852 ) , .Y ( n1850 ) ) ;
NOR2XL U1767 ( .A ( Xt_temp[8] ) , .B ( n2155 ) , .Y ( n1804 ) ) ;
INVXL U1768 ( .A ( n1804 ) , .Y ( n1848 ) ) ;
NAND2XL U1769 ( .A ( Xt_temp[8] ) , .B ( n2155 ) , .Y ( n1847 ) ) ;
INVXL U1770 ( .A ( n1847 ) , .Y ( n1805 ) ) ;
AOI21XL U1771 ( .A0 ( n1850 ) , .A1 ( n1848 ) , .B0 ( n1805 ) , .Y ( n1823 ) ) ;
INVXL U1772 ( .A ( S9[9] ) , .Y ( n1806 ) ) ;
NOR2XL U1773 ( .A ( Xt_temp[9] ) , .B ( n1806 ) , .Y ( n1819 ) ) ;
NAND2XL U1774 ( .A ( Xt_temp[9] ) , .B ( n1806 ) , .Y ( n1820 ) ) ;
OAI21XL U1775 ( .A0 ( n1823 ) , .A1 ( n1819 ) , .B0 ( n1820 ) , .Y ( n1827 ) ) ;
NOR2XL U1776 ( .A ( n2017 ) , .B ( n2154 ) , .Y ( n1807 ) ) ;
INVXL U1777 ( .A ( n1807 ) , .Y ( n1825 ) ) ;
NAND2XL U1778 ( .A ( n2017 ) , .B ( n2154 ) , .Y ( n1824 ) ) ;
INVXL U1779 ( .A ( n1824 ) , .Y ( n1808 ) ) ;
AOI21XL U1780 ( .A0 ( n1827 ) , .A1 ( n1825 ) , .B0 ( n1808 ) , .Y ( n1813 ) ) ;
NOR2XL U1781 ( .A ( Xt_temp[11] ) , .B ( n2153 ) , .Y ( n1809 ) ) ;
INVXL U1782 ( .A ( n1809 ) , .Y ( n1811 ) ) ;
NAND2XL U1783 ( .A ( Xt_temp[11] ) , .B ( n2153 ) , .Y ( n1810 ) ) ;
NAND2X2 U1784 ( .A ( n1811 ) , .B ( n1810 ) , .Y ( n1812 ) ) ;
INVXL U1787 ( .A ( n1815 ) , .Y ( n1818 ) ) ;
MXI2X1 U1788 ( .A ( n1818 ) , .B ( n1817 ) , .S0 ( n1816 ) , .Y ( n1897 ) ) ;
INVXL U1789 ( .A ( n1819 ) , .Y ( n1821 ) ) ;
NAND2XL U1790 ( .A ( n1821 ) , .B ( n1820 ) , .Y ( n1822 ) ) ;
XOR2XL U1791 ( .A ( n1823 ) , .B ( n1822 ) , .Y ( n1896 ) ) ;
NAND2XL U1792 ( .A ( n1825 ) , .B ( n1824 ) , .Y ( n1826 ) ) ;
XNOR2XL U1793 ( .A ( n1827 ) , .B ( n1826 ) , .Y ( n1895 ) ) ;
INVXL U1794 ( .A ( n1828 ) , .Y ( n1829 ) ) ;
NOR2XL U1795 ( .A ( n1830 ) , .B ( n1829 ) , .Y ( n1893 ) ) ;
NOR2BXL U1796 ( .AN ( n1895 ) , .B ( n1893 ) , .Y ( n1892 ) ) ;
MXI2X3 U1800 ( .A ( n1833 ) , .B ( n1832 ) , .S0 ( n1861 ) , .Y ( n1873 ) ) ;
NAND2XL U1801 ( .A ( n1835 ) , .B ( n1834 ) , .Y ( n1836 ) ) ;
AOI2BB2X1 U1803 ( .B0 ( n1873 ) , .B1 ( n1874 ) , .A0N ( n1840 ) , 
    .A1N ( n1838 ) , .Y ( n1845 ) ) ;
CLKNAND2X2 U1804 ( .A ( n1840 ) , .B ( n1839 ) , .Y ( n1843 ) ) ;
NAND2XL U1807 ( .A ( n1848 ) , .B ( n1847 ) , .Y ( n1849 ) ) ;
INVXL U1809 ( .A ( n1851 ) , .Y ( n1853 ) ) ;
NAND2XL U1810 ( .A ( n1853 ) , .B ( n1852 ) , .Y ( n1854 ) ) ;
XOR2XL U1811 ( .A ( n1855 ) , .B ( n1854 ) , .Y ( n1886 ) ) ;
NAND2XL U1812 ( .A ( n1891 ) , .B ( n1886 ) , .Y ( n1883 ) ) ;
INVXL U1813 ( .A ( n1856 ) , .Y ( n1858 ) ) ;
MXI2X3 U1814 ( .A ( n1858 ) , .B ( n1857 ) , .S0 ( n1861 ) , .Y ( n1890 ) ) ;
INVXL U1815 ( .A ( n1891 ) , .Y ( n1859 ) ) ;
INVXL U1817 ( .A ( n1860 ) , .Y ( n1863 ) ) ;
OR2XL U1819 ( .A ( n1891 ) , .B ( n1886 ) , .Y ( n1864 ) ) ;
AND2X4 ctmTdsLR_1_909 ( .A ( popt_net_23 ) , .B ( popt_net_24 ) , 
    .Y ( n190 ) ) ;
NAND2X1 ctmTdsLR_2_910 ( .A ( n105 ) , .B ( n239 ) , .Y ( popt_net_23 ) ) ;
INVX2 U1824 ( .A ( n1875 ) , .Y ( n1879 ) ) ;
INVXL U1825 ( .A ( n1874 ) , .Y ( n1878 ) ) ;
AOI21XL U1826 ( .A0 ( n1872 ) , .A1 ( n1874 ) , .B0 ( n1881 ) , .Y ( n1870 ) ) ;
NAND2XL U1827 ( .A ( n1884 ) , .B ( n1870 ) , .Y ( n1871 ) ) ;
AOI21X2 U1828 ( .A0 ( n1873 ) , .A1 ( n1872 ) , .B0 ( n1871 ) , .Y ( n1877 ) ) ;
OAI21X1 U1829 ( .A0 ( n1875 ) , .A1 ( n1874 ) , .B0 ( n1873 ) , .Y ( n1876 ) ) ;
NAND2X2 U1831 ( .A ( n1880 ) , .B ( n1887 ) , .Y ( n1889 ) ) ;
INVXL U1832 ( .A ( n1881 ) , .Y ( n1882 ) ) ;
NAND3X1 U1833 ( .A ( n1884 ) , .B ( n1883 ) , .C ( n1882 ) , .Y ( n1885 ) ) ;
OA21X4 ctmTdsLR_3_911 ( .A0 ( n240 ) , .A1 ( n287 ) , .B0 ( n241 ) , 
    .Y ( popt_net_24 ) ) ;
INVXL U1836 ( .A ( n1892 ) , .Y ( n1899 ) ) ;
INVXL U1837 ( .A ( n1893 ) , .Y ( n1894 ) ) ;
OAI22XL U1838 ( .A0 ( n1897 ) , .A1 ( n1896 ) , .B0 ( n1895 ) , 
    .B1 ( n1894 ) , .Y ( n1898 ) ) ;
NAND3XL U1839 ( .A ( n1900 ) , .B ( n1899 ) , .C ( n1898 ) , .Y ( n1901 ) ) ;
NAND2X2 U1840 ( .A ( n1902 ) , .B ( n1901 ) , .Y ( n1903 ) ) ;
OAI22X1 U1844 ( .A0 ( n1910 ) , .A1 ( n1982 ) , .B0 ( n1981 ) , 
    .B1 ( n1909 ) , .Y ( n1919 ) ) ;
OAI22XL U1845 ( .A0 ( S8[2] ) , .A1 ( n1983 ) , .B0 ( n1984 ) , 
    .B1 ( n1911 ) , .Y ( n1918 ) ) ;
OAI22XL U1846 ( .A0 ( n1913 ) , .A1 ( n1987 ) , .B0 ( n1986 ) , 
    .B1 ( n1912 ) , .Y ( n1917 ) ) ;
OAI22XL U1847 ( .A0 ( n1915 ) , .A1 ( n1988 ) , .B0 ( n1985 ) , 
    .B1 ( n1914 ) , .Y ( n1916 ) ) ;
OR4X2 U1848 ( .A ( n1919 ) , .B ( n1918 ) , .C ( n1917 ) , .D ( n1916 ) , 
    .Y ( n1921 ) ) ;
INVXL U1849 ( .A ( ZBUF_748_2 ) , .Y ( n1920 ) ) ;
OAI22X1 U1851 ( .A0 ( X6[4] ) , .A1 ( n1982 ) , .B0 ( n1981 ) , 
    .B1 ( X5[4] ) , .Y ( n1925 ) ) ;
AND3X4 ctmTdsLR_1_1118 ( .A ( n1576 ) , .B ( n1712 ) , .C ( n1575 ) , 
    .Y ( n2236 ) ) ;
OAI22XL U1853 ( .A0 ( X3[4] ) , .A1 ( n1986 ) , .B0 ( n1985 ) , 
    .B1 ( X1[4] ) , .Y ( n1923 ) ) ;
OAI22XL U1854 ( .A0 ( X4[4] ) , .A1 ( n1988 ) , .B0 ( n1987 ) , 
    .B1 ( X2[4] ) , .Y ( n1922 ) ) ;
INVXL U1856 ( .A ( ZBUF_635_2 ) , .Y ( n1926 ) ) ;
OAI22X1 U1858 ( .A0 ( n1929 ) , .A1 ( n1982 ) , .B0 ( n1981 ) , 
    .B1 ( n1928 ) , .Y ( n1939 ) ) ;
OAI22XL U1859 ( .A0 ( n1931 ) , .A1 ( n1983 ) , .B0 ( n1984 ) , 
    .B1 ( n1930 ) , .Y ( n1938 ) ) ;
OAI22XL U1860 ( .A0 ( n1933 ) , .A1 ( n1987 ) , .B0 ( n1986 ) , 
    .B1 ( n1932 ) , .Y ( n1937 ) ) ;
OAI22XL U1861 ( .A0 ( n1935 ) , .A1 ( n1988 ) , .B0 ( n1985 ) , 
    .B1 ( n1934 ) , .Y ( n1936 ) ) ;
OR4X2 U1862 ( .A ( n1939 ) , .B ( n1938 ) , .C ( n1937 ) , .D ( n1936 ) , 
    .Y ( n1941 ) ) ;
INVXL U1863 ( .A ( S9[1] ) , .Y ( n1940 ) ) ;
MXI2X4 U1864 ( .A ( n1941 ) , .B ( n1940 ) , .S0 ( n1993 ) , .Y ( n1958 ) ) ;
NOR2X4 U1865 ( .A ( n1972 ) , .B ( n1971 ) , .Y ( n2053 ) ) ;
ADDFHX2 U1866 ( .A ( Xt_temp[4] ) , .B ( n1998 ) , .CI ( n1958 ) , 
    .CO ( n1971 ) , .S ( n1970 ) ) ;
OAI22X1 U1867 ( .A0 ( X6[3] ) , .A1 ( n1982 ) , .B0 ( n1981 ) , 
    .B1 ( X5[3] ) , .Y ( n1945 ) ) ;
NAND2X2 ctmTdsLR_1_926 ( .A ( popt_net_32 ) , .B ( n1542 ) , .Y ( n1704 ) ) ;
OAI22X1 U1869 ( .A0 ( X3[3] ) , .A1 ( n1986 ) , .B0 ( n1985 ) , 
    .B1 ( X1[3] ) , .Y ( n1943 ) ) ;
OAI22X1 U1870 ( .A0 ( X4[3] ) , .A1 ( n1988 ) , .B0 ( n1987 ) , 
    .B1 ( X2[3] ) , .Y ( n1942 ) ) ;
OAI211X2 ctmTdsLR_2_927 ( .A0 ( n1539 ) , .A1 ( n1540 ) , .B0 ( n1537 ) , 
    .C0 ( n1538 ) , .Y ( popt_net_32 ) ) ;
INVXL U1872 ( .A ( ZBUF_659_2 ) , .Y ( n1946 ) ) ;
OAI22X1 U1877 ( .A0 ( S6[0] ) , .A1 ( n1982 ) , .B0 ( n1981 ) , 
    .B1 ( S5[0] ) , .Y ( n1951 ) ) ;
OAI22XL U1878 ( .A0 ( S8[0] ) , .A1 ( n1983 ) , .B0 ( n1984 ) , 
    .B1 ( S7[0] ) , .Y ( n1950 ) ) ;
OAI22XL U1879 ( .A0 ( S2[0] ) , .A1 ( n1987 ) , .B0 ( n1986 ) , 
    .B1 ( S3[0] ) , .Y ( n1949 ) ) ;
OAI22XL U1880 ( .A0 ( S4[0] ) , .A1 ( n1988 ) , .B0 ( n1985 ) , 
    .B1 ( S1[0] ) , .Y ( n1948 ) ) ;
OR4X2 U1881 ( .A ( n1951 ) , .B ( n1950 ) , .C ( n1949 ) , .D ( n1948 ) , 
    .Y ( n1953 ) ) ;
INVXL U1882 ( .A ( S9[0] ) , .Y ( n1952 ) ) ;
INVXL U1887 ( .A ( n1955 ) , .Y ( n2065 ) ) ;
NOR2X1 U1889 ( .A ( n1958 ) , .B ( Xt_temp[1] ) , .Y ( n1956 ) ) ;
CLKNAND2X2 U1891 ( .A ( n1964 ) , .B ( Xt_temp[0] ) , .Y ( n1957 ) ) ;
NAND2XL U1893 ( .A ( n1958 ) , .B ( Xt_temp[1] ) , .Y ( n1959 ) ) ;
INVXL U1894 ( .A ( n1959 ) , .Y ( n1960 ) ) ;
NAND2XL U1896 ( .A ( n1996 ) , .B ( Xt_temp[2] ) , .Y ( n1963 ) ) ;
INVXL U1897 ( .A ( n1963 ) , .Y ( n2064 ) ) ;
CLKNAND2X2 U1898 ( .A ( n1965 ) , .B ( n1964 ) , .Y ( n2067 ) ) ;
INVX2 U1899 ( .A ( n2067 ) , .Y ( n1966 ) ) ;
OAI21X4 U1901 ( .A0 ( n1968 ) , .A1 ( n2063 ) , .B0 ( n1967 ) , .Y ( n2052 ) ) ;
CLKNAND2X2 U1903 ( .A ( n1972 ) , .B ( n1971 ) , .Y ( n2054 ) ) ;
OAI22XL U1906 ( .A0 ( X6[7] ) , .A1 ( n1982 ) , .B0 ( n1981 ) , 
    .B1 ( X5[7] ) , .Y ( n1978 ) ) ;
OAI22XL U1907 ( .A0 ( X7[7] ) , .A1 ( n1984 ) , .B0 ( n1983 ) , 
    .B1 ( X8[7] ) , .Y ( n1977 ) ) ;
OAI22XL U1908 ( .A0 ( X3[7] ) , .A1 ( n1986 ) , .B0 ( n1988 ) , 
    .B1 ( X4[7] ) , .Y ( n1976 ) ) ;
OAI22XL U1909 ( .A0 ( X1[7] ) , .A1 ( n1985 ) , .B0 ( n1987 ) , 
    .B1 ( X2[7] ) , .Y ( n1975 ) ) ;
OR4X2 U1910 ( .A ( n1978 ) , .B ( n1977 ) , .C ( n1976 ) , .D ( n1975 ) , 
    .Y ( n1980 ) ) ;
INVXL U1911 ( .A ( X9[7] ) , .Y ( n1979 ) ) ;
OAI22XL U1913 ( .A0 ( X6[6] ) , .A1 ( n1982 ) , .B0 ( n1981 ) , 
    .B1 ( X5[6] ) , .Y ( n1992 ) ) ;
OAI22XL U1914 ( .A0 ( X7[6] ) , .A1 ( n1984 ) , .B0 ( n1983 ) , 
    .B1 ( X8[6] ) , .Y ( n1991 ) ) ;
OAI22XL U1915 ( .A0 ( X3[6] ) , .A1 ( n1986 ) , .B0 ( n1985 ) , 
    .B1 ( X1[6] ) , .Y ( n1990 ) ) ;
OAI22XL U1916 ( .A0 ( X4[6] ) , .A1 ( n1988 ) , .B0 ( n1987 ) , 
    .B1 ( X2[6] ) , .Y ( n1989 ) ) ;
OR4X2 U1917 ( .A ( n1992 ) , .B ( n1991 ) , .C ( n1990 ) , .D ( n1989 ) , 
    .Y ( n1995 ) ) ;
INVXL U1918 ( .A ( ZBUF_507_3 ) , .Y ( n1994 ) ) ;
ADDFHX2 U1921 ( .A ( Xt_temp[5] ) , .B ( n1999 ) , .CI ( n1996 ) , 
    .CO ( n2001 ) , .S ( n1972 ) ) ;
ADDHXL U1927 ( .A ( Xt_temp[8] ) , .B ( ZBUF_9_5 ) , .CO ( n2006 ) , 
    .S ( n2004 ) ) ;
NOR2XL U1928 ( .A ( n2007 ) , .B ( n2006 ) , .Y ( n2029 ) ) ;
NAND2XL U1930 ( .A ( n2035 ) , .B ( n2009 ) , .Y ( n2011 ) ) ;
NAND2XL U1932 ( .A ( n2003 ) , .B ( n2002 ) , .Y ( n2044 ) ) ;
NAND2XL U1934 ( .A ( n2005 ) , .B ( n2004 ) , .Y ( n2037 ) ) ;
NAND2XL U1935 ( .A ( n2007 ) , .B ( n2006 ) , .Y ( n2030 ) ) ;
OAI21XL U1936 ( .A0 ( n2037 ) , .A1 ( n2029 ) , .B0 ( n2030 ) , .Y ( n2008 ) ) ;
AOI21XL U1937 ( .A0 ( n2034 ) , .A1 ( n2009 ) , .B0 ( n2008 ) , .Y ( n2010 ) ) ;
NOR2XL U1940 ( .A ( n2015 ) , .B ( n2014 ) , .Y ( n2013 ) ) ;
INVXL U1941 ( .A ( n2013 ) , .Y ( n2071 ) ) ;
NAND2XL U1942 ( .A ( n2015 ) , .B ( n2014 ) , .Y ( n2022 ) ) ;
INVXL U1943 ( .A ( n2022 ) , .Y ( n2075 ) ) ;
ADDHXL U1945 ( .A ( n2017 ) , .B ( n2016 ) , .CO ( n2019 ) , .S ( n2015 ) ) ;
NOR2XL U1946 ( .A ( n2019 ) , .B ( Xt_temp[11] ) , .Y ( n2018 ) ) ;
INVXL U1947 ( .A ( n2018 ) , .Y ( n2076 ) ) ;
NAND2XL U1948 ( .A ( n2019 ) , .B ( Xt_temp[11] ) , .Y ( n2073 ) ) ;
NAND2XL U1949 ( .A ( n2076 ) , .B ( n2073 ) , .Y ( n2020 ) ) ;
NAND2XL U1951 ( .A ( n2071 ) , .B ( n2022 ) , .Y ( n2023 ) ) ;
INVX2 U1953 ( .A ( ZBUF_46_0 ) , .Y ( n2051 ) ) ;
NOR2XL U1955 ( .A ( n2025 ) , .B ( n2036 ) , .Y ( n2028 ) ) ;
INVXL U1956 ( .A ( n2034 ) , .Y ( n2026 ) ) ;
OAI21XL U1957 ( .A0 ( n2026 ) , .A1 ( n2036 ) , .B0 ( n2037 ) , .Y ( n2027 ) ) ;
INVXL U1959 ( .A ( n2029 ) , .Y ( n2031 ) ) ;
NAND2X2 U1960 ( .A ( n2031 ) , .B ( n2030 ) , .Y ( n2032 ) ) ;
INVXL U1963 ( .A ( n2036 ) , .Y ( n2038 ) ) ;
NAND2XL U1964 ( .A ( n2038 ) , .B ( n2037 ) , .Y ( n2039 ) ) ;
INVX2 U1966 ( .A ( n2041 ) , .Y ( n2049 ) ) ;
INVX1 U1969 ( .A ( n2043 ) , .Y ( n2045 ) ) ;
NAND2X2 U1970 ( .A ( n2045 ) , .B ( n2044 ) , .Y ( n2046 ) ) ;
NAND2XL U1972 ( .A ( n2049 ) , .B ( n2048 ) , .Y ( n2050 ) ) ;
INVXL U1976 ( .A ( n2053 ) , .Y ( n2055 ) ) ;
NAND2XL U1977 ( .A ( n2055 ) , .B ( n2054 ) , .Y ( n2056 ) ) ;
INVX2 U1979 ( .A ( n2058 ) , .Y ( n2060 ) ) ;
NAND2X1 U1980 ( .A ( n2060 ) , .B ( n2059 ) , .Y ( n2062 ) ) ;
NAND2XL U1984 ( .A ( n2068 ) , .B ( n2067 ) , .Y ( n2069 ) ) ;
NAND2XL U1986 ( .A ( n2071 ) , .B ( n2076 ) , .Y ( n2072 ) ) ;
INVXL U1987 ( .A ( n2072 ) , .Y ( n2079 ) ) ;
INVXL U1988 ( .A ( n2073 ) , .Y ( n2074 ) ) ;
AOI21XL U1989 ( .A0 ( n2076 ) , .A1 ( n2075 ) , .B0 ( n2074 ) , .Y ( n2077 ) ) ;
INVXL U1990 ( .A ( n2077 ) , .Y ( n2078 ) ) ;
INVXL U1994 ( .A ( n2082 ) , .Y ( n2084 ) ) ;
ADDFXL U1995 ( .A ( X[2] ) , .B ( X[5] ) , .CI ( n2083 ) , .CO ( n2091 ) , 
    .S ( N35 ) ) ;
ADDFXL U1996 ( .A ( X[1] ) , .B ( X[4] ) , .CI ( n2084 ) , .CO ( n2083 ) , 
    .S ( N34 ) ) ;
ADDFXL U2018 ( .A ( X[3] ) , .B ( X[6] ) , .CI ( n2091 ) , .CO ( n2092 ) , 
    .S ( N36 ) ) ;
NAND2XL U2019 ( .A ( X[6] ) , .B ( X[5] ) , .Y ( n2094 ) ) ;
ADDFXL U2020 ( .A ( X[4] ) , .B ( X[7] ) , .CI ( n2092 ) , .CO ( n2093 ) , 
    .S ( N37 ) ) ;
NAND2BXL U2022 ( .AN ( n2094 ) , .B ( n2093 ) , .Y ( n2096 ) ) ;
NOR2XL U2024 ( .A ( n2096 ) , .B ( n2095 ) , .Y ( N41 ) ) ;
XNOR2XL U2025 ( .A ( n2096 ) , .B ( X[7] ) , .Y ( N40 ) ) ;
AOI21XL U2026 ( .A0 ( n2093 ) , .A1 ( X[5] ) , .B0 ( X[6] ) , .Y ( n2098 ) ) ;
INVXL U2027 ( .A ( n2096 ) , .Y ( n2097 ) ) ;
XOR2XL U2029 ( .A ( n2093 ) , .B ( X[5] ) , .Y ( N38 ) ) ;
INVX2 U2002 ( .A ( n1677 ) , .Y ( n2230 ) ) ;
DFFRQXL X1_d_reg_6_ ( .D ( X1[6] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( X1_d[6] ) ) ;
DFFRQXL X1_d_reg_0_ ( .D ( S1[0] ) , .CK ( clk ) , .RN ( n2222 ) , 
    .Q ( X1_d[0] ) ) ;
DFFRQXL S9_reg_1_ ( .D ( X[1] ) , .CK ( clk ) , .RN ( n2222 ) , .Q ( S9[1] ) ) ;
DFFRQXL Xt_reg_7_ ( .D ( Xt_temp[7] ) , .CK ( clk ) , .RN ( n2225 ) , 
    .Q ( Xt[7] ) ) ;
DFFRQXL Xt_reg_6_ ( .D ( Xt_temp[6] ) , .CK ( clk ) , .RN ( n2224 ) , 
    .Q ( Xt[6] ) ) ;
DFFRQXL Xt_reg_5_ ( .D ( Xt_temp[5] ) , .CK ( clk ) , .RN ( n2224 ) , 
    .Q ( Xt[5] ) ) ;
DFFRQXL Xt_reg_4_ ( .D ( Xt_temp[4] ) , .CK ( clk ) , .RN ( n2226 ) , 
    .Q ( Xt[4] ) ) ;
DFFRQXL Xt_reg_1_ ( .D ( Xt_temp[1] ) , .CK ( clk ) , .RN ( n2222 ) , 
    .Q ( Xt[1] ) ) ;
DFFRQXL Xt_reg_0_ ( .D ( Xt_temp[0] ) , .CK ( clk ) , .RN ( n2222 ) , 
    .Q ( Xt[0] ) ) ;
CLKINVX6 U1992 ( .A ( n2081 ) , .Y ( Y[9] ) ) ;
CLKXOR2X4 U1950 ( .A ( n2021 ) , .B ( n2020 ) , .Y ( Y[8] ) ) ;
AOI21XL U1944 ( .A0 ( n2080 ) , .A1 ( n2071 ) , .B0 ( n2075 ) , .Y ( n2021 ) ) ;
XOR2X3 U1961 ( .A ( n2033 ) , .B ( n2032 ) , .Y ( Y[6] ) ) ;
AOI21X1 U1958 ( .A0 ( n2051 ) , .A1 ( n2028 ) , .B0 ( n2027 ) , .Y ( n2033 ) ) ;
CLKXOR2X2 U1965 ( .A ( n2040 ) , .B ( n2039 ) , .Y ( Y[5] ) ) ;
XOR2X8 U1971 ( .A ( n2047 ) , .B ( n2046 ) , .Y ( Y[4] ) ) ;
XNOR2X4 U1973 ( .A ( n2051 ) , .B ( n2050 ) , .Y ( Y[3] ) ) ;
XNOR2X1 U1978 ( .A ( n2057 ) , .B ( n2056 ) , .Y ( Y[2] ) ) ;
OAI21X1 U1975 ( .A0 ( n2061 ) , .A1 ( n2058 ) , .B0 ( n2059 ) , .Y ( n2057 ) ) ;
AOI21X1 U1983 ( .A0 ( n2066 ) , .A1 ( n2065 ) , .B0 ( n2064 ) , .Y ( n2070 ) ) ;
INVX2 U1982 ( .A ( n2063 ) , .Y ( n2066 ) ) ;
CLKINVX2 U1387 ( .A ( reset ) , .Y ( n2224 ) ) ;
CLKINVX2 U1998 ( .A ( reset ) , .Y ( n2226 ) ) ;
CLKINVX3 U15 ( .A ( reset ) , .Y ( n2221 ) ) ;
CLKINVX2 U152 ( .A ( reset ) , .Y ( n2222 ) ) ;
INVXL U2023 ( .A ( X[7] ) , .Y ( n2095 ) ) ;
CLKINVX2 U1997 ( .A ( reset ) , .Y ( n2225 ) ) ;
NAND2XL U1993 ( .A ( X[3] ) , .B ( X[0] ) , .Y ( n2082 ) ) ;
XOR2XL U2030 ( .A ( X[3] ) , .B ( X[0] ) , .Y ( N33 ) ) ;
CLKINVX2 U451 ( .A ( reset ) , .Y ( n2223 ) ) ;
XNOR2XL U75 ( .A ( n3900 ) , .B ( n3800 ) , .Y ( Xt_temp[11] ) ) ;
XOR2XL U66 ( .A ( n3300 ) , .B ( n30 ) , .Y ( n2017 ) ) ;
OAI211X2 U1830 ( .A0 ( n1879 ) , .A1 ( n1878 ) , .B0 ( n1877 ) , 
    .C0 ( n1876 ) , .Y ( n1904 ) ) ;
NAND2BX2 ctmTdsLR_1_920 ( .AN ( n1945 ) , .B ( popt_net_31 ) , .Y ( n1947 ) ) ;
NAND2X2 U447 ( .A ( n393 ) , .B ( n392 ) , .Y ( n397 ) ) ;
AOI21X2 U1631 ( .A0 ( n1655 ) , .A1 ( n1654 ) , .B0 ( n1653 ) , .Y ( n1656 ) ) ;
NOR2X2 U865 ( .A ( n844 ) , .B ( n843 ) , .Y ( n845 ) ) ;
NAND4X2 U864 ( .A ( n842 ) , .B ( n841 ) , .C ( n840 ) , .D ( n839 ) , 
    .Y ( n844 ) ) ;
INVX1 U861 ( .A ( n836 ) , .Y ( n841 ) ) ;
MXI2X2 U1617 ( .A ( n1636 ) , .B ( n1635 ) , .S0 ( n1693 ) , .Y ( n1857 ) ) ;
XNOR2XL U337 ( .A ( n273 ) , .B ( n1397 ) , .Y ( n1599 ) ) ;
XNOR2XL U340 ( .A ( n277 ) , .B ( n1397 ) , .Y ( n1598 ) ) ;
AOI2BB1X2 U727 ( .A0N ( n670 ) , .A1N ( n669 ) , .B0 ( n813 ) , .Y ( n690 ) ) ;
AOI22X2 U723 ( .A0 ( n664 ) , .A1 ( n663 ) , .B0 ( n711 ) , .B1 ( n713 ) , 
    .Y ( n670 ) ) ;
OAI21X1 U708 ( .A0 ( n648 ) , .A1 ( n813 ) , .B0 ( n647 ) , .Y ( n689 ) ) ;
NOR2BX1 U670 ( .AN ( n785 ) , .B ( n786 ) , .Y ( n676 ) ) ;
AOI21X1 U666 ( .A0 ( n639 ) , .A1 ( n637 ) , .B0 ( n591 ) , .Y ( n596 ) ) ;
NOR2X1 U654 ( .A ( n581 ) , .B ( n814 ) , .Y ( n683 ) ) ;
INVX2 U650 ( .A ( n816 ) , .Y ( n581 ) ) ;
AOI21X1 U591 ( .A0 ( n639 ) , .A1 ( n509 ) , .B0 ( n508 ) , .Y ( n517 ) ) ;
NAND2XL U623 ( .A ( n678 ) , .B ( n773 ) , .Y ( n681 ) ) ;
XOR2X2 U653 ( .A ( n580 ) , .B ( n579 ) , .Y ( n814 ) ) ;
AOI21X2 U647 ( .A0 ( n569 ) , .A1 ( n568 ) , .B0 ( n567 ) , .Y ( n573 ) ) ;
NAND3X3 U833 ( .A ( n797 ) , .B ( n796 ) , .C ( n795 ) , .Y ( n824 ) ) ;
NAND4X2 U828 ( .A ( n820 ) , .B ( n803 ) , .C ( n1646 ) , .D ( n802 ) , 
    .Y ( n796 ) ) ;
AOI21X1 U374 ( .A0 ( n375 ) , .A1 ( n314 ) , .B0 ( n313 ) , .Y ( n323 ) ) ;
NOR2XL ctmTdsLR_1_969 ( .A ( n1083 ) , .B ( n1078 ) , .Y ( n902 ) ) ;
NAND3XL U789 ( .A ( n737 ) , .B ( n1626 ) , .C ( n1611 ) , .Y ( n738 ) ) ;
NAND3X2 U810 ( .A ( n766 ) , .B ( n765 ) , .C ( n764 ) , .Y ( n832 ) ) ;
NAND2X8 ctmTdsLR_1_937 ( .A ( n848 ) , .B ( popt_net_36 ) , .Y ( n1693 ) ) ;
AOI21X1 U257 ( .A0 ( n301 ) , .A1 ( n175 ) , .B0 ( n174 ) , .Y ( n183 ) ) ;
XNOR2XL U1139 ( .A ( n1115 ) , .B ( n1397 ) , .Y ( n1606 ) ) ;
XNOR2XL U1142 ( .A ( n1119 ) , .B ( n1397 ) , .Y ( n1605 ) ) ;
XNOR2XL U1071 ( .A ( n1063 ) , .B ( n1034 ) , .Y ( n1557 ) ) ;
AOI21X1 U981 ( .A0 ( n934 ) , .A1 ( n992 ) , .B0 ( n933 ) , .Y ( n935 ) ) ;
NOR2XL U975 ( .A ( n994 ) , .B ( n999 ) , .Y ( n934 ) ) ;
NAND3XL U1034 ( .A ( n984 ) , .B ( n1497 ) , .C ( n1496 ) , .Y ( n985 ) ) ;
XNOR2X1 U1009 ( .A ( n1008 ) , .B ( n960 ) , .Y ( n1128 ) ) ;
MXI2X3 U1521 ( .A ( n1518 ) , .B ( n1517 ) , .S0 ( n1604 ) , .Y ( n1540 ) ) ;
AOI2B1X1 ctmTdsLR_1_970 ( .A1N ( popt_net_56 ) , .A0 ( n1444 ) , 
    .B0 ( n1442 ) , .Y ( n1447 ) ) ;
CLKNAND2X2 U1396 ( .A ( n1365 ) , .B ( n1364 ) , .Y ( n1446 ) ) ;
NOR2X2 ctmTdsLR_1_973 ( .A ( n1496 ) , .B ( popt_net_57 ) , .Y ( n1135 ) ) ;
NAND2X1 ctmTdsLR_1_982 ( .A ( popt_net_59 ) , .B ( popt_net_60 ) , 
    .Y ( n1574 ) ) ;
NOR3BX1 ctmTdsLR_2_921 ( .AN ( popt_net_28 ) , .B ( popt_net_29 ) , 
    .C ( popt_net_30 ) , .Y ( popt_net_31 ) ) ;
AOI22X2 U1392 ( .A0 ( n1552 ) , .A1 ( n1554 ) , .B0 ( n1360 ) , 
    .B1 ( n2229 ) , .Y ( n1361 ) ) ;
AOI21X1 U1232 ( .A0 ( n1201 ) , .A1 ( n1291 ) , .B0 ( n1200 ) , .Y ( n1202 ) ) ;
OAI21X2 U496 ( .A0 ( n585 ) , .A1 ( n640 ) , .B0 ( n586 ) , .Y ( n521 ) ) ;
NOR2X1 U488 ( .A ( n429 ) , .B ( n428 ) , .Y ( n523 ) ) ;
NOR2X1 U485 ( .A ( n583 ) , .B ( n585 ) , .Y ( n522 ) ) ;
NOR2X2 U577 ( .A ( n590 ) , .B ( n592 ) , .Y ( n530 ) ) ;
OAI21X2 U587 ( .A0 ( n592 ) , .A1 ( n636 ) , .B0 ( n593 ) , .Y ( n535 ) ) ;
AOI21X2 U418 ( .A0 ( n3601 ) , .A1 ( n359 ) , .B0 ( n358 ) , .Y ( n369 ) ) ;
OAI21X1 U320 ( .A0 ( n285 ) , .A1 ( n281 ) , .B0 ( n282 ) , .Y ( n251 ) ) ;
XOR2XL U293 ( .A ( n215 ) , .B ( n214 ) , .Y ( n327 ) ) ;
AOI21XL U290 ( .A0 ( n301 ) , .A1 ( n210 ) , .B0 ( n209 ) , .Y ( n215 ) ) ;
OAI21X1 U391 ( .A0 ( n331 ) , .A1 ( n806 ) , .B0 ( n784 ) , .Y ( n333 ) ) ;
XNOR2X1 U331 ( .A ( n265 ) , .B ( n264 ) , .Y ( n388 ) ) ;
INVX2 U898 ( .A ( n937 ) , .Y ( n998 ) ) ;
AOI22XL U1125 ( .A0 ( n1483 ) , .A1 ( n1129 ) , .B0 ( n1124 ) , 
    .B1 ( n1093 ) , .Y ( n1133 ) ) ;
XOR2XL U1128 ( .A ( n1098 ) , .B ( n1097 ) , .Y ( n1514 ) ) ;
XOR2XL U1131 ( .A ( n1103 ) , .B ( n1102 ) , .Y ( n1511 ) ) ;
INVX1 U1428 ( .A ( n1404 ) , .Y ( n1420 ) ) ;
NOR2XL U1189 ( .A ( n1179 ) , .B ( n1178 ) , .Y ( n1416 ) ) ;
XNOR2X1 U1405 ( .A ( n1377 ) , .B ( n1376 ) , .Y ( n1414 ) ) ;
NAND2X2 U475 ( .A ( n411 ) , .B ( n4101 ) , .Y ( n604 ) ) ;
NOR2X2 U458 ( .A ( n411 ) , .B ( n4101 ) , .Y ( n603 ) ) ;
NAND2X2 U562 ( .A ( n483 ) , .B ( n482 ) , .Y ( n655 ) ) ;
NOR2X2 U547 ( .A ( n483 ) , .B ( n482 ) , .Y ( n656 ) ) ;
INVX2 U711 ( .A ( n650 ) , .Y ( n657 ) ) ;
NOR2X2 U544 ( .A ( n485 ) , .B ( n484 ) , .Y ( n658 ) ) ;
NOR2X1 U491 ( .A ( n431 ) , .B ( n430 ) , .Y ( n466 ) ) ;
ADDFHXL U489 ( .A ( n2164 ) , .B ( n423 ) , .CI ( n422 ) , .CO ( n431 ) , 
    .S ( n429 ) ) ;
ADDFX2 U582 ( .A ( n1270 ) , .B ( n499 ) , .CI ( n498 ) , .CO ( n505 ) , 
    .S ( n504 ) ) ;
ADDFXL U614 ( .A ( Xt[8] ) , .B ( S7[8] ) , .CI ( n540 ) , .CO ( n543 ) , 
    .S ( n513 ) ) ;
NOR2XL U265 ( .A ( n218 ) , .B ( n185 ) , .Y ( n187 ) ) ;
CLKNAND2X2 U163 ( .A ( n101 ) , .B ( n100 ) , .Y ( n287 ) ) ;
NOR2X2 U145 ( .A ( n101 ) , .B ( n100 ) , .Y ( n286 ) ) ;
NOR2X1 U1020 ( .A ( n969 ) , .B ( n972 ) , .Y ( n1018 ) ) ;
NOR2X1 U1027 ( .A ( n978 ) , .B ( n977 ) , .Y ( n1017 ) ) ;
CLKNAND2X2 ctmTdsLR_2_971 ( .A ( n1471 ) , .B ( n1443 ) , .Y ( popt_net_56 ) ) ;
OAI21X1 U1303 ( .A0 ( n1436 ) , .A1 ( n1432 ) , .B0 ( n1437 ) , .Y ( n1318 ) ) ;
NOR2XL U1300 ( .A ( n1430 ) , .B ( n1436 ) , .Y ( n1313 ) ) ;
NOR2X1 U1309 ( .A ( n1272 ) , .B ( n1271 ) , .Y ( n1312 ) ) ;
INVX2 U395 ( .A ( n392 ) , .Y ( n384 ) ) ;
XNOR2XL U1133 ( .A ( n1107 ) , .B ( n1106 ) , .Y ( n1161 ) ) ;
XNOR2XL U1259 ( .A ( n1228 ) , .B ( n1227 ) , .Y ( n1399 ) ) ;
XNOR2XL U687 ( .A ( n621 ) , .B ( n620 ) , .Y ( n701 ) ) ;
NAND2XL U686 ( .A ( n619 ) , .B ( n618 ) , .Y ( n621 ) ) ;
XNOR2XL U527 ( .A ( n460 ) , .B ( n459 ) , .Y ( n631 ) ) ;
NAND2XL U526 ( .A ( n458 ) , .B ( n457 ) , .Y ( n460 ) ) ;
ADDFXL U1349 ( .A ( Xt[8] ) , .B ( S2[8] ) , .CI ( n1323 ) , .CO ( n1326 ) , 
    .S ( n1283 ) ) ;
NAND2XL U894 ( .A ( n864 ) , .B ( n863 ) , .Y ( n1089 ) ) ;
NOR2XL U877 ( .A ( n864 ) , .B ( n863 ) , .Y ( n1088 ) ) ;
NOR2X1 ctmTdsLR_3_922 ( .A ( n1943 ) , .B ( n1942 ) , .Y ( popt_net_28 ) ) ;
ADDFHXL U1212 ( .A ( n2166 ) , .B ( n1185 ) , .CI ( n1184 ) , .CO ( n1192 ) , 
    .S ( n1181 ) ) ;
ADDFXL U1234 ( .A ( Xt[8] ) , .B ( S1[8] ) , .CI ( n1204 ) , .CO ( n1210 ) , 
    .S ( n1198 ) ) ;
ADDFX2 U456 ( .A ( n2167 ) , .B ( n402 ) , .CI ( n401 ) , .CO ( n412 ) , 
    .S ( n411 ) ) ;
NOR2X2 U141 ( .A ( n103 ) , .B ( n102 ) , .Y ( n240 ) ) ;
ADDFX2 U236 ( .A ( n2166 ) , .B ( n157 ) , .CI ( n156 ) , .CO ( n167 ) , 
    .S ( n151 ) ) ;
ADDFX2 U142 ( .A ( n2167 ) , .B ( n93 ) , .CI ( n92 ) , .CO ( n102 ) , 
    .S ( n101 ) ) ;
ADDFX2 U171 ( .A ( n2166 ) , .B ( n108 ) , .CI ( n107 ) , .CO ( n118 ) , 
    .S ( n103 ) ) ;
ADDFHXL U176 ( .A ( n2165 ) , .B ( n112 ) , .CI ( n111 ) , .CO ( n120 ) , 
    .S ( n119 ) ) ;
NOR2X2 U160 ( .A ( n99 ) , .B ( n98 ) , .Y ( n257 ) ) ;
AOI21X2 U157 ( .A0 ( n267 ) , .A1 ( n268 ) , .B0 ( n96 ) , .Y ( n260 ) ) ;
OAI21XL U154 ( .A0 ( n270 ) , .A1 ( n2228 ) , .B0 ( n271 ) , .Y ( n268 ) ) ;
XNOR2XL U1135 ( .A ( n1111 ) , .B ( n1110 ) , .Y ( n1121 ) ) ;
AOI21X2 U1279 ( .A0 ( n1242 ) , .A1 ( n1241 ) , .B0 ( n1240 ) , .Y ( n1381 ) ) ;
NOR2X1 U1282 ( .A ( n1247 ) , .B ( n1246 ) , .Y ( n1378 ) ) ;
NOR2XL U927 ( .A ( n898 ) , .B ( n897 ) , .Y ( n1083 ) ) ;
NAND2XL U942 ( .A ( n898 ) , .B ( n897 ) , .Y ( n1084 ) ) ;
OAI21X2 U941 ( .A0 ( n1097 ) , .A1 ( n1094 ) , .B0 ( n1095 ) , .Y ( n1077 ) ) ;
NOR2XL U924 ( .A ( n900 ) , .B ( n899 ) , .Y ( n1078 ) ) ;
ADDFHXL U911 ( .A ( n2165 ) , .B ( n879 ) , .CI ( n878 ) , .CO ( n880 ) , 
    .S ( n874 ) ) ;
ADDFX2 U902 ( .A ( n2166 ) , .B ( n872 ) , .CI ( n871 ) , .CO ( n873 ) , 
    .S ( n866 ) ) ;
ADDFX1 U937 ( .A ( n2168 ) , .B ( n1244 ) , .CI ( n894 ) , .CO ( n897 ) , 
    .S ( n896 ) ) ;
ADDFX1 U558 ( .A ( n2169 ) , .B ( n2180 ) , .CI ( n1245 ) , .CO ( n480 ) , 
    .S ( n477 ) ) ;
OAI21X1 U1182 ( .A0 ( n1394 ) , .A1 ( n2228 ) , .B0 ( n1395 ) , .Y ( n1241 ) ) ;
INVXL U1177 ( .A ( n1162 ) , .Y ( n1242 ) ) ;
NAND2X4 ctmTdsLR_1_900 ( .A ( n1657 ) , .B ( n1656 ) , .Y ( n1688 ) ) ;
MXI2X2 U1611 ( .A ( n1629 ) , .B ( n1628 ) , .S0 ( n1742 ) , .Y ( n1765 ) ) ;
DFFRQX2 S9_reg_2_ ( .D ( X[2] ) , .CK ( clk ) , .RN ( n2221 ) , .Q ( S9[2] ) ) ;
NAND2BX4 U1665 ( .AN ( n1696 ) , .B ( n1695 ) , .Y ( n1983 ) ) ;
OAI211X4 U1613 ( .A0 ( n1632 ) , .A1 ( n1631 ) , .B0 ( n1655 ) , 
    .C0 ( n1630 ) , .Y ( n1657 ) ) ;
MXI2X4 U1873 ( .A ( n1947 ) , .B ( n1946 ) , .S0 ( n1993 ) , .Y ( n1997 ) ) ;
NAND2X2 U1512 ( .A ( n1508 ) , .B ( n1701 ) , .Y ( n1578 ) ) ;
CLKXOR2X12 U1985 ( .A ( n2070 ) , .B ( n2069 ) , .Y ( Y[0] ) ) ;
DFFRQX2 X9_reg_3_ ( .D ( X[3] ) , .CK ( clk ) , .RN ( n2221 ) , .Q ( X9[3] ) ) ;
NAND2BX2 ctmTdsLR_1_1107 ( .AN ( n1925 ) , .B ( popt_net_137 ) , 
    .Y ( n1927 ) ) ;
AOI21X2 U1834 ( .A0 ( n1887 ) , .A1 ( n1886 ) , .B0 ( n1885 ) , .Y ( n1888 ) ) ;
DFFRQX2 X9_reg_5_ ( .D ( X[5] ) , .CK ( clk ) , .RN ( n2224 ) , .Q ( X9[5] ) ) ;
NAND2X8 U1842 ( .A ( n1907 ) , .B ( n1906 ) , .Y ( n1993 ) ) ;
NAND3X8 U450 ( .A ( n398 ) , .B ( n397 ) , .C ( n396 ) , .Y ( n1677 ) ) ;
NAND3X2 ctmTdsLR_2_902 ( .A ( n1880 ) , .B ( n1887 ) , .C ( n1864 ) , 
    .Y ( popt_net_18 ) ) ;
NAND3X2 U1806 ( .A ( n1846 ) , .B ( n1845 ) , .C ( n1844 ) , .Y ( n1866 ) ) ;
INVX2 U1657 ( .A ( n1686 ) , .Y ( n1687 ) ) ;
NAND3X2 U1656 ( .A ( n1685 ) , .B ( n1684 ) , .C ( n1690 ) , .Y ( n1686 ) ) ;
DFFRQX2 X9_reg_6_ ( .D ( X[6] ) , .CK ( clk ) , .RN ( n2224 ) , .Q ( X9[6] ) ) ;
DFFRQX2 Xt_reg_3_ ( .D ( Xt_temp[3] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( Xt[3] ) ) ;
DFFRQX2 X9_reg_7_ ( .D ( X[7] ) , .CK ( clk ) , .RN ( n2224 ) , .Q ( X9[7] ) ) ;
AOI2BB1X4 U1841 ( .A0N ( n1905 ) , .A1N ( n1904 ) , .B0 ( n1903 ) , 
    .Y ( n1906 ) ) ;
DFFRQX2 X9_reg_4_ ( .D ( X[4] ) , .CK ( clk ) , .RN ( n2221 ) , .Q ( X9[4] ) ) ;
DFFRQX2 Xt_reg_2_ ( .D ( Xt_temp[2] ) , .CK ( clk ) , .RN ( n2221 ) , 
    .Q ( Xt[2] ) ) ;
INVX1 U318 ( .A ( n245 ) , .Y ( n714 ) ) ;
NAND2X2 U446 ( .A ( n391 ) , .B ( n393 ) , .Y ( n398 ) ) ;
XNOR2X1 ctmTdsLR_2_974 ( .A ( n884 ) , .B ( n883 ) , .Y ( popt_net_57 ) ) ;
NOR2X2 ctmTdsLR_1_912 ( .A ( n866 ) , .B ( n865 ) , .Y ( n1072 ) ) ;
ADDFXL U938 ( .A ( n2169 ) , .B ( n2189 ) , .CI ( n1245 ) , .CO ( n895 ) , 
    .S ( n892 ) ) ;
ADDFX2 U890 ( .A ( n2169 ) , .B ( n860 ) , .CI ( n1245 ) , .CO ( n861 ) , 
    .S ( n857 ) ) ;
ADDFX1 U471 ( .A ( n2169 ) , .B ( n407 ) , .CI ( n1245 ) , .CO ( n408 ) , 
    .S ( n404 ) ) ;
XNOR2X4 U147 ( .A ( S9[1] ) , .B ( Xt[1] ) , .Y ( n1171 ) ) ;
ADDFX2 U926 ( .A ( Xt[2] ) , .B ( ZBUF_748_2 ) , .CI ( n890 ) , .CO ( n889 ) , 
    .S ( n894 ) ) ;
ADDFX2 U454 ( .A ( ZBUF_390_4 ) , .B ( ZBUF_659_2 ) , .CI ( n2175 ) , 
    .CO ( n417 ) , .S ( n401 ) ) ;
ADDFXL U1281 ( .A ( n2169 ) , .B ( n2196 ) , .CI ( n1245 ) , .CO ( n1246 ) , 
    .S ( n1163 ) ) ;
ADDFXL U159 ( .A ( n2169 ) , .B ( n2186 ) , .CI ( n1245 ) , .CO ( n98 ) , 
    .S ( n95 ) ) ;
ADDFX1 U1203 ( .A ( n2169 ) , .B ( n1175 ) , .CI ( n1245 ) , .CO ( n1176 ) , 
    .S ( n1172 ) ) ;
ADDFXL U224 ( .A ( n2169 ) , .B ( n145 ) , .CI ( n1245 ) , .CO ( n146 ) , 
    .S ( n142 ) ) ;
ADDFX2 U144 ( .A ( Xt[2] ) , .B ( ZBUF_748_2 ) , .CI ( n2185 ) , .CO ( n93 ) , 
    .S ( n97 ) ) ;
ADDFXL U490 ( .A ( ZBUF_369_0 ) , .B ( X9[7] ) , .CI ( n2171 ) , 
    .CO ( n436 ) , .S ( n422 ) ) ;
ADDFXL U486 ( .A ( ZBUF_418_0 ) , .B ( ZBUF_507_3 ) , .CI ( n2172 ) , 
    .CO ( n423 ) , .S ( n420 ) ) ;
ADDFXL U1053 ( .A ( ZBUF_369_0 ) , .B ( X9[7] ) , .CI ( n2137 ) , 
    .CO ( n1028 ) , .S ( n1009 ) ) ;
ADDFX2 U1275 ( .A ( Xt[2] ) , .B ( ZBUF_748_2 ) , .CI ( n1238 ) , 
    .CO ( n1237 ) , .S ( n1243 ) ) ;
ADDFHX1 U457 ( .A ( Xt[2] ) , .B ( ZBUF_748_2 ) , .CI ( n2176 ) , 
    .CO ( n402 ) , .S ( n406 ) ) ;
ADDFX1 U947 ( .A ( ZBUF_331_0 ) , .B ( ZBUF_635_2 ) , .CI ( n2134 ) , 
    .CO ( n913 ) , .S ( n905 ) ) ;
ADDFX2 U1023 ( .A ( ZBUF_418_0 ) , .B ( ZBUF_507_3 ) , .CI ( n2136 ) , 
    .CO ( n1010 ) , .S ( n975 ) ) ;
ADDFX2 U567 ( .A ( ZBUF_331_0 ) , .B ( ZBUF_635_2 ) , .CI ( n2147 ) , 
    .CO ( n495 ) , .S ( n490 ) ) ;
ADDFHX1 U543 ( .A ( ZBUF_390_4 ) , .B ( ZBUF_659_2 ) , .CI ( n2146 ) , 
    .CO ( n491 ) , .S ( n474 ) ) ;
ADDFX2 U876 ( .A ( Xt[2] ) , .B ( ZBUF_748_2 ) , .CI ( n2192 ) , 
    .CO ( n855 ) , .S ( n859 ) ) ;
ADDFHX1 U546 ( .A ( Xt[2] ) , .B ( ZBUF_748_2 ) , .CI ( n2179 ) , 
    .CO ( n475 ) , .S ( n479 ) ) ;
ADDFX2 U923 ( .A ( ZBUF_390_4 ) , .B ( ZBUF_659_2 ) , .CI ( n2133 ) , 
    .CO ( n906 ) , .S ( n888 ) ) ;
ADDFX1 U479 ( .A ( ZBUF_331_0 ) , .B ( ZBUF_635_2 ) , .CI ( n2174 ) , 
    .CO ( n419 ) , .S ( n416 ) ) ;
ADDFX1 U956 ( .A ( ZBUF_370_0 ) , .B ( ZBUF_482_2 ) , .CI ( n2135 ) , 
    .CO ( n976 ) , .S ( n912 ) ) ;
INVX2 U2000 ( .A ( n1397 ) , .Y ( n2228 ) ) ;
ADDFXL U482 ( .A ( ZBUF_370_0 ) , .B ( ZBUF_482_2 ) , .CI ( n2173 ) , 
    .CO ( n421 ) , .S ( n418 ) ) ;
NOR2XL U931 ( .A ( n2190 ) , .B ( n2227 ) , .Y ( n1116 ) ) ;
CLKINVX2 U1999 ( .A ( X1_d[0] ) , .Y ( n2227 ) ) ;
NOR2XL U883 ( .A ( n2193 ) , .B ( n2227 ) , .Y ( n1112 ) ) ;
ADDFHX1 U889 ( .A ( n2168 ) , .B ( n1244 ) , .CI ( n859 ) , .CO ( n863 ) , 
    .S ( n862 ) ) ;
ADDFHX1 U1280 ( .A ( n2168 ) , .B ( n1244 ) , .CI ( n1243 ) , .CO ( n1248 ) , 
    .S ( n1247 ) ) ;
ADDFHXL U483 ( .A ( n2165 ) , .B ( n419 ) , .CI ( n418 ) , .CO ( n426 ) , 
    .S ( n425 ) ) ;
ADDFHXL U959 ( .A ( n2165 ) , .B ( n913 ) , .CI ( n912 ) , .CO ( n914 ) , 
    .S ( n908 ) ) ;
ADDFHX1 U557 ( .A ( n2168 ) , .B ( n1244 ) , .CI ( n479 ) , .CO ( n482 ) , 
    .S ( n481 ) ) ;
ADDFHX1 U470 ( .A ( n2168 ) , .B ( n1244 ) , .CI ( n406 ) , .CO ( n4101 ) , 
    .S ( n409 ) ) ;
ADDFX2 U925 ( .A ( n2167 ) , .B ( n889 ) , .CI ( n888 ) , .CO ( n899 ) , 
    .S ( n898 ) ) ;
ADDFXL U1064 ( .A ( Xt[8] ) , .B ( S4[8] ) , .CI ( n1028 ) , .CO ( n1031 ) , 
    .S ( n1012 ) ) ;
ADDFX2 U545 ( .A ( n2167 ) , .B ( n475 ) , .CI ( n474 ) , .CO ( n484 ) , 
    .S ( n483 ) ) ;
ADDFXL U899 ( .A ( ZBUF_331_0 ) , .B ( ZBUF_635_2 ) , .CI ( n2129 ) , 
    .CO ( n879 ) , .S ( n871 ) ) ;
ADDFX2 U168 ( .A ( ZBUF_331_0 ) , .B ( ZBUF_635_2 ) , .CI ( n2184 ) , 
    .CO ( n112 ) , .S ( n107 ) ) ;
ADDFHX1 U140 ( .A ( ZBUF_390_4 ) , .B ( ZBUF_659_2 ) , .CI ( n2138 ) , 
    .CO ( n108 ) , .S ( n92 ) ) ;
ADDFX2 U1052 ( .A ( n2164 ) , .B ( n1010 ) , .CI ( n1009 ) , .CO ( n1013 ) , 
    .S ( n978 ) ) ;
ADDFHXL U950 ( .A ( n2166 ) , .B ( n906 ) , .CI ( n905 ) , .CO ( n907 ) , 
    .S ( n900 ) ) ;
ADDFX1 U579 ( .A ( ZBUF_418_0 ) , .B ( ZBUF_507_3 ) , .CI ( n2149 ) , 
    .CO ( n511 ) , .S ( n498 ) ) ;
ADDFHX2 U480 ( .A ( n2166 ) , .B ( n417 ) , .CI ( n416 ) , .CO ( n424 ) , 
    .S ( n413 ) ) ;
ADDFX1 U973 ( .A ( ZBUF_369_0 ) , .B ( X9[7] ) , .CI ( n2132 ) , 
    .CO ( n938 ) , .S ( n924 ) ) ;
ADDFX1 U967 ( .A ( ZBUF_418_0 ) , .B ( ZBUF_507_3 ) , .CI ( n2131 ) , 
    .CO ( n925 ) , .S ( n922 ) ) ;
ADDFX2 U873 ( .A ( ZBUF_390_4 ) , .B ( ZBUF_659_2 ) , .CI ( n2128 ) , 
    .CO ( n872 ) , .S ( n854 ) ) ;
OAI21X1 U466 ( .A0 ( n626 ) , .A1 ( n2228 ) , .B0 ( n627 ) , .Y ( n459 ) ) ;
ADDFXL U502 ( .A ( Xt[8] ) , .B ( S8[8] ) , .CI ( n436 ) , .CO ( n441 ) , 
    .S ( n430 ) ) ;
ADDFXL U572 ( .A ( ZBUF_370_0 ) , .B ( ZBUF_482_2 ) , .CI ( n2148 ) , 
    .CO ( n499 ) , .S ( n494 ) ) ;
ADDFHXL U487 ( .A ( n1270 ) , .B ( n421 ) , .CI ( n420 ) , .CO ( n428 ) , 
    .S ( n427 ) ) ;
ADDFHXL U1026 ( .A ( n1270 ) , .B ( n976 ) , .CI ( n975 ) , .CO ( n977 ) , 
    .S ( n915 ) ) ;
ADDFX2 U570 ( .A ( n2166 ) , .B ( n491 ) , .CI ( n490 ) , .CO ( n501 ) , 
    .S ( n485 ) ) ;
OAI21X1 U553 ( .A0 ( n622 ) , .A1 ( n2228 ) , .B0 ( n623 ) , .Y ( n620 ) ) ;
ADDFXL U908 ( .A ( ZBUF_370_0 ) , .B ( ZBUF_482_2 ) , .CI ( n2130 ) , 
    .CO ( n923 ) , .S ( n878 ) ) ;
ADDFX1 U233 ( .A ( ZBUF_331_0 ) , .B ( ZBUF_635_2 ) , .CI ( n2107 ) , 
    .CO ( n161 ) , .S ( n156 ) ) ;
ADDFX2 U593 ( .A ( ZBUF_369_0 ) , .B ( X9[7] ) , .CI ( n2150 ) , 
    .CO ( n540 ) , .S ( n510 ) ) ;
ADDFX2 U1188 ( .A ( Xt[2] ) , .B ( ZBUF_748_2 ) , .CI ( n2204 ) , 
    .CO ( n1166 ) , .S ( n1174 ) ) ;
ADDFX2 U210 ( .A ( Xt[2] ) , .B ( ZBUF_748_2 ) , .CI ( n140 ) , .CO ( n139 ) , 
    .S ( n144 ) ) ;
ADDFXL U1218 ( .A ( ZBUF_418_0 ) , .B ( ZBUF_507_3 ) , .CI ( n2200 ) , 
    .CO ( n1191 ) , .S ( n1188 ) ) ;
ADDFX2 U207 ( .A ( ZBUF_390_4 ) , .B ( ZBUF_659_2 ) , .CI ( n2142 ) , 
    .CO ( n157 ) , .S ( n138 ) ) ;
ADDFX2 U1185 ( .A ( ZBUF_390_4 ) , .B ( ZBUF_659_2 ) , .CI ( n2203 ) , 
    .CO ( n1185 ) , .S ( n1165 ) ) ;
ADDFX2 U1211 ( .A ( ZBUF_331_0 ) , .B ( ZBUF_635_2 ) , .CI ( n2202 ) , 
    .CO ( n1187 ) , .S ( n1184 ) ) ;
OAI21XL U933 ( .A0 ( n1116 ) , .A1 ( n2228 ) , .B0 ( n1117 ) , .Y ( n1106 ) ) ;
ADDFX1 U1214 ( .A ( ZBUF_370_0 ) , .B ( ZBUF_482_2 ) , .CI ( n2201 ) , 
    .CO ( n1189 ) , .S ( n1186 ) ) ;
ADDFXL U1222 ( .A ( ZBUF_369_0 ) , .B ( X9[7] ) , .CI ( n2199 ) , 
    .CO ( n1204 ) , .S ( n1190 ) ) ;
OAI21XL U885 ( .A0 ( n1112 ) , .A1 ( n2228 ) , .B0 ( n1113 ) , .Y ( n1110 ) ) ;
ADDFHXL U1221 ( .A ( n2164 ) , .B ( n1191 ) , .CI ( n1190 ) , .CO ( n1199 ) , 
    .S ( n1197 ) ) ;
ADDFX2 U1295 ( .A ( ZBUF_370_0 ) , .B ( ZBUF_482_2 ) , .CI ( n2125 ) , 
    .CO ( n1269 ) , .S ( n1260 ) ) ;
ADDFHX2 U223 ( .A ( n2168 ) , .B ( n1244 ) , .CI ( n144 ) , .CO ( n148 ) , 
    .S ( n147 ) ) ;
ADDFHXL U575 ( .A ( n2165 ) , .B ( n495 ) , .CI ( n494 ) , .CO ( n503 ) , 
    .S ( n502 ) ) ;
ADDFHX1 U875 ( .A ( n2167 ) , .B ( n855 ) , .CI ( n854 ) , .CO ( n865 ) , 
    .S ( n864 ) ) ;
ADDFX1 U1321 ( .A ( ZBUF_369_0 ) , .B ( X9[7] ) , .CI ( n2127 ) , 
    .CO ( n1323 ) , .S ( n1280 ) ) ;
AOI21X1 U469 ( .A0 ( n458 ) , .A1 ( n459 ) , .B0 ( n405 ) , .Y ( n611 ) ) ;
ADDFXL U1305 ( .A ( ZBUF_418_0 ) , .B ( ZBUF_507_3 ) , .CI ( n2126 ) , 
    .CO ( n1281 ) , .S ( n1268 ) ) ;
ADDFX1 U1290 ( .A ( ZBUF_331_0 ) , .B ( ZBUF_635_2 ) , .CI ( n2124 ) , 
    .CO ( n1261 ) , .S ( n1256 ) ) ;
ADDFHX1 U1272 ( .A ( ZBUF_390_4 ) , .B ( ZBUF_659_2 ) , .CI ( n2123 ) , 
    .CO ( n1257 ) , .S ( n1236 ) ) ;
AOI21X1 U936 ( .A0 ( n1105 ) , .A1 ( n1106 ) , .B0 ( n893 ) , .Y ( n1097 ) ) ;
AOI21X2 U556 ( .A0 ( n619 ) , .A1 ( n620 ) , .B0 ( n478 ) , .Y ( n616 ) ) ;
ADDFX1 U1202 ( .A ( n2168 ) , .B ( n1244 ) , .CI ( n1174 ) , .CO ( n1178 ) , 
    .S ( n1177 ) ) ;
ADDFXL U983 ( .A ( Xt[8] ) , .B ( S3[8] ) , .CI ( n938 ) , .CO ( n943 ) , 
    .S ( n931 ) ) ;
ADDFHXL U592 ( .A ( n2164 ) , .B ( n511 ) , .CI ( n510 ) , .CO ( n514 ) , 
    .S ( n506 ) ) ;
ADDFX1 U1215 ( .A ( n2165 ) , .B ( n1187 ) , .CI ( n1186 ) , .CO ( n1194 ) , 
    .S ( n1193 ) ) ;
ADDFHX1 U1187 ( .A ( n2167 ) , .B ( n1166 ) , .CI ( n1165 ) , .CO ( n1180 ) , 
    .S ( n1179 ) ) ;
ADDFHXL U970 ( .A ( n1270 ) , .B ( n923 ) , .CI ( n922 ) , .CO ( n929 ) , 
    .S ( n881 ) ) ;
ADDFX2 U209 ( .A ( n2167 ) , .B ( n139 ) , .CI ( n138 ) , .CO ( n150 ) , 
    .S ( n149 ) ) ;
ADDFX2 U972 ( .A ( n2164 ) , .B ( n925 ) , .CI ( n924 ) , .CO ( n932 ) , 
    .S ( n930 ) ) ;
ADDFHXL U1219 ( .A ( n1270 ) , .B ( n1189 ) , .CI ( n1188 ) , .CO ( n1196 ) , 
    .S ( n1195 ) ) ;
ADDFX1 U245 ( .A ( ZBUF_418_0 ) , .B ( ZBUF_507_3 ) , .CI ( n2144 ) , 
    .CO ( n177 ) , .S ( n164 ) ) ;
NAND2X1 U953 ( .A ( n908 ) , .B ( n907 ) , .Y ( n971 ) ) ;
ADDFXL U180 ( .A ( ZBUF_418_0 ) , .B ( ZBUF_507_3 ) , .CI ( n2140 ) , 
    .CO ( n128 ) , .S ( n115 ) ) ;
AOI21X2 U888 ( .A0 ( n1109 ) , .A1 ( n1110 ) , .B0 ( n858 ) , .Y ( n1102 ) ) ;
NOR2X2 U1054 ( .A ( n1013 ) , .B ( n1012 ) , .Y ( n1021 ) ) ;
NOR2X2 U559 ( .A ( n481 ) , .B ( n480 ) , .Y ( n613 ) ) ;
NAND2X1 U494 ( .A ( n425 ) , .B ( n424 ) , .Y ( n640 ) ) ;
NOR2X2 U472 ( .A ( n409 ) , .B ( n408 ) , .Y ( n608 ) ) ;
NOR2X2 U484 ( .A ( n427 ) , .B ( n426 ) , .Y ( n585 ) ) ;
NOR2X1 U939 ( .A ( n896 ) , .B ( n895 ) , .Y ( n1094 ) ) ;
NOR2X2 U455 ( .A ( n413 ) , .B ( n412 ) , .Y ( n598 ) ) ;
NOR2XL U951 ( .A ( n908 ) , .B ( n907 ) , .Y ( n969 ) ) ;
NOR2XL U481 ( .A ( n425 ) , .B ( n424 ) , .Y ( n583 ) ) ;
ADDFX1 U238 ( .A ( ZBUF_370_0 ) , .B ( ZBUF_482_2 ) , .CI ( n2143 ) , 
    .CO ( n165 ) , .S ( n160 ) ) ;
NOR2X2 U891 ( .A ( n862 ) , .B ( n861 ) , .Y ( n1099 ) ) ;
OAI21X1 U219 ( .A0 ( n274 ) , .A1 ( n2228 ) , .B0 ( n275 ) , .Y ( n264 ) ) ;
OAI21X1 U1198 ( .A0 ( n1390 ) , .A1 ( n2228 ) , .B0 ( n1391 ) , .Y ( n1227 ) ) ;
ADDFXL U173 ( .A ( ZBUF_370_0 ) , .B ( ZBUF_482_2 ) , .CI ( n2139 ) , 
    .CO ( n116 ) , .S ( n111 ) ) ;
ADDFXL U194 ( .A ( ZBUF_369_0 ) , .B ( X9[7] ) , .CI ( n2141 ) , 
    .CO ( n191 ) , .S ( n127 ) ) ;
NOR2X2 U960 ( .A ( n915 ) , .B ( n914 ) , .Y ( n972 ) ) ;
ADDFXL U259 ( .A ( ZBUF_369_0 ) , .B ( X9[7] ) , .CI ( n2145 ) , 
    .CO ( n203 ) , .S ( n176 ) ) ;
NOR2XL U1059 ( .A ( n1017 ) , .B ( n1021 ) , .Y ( n1024 ) ) ;
ADDFHX1 U1274 ( .A ( n2167 ) , .B ( n1237 ) , .CI ( n1236 ) , .CO ( n1250 ) , 
    .S ( n1249 ) ) ;
OAI21X2 U561 ( .A0 ( n616 ) , .A1 ( n613 ) , .B0 ( n614 ) , .Y ( n650 ) ) ;
ADDFHXL U1320 ( .A ( n2164 ) , .B ( n1281 ) , .CI ( n1280 ) , .CO ( n1284 ) , 
    .S ( n1272 ) ) ;
OAI21X1 U893 ( .A0 ( n1102 ) , .A1 ( n1099 ) , .B0 ( n1100 ) , .Y ( n1071 ) ) ;
ADDFHX1 U1298 ( .A ( n2165 ) , .B ( n1261 ) , .CI ( n1260 ) , .CO ( n1264 ) , 
    .S ( n1263 ) ) ;
ADDFX1 U1293 ( .A ( n2166 ) , .B ( n1257 ) , .CI ( n1256 ) , .CO ( n1262 ) , 
    .S ( n1251 ) ) ;
OAI21X1 U944 ( .A0 ( n1078 ) , .A1 ( n1084 ) , .B0 ( n1079 ) , .Y ( n901 ) ) ;
OAI21X2 ctmTdsLR_2_1037 ( .A0 ( n1640 ) , .A1 ( n1637 ) , .B0 ( n1579 ) , 
    .Y ( popt_net_95 ) ) ;
OAI21X2 U564 ( .A0 ( n658 ) , .A1 ( n655 ) , .B0 ( n659 ) , .Y ( n486 ) ) ;
ADDFXL U282 ( .A ( Xt[8] ) , .B ( S6[8] ) , .CI ( n203 ) , .CO ( n206 ) , 
    .S ( n179 ) ) ;
NOR2X2 U492 ( .A ( n523 ) , .B ( n466 ) , .Y ( n433 ) ) ;
OAI21X1 U477 ( .A0 ( n598 ) , .A1 ( n604 ) , .B0 ( n599 ) , .Y ( n414 ) ) ;
NAND2X2 ctmTdsLR_1_1042 ( .A ( n985 ) , .B ( popt_net_99 ) , .Y ( n988 ) ) ;
ADDFX2 U1308 ( .A ( n1270 ) , .B ( n1269 ) , .CI ( n1268 ) , .CO ( n1271 ) , 
    .S ( n1265 ) ) ;
ADDFHXL U241 ( .A ( n2165 ) , .B ( n161 ) , .CI ( n160 ) , .CO ( n169 ) , 
    .S ( n168 ) ) ;
ADDFHXL U258 ( .A ( n2164 ) , .B ( n177 ) , .CI ( n176 ) , .CO ( n180 ) , 
    .S ( n172 ) ) ;
ADDFHXL U183 ( .A ( n1270 ) , .B ( n116 ) , .CI ( n115 ) , .CO ( n122 ) , 
    .S ( n121 ) ) ;
ADDFHXL U193 ( .A ( n2164 ) , .B ( n128 ) , .CI ( n127 ) , .CO ( n131 ) , 
    .S ( n123 ) ) ;
NOR2X2 U1223 ( .A ( n1199 ) , .B ( n1198 ) , .Y ( n1297 ) ) ;
NAND2X2 U585 ( .A ( n502 ) , .B ( n501 ) , .Y ( n636 ) ) ;
NOR2X3 U576 ( .A ( n504 ) , .B ( n503 ) , .Y ( n592 ) ) ;
AOI21X1 U1201 ( .A0 ( n1226 ) , .A1 ( n1227 ) , .B0 ( n1173 ) , .Y ( n1386 ) ) ;
AOI21X1 U222 ( .A0 ( n263 ) , .A1 ( n264 ) , .B0 ( n143 ) , .Y ( n255 ) ) ;
ADDFXL U270 ( .A ( Xt[8] ) , .B ( S5[8] ) , .CI ( n191 ) , .CO ( n194 ) , 
    .S ( n130 ) ) ;
NOR2X2 U225 ( .A ( n147 ) , .B ( n146 ) , .Y ( n252 ) ) ;
NOR2X1 U1204 ( .A ( n1177 ) , .B ( n1176 ) , .Y ( n1383 ) ) ;
NOR2X2 U211 ( .A ( n149 ) , .B ( n148 ) , .Y ( n281 ) ) ;
NAND2XL U1229 ( .A ( n1197 ) , .B ( n1196 ) , .Y ( n1292 ) ) ;
OAI21X1 U1021 ( .A0 ( n972 ) , .A1 ( n971 ) , .B0 ( n970 ) , .Y ( n1023 ) ) ;
NAND2X2 U905 ( .A ( n874 ) , .B ( n873 ) , .Y ( n961 ) ) ;
NOR2X2 U903 ( .A ( n874 ) , .B ( n873 ) , .Y ( n919 ) ) ;
CLKNAND2X2 U1226 ( .A ( n1193 ) , .B ( n1192 ) , .Y ( n1449 ) ) ;
NOR2X1 U571 ( .A ( n502 ) , .B ( n501 ) , .Y ( n590 ) ) ;
NOR2X2 U974 ( .A ( n932 ) , .B ( n931 ) , .Y ( n999 ) ) ;
XOR3XL U1091 ( .A ( Xt[11] ) , .B ( S4[11] ) , .C ( n1051 ) , .Y ( n1055 ) ) ;
NOR2X2 U912 ( .A ( n881 ) , .B ( n880 ) , .Y ( n928 ) ) ;
ADDFX2 U248 ( .A ( n1270 ) , .B ( n165 ) , .CI ( n164 ) , .CO ( n171 ) , 
    .S ( n170 ) ) ;
NOR2X2 U594 ( .A ( n514 ) , .B ( n513 ) , .Y ( n533 ) ) ;
NOR2X2 U1216 ( .A ( n1195 ) , .B ( n1194 ) , .Y ( n1453 ) ) ;
NOR2X2 U1220 ( .A ( n1197 ) , .B ( n1196 ) , .Y ( n1293 ) ) ;
NOR2X2 U971 ( .A ( n930 ) , .B ( n929 ) , .Y ( n994 ) ) ;
NAND2X1 U228 ( .A ( n149 ) , .B ( n148 ) , .Y ( n282 ) ) ;
NOR2X2 U583 ( .A ( n506 ) , .B ( n505 ) , .Y ( n529 ) ) ;
NOR2X4 U208 ( .A ( n151 ) , .B ( n150 ) , .Y ( n247 ) ) ;
NOR2X2 U1186 ( .A ( n1181 ) , .B ( n1180 ) , .Y ( n1405 ) ) ;
OAI21X4 U474 ( .A0 ( n611 ) , .A1 ( n608 ) , .B0 ( n609 ) , .Y ( n597 ) ) ;
NOR2XL U1239 ( .A ( n1212 ) , .B ( n1211 ) , .Y ( n1207 ) ) ;
NOR2XL U988 ( .A ( n945 ) , .B ( n944 ) , .Y ( n940 ) ) ;
OAI21X2 U1228 ( .A0 ( n1453 ) , .A1 ( n1449 ) , .B0 ( n1454 ) , .Y ( n1291 ) ) ;
OAI21X2 U977 ( .A0 ( n928 ) , .A1 ( n961 ) , .B0 ( n927 ) , .Y ( n992 ) ) ;
OAI21X3 U230 ( .A0 ( n247 ) , .A1 ( n282 ) , .B0 ( n248 ) , .Y ( n152 ) ) ;
OAI21X2 U1284 ( .A0 ( n1381 ) , .A1 ( n1378 ) , .B0 ( n1379 ) , .Y ( n1367 ) ) ;
NAND3XL ctmTdsLR_2_1043 ( .A ( n982 ) , .B ( n984 ) , .C ( n1548 ) , 
    .Y ( popt_net_99 ) ) ;
OAI21X2 U1206 ( .A0 ( n1386 ) , .A1 ( n1383 ) , .B0 ( n1384 ) , .Y ( n1404 ) ) ;
AOI21X4 U945 ( .A0 ( n902 ) , .A1 ( n1077 ) , .B0 ( n901 ) , .Y ( n1027 ) ) ;
OAI21X3 U227 ( .A0 ( n255 ) , .A1 ( n252 ) , .B0 ( n253 ) , .Y ( n246 ) ) ;
NOR2XL U1190 ( .A ( n1405 ) , .B ( n1416 ) , .Y ( n1183 ) ) ;
AOI21X6 U565 ( .A0 ( n487 ) , .A1 ( n650 ) , .B0 ( n486 ) , .Y ( n539 ) ) ;
OAI21X1 U896 ( .A0 ( n1072 ) , .A1 ( n1089 ) , .B0 ( n1073 ) , .Y ( n867 ) ) ;
NOR2XL U878 ( .A ( n1072 ) , .B ( n1088 ) , .Y ( n868 ) ) ;
OAI21X1 U1209 ( .A0 ( n1405 ) , .A1 ( n1417 ) , .B0 ( n1406 ) , .Y ( n1182 ) ) ;
NOR2X2 U212 ( .A ( n247 ) , .B ( n281 ) , .Y ( n153 ) ) ;
NOR2X2 U966 ( .A ( n919 ) , .B ( n928 ) , .Y ( n990 ) ) ;
NOR2X2 U1217 ( .A ( n1428 ) , .B ( n1453 ) , .Y ( n1289 ) ) ;
NAND2X1 ctmTdsLR_1_918 ( .A ( popt_net_27 ) , .B ( n1365 ) , .Y ( n1366 ) ) ;
NOR2XL U146 ( .A ( n240 ) , .B ( n286 ) , .Y ( n105 ) ) ;
NOR2X1 U1322 ( .A ( n1284 ) , .B ( n1283 ) , .Y ( n1316 ) ) ;
NOR2X4 U1299 ( .A ( n1265 ) , .B ( n1264 ) , .Y ( n1436 ) ) ;
AOI21X1 U1062 ( .A0 ( n1024 ) , .A1 ( n1023 ) , .B0 ( n1022 ) , .Y ( n1025 ) ) ;
NOR2X2 U1273 ( .A ( n1251 ) , .B ( n1250 ) , .Y ( n1373 ) ) ;
AOI21X2 U500 ( .A0 ( n433 ) , .A1 ( n521 ) , .B0 ( n432 ) , .Y ( n434 ) ) ;
CLKNAND2X2 U186 ( .A ( n119 ) , .B ( n118 ) , .Y ( n294 ) ) ;
NOR2XL U1276 ( .A ( n1249 ) , .B ( n1248 ) , .Y ( n1371 ) ) ;
NAND2X1 U1301 ( .A ( n1263 ) , .B ( n1262 ) , .Y ( n1432 ) ) ;
NOR2XL U1294 ( .A ( n1263 ) , .B ( n1262 ) , .Y ( n1430 ) ) ;
NAND2X2 U251 ( .A ( n168 ) , .B ( n167 ) , .Y ( n298 ) ) ;
XOR3XL U1000 ( .A ( Xt[11] ) , .B ( S3[11] ) , .C ( n950 ) , .Y ( n954 ) ) ;
XOR3XL U1251 ( .A ( Xt[11] ) , .B ( S1[11] ) , .C ( n1217 ) , .Y ( n1220 ) ) ;
NOR2X3 U177 ( .A ( n121 ) , .B ( n120 ) , .Y ( n227 ) ) ;
NAND2XL U1285 ( .A ( n1249 ) , .B ( n1248 ) , .Y ( n1370 ) ) ;
NOR2X2 U249 ( .A ( n172 ) , .B ( n171 ) , .Y ( n211 ) ) ;
XOR3XL U638 ( .A ( Xt[11] ) , .B ( S7[11] ) , .C ( n557 ) , .Y ( n561 ) ) ;
NOR2X2 U195 ( .A ( n131 ) , .B ( n130 ) , .Y ( n185 ) ) ;
NOR2X1 U184 ( .A ( n123 ) , .B ( n122 ) , .Y ( n218 ) ) ;
OAI21X2 U162 ( .A0 ( n260 ) , .A1 ( n257 ) , .B0 ( n258 ) , .Y ( n239 ) ) ;
NOR2X2 U242 ( .A ( n170 ) , .B ( n169 ) , .Y ( n234 ) ) ;
INVXL U1240 ( .A ( n1207 ) , .Y ( n1308 ) ) ;
INVXL U989 ( .A ( n940 ) , .Y ( n1065 ) ) ;
NOR2XL U503 ( .A ( n441 ) , .B ( n440 ) , .Y ( n437 ) ) ;
NOR2XL U1356 ( .A ( n1329 ) , .B ( n1328 ) , .Y ( n1327 ) ) ;
NOR2XL U365 ( .A ( n310 ) , .B ( n309 ) , .Y ( n306 ) ) ;
INVXL U1126 ( .A ( n1094 ) , .Y ( n1096 ) ) ;
INVXL U1129 ( .A ( n1099 ) , .Y ( n1101 ) ) ;
NOR2XL U1344 ( .A ( n1312 ) , .B ( n1316 ) , .Y ( n1319 ) ) ;
OAI21X2 U253 ( .A0 ( n234 ) , .A1 ( n298 ) , .B0 ( n235 ) , .Y ( n209 ) ) ;
AOI21X4 U897 ( .A0 ( n868 ) , .A1 ( n1071 ) , .B0 ( n867 ) , .Y ( n937 ) ) ;
NAND3XL ctmTdsLR_1_915 ( .A ( n1843 ) , .B ( n1842 ) , .C ( n1841 ) , 
    .Y ( n1844 ) ) ;
AOI21X4 U1210 ( .A0 ( n1183 ) , .A1 ( n1404 ) , .B0 ( n1182 ) , .Y ( n1229 ) ) ;
NOR4X2 ctmTdsLR_2_1108 ( .A ( popt_net_135 ) , .B ( popt_net_136 ) , 
    .C ( n1923 ) , .D ( n1922 ) , .Y ( popt_net_137 ) ) ;
OAI21X1 U1287 ( .A0 ( n1373 ) , .A1 ( n1370 ) , .B0 ( n1374 ) , .Y ( n1252 ) ) ;
NOR2XL U1277 ( .A ( n1373 ) , .B ( n1371 ) , .Y ( n1253 ) ) ;
NOR2X2 U243 ( .A ( n232 ) , .B ( n234 ) , .Y ( n210 ) ) ;
NOR2X2 U178 ( .A ( n225 ) , .B ( n227 ) , .Y ( n217 ) ) ;
OAI21X2 U188 ( .A0 ( n227 ) , .A1 ( n294 ) , .B0 ( n228 ) , .Y ( n216 ) ) ;
OAI21X2 U1063 ( .A0 ( n1027 ) , .A1 ( n1026 ) , .B0 ( n1025 ) , .Y ( n1050 ) ) ;
INVX3 U946 ( .A ( n1027 ) , .Y ( n1008 ) ) ;
AOI21X1 U612 ( .A0 ( n536 ) , .A1 ( n535 ) , .B0 ( n534 ) , .Y ( n537 ) ) ;
OAI21XL U267 ( .A0 ( n185 ) , .A1 ( n219 ) , .B0 ( n184 ) , .Y ( n186 ) ) ;
OAI21XL U1114 ( .A0 ( n1087 ) , .A1 ( n1083 ) , .B0 ( n1084 ) , .Y ( n1082 ) ) ;
INVX2 U566 ( .A ( n539 ) , .Y ( n639 ) ) ;
XOR3XL U376 ( .A ( Xt[11] ) , .B ( S5[11] ) , .C ( n315 ) , .Y ( n319 ) ) ;
XOR3XL U1378 ( .A ( Xt[11] ) , .B ( S2[11] ) , .C ( n1350 ) , .Y ( n1353 ) ) ;
INVXL U1136 ( .A ( n1121 ) , .Y ( n1159 ) ) ;
INVXL U1357 ( .A ( n1327 ) , .Y ( n1344 ) ) ;
INVXL U1351 ( .A ( n1324 ) , .Y ( n1340 ) ) ;
NOR2XL U284 ( .A ( n206 ) , .B ( n205 ) , .Y ( n204 ) ) ;
INVXL U1085 ( .A ( n1042 ) , .Y ( n1049 ) ) ;
INVXL U680 ( .A ( n608 ) , .Y ( n610 ) ) ;
INVXL U1094 ( .A ( n1053 ) , .Y ( n1057 ) ) ;
XNOR2X1 U1117 ( .A ( n1082 ) , .B ( n1081 ) , .Y ( n1129 ) ) ;
AOI21X1 U268 ( .A0 ( n187 ) , .A1 ( n216 ) , .B0 ( n186 ) , .Y ( n188 ) ) ;
XOR2XL U1413 ( .A ( n1387 ) , .B ( n1386 ) , .Y ( n1519 ) ) ;
OAI21X3 U982 ( .A0 ( n937 ) , .A1 ( n936 ) , .B0 ( n935 ) , .Y ( n1063 ) ) ;
OAI21X4 U1233 ( .A0 ( n1229 ) , .A1 ( n1203 ) , .B0 ( n1202 ) , .Y ( n1337 ) ) ;
OAI21X3 U613 ( .A0 ( n539 ) , .A1 ( n538 ) , .B0 ( n537 ) , .Y ( n576 ) ) ;
AOI21X1 U1347 ( .A0 ( n1319 ) , .A1 ( n1318 ) , .B0 ( n1317 ) , .Y ( n1320 ) ) ;
AOI21X1 U280 ( .A0 ( n199 ) , .A1 ( n209 ) , .B0 ( n198 ) , .Y ( n200 ) ) ;
AOI21X1 U1075 ( .A0 ( n1050 ) , .A1 ( n1041 ) , .B0 ( n1046 ) , .Y ( n1040 ) ) ;
INVX2 U529 ( .A ( n461 ) , .Y ( n643 ) ) ;
INVX4 U232 ( .A ( n202 ) , .Y ( n301 ) ) ;
INVX2 U167 ( .A ( n190 ) , .Y ( n297 ) ) ;
AOI21X2 U1089 ( .A0 ( n1050 ) , .A1 ( n1049 ) , .B0 ( n1048 ) , .Y ( n1059 ) ) ;
XOR3XL U420 ( .A ( Xt[11] ) , .B ( S6[11] ) , .C ( n361 ) , .Y ( n365 ) ) ;
INVXL U1184 ( .A ( n1388 ) , .Y ( n1481 ) ) ;
INVXL U409 ( .A ( n346 ) , .Y ( n355 ) ) ;
OAI21X3 U501 ( .A0 ( n461 ) , .A1 ( n435 ) , .B0 ( n434 ) , .Y ( n569 ) ) ;
INVXL U991 ( .A ( n941 ) , .Y ( n949 ) ) ;
CLKINVX1 U313 ( .A ( n239 ) , .Y ( n290 ) ) ;
INVXL U324 ( .A ( n252 ) , .Y ( n254 ) ) ;
INVXL U630 ( .A ( n549 ) , .Y ( n556 ) ) ;
INVXL U641 ( .A ( n559 ) , .Y ( n563 ) ) ;
INVXL U1003 ( .A ( n952 ) , .Y ( n956 ) ) ;
INVXL U1254 ( .A ( n1218 ) , .Y ( n1222 ) ) ;
XOR2X3 U1097 ( .A ( n1059 ) , .B ( n1058 ) , .Y ( n1588 ) ) ;
XOR2X1 U602 ( .A ( n520 ) , .B ( n519 ) , .Y ( n768 ) ) ;
OAI21X3 U269 ( .A0 ( n190 ) , .A1 ( n189 ) , .B0 ( n188 ) , .Y ( n375 ) ) ;
XOR2X1 U682 ( .A ( n612 ) , .B ( n611 ) , .Y ( n720 ) ) ;
XNOR2X2 U360 ( .A ( n301 ) , .B ( n300 ) , .Y ( n329 ) ) ;
XNOR2X2 U357 ( .A ( n297 ) , .B ( n296 ) , .Y ( n331 ) ) ;
XOR2X2 U649 ( .A ( n573 ) , .B ( n572 ) , .Y ( n816 ) ) ;
XNOR2X2 U619 ( .A ( n576 ) , .B ( n544 ) , .Y ( n777 ) ) ;
OAI211X1 ctmTdsLR_2_930 ( .A0 ( n754 ) , .A1 ( n753 ) , .B0 ( n849 ) , 
    .C0 ( n752 ) , .Y ( popt_net_33 ) ) ;
XNOR2X1 U1011 ( .A ( n998 ) , .B ( n963 ) , .Y ( n1482 ) ) ;
XNOR2X1 U1111 ( .A ( n1076 ) , .B ( n1075 ) , .Y ( n1130 ) ) ;
AOI21X1 U1100 ( .A0 ( n1063 ) , .A1 ( n1062 ) , .B0 ( n1061 ) , .Y ( n1067 ) ) ;
OAI21XL U1429 ( .A0 ( n1420 ) , .A1 ( n1416 ) , .B0 ( n1417 ) , .Y ( n1409 ) ) ;
OAI21X1 U314 ( .A0 ( n290 ) , .A1 ( n286 ) , .B0 ( n287 ) , .Y ( n244 ) ) ;
AOI21X1 U998 ( .A0 ( n1063 ) , .A1 ( n949 ) , .B0 ( n948 ) , .Y ( n958 ) ) ;
AOI21X1 U534 ( .A0 ( n643 ) , .A1 ( n465 ) , .B0 ( n464 ) , .Y ( n470 ) ) ;
AOI21X1 U636 ( .A0 ( n576 ) , .A1 ( n556 ) , .B0 ( n555 ) , .Y ( n565 ) ) ;
INVXL U334 ( .A ( n278 ) , .Y ( n399 ) ) ;
NAND2XL U621 ( .A ( n568 ) , .B ( n545 ) , .Y ( n546 ) ) ;
INVXL U368 ( .A ( n307 ) , .Y ( n314 ) ) ;
INVXL U379 ( .A ( n317 ) , .Y ( n321 ) ) ;
INVXL U1372 ( .A ( n1341 ) , .Y ( n1348 ) ) ;
INVXL U1381 ( .A ( n1351 ) , .Y ( n1355 ) ) ;
AOI21X4 U1288 ( .A0 ( n1253 ) , .A1 ( n1367 ) , .B0 ( n1252 ) , .Y ( n1322 ) ) ;
XOR2X3 U644 ( .A ( n565 ) , .B ( n564 ) , .Y ( n813 ) ) ;
XOR2X2 U537 ( .A ( n470 ) , .B ( n469 ) , .Y ( n789 ) ) ;
CLKXOR2X2 U607 ( .A ( n527 ) , .B ( n526 ) , .Y ( n767 ) ) ;
XNOR2X2 U622 ( .A ( n569 ) , .B ( n546 ) , .Y ( n773 ) ) ;
XOR2X1 U916 ( .A ( n884 ) , .B ( n883 ) , .Y ( n983 ) ) ;
XOR2XL U964 ( .A ( n918 ) , .B ( n917 ) , .Y ( n1496 ) ) ;
XOR2X8 U1257 ( .A ( n1224 ) , .B ( n1223 ) , .Y ( n1590 ) ) ;
XOR2X3 U1006 ( .A ( n958 ) , .B ( n957 ) , .Y ( n1152 ) ) ;
XOR2X1 U312 ( .A ( n238 ) , .B ( n237 ) , .Y ( n3301 ) ) ;
XOR2X1 U1018 ( .A ( n968 ) , .B ( n967 ) , .Y ( n1547 ) ) ;
XOR2XL U1031 ( .A ( n981 ) , .B ( n980 ) , .Y ( n1548 ) ) ;
XNOR2X1 U1069 ( .A ( n1050 ) , .B ( n1032 ) , .Y ( n1558 ) ) ;
XNOR2X2 U288 ( .A ( n3601 ) , .B ( n207 ) , .Y ( n778 ) ) ;
XOR2X1 U714 ( .A ( n657 ) , .B ( n652 ) , .Y ( n728 ) ) ;
AOI21X1 U660 ( .A0 ( n643 ) , .A1 ( n641 ) , .B0 ( n584 ) , .Y ( n589 ) ) ;
XOR2X1 U329 ( .A ( n261 ) , .B ( n260 ) , .Y ( n732 ) ) ;
XOR2X1 U351 ( .A ( n290 ) , .B ( n289 ) , .Y ( n293 ) ) ;
AOI2B1X1 U699 ( .A1N ( n720 ) , .A0 ( n718 ) , .B0 ( n635 ) , .Y ( n649 ) ) ;
XNOR2XL U1432 ( .A ( n1409 ) , .B ( n1408 ) , .Y ( n1487 ) ) ;
XOR2X1 U326 ( .A ( n256 ) , .B ( n255 ) , .Y ( n757 ) ) ;
XNOR2X1 U317 ( .A ( n244 ) , .B ( n243 ) , .Y ( n245 ) ) ;
XNOR2X2 U722 ( .A ( n662 ) , .B ( n661 ) , .Y ( n713 ) ) ;
AOI22XL U1153 ( .A0 ( n1484 ) , .A1 ( n1482 ) , .B0 ( n1130 ) , 
    .B1 ( n1485 ) , .Y ( n1131 ) ) ;
AOI21X1 U1043 ( .A0 ( n998 ) , .A1 ( n997 ) , .B0 ( n996 ) , .Y ( n1003 ) ) ;
AOI21X1 U1262 ( .A0 ( n1452 ) , .A1 ( n1289 ) , .B0 ( n1291 ) , .Y ( n1232 ) ) ;
XOR3XL U519 ( .A ( Xt[11] ) , .B ( S8[11] ) , .C ( n448 ) , .Y ( n452 ) ) ;
AOI21XL U303 ( .A0 ( n297 ) , .A1 ( n295 ) , .B0 ( n226 ) , .Y ( n231 ) ) ;
OAI21X3 U1348 ( .A0 ( n1322 ) , .A1 ( n1321 ) , .B0 ( n1320 ) , .Y ( n1349 ) ) ;
INVXL U414 ( .A ( n352 ) , .Y ( n359 ) ) ;
INVXL U423 ( .A ( n363 ) , .Y ( n367 ) ) ;
XOR2X2 U663 ( .A ( n589 ) , .B ( n588 ) , .Y ( n785 ) ) ;
XOR2X1 U1461 ( .A ( n1440 ) , .B ( n1439 ) , .Y ( n1498 ) ) ;
CLKXOR2X2 U669 ( .A ( n596 ) , .B ( n595 ) , .Y ( n786 ) ) ;
CLKXOR2X2 U298 ( .A ( n222 ) , .B ( n221 ) , .Y ( n769 ) ) ;
XOR2X3 U382 ( .A ( n323 ) , .B ( n322 ) , .Y ( n809 ) ) ;
XNOR2X1 U275 ( .A ( n375 ) , .B ( n195 ) , .Y ( n779 ) ) ;
XNOR2X1 U1362 ( .A ( n1349 ) , .B ( n1333 ) , .Y ( n1563 ) ) ;
XOR2X1 U347 ( .A ( n285 ) , .B ( n284 ) , .Y ( n729 ) ) ;
XNOR2X1 U1455 ( .A ( n1435 ) , .B ( n1431 ) , .Y ( n1491 ) ) ;
XNOR2X1 U705 ( .A ( n643 ) , .B ( n642 ) , .Y ( n671 ) ) ;
XOR2X1 U1401 ( .A ( n1372 ) , .B ( n1369 ) , .Y ( n1509 ) ) ;
CLKINVX2 U2001 ( .A ( n1590 ) , .Y ( n2229 ) ) ;
CLKXOR2X2 U1384 ( .A ( n1357 ) , .B ( n1356 ) , .Y ( n1589 ) ) ;
XOR2X2 U1326 ( .A ( n1287 ) , .B ( n1286 ) , .Y ( n1554 ) ) ;
XOR2X1 U598 ( .A ( n517 ) , .B ( n516 ) , .Y ( n791 ) ) ;
CLKXOR2X2 U199 ( .A ( n134 ) , .B ( n133 ) , .Y ( n339 ) ) ;
XOR2XL U1058 ( .A ( n1016 ) , .B ( n1015 ) , .Y ( n1550 ) ) ;
CLKNAND2X2 U1099 ( .A ( n1060 ) , .B ( n1516 ) , .Y ( n1572 ) ) ;
XNOR2X1 U676 ( .A ( n602 ) , .B ( n601 ) , .Y ( n666 ) ) ;
XNOR2X1 U702 ( .A ( n639 ) , .B ( n638 ) , .Y ( n710 ) ) ;
NOR2X2 U1103 ( .A ( n1152 ) , .B ( n1068 ) , .Y ( n1570 ) ) ;
CLKINVX2 U390 ( .A ( n3301 ) , .Y ( n784 ) ) ;
INVX2 U645 ( .A ( n813 ) , .Y ( n687 ) ) ;
OAI21XL ctmTdsLR_2_980 ( .A0 ( n1490 ) , .A1 ( n1491 ) , .B0 ( n1498 ) , 
    .Y ( popt_net_58 ) ) ;
AOI2B1XL U344 ( .A1N ( n757 ) , .A0 ( n732 ) , .B0 ( n280 ) , .Y ( n291 ) ) ;
XNOR2X1 U323 ( .A ( n251 ) , .B ( n250 ) , .Y ( n716 ) ) ;
OAI21X3 U281 ( .A0 ( n202 ) , .A1 ( n201 ) , .B0 ( n200 ) , .Y ( n3601 ) ) ;
INVXL U538 ( .A ( n789 ) , .Y ( n682 ) ) ;
XOR2X4 U426 ( .A ( n369 ) , .B ( n368 ) , .Y ( n808 ) ) ;
CLKXOR2X2 U264 ( .A ( n183 ) , .B ( n182 ) , .Y ( n792 ) ) ;
CLKNAND2X2 U1388 ( .A ( n1462 ) , .B ( n2229 ) , .Y ( n1362 ) ) ;
OAI2B1XL U387 ( .A1N ( n327 ) , .A0 ( n769 ) , .B0 ( n326 ) , .Y ( n328 ) ) ;
CLKNAND2X2 U1104 ( .A ( n1572 ) , .B ( n1570 ) , .Y ( n1143 ) ) ;
XNOR2XL U1451 ( .A ( n1452 ) , .B ( n1429 ) , .Y ( n1467 ) ) ;
XNOR2XL U1364 ( .A ( n1337 ) , .B ( n1336 ) , .Y ( n1458 ) ) ;
NOR2X4 ctmTdsLR_1_1080 ( .A ( popt_net_122 ) , .B ( popt_net_123 ) , 
    .Y ( n2047 ) ) ;
AOI22XL U348 ( .A0 ( n714 ) , .A1 ( n716 ) , .B0 ( n291 ) , .B1 ( n729 ) , 
    .Y ( n305 ) ) ;
OAI211X2 U624 ( .A0 ( n682 ) , .A1 ( n791 ) , .B0 ( n547 ) , .C0 ( n681 ) , 
    .Y ( n566 ) ) ;
NAND3XL U1013 ( .A ( n984 ) , .B ( n1128 ) , .C ( n964 ) , .Y ( n965 ) ) ;
OAI22X1 U361 ( .A0 ( n805 ) , .A1 ( n329 ) , .B0 ( n714 ) , .B1 ( n716 ) , 
    .Y ( n302 ) ) ;
OAI2B2X1 U737 ( .A1N ( n814 ) , .A0 ( n816 ) , .B0 ( n773 ) , .B1 ( n678 ) , 
    .Y ( n679 ) ) ;
NOR2BX1 U1314 ( .AN ( n1544 ) , .B ( n1543 ) , .Y ( n1303 ) ) ;
NOR2XL U392 ( .A ( n809 ) , .B ( n787 ) , .Y ( n332 ) ) ;
INVXL U510 ( .A ( n439 ) , .Y ( n447 ) ) ;
INVXL U522 ( .A ( n450 ) , .Y ( n454 ) ) ;
CLKNAND2X2 U1163 ( .A ( n1143 ) , .B ( n1142 ) , .Y ( n1144 ) ) ;
NAND2X2 U1394 ( .A ( n1362 ) , .B ( n1568 ) , .Y ( n1441 ) ) ;
OAI211X2 U400 ( .A0 ( n778 ) , .A1 ( n792 ) , .B0 ( n337 ) , .C0 ( n336 ) , 
    .Y ( n343 ) ) ;
XOR2XL U433 ( .A ( n379 ) , .B ( n378 ) , .Y ( n810 ) ) ;
INVXL U1389 ( .A ( n1362 ) , .Y ( n1569 ) ) ;
AOI31X2 U362 ( .A0 ( n305 ) , .A1 ( n304 ) , .A2 ( n303 ) , .B0 ( n302 ) , 
    .Y ( n324 ) ) ;
OAI21X2 U1105 ( .A0 ( n1069 ) , .A1 ( n1152 ) , .B0 ( n1143 ) , .Y ( n1070 ) ) ;
OAI22X2 U289 ( .A0 ( n794 ) , .A1 ( n792 ) , .B0 ( n208 ) , .B1 ( n778 ) , 
    .Y ( n224 ) ) ;
AOI22XL U732 ( .A0 ( n768 ) , .A1 ( n673 ) , .B0 ( n672 ) , .B1 ( n786 ) , 
    .Y ( n674 ) ) ;
XOR2X2 U1265 ( .A ( n1232 ) , .B ( n1231 ) , .Y ( n1544 ) ) ;
NAND2XL U646 ( .A ( n566 ) , .B ( n687 ) , .Y ( n582 ) ) ;
NOR2XL U1438 ( .A ( n1590 ) , .B ( n1415 ) , .Y ( n1466 ) ) ;
XOR2X2 U525 ( .A ( n456 ) , .B ( n455 ) , .Y ( n815 ) ) ;
OAI21X1 U1164 ( .A0 ( n1570 ) , .A1 ( n1572 ) , .B0 ( n1144 ) , .Y ( n1155 ) ) ;
NAND2BX2 U300 ( .AN ( n224 ) , .B ( n223 ) , .Y ( n392 ) ) ;
NAND2X2 U403 ( .A ( n343 ) , .B ( n342 ) , .Y ( n389 ) ) ;
NAND2X2 U394 ( .A ( n335 ) , .B ( n334 ) , .Y ( n381 ) ) ;
NAND2BX2 U428 ( .AN ( n3701 ) , .B ( n744 ) , .Y ( n3901 ) ) ;
AOI2B1X2 U434 ( .A1N ( n808 ) , .A0 ( n810 ) , .B0 ( n809 ) , .Y ( n394 ) ) ;
AOI21XL U1161 ( .A0 ( n1570 ) , .A1 ( n1141 ) , .B0 ( n1550 ) , .Y ( n1154 ) ) ;
OAI21X3 U1038 ( .A0 ( n989 ) , .A1 ( n988 ) , .B0 ( n1137 ) , .Y ( n1151 ) ) ;
NAND2XL U1390 ( .A ( n1358 ) , .B ( n1569 ) , .Y ( n1365 ) ) ;
NAND3X1 U1169 ( .A ( n1151 ) , .B ( n1150 ) , .C ( n1149 ) , .Y ( n1158 ) ) ;
AOI21X2 U445 ( .A0 ( n394 ) , .A1 ( n3901 ) , .B0 ( n389 ) , .Y ( n393 ) ) ;
NAND2BX2 U756 ( .AN ( n707 ) , .B ( n706 ) , .Y ( n722 ) ) ;
AOI2BB1X2 U734 ( .A0N ( n689 ) , .A1N ( n690 ) , .B0 ( n688 ) , .Y ( n704 ) ) ;
NOR2BX2 U436 ( .AN ( n382 ) , .B ( n381 ) , .Y ( n391 ) ) ;
INVX2 U439 ( .A ( n3901 ) , .Y ( n812 ) ) ;
NAND3X2 U1158 ( .A ( n1151 ) , .B ( n1150 ) , .C ( n1148 ) , .Y ( n1146 ) ) ;
INVXL U1465 ( .A ( n1448 ) , .Y ( n1476 ) ) ;
AOI22X1 U1339 ( .A0 ( n1305 ) , .A1 ( n1552 ) , .B0 ( n1554 ) , 
    .B1 ( n1304 ) , .Y ( n1448 ) ) ;
AOI2BB1X2 U440 ( .A0N ( n389 ) , .A1N ( n384 ) , .B0 ( n812 ) , .Y ( n385 ) ) ;
NAND3X2 U1464 ( .A ( n1447 ) , .B ( n1446 ) , .C ( n1445 ) , .Y ( n1478 ) ) ;
OAI211X2 U1481 ( .A0 ( n1476 ) , .A1 ( n1589 ) , .B0 ( n1475 ) , 
    .C0 ( n1474 ) , .Y ( n1477 ) ) ;
NAND2BX2 U757 ( .AN ( n815 ) , .B ( n722 ) , .Y ( n790 ) ) ;
NAND3X1 U749 ( .A ( n692 ) , .B ( n691 ) , .C ( n696 ) , .Y ( n694 ) ) ;
INVX6 U1484 ( .A ( n1718 ) , .Y ( n1604 ) ) ;
AOI22X4 ctmTdsLR_2_938 ( .A0 ( n846 ) , .A1 ( n845 ) , .B0 ( n1670 ) , 
    .B1 ( n1669 ) , .Y ( popt_net_36 ) ) ;
NAND3X2 U1482 ( .A ( n1479 ) , .B ( n1478 ) , .C ( n1477 ) , .Y ( n1561 ) ) ;
NAND2BX2 ctmTdsLR_3_1040 ( .AN ( n598 ) , .B ( n597 ) , .Y ( popt_net_96 ) ) ;
NOR2BX4 U758 ( .AN ( n723 ) , .B ( n790 ) , .Y ( n775 ) ) ;
NAND2X5 U1167 ( .A ( n1147 ) , .B ( n1516 ) , .Y ( n1559 ) ) ;
AOI21X4 U441 ( .A0 ( n386 ) , .A1 ( n385 ) , .B0 ( n808 ) , .Y ( n772 ) ) ;
OAI2BB1X2 U751 ( .A0N ( n698 ) , .A1N ( n697 ) , .B0 ( n696 ) , .Y ( n699 ) ) ;
XOR2X1 U679 ( .A ( n607 ) , .B ( n606 ) , .Y ( n724 ) ) ;
INVXL U814 ( .A ( n773 ) , .Y ( n774 ) ) ;
NOR2X3 U782 ( .A ( n1677 ) , .B ( n732 ) , .Y ( n760 ) ) ;
NAND2X2 ctmTdsLR_1_939 ( .A ( n738 ) , .B ( popt_net_37 ) , .Y ( n830 ) ) ;
NOR2BX4 U1493 ( .AN ( ZBUF_770_7 ) , .B ( n1590 ) , .Y ( n1720 ) ) ;
NOR2XL U817 ( .A ( n808 ) , .B ( n778 ) , .Y ( n780 ) ) ;
INVXL U1548 ( .A ( n1552 ) , .Y ( n1553 ) ) ;
AOI31X2 U813 ( .A0 ( n772 ) , .A1 ( n771 ) , .A2 ( n781 ) , .B0 ( n770 ) , 
    .Y ( n1636 ) ) ;
INVX1 U783 ( .A ( n760 ) , .Y ( n733 ) ) ;
MXI2X2 U1555 ( .A ( n1563 ) , .B ( n1562 ) , .S0 ( ZBUF_770_7 ) , 
    .Y ( n1662 ) ) ;
AND3X6 U1172 ( .A ( n1158 ) , .B ( n1157 ) , .C ( n1156 ) , .Y ( n1718 ) ) ;
XOR2X1 U306 ( .A ( n231 ) , .B ( n230 ) , .Y ( n787 ) ) ;
INVX4 U1494 ( .A ( n1720 ) , .Y ( n1716 ) ) ;
INVXL U770 ( .A ( n718 ) , .Y ( n719 ) ) ;
XOR2X1 U685 ( .A ( n617 ) , .B ( n616 ) , .Y ( n718 ) ) ;
NOR2X4 ctmTdsLR_2_1081 ( .A ( ZBUF_46_0 ) , .B ( popt_net_121 ) , 
    .Y ( popt_net_122 ) ) ;
NAND2X2 U1499 ( .A ( n1720 ) , .B ( n1495 ) , .Y ( n1582 ) ) ;
NAND2X2 U824 ( .A ( n807 ) , .B ( n784 ) , .Y ( n803 ) ) ;
MXI2X3 U797 ( .A ( n747 ) , .B ( n746 ) , .S0 ( n1695 ) , .Y ( n1601 ) ) ;
MXI2X3 U1492 ( .A ( n1489 ) , .B ( n1488 ) , .S0 ( ZBUF_770_7 ) , 
    .Y ( n1699 ) ) ;
ADDFXL U14 ( .A ( Xt[1] ) , .B ( S9[1] ) , .CI ( n2169 ) , .CO ( n4 ) , 
    .S ( n3 ) ) ;
NAND3X2 U794 ( .A ( n1677 ) , .B ( n744 ) , .C ( n743 ) , .Y ( n753 ) ) ;
OAI22X2 U811 ( .A0 ( n1695 ) , .A1 ( n768 ) , .B0 ( n790 ) , .B1 ( n767 ) , 
    .Y ( n1634 ) ) ;
NOR2XL U779 ( .A ( n808 ) , .B ( n729 ) , .Y ( n730 ) ) ;
OAI22X2 U829 ( .A0 ( n1695 ) , .A1 ( n791 ) , .B0 ( n790 ) , .B1 ( n789 ) , 
    .Y ( n1641 ) ) ;
ADDFX2 U11 ( .A ( Xt[2] ) , .B ( ZBUF_748_2 ) , .CI ( n2168 ) , .CO ( n6 ) , 
    .S ( n5 ) ) ;
OAI2B11X1 U798 ( .A1N ( n753 ) , .A0 ( n751 ) , .B0 ( n748 ) , .C0 ( n1601 ) , 
    .Y ( n749 ) ) ;
NOR2BX8 U443 ( .AN ( n781 ) , .B ( n387 ) , .Y ( n807 ) ) ;
NAND2BX2 U823 ( .AN ( n1634 ) , .B ( n783 ) , .Y ( n820 ) ) ;
MXI2X1 U780 ( .A ( n731 ) , .B ( n730 ) , .S0 ( n1677 ) , .Y ( n1625 ) ) ;
NAND2BX4 U839 ( .AN ( n1658 ) , .B ( n804 ) , .Y ( n840 ) ) ;
AOI22X1 U1568 ( .A0 ( n1663 ) , .A1 ( n1573 ) , .B0 ( n1673 ) , 
    .B1 ( n1591 ) , .Y ( n1713 ) ) ;
CLKNAND2X2 U836 ( .A ( n803 ) , .B ( n802 ) , .Y ( n1647 ) ) ;
INVX3 U1522 ( .A ( n1540 ) , .Y ( n1629 ) ) ;
NAND3XL U806 ( .A ( n761 ) , .B ( n760 ) , .C ( n759 ) , .Y ( n762 ) ) ;
NAND2X2 U784 ( .A ( n734 ) , .B ( n733 ) , .Y ( n1612 ) ) ;
OAI22X2 U1544 ( .A0 ( n1559 ) , .A1 ( n1548 ) , .B0 ( n1604 ) , 
    .B1 ( n1547 ) , .Y ( n1640 ) ) ;
OAI22X1 U825 ( .A0 ( n1695 ) , .A1 ( n786 ) , .B0 ( n790 ) , .B1 ( n785 ) , 
    .Y ( n1646 ) ) ;
XOR2XL U1442 ( .A ( n1420 ) , .B ( n1419 ) , .Y ( n1534 ) ) ;
NOR2X1 U1537 ( .A ( n1716 ) , .B ( n1534 ) , .Y ( n1535 ) ) ;
NOR2BX1 U837 ( .AN ( n1647 ) , .B ( n1646 ) , .Y ( n836 ) ) ;
NAND2X2 U1575 ( .A ( n1582 ) , .B ( n1581 ) , .Y ( n1648 ) ) ;
NAND2BXL U809 ( .AN ( n1612 ) , .B ( n1625 ) , .Y ( n764 ) ) ;
OAI21X2 U768 ( .A0 ( n717 ) , .A1 ( n716 ) , .B0 ( n715 ) , .Y ( n838 ) ) ;
NAND2X4 U774 ( .A ( n761 ) , .B ( n759 ) , .Y ( n1611 ) ) ;
NAND2X3 U1506 ( .A ( n1502 ) , .B ( n1565 ) , .Y ( n1697 ) ) ;
AOI22X1 U1538 ( .A0 ( n1614 ) , .A1 ( n1536 ) , .B0 ( n1535 ) , 
    .B1 ( n1629 ) , .Y ( n1537 ) ) ;
NAND2X8 ctmTdsLR_1_935 ( .A ( popt_net_35 ) , .B ( n699 ) , .Y ( n1695 ) ) ;
AOI22X2 U1551 ( .A0 ( n1637 ) , .A1 ( n1640 ) , .B0 ( n1555 ) , 
    .B1 ( n1643 ) , .Y ( n1587 ) ) ;
NAND2XL U799 ( .A ( n750 ) , .B ( n749 ) , .Y ( n756 ) ) ;
ADDFX1 U45 ( .A ( ZBUF_418_0 ) , .B ( ZBUF_507_3 ) , .CI ( n1270 ) , 
    .CO ( n21 ) , .S ( n16 ) ) ;
ADDFXL U34 ( .A ( ZBUF_370_0 ) , .B ( ZBUF_482_2 ) , .CI ( n2165 ) , 
    .CO ( n15 ) , .S ( n14 ) ) ;
NAND2X2 U1562 ( .A ( n1697 ) , .B ( n1698 ) , .Y ( n1576 ) ) ;
INVXL U847 ( .A ( n834 ) , .Y ( n818 ) ) ;
OAI2B2X2 U846 ( .A1N ( n817 ) , .A0 ( n1600 ) , .B0 ( n1669 ) , 
    .B1 ( n1670 ) , .Y ( n834 ) ) ;
NAND2XL U863 ( .A ( n1623 ) , .B ( n838 ) , .Y ( n839 ) ) ;
AOI22XL U840 ( .A0 ( n807 ) , .A1 ( n806 ) , .B0 ( n2230 ) , .B1 ( n805 ) , 
    .Y ( n1615 ) ) ;
XOR2XL U116 ( .A ( n89 ) , .B ( n88 ) , .Y ( Xt_temp[1] ) ) ;
NOR2XL ctmTdsLR_3_1109 ( .A ( n1983 ) , .B ( X8[4] ) , .Y ( popt_net_135 ) ) ;
AOI21X2 U791 ( .A0 ( n741 ) , .A1 ( n740 ) , .B0 ( n830 ) , .Y ( n801 ) ) ;
AOI31X2 U834 ( .A0 ( n798 ) , .A1 ( n833 ) , .A2 ( n832 ) , .B0 ( n824 ) , 
    .Y ( n799 ) ) ;
OAI2BB1X4 ctmTdsLR_2_936 ( .A0N ( n695 ) , .A1N ( n694 ) , .B0 ( n693 ) , 
    .Y ( popt_net_35 ) ) ;
XNOR2X1 U112 ( .A ( n84 ) , .B ( X1_d[0] ) , .Y ( Xt_temp[0] ) ) ;
ADDFXL U51 ( .A ( ZBUF_369_0 ) , .B ( X9[7] ) , .CI ( n2164 ) , .CO ( n25 ) , 
    .S ( n22 ) ) ;
OAI211X2 U1578 ( .A0 ( n1587 ) , .A1 ( n1586 ) , .B0 ( n1707 ) , 
    .C0 ( n1713 ) , .Y ( n1594 ) ) ;
OAI21X2 U835 ( .A0 ( n801 ) , .A1 ( n800 ) , .B0 ( n799 ) , .Y ( n829 ) ) ;
OAI2BB1X2 U859 ( .A0N ( n833 ) , .A1N ( n832 ) , .B0 ( n831 ) , .Y ( n846 ) ) ;
OAI31X1 U855 ( .A0 ( n836 ) , .A1 ( n827 ) , .A2 ( n843 ) , .B0 ( n826 ) , 
    .Y ( n828 ) ) ;
NAND2XL U1694 ( .A ( Xt_temp[1] ) , .B ( n2162 ) , .Y ( n1735 ) ) ;
INVXL U87 ( .A ( n53 ) , .Y ( n70 ) ) ;
NOR2BX4 U1585 ( .AN ( n1594 ) , .B ( n1682 ) , .Y ( n1638 ) ) ;
XOR2XL U110 ( .A ( n81 ) , .B ( n80 ) , .Y ( Xt_temp[2] ) ) ;
NAND2X3 U856 ( .A ( n828 ) , .B ( n829 ) , .Y ( n848 ) ) ;
XNOR2X1 U106 ( .A ( n76 ) , .B ( n75 ) , .Y ( Xt_temp[3] ) ) ;
XNOR2X1 U100 ( .A ( n70 ) , .B ( n69 ) , .Y ( Xt_temp[4] ) ) ;
XOR2X1 U90 ( .A ( n59 ) , .B ( n58 ) , .Y ( Xt_temp[6] ) ) ;
XOR2X1 U97 ( .A ( n66 ) , .B ( n65 ) , .Y ( Xt_temp[5] ) ) ;
INVXL U1589 ( .A ( n1600 ) , .Y ( n1680 ) ) ;
MXI2X4 U1604 ( .A ( n1621 ) , .B ( n1620 ) , .S0 ( n1742 ) , .Y ( n1645 ) ) ;
MXI2X2 U1606 ( .A ( n1700 ) , .B ( n1622 ) , .S0 ( n1742 ) , .Y ( n1779 ) ) ;
MXI2X2 U1626 ( .A ( n1647 ) , .B ( n1646 ) , .S0 ( n1693 ) , .Y ( n1832 ) ) ;
MXI2X2 U1607 ( .A ( n1624 ) , .B ( n1623 ) , .S0 ( n1693 ) , .Y ( n1777 ) ) ;
INVX3 U1624 ( .A ( n1786 ) , .Y ( n1651 ) ) ;
INVX3 U1625 ( .A ( n1645 ) , .Y ( n1787 ) ) ;
AOI22XL U452 ( .A0 ( n807 ) , .A1 ( n4001 ) , .B0 ( n2230 ) , .B1 ( n399 ) , 
    .Y ( n750 ) ) ;
INVXL U58 ( .A ( n26 ) , .Y ( n4100 ) ) ;
MXI2X2 U1587 ( .A ( n1597 ) , .B ( n1596 ) , .S0 ( n1742 ) , .Y ( n1734 ) ) ;
XOR2XL U82 ( .A ( n48 ) , .B ( n47 ) , .Y ( Xt_temp[8] ) ) ;
AOI2BB2X2 U1629 ( .B0 ( n1651 ) , .B1 ( n1787 ) , .A0N ( n1832 ) , 
    .A1N ( n1664 ) , .Y ( n1652 ) ) ;
MXI2X1 U1635 ( .A ( n1663 ) , .B ( n1662 ) , .S0 ( n2239 ) , .Y ( n1817 ) ) ;
MXI2X1 U1634 ( .A ( n1660 ) , .B ( n1659 ) , .S0 ( n1693 ) , .Y ( n1815 ) ) ;
MXI2X2 U868 ( .A ( n850 ) , .B ( n849 ) , .S0 ( n1693 ) , .Y ( n1753 ) ) ;
XNOR2XL U85 ( .A ( n52 ) , .B ( n51 ) , .Y ( Xt_temp[7] ) ) ;
MXI2X2 U1597 ( .A ( n1612 ) , .B ( n1611 ) , .S0 ( n1693 ) , .Y ( n1727 ) ) ;
NOR2XL U1654 ( .A ( n1682 ) , .B ( n1681 ) , .Y ( n1683 ) ) ;
OAI21X1 U1584 ( .A0 ( n1681 ) , .A1 ( n1593 ) , .B0 ( n1710 ) , .Y ( n1682 ) ) ;
INVXL U72 ( .A ( n3400 ) , .Y ( n3700 ) ) ;
AOI22X2 U1612 ( .A0 ( n1727 ) , .A1 ( n1747 ) , .B0 ( n1763 ) , 
    .B1 ( n1765 ) , .Y ( n1630 ) ) ;
AOI22X2 U1596 ( .A0 ( n1753 ) , .A1 ( n1734 ) , .B0 ( n1745 ) , 
    .B1 ( n1610 ) , .Y ( n1632 ) ) ;
XNOR2XL U79 ( .A ( n43 ) , .B ( n42 ) , .Y ( Xt_temp[9] ) ) ;
XOR2XL U1785 ( .A ( n1813 ) , .B ( n1812 ) , .Y ( n1881 ) ) ;
XNOR2XL U1808 ( .A ( n1850 ) , .B ( n1849 ) , .Y ( n1891 ) ) ;
CLKNAND2X2 U1786 ( .A ( n1814 ) , .B ( n1881 ) , .Y ( n1900 ) ) ;
MXI2X2 U1598 ( .A ( n1614 ) , .B ( n1613 ) , .S0 ( n1742 ) , .Y ( n1747 ) ) ;
NOR2XL ctmTdsLR_4_1110 ( .A ( n1984 ) , .B ( X7[4] ) , .Y ( popt_net_136 ) ) ;
MXI2X3 U1818 ( .A ( n1863 ) , .B ( n1862 ) , .S0 ( n1861 ) , .Y ( n1887 ) ) ;
NAND2X4 U1816 ( .A ( n1890 ) , .B ( n1859 ) , .Y ( n1880 ) ) ;
NAND2XL U1671 ( .A ( n1706 ) , .B ( n1705 ) , .Y ( n1709 ) ) ;
MXI2X2 U1689 ( .A ( n1747 ) , .B ( n1751 ) , .S0 ( n1861 ) , .Y ( n1740 ) ) ;
OAI211XL U1717 ( .A0 ( n1861 ) , .A1 ( n1756 ) , .B0 ( n1755 ) , 
    .C0 ( n1754 ) , .Y ( n1757 ) ) ;
AOI21X4 U1797 ( .A0 ( n1897 ) , .A1 ( n1896 ) , .B0 ( n1892 ) , .Y ( n1884 ) ) ;
MXI2X3 U1721 ( .A ( n1765 ) , .B ( n1764 ) , .S0 ( n1861 ) , .Y ( n1840 ) ) ;
XNOR2XL U1802 ( .A ( n1837 ) , .B ( n1836 ) , .Y ( n1874 ) ) ;
NAND2BX2 U1664 ( .AN ( n1696 ) , .B ( n1694 ) , .Y ( n1984 ) ) ;
NAND2BX2 U1649 ( .AN ( n1679 ) , .B ( n1676 ) , .Y ( n1982 ) ) ;
NAND2BX4 U1684 ( .AN ( n1861 ) , .B ( n1722 ) , .Y ( n1987 ) ) ;
AOI22X2 U1746 ( .A0 ( n1785 ) , .A1 ( n1784 ) , .B0 ( n1783 ) , 
    .B1 ( n1782 ) , .Y ( n1868 ) ) ;
NAND2BX4 U1679 ( .AN ( n1861 ) , .B ( n1717 ) , .Y ( n1985 ) ) ;
MXI2X3 U1883 ( .A ( n1953 ) , .B ( n1952 ) , .S0 ( n1993 ) , .Y ( n1964 ) ) ;
MXI2X3 U1850 ( .A ( n1921 ) , .B ( n1920 ) , .S0 ( n1993 ) , .Y ( n1996 ) ) ;
MXI2X6 U1857 ( .A ( n1927 ) , .B ( n1926 ) , .S0 ( n1993 ) , .Y ( n1998 ) ) ;
MXI2X3 U1919 ( .A ( n1995 ) , .B ( n1994 ) , .S0 ( n1993 ) , .Y ( n2012 ) ) ;
MXI2X3 U1843 ( .A ( n1908 ) , .B ( n2205 ) , .S0 ( n1993 ) , .Y ( n1999 ) ) ;
MXI2X2 U1912 ( .A ( n1980 ) , .B ( n1979 ) , .S0 ( n1993 ) , .Y ( n2016 ) ) ;
NOR2XL U1886 ( .A ( n1996 ) , .B ( Xt_temp[2] ) , .Y ( n1955 ) ) ;
ADDFHX2 U1925 ( .A ( Xt_temp[7] ) , .B ( n2016 ) , .CI ( ZBUF_9_9 ) , 
    .CO ( n2005 ) , .S ( n2003 ) ) ;
ADDFHX4 U1922 ( .A ( Xt_temp[6] ) , .B ( n2012 ) , .CI ( ZBUF_9_8 ) , 
    .CO ( n2002 ) , .S ( n2000 ) ) ;
INVX2 U1890 ( .A ( n1956 ) , .Y ( n1962 ) ) ;
ADDHX4 U1876 ( .A ( Xt_temp[3] ) , .B ( n1997 ) , .CO ( n1969 ) , 
    .S ( n1965 ) ) ;
ADDHXL U1939 ( .A ( Xt_temp[9] ) , .B ( n2012 ) , .CO ( n2014 ) , 
    .S ( n2007 ) ) ;
AOI21X2 U1895 ( .A0 ( n1962 ) , .A1 ( ZINV_4_6 ) , .B0 ( n1960 ) , 
    .Y ( n2063 ) ) ;
CLKNAND2X2 U1888 ( .A ( n2068 ) , .B ( n2065 ) , .Y ( n1968 ) ) ;
CLKNAND2X2 U1902 ( .A ( n1970 ) , .B ( n1969 ) , .Y ( n2059 ) ) ;
NOR2XL U1926 ( .A ( n2005 ) , .B ( n2004 ) , .Y ( n2036 ) ) ;
AOI21X2 U1900 ( .A0 ( n2068 ) , .A1 ( n2064 ) , .B0 ( n1966 ) , .Y ( n1967 ) ) ;
NOR2X2 U1923 ( .A ( n2001 ) , .B ( n2000 ) , .Y ( n2041 ) ) ;
CLKNAND2X2 U1931 ( .A ( n2001 ) , .B ( n2000 ) , .Y ( n2048 ) ) ;
OAI21XL U1933 ( .A0 ( n2043 ) , .A1 ( n2048 ) , .B0 ( n2044 ) , .Y ( n2034 ) ) ;
NOR2XL U1929 ( .A ( n2036 ) , .B ( n2029 ) , .Y ( n2009 ) ) ;
NOR2X2 U1875 ( .A ( n2053 ) , .B ( n2058 ) , .Y ( n1974 ) ) ;
OAI21X4 U1904 ( .A0 ( n2053 ) , .A1 ( n2059 ) , .B0 ( n2054 ) , .Y ( n1973 ) ) ;
NOR2XL U1924 ( .A ( n2043 ) , .B ( n2041 ) , .Y ( n2035 ) ) ;
OAI21XL U1938 ( .A0 ( ZBUF_46_0 ) , .A1 ( n2011 ) , .B0 ( n2010 ) , 
    .Y ( n2080 ) ) ;
INVXL U1954 ( .A ( n2035 ) , .Y ( n2025 ) ) ;
XNOR2X4 U1952 ( .A ( n2080 ) , .B ( n2023 ) , .Y ( Y[7] ) ) ;
NOR2X2 U1920 ( .A ( n2003 ) , .B ( n2002 ) , .Y ( n2043 ) ) ;
NOR2X2 U1874 ( .A ( n1970 ) , .B ( n1969 ) , .Y ( n2058 ) ) ;
AOI21X4 U1905 ( .A0 ( n1974 ) , .A1 ( n2052 ) , .B0 ( n1973 ) , .Y ( n2024 ) ) ;
INVX1 U1974 ( .A ( n2052 ) , .Y ( n2061 ) ) ;
AOI21XL U1991 ( .A0 ( n2080 ) , .A1 ( n2079 ) , .B0 ( n2078 ) , .Y ( n2081 ) ) ;
AOI21XL U1962 ( .A0 ( n2051 ) , .A1 ( n2035 ) , .B0 ( n2034 ) , .Y ( n2040 ) ) ;
CLKINVX3 ctmTdsLR_3_1082 ( .A ( n2049 ) , .Y ( popt_net_121 ) ) ;
NOR2XL U2028 ( .A ( n2098 ) , .B ( n2097 ) , .Y ( N39 ) ) ;
NAND2X8 U158 ( .A ( n2234 ) , .B ( n1638 ) , .Y ( n1742 ) ) ;
INVX4 U1572 ( .A ( n1638 ) , .Y ( n2239 ) ) ;
NAND2X2 U1586 ( .A ( n1704 ) , .B ( n1578 ) , .Y ( n2235 ) ) ;
XNOR2X1 U1619 ( .A ( n97 ) , .B ( n2233 ) , .Y ( n99 ) ) ;
NAND2XL U1884 ( .A ( n2232 ) , .B ( n2231 ) , .Y ( n100 ) ) ;
OAI21XL U1885 ( .A0 ( n2168 ) , .A1 ( n1244 ) , .B0 ( n97 ) , .Y ( n2232 ) ) ;
XNOR2X1 U2003 ( .A ( n1244 ) , .B ( n2168 ) , .Y ( n2233 ) ) ;
OR2X4 U2004 ( .A ( n1965 ) , .B ( n1964 ) , .Y ( n2068 ) ) ;
NAND2XL U2005 ( .A ( n1244 ) , .B ( n2168 ) , .Y ( n2231 ) ) ;
NAND2X4 U2006 ( .A ( n2236 ) , .B ( n2235 ) , .Y ( n2234 ) ) ;
BUFX2 ZBUF_369_inst_1 ( .A ( Xt[7] ) , .Y ( ZBUF_369_0 ) ) ;
BUFX4 ZBUF_370_inst_3 ( .A ( Xt[5] ) , .Y ( ZBUF_370_0 ) ) ;
BUFX3 ZBUF_331_inst_4 ( .A ( Xt[4] ) , .Y ( ZBUF_331_0 ) ) ;
BUFX3 ZBUF_418_inst_6 ( .A ( Xt[6] ) , .Y ( ZBUF_418_0 ) ) ;
BUFX5 ZBUF_482_inst_825 ( .A ( X9[5] ) , .Y ( ZBUF_482_2 ) ) ;
BUFX8 ZBUF_659_inst_828 ( .A ( X9[3] ) , .Y ( ZBUF_659_2 ) ) ;
BUFX6 ZBUF_748_inst_833 ( .A ( S9[2] ) , .Y ( ZBUF_748_2 ) ) ;
BUFX4 ZBUF_635_inst_836 ( .A ( X9[4] ) , .Y ( ZBUF_635_2 ) ) ;
BUFX3 ZBUF_75_inst_844 ( .A ( Xt[0] ) , .Y ( ZBUF_75_3 ) ) ;
BUFX4 ZBUF_507_inst_848 ( .A ( X9[6] ) , .Y ( ZBUF_507_3 ) ) ;
BUFX12 ZBUF_390_inst_852 ( .A ( Xt[3] ) , .Y ( ZBUF_390_4 ) ) ;
CLKBUFX1 ZBUF_9_inst_856 ( .A ( n1999 ) , .Y ( ZBUF_9_5 ) ) ;
CLKINVX2 ZINV_4_inst_858 ( .A ( n1957 ) , .Y ( ZINV_4_6 ) ) ;
BUFX12 ZBUF_770_inst_862 ( .A ( n1561 ) , .Y ( ZBUF_770_7 ) ) ;
BUFX2 ZBUF_9_inst_863 ( .A ( n1997 ) , .Y ( ZBUF_9_8 ) ) ;
DLY1X1 ZBUF_62_inst_864 ( .A ( n1693 ) , .Y ( ZBUF_62_8 ) ) ;
CLKBUFX2 ZBUF_9_inst_865 ( .A ( n1998 ) , .Y ( ZBUF_9_9 ) ) ;
XNOR2X1 ctmTdsLR_1_892 ( .A ( n2061 ) , .B ( popt_net_15 ) , .Y ( Y[1] ) ) ;
INVX2 ctmTdsLR_2_893 ( .A ( n2062 ) , .Y ( popt_net_15 ) ) ;
OAI21X4 ctmTdsLR_1_897 ( .A0 ( n1869 ) , .A1 ( n1868 ) , .B0 ( popt_net_17 ) , 
    .Y ( n1907 ) ) ;
NOR2X2 ctmTdsLR_2_898 ( .A ( n1866 ) , .B ( n1905 ) , .Y ( popt_net_17 ) ) ;
OA21X2 ctmTdsLR_2_919 ( .A0 ( n1562 ) , .A1 ( n1459 ) , .B0 ( n1361 ) , 
    .Y ( popt_net_27 ) ) ;
NOR2XL ctmTdsLR_4_923 ( .A ( n1983 ) , .B ( X8[3] ) , .Y ( popt_net_29 ) ) ;
OAI2B11X2 ctmTdsLR_1_908 ( .A1N ( n1891 ) , .A0 ( n1890 ) , .B0 ( n1888 ) , 
    .C0 ( n1889 ) , .Y ( n1902 ) ) ;
NOR2XL ctmTdsLR_5_924 ( .A ( n1984 ) , .B ( X7[3] ) , .Y ( popt_net_30 ) ) ;
AOI21X4 ctmTdsLR_1_928 ( .A0 ( n1337 ) , .A1 ( n1216 ) , .B0 ( n1215 ) , 
    .Y ( n1224 ) ) ;
OAI211X2 ctmTdsLR_2_940 ( .A0 ( n1611 ) , .A1 ( n1626 ) , .B0 ( n736 ) , 
    .C0 ( n1625 ) , .Y ( popt_net_37 ) ) ;
NAND2X1 ctmTdsLR_2_983 ( .A ( n1663 ) , .B ( n1573 ) , .Y ( popt_net_59 ) ) ;
NAND2XL ctmTdsLR_3_984 ( .A ( n1591 ) , .B ( n1673 ) , .Y ( popt_net_60 ) ) ;
INVXL ctmTdsLR_2_988 ( .A ( popt_net_62 ) , .Y ( popt_net_63 ) ) ;
OAI21XL ctmTdsLR_3_989 ( .A0 ( n1414 ) , .A1 ( n1509 ) , .B0 ( n1410 ) , 
    .Y ( popt_net_62 ) ) ;
OAI21BX2 ctmTdsLR_1_991 ( .A0 ( popt_net_66 ) , .A1 ( n1699 ) , 
    .B0N ( n1619 ) , .Y ( n1502 ) ) ;
NAND3X2 ctmTdsLR_2_992 ( .A ( popt_net_65 ) , .B ( n1504 ) , .C ( n1507 ) , 
    .Y ( popt_net_66 ) ) ;
NOR2X1 ctmTdsLR_3_993 ( .A ( n1505 ) , .B ( popt_net_64 ) , 
    .Y ( popt_net_65 ) ) ;
INVX2 ctmTdsLR_4_994 ( .A ( n1503 ) , .Y ( popt_net_64 ) ) ;
INVX1 ctmTdsLR_4_1041 ( .A ( n414 ) , .Y ( popt_net_97 ) ) ;
NAND2BX1 ctmTdsLR_1_1047 ( .AN ( n1378 ) , .B ( n1379 ) , .Y ( n1382 ) ) ;
CLKINVX2 ctmTdsLR_4_1083 ( .A ( n2048 ) , .Y ( popt_net_123 ) ) ;
AOI21X2 ctmTdsLR_1_1084 ( .A0 ( n1875 ) , .A1 ( n1872 ) , 
    .B0 ( popt_net_124 ) , .Y ( n1846 ) ) ;
NAND2X2 ctmTdsLR_2_1085 ( .A ( n1900 ) , .B ( n1884 ) , .Y ( popt_net_124 ) ) ;
endmodule


