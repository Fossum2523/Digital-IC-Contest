/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12
// Date      : Tue May 19 17:33:55 2020
/////////////////////////////////////////////////////////////


module CS_DW01_sub_0 ( A, B, DIFF );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [11:1] carry;

  ADDFX2 U2_5 ( .A(A[5]), .B(n6), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n7), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX1 U2_3 ( .A(A[3]), .B(n8), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n5), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX4 U2_8 ( .A(A[8]), .B(n3), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8]) );
  ADDFX2 U2_2 ( .A(A[2]), .B(n9), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  ADDFX2 U2_1 ( .A(A[1]), .B(n10), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2 U2_10 ( .A(A[10]), .B(n1), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  ADDFX2 U2_9 ( .A(A[9]), .B(n2), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  ADDFX2 U2_7 ( .A(A[7]), .B(n4), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  INVX2 U1 ( .A(B[0]), .Y(n11) );
  XNOR3XL U2 ( .A(A[11]), .B(B[11]), .C(carry[11]), .Y(DIFF[11]) );
  XNOR2X1 U3 ( .A(n11), .B(A[0]), .Y(DIFF[0]) );
  INVX2 U4 ( .A(B[10]), .Y(n1) );
  INVX2 U5 ( .A(B[6]), .Y(n5) );
  INVX2 U6 ( .A(B[1]), .Y(n10) );
  OR2XL U7 ( .A(A[0]), .B(n11), .Y(carry[1]) );
  INVX2 U8 ( .A(B[2]), .Y(n9) );
  INVX2 U9 ( .A(B[3]), .Y(n8) );
  INVX2 U10 ( .A(B[7]), .Y(n4) );
  INVX2 U11 ( .A(B[4]), .Y(n7) );
  INVX2 U12 ( .A(B[8]), .Y(n3) );
  INVX2 U13 ( .A(B[9]), .Y(n2) );
  INVX2 U14 ( .A(B[5]), .Y(n6) );
endmodule


module CS_DW01_sub_24 ( A, B, DIFF );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  wire   n1, n2, n6, n7, n9, n11, n12, n13, n15, n16, n17, n18, n19, n21, n22,
         n23, n24, n25, n27, n28, n29, n30, n31, n33, n37, n38, n43, n44, n46,
         n47, n48, n49, n50, n51, n52, n54, n56, n57, n58, n59, n60, n64, n65,
         n67, n68, n71, n73, n75, n77, n78, n79, n82, n83, n84, n85, n86, n87,
         n88, net42718, net43898, net43915, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164;

  OAI21X8 U8 ( .A0(n17), .A1(n1), .B0(n18), .Y(n16) );
  NOR2X8 U25 ( .A(A[9]), .B(n79), .Y(n28) );
  OAI21X8 U59 ( .A0(n52), .A1(n50), .B0(n51), .Y(n49) );
  AOI21X8 U65 ( .A0(n57), .A1(n163), .B0(n54), .Y(n52) );
  NAND2X4 U104 ( .A(A[6]), .B(n82), .Y(n44) );
  XNOR2X4 U105 ( .A(n11), .B(n133), .Y(DIFF[3]) );
  OAI21X2 U106 ( .A0(n58), .A1(n60), .B0(n59), .Y(n133) );
  NAND2X8 U107 ( .A(n19), .B(n33), .Y(n17) );
  INVX4 U108 ( .A(n28), .Y(n68) );
  INVX6 U109 ( .A(n37), .Y(n154) );
  XOR2X8 U110 ( .A(n23), .B(n132), .Y(DIFF[10]) );
  AND2X6 U111 ( .A(n67), .B(n22), .Y(n132) );
  OR2X8 U112 ( .A(n153), .B(n147), .Y(net43898) );
  CLKAND2X4 U113 ( .A(A[10]), .B(n78), .Y(n147) );
  XNOR2X2 U114 ( .A(n52), .B(n161), .Y(DIFF[4]) );
  OR2X6 U115 ( .A(A[1]), .B(n87), .Y(n164) );
  INVX8 U116 ( .A(n139), .Y(n38) );
  INVX16 U117 ( .A(n136), .Y(n141) );
  NAND2X6 U118 ( .A(A[5]), .B(n83), .Y(n47) );
  OAI21X8 U119 ( .A0(n141), .A1(n140), .B0(n142), .Y(n137) );
  NOR2X6 U120 ( .A(A[6]), .B(n82), .Y(n43) );
  INVX2 U121 ( .A(B[11]), .Y(n77) );
  INVX2 U122 ( .A(B[4]), .Y(n84) );
  INVX2 U123 ( .A(B[6]), .Y(n82) );
  INVX10 U124 ( .A(n135), .Y(n46) );
  INVX2 U125 ( .A(B[10]), .Y(n78) );
  INVX2 U126 ( .A(B[8]), .Y(n146) );
  INVX2 U127 ( .A(B[9]), .Y(n79) );
  CLKINVX2 U128 ( .A(n147), .Y(n22) );
  AND2X8 U129 ( .A(n162), .B(n15), .Y(n160) );
  INVX3 U130 ( .A(n50), .Y(n73) );
  INVX6 U131 ( .A(n148), .Y(DIFF[6]) );
  AND2X6 U132 ( .A(n71), .B(n44), .Y(n149) );
  OA21X4 U133 ( .A0(n141), .A1(n140), .B0(n142), .Y(n134) );
  INVX8 U134 ( .A(n145), .Y(n144) );
  INVX2 U135 ( .A(B[5]), .Y(n83) );
  NOR2X8 U136 ( .A(A[2]), .B(n86), .Y(n58) );
  INVX12 U137 ( .A(n49), .Y(n48) );
  NAND2X8 U138 ( .A(A[9]), .B(n79), .Y(n29) );
  NOR2X8 U139 ( .A(n157), .B(n29), .Y(n153) );
  INVX6 U140 ( .A(A[8]), .Y(n145) );
  INVX18 U141 ( .A(n158), .Y(n1) );
  XOR2X2 U142 ( .A(n12), .B(n60), .Y(DIFF[2]) );
  NAND2BX8 U143 ( .AN(A[5]), .B(B[5]), .Y(n135) );
  INVXL U144 ( .A(n157), .Y(n67) );
  OAI21X6 U145 ( .A0(n141), .A1(n140), .B0(n142), .Y(n143) );
  CLKINVX20 U146 ( .A(n138), .Y(n33) );
  NAND2X8 U147 ( .A(n146), .B(n144), .Y(n142) );
  INVX10 U148 ( .A(n33), .Y(n31) );
  NAND2X8 U149 ( .A(n33), .B(n68), .Y(n24) );
  OAI21X8 U150 ( .A0(B[8]), .A1(n145), .B0(n136), .Y(n6) );
  AOI21X8 U151 ( .A0(n68), .A1(n143), .B0(n27), .Y(n25) );
  AOI21X8 U152 ( .A0(n19), .A1(n137), .B0(net43898), .Y(n18) );
  NAND2BX8 U153 ( .AN(A[7]), .B(B[7]), .Y(n139) );
  NAND2BX8 U154 ( .AN(B[7]), .B(A[7]), .Y(n140) );
  NAND2X8 U155 ( .A(n136), .B(n139), .Y(n138) );
  OR2X8 U156 ( .A(A[8]), .B(n146), .Y(n136) );
  NAND2X4 U157 ( .A(n37), .B(n6), .Y(n155) );
  INVX12 U158 ( .A(n29), .Y(n27) );
  BUFX20 U159 ( .A(n21), .Y(n157) );
  NAND2X3 U160 ( .A(A[1]), .B(n87), .Y(n64) );
  XOR2X8 U161 ( .A(n151), .B(n149), .Y(n148) );
  XOR2X8 U162 ( .A(n30), .B(n150), .Y(DIFF[9]) );
  AND2X8 U163 ( .A(n68), .B(net43915), .Y(n150) );
  OR2X4 U164 ( .A(n43), .B(n46), .Y(n152) );
  INVX4 U165 ( .A(n43), .Y(n71) );
  OA21X4 U166 ( .A0(n48), .A1(n46), .B0(n47), .Y(n151) );
  OAI21X6 U167 ( .A0(n24), .A1(n1), .B0(n25), .Y(n23) );
  OR2X8 U168 ( .A(A[11]), .B(n77), .Y(n162) );
  NAND2X8 U169 ( .A(A[11]), .B(n77), .Y(n15) );
  NAND2X8 U170 ( .A(n154), .B(net42718), .Y(n156) );
  INVX4 U171 ( .A(n27), .Y(net43915) );
  CLKNAND2X8 U172 ( .A(n139), .B(n140), .Y(n7) );
  OAI21X8 U173 ( .A0(n1), .A1(n38), .B0(n140), .Y(n37) );
  NOR2X8 U174 ( .A(n28), .B(n157), .Y(n19) );
  OAI21X8 U175 ( .A0(n1), .A1(n31), .B0(n134), .Y(n30) );
  OAI21X8 U176 ( .A0(n152), .A1(n48), .B0(n159), .Y(n158) );
  OR2X8 U177 ( .A(A[3]), .B(n85), .Y(n163) );
  NAND2X6 U178 ( .A(A[2]), .B(n86), .Y(n59) );
  NAND2X8 U179 ( .A(A[4]), .B(n84), .Y(n51) );
  OAI21X8 U180 ( .A0(n58), .A1(n60), .B0(n59), .Y(n57) );
  NAND2X1 U181 ( .A(n164), .B(n64), .Y(n13) );
  NOR2X8 U182 ( .A(A[10]), .B(n78), .Y(n21) );
  CLKNAND2X12 U183 ( .A(n155), .B(n156), .Y(DIFF[8]) );
  CLKINVX4 U184 ( .A(n6), .Y(net42718) );
  NOR2X8 U185 ( .A(A[4]), .B(n84), .Y(n50) );
  NAND2X8 U186 ( .A(A[3]), .B(n85), .Y(n56) );
  NOR2X8 U187 ( .A(A[0]), .B(n88), .Y(n65) );
  XOR2X8 U188 ( .A(n1), .B(n7), .Y(DIFF[7]) );
  OA21X4 U189 ( .A0(n43), .A1(n47), .B0(n44), .Y(n159) );
  AOI21BX4 U190 ( .A0(n164), .A1(n2), .B0N(n64), .Y(n60) );
  XOR2X8 U191 ( .A(n48), .B(n9), .Y(DIFF[5]) );
  AND2X6 U192 ( .A(n73), .B(n51), .Y(n161) );
  NAND2X2 U193 ( .A(n163), .B(n56), .Y(n11) );
  INVX2 U194 ( .A(n65), .Y(n2) );
  INVX2 U195 ( .A(n56), .Y(n54) );
  XOR2X8 U196 ( .A(n16), .B(n160), .Y(DIFF[11]) );
  NAND2X2 U197 ( .A(n75), .B(n59), .Y(n12) );
  INVX2 U198 ( .A(n58), .Y(n75) );
  NAND2X2 U199 ( .A(n135), .B(n47), .Y(n9) );
  CLKXOR2X2 U200 ( .A(n13), .B(n65), .Y(DIFF[1]) );
  XNOR2X1 U201 ( .A(A[0]), .B(n88), .Y(DIFF[0]) );
  INVX6 U202 ( .A(B[2]), .Y(n86) );
  INVX6 U203 ( .A(B[1]), .Y(n87) );
  INVX6 U204 ( .A(B[0]), .Y(n88) );
  CLKINVX8 U205 ( .A(B[3]), .Y(n85) );
endmodule


module CS_DW01_sub_25 ( A, B, DIFF );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  wire   n1, n2, n9, n10, n11, n12, n13, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n27, n29, n30, n32, n33, n34, n36, n39, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n54, n56, n57, n58,
         n59, n60, n64, n65, n67, n71, n72, n73, n75, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n86, n87, n88, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162;

  AOI21X8 U20 ( .A0(n143), .A1(n138), .B0(n27), .Y(n25) );
  NOR2X8 U45 ( .A(n43), .B(n46), .Y(n41) );
  OAI21X8 U59 ( .A0(n52), .A1(n50), .B0(n51), .Y(n49) );
  OAI21X8 U73 ( .A0(n60), .A1(n58), .B0(n59), .Y(n57) );
  INVX4 U104 ( .A(n49), .Y(n48) );
  AND2X2 U105 ( .A(A[10]), .B(n78), .Y(n145) );
  OR2X6 U106 ( .A(A[9]), .B(n79), .Y(n138) );
  INVX12 U107 ( .A(n146), .Y(n21) );
  BUFX2 U108 ( .A(n57), .Y(n131) );
  CLKNAND2X8 U109 ( .A(A[9]), .B(n79), .Y(n29) );
  OR2X4 U110 ( .A(A[9]), .B(n79), .Y(n134) );
  CLKNAND2X4 U111 ( .A(A[8]), .B(n80), .Y(n36) );
  OAI21X6 U112 ( .A0(n133), .A1(n39), .B0(n36), .Y(n34) );
  INVX1 U113 ( .A(n21), .Y(n67) );
  NOR2X8 U114 ( .A(A[5]), .B(n83), .Y(n46) );
  NOR2X8 U115 ( .A(n162), .B(n140), .Y(n152) );
  OAI21X8 U116 ( .A0(n162), .A1(n24), .B0(n25), .Y(n23) );
  NAND2X6 U117 ( .A(A[5]), .B(n83), .Y(n47) );
  AND2X6 U118 ( .A(n161), .B(n15), .Y(n156) );
  INVX2 U119 ( .A(B[9]), .Y(n79) );
  INVX2 U120 ( .A(B[4]), .Y(n84) );
  XOR2X2 U121 ( .A(n12), .B(n60), .Y(DIFF[2]) );
  NAND2X2 U122 ( .A(A[4]), .B(n84), .Y(n51) );
  NOR2X4 U123 ( .A(A[4]), .B(n84), .Y(n50) );
  INVX2 U124 ( .A(B[10]), .Y(n78) );
  INVX2 U125 ( .A(B[7]), .Y(n81) );
  INVX2 U126 ( .A(B[11]), .Y(n77) );
  INVX2 U127 ( .A(B[6]), .Y(n82) );
  INVX2 U128 ( .A(B[5]), .Y(n83) );
  INVX2 U129 ( .A(B[8]), .Y(n80) );
  INVX8 U130 ( .A(B[0]), .Y(n88) );
  INVX2 U131 ( .A(n145), .Y(n22) );
  AND2X6 U132 ( .A(n29), .B(n138), .Y(n147) );
  INVX3 U133 ( .A(n50), .Y(n73) );
  AND2X6 U134 ( .A(n137), .B(n39), .Y(n132) );
  INVX4 U135 ( .A(n29), .Y(n27) );
  AOI21BX2 U136 ( .A0(n57), .A1(n158), .B0N(n56), .Y(n136) );
  NOR2X5 U137 ( .A(A[8]), .B(n80), .Y(n133) );
  NAND2X5 U138 ( .A(n33), .B(n19), .Y(n17) );
  NOR2X8 U139 ( .A(n29), .B(n21), .Y(n151) );
  INVX12 U140 ( .A(n144), .Y(n44) );
  AND2X4 U141 ( .A(A[6]), .B(n82), .Y(n144) );
  AND2X6 U142 ( .A(n67), .B(n22), .Y(n155) );
  CLKINVX3 U143 ( .A(n137), .Y(n140) );
  NAND2X6 U144 ( .A(n132), .B(n162), .Y(n149) );
  OR2X8 U145 ( .A(n162), .B(n132), .Y(n150) );
  AND2X8 U146 ( .A(n134), .B(n146), .Y(n19) );
  OR2X8 U147 ( .A(n151), .B(n145), .Y(n20) );
  XOR2X8 U148 ( .A(n48), .B(n9), .Y(DIFF[5]) );
  CLKNAND2X4 U149 ( .A(n72), .B(n47), .Y(n9) );
  INVX4 U150 ( .A(n43), .Y(n71) );
  CLKINVX12 U151 ( .A(n135), .Y(n33) );
  OR2X8 U152 ( .A(A[10]), .B(n78), .Y(n146) );
  OR2X8 U153 ( .A(A[6]), .B(n82), .Y(n148) );
  INVX4 U154 ( .A(n143), .Y(n32) );
  NAND2X8 U155 ( .A(n33), .B(n138), .Y(n24) );
  AOI21X8 U156 ( .A0(n57), .A1(n158), .B0(n54), .Y(n52) );
  OR2X8 U157 ( .A(A[1]), .B(n87), .Y(n160) );
  XNOR2X2 U158 ( .A(n11), .B(n131), .Y(DIFF[3]) );
  NAND2X2 U159 ( .A(A[3]), .B(n85), .Y(n56) );
  INVX6 U160 ( .A(n39), .Y(n153) );
  NAND2X8 U161 ( .A(A[7]), .B(n81), .Y(n39) );
  NAND2X8 U162 ( .A(n137), .B(n139), .Y(n135) );
  BUFX20 U163 ( .A(n1), .Y(n162) );
  INVX16 U164 ( .A(n148), .Y(n43) );
  CLKINVX6 U165 ( .A(n56), .Y(n54) );
  OR2X8 U166 ( .A(A[7]), .B(n81), .Y(n137) );
  AND2X6 U167 ( .A(n36), .B(n139), .Y(n154) );
  OR2X6 U168 ( .A(A[8]), .B(n80), .Y(n139) );
  NAND2BX2 U169 ( .AN(A[3]), .B(n159), .Y(n158) );
  CLKINVX6 U170 ( .A(n154), .Y(n141) );
  XOR2X4 U171 ( .A(n136), .B(n10), .Y(DIFF[4]) );
  NAND2X3 U172 ( .A(A[1]), .B(n87), .Y(n64) );
  XOR2X8 U173 ( .A(n142), .B(n141), .Y(DIFF[8]) );
  NOR2X8 U174 ( .A(n152), .B(n153), .Y(n142) );
  BUFX20 U175 ( .A(n34), .Y(n143) );
  XOR2X8 U176 ( .A(n30), .B(n147), .Y(DIFF[9]) );
  CLKNAND2X12 U177 ( .A(n149), .B(n150), .Y(DIFF[7]) );
  NOR2X4 U178 ( .A(A[2]), .B(n86), .Y(n58) );
  OAI21X8 U179 ( .A0(n162), .A1(n135), .B0(n32), .Y(n30) );
  NOR2X8 U180 ( .A(A[0]), .B(n88), .Y(n65) );
  NAND2X8 U181 ( .A(A[11]), .B(n77), .Y(n15) );
  NAND2X1 U182 ( .A(n158), .B(n56), .Y(n11) );
  OR2X8 U183 ( .A(A[11]), .B(n77), .Y(n161) );
  OAI21X3 U184 ( .A0(n48), .A1(n46), .B0(n47), .Y(n45) );
  NAND2X8 U185 ( .A(A[2]), .B(n86), .Y(n59) );
  CLKAND2X2 U186 ( .A(n71), .B(n44), .Y(n157) );
  AOI21X8 U187 ( .A0(n143), .A1(n19), .B0(n20), .Y(n18) );
  OAI21X8 U188 ( .A0(n17), .A1(n162), .B0(n18), .Y(n16) );
  AOI21X8 U189 ( .A0(n41), .A1(n49), .B0(n42), .Y(n1) );
  CLKNAND2X4 U190 ( .A(n75), .B(n59), .Y(n12) );
  CLKNAND2X2 U191 ( .A(n160), .B(n64), .Y(n13) );
  OAI21X8 U192 ( .A0(n43), .A1(n47), .B0(n44), .Y(n42) );
  INVX6 U193 ( .A(B[1]), .Y(n87) );
  INVX10 U194 ( .A(B[3]), .Y(n85) );
  INVX1 U195 ( .A(n46), .Y(n72) );
  NAND2X4 U196 ( .A(n73), .B(n51), .Y(n10) );
  AOI21BX4 U197 ( .A0(n160), .A1(n2), .B0N(n64), .Y(n60) );
  INVX10 U198 ( .A(B[2]), .Y(n86) );
  INVX2 U199 ( .A(n85), .Y(n159) );
  INVX2 U200 ( .A(n65), .Y(n2) );
  XOR2X8 U201 ( .A(n23), .B(n155), .Y(DIFF[10]) );
  INVX2 U202 ( .A(n58), .Y(n75) );
  XOR2X8 U203 ( .A(n16), .B(n156), .Y(DIFF[11]) );
  XOR2X8 U204 ( .A(n45), .B(n157), .Y(DIFF[6]) );
  XOR2X1 U205 ( .A(n13), .B(n65), .Y(DIFF[1]) );
  XNOR2X1 U206 ( .A(A[0]), .B(n88), .Y(DIFF[0]) );
endmodule


module CS_DW01_sub_22 ( A, B, DIFF );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  wire   n1, n2, n5, n6, n7, n8, n9, n10, n12, n13, n15, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n28, n29, n31, n33, n34, n35, n36, n38, n39,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n54, n56,
         n57, n58, n59, n60, n62, n64, n65, n67, n70, n72, n73, n75, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151;

  NOR2X8 U11 ( .A(n146), .B(n28), .Y(n19) );
  OAI21X8 U32 ( .A0(n133), .A1(n39), .B0(n36), .Y(n34) );
  XNOR2X4 U43 ( .A(n45), .B(n8), .Y(DIFF[6]) );
  NOR2X8 U62 ( .A(A[4]), .B(n84), .Y(n50) );
  OAI21X8 U73 ( .A0(n58), .A1(n60), .B0(n59), .Y(n57) );
  NAND2X4 U104 ( .A(A[9]), .B(n79), .Y(n29) );
  NOR2X3 U105 ( .A(A[10]), .B(n78), .Y(n21) );
  NOR2X2 U106 ( .A(A[8]), .B(n80), .Y(n35) );
  NOR2X6 U107 ( .A(A[7]), .B(n81), .Y(n38) );
  NOR2X8 U108 ( .A(A[5]), .B(n83), .Y(n46) );
  NAND2X8 U109 ( .A(A[7]), .B(n81), .Y(n39) );
  INVX10 U110 ( .A(n140), .Y(n133) );
  NAND2X4 U111 ( .A(A[5]), .B(n83), .Y(n47) );
  OAI21X6 U112 ( .A0(n43), .A1(n47), .B0(n44), .Y(n42) );
  INVX8 U113 ( .A(n139), .Y(n44) );
  INVX4 U114 ( .A(B[2]), .Y(n86) );
  INVX8 U115 ( .A(B[3]), .Y(n85) );
  INVX2 U116 ( .A(B[10]), .Y(n78) );
  NAND2X4 U117 ( .A(n150), .B(n64), .Y(n13) );
  INVX4 U118 ( .A(B[4]), .Y(n84) );
  INVX2 U119 ( .A(B[6]), .Y(n82) );
  INVX2 U120 ( .A(B[5]), .Y(n83) );
  INVX2 U121 ( .A(B[11]), .Y(n77) );
  INVX2 U122 ( .A(B[7]), .Y(n81) );
  INVX2 U123 ( .A(B[8]), .Y(n80) );
  INVX2 U124 ( .A(B[9]), .Y(n79) );
  BUFX14 U125 ( .A(n21), .Y(n146) );
  CLKNAND2X4 U126 ( .A(n75), .B(n59), .Y(n12) );
  INVX4 U127 ( .A(n33), .Y(n31) );
  INVX2 U128 ( .A(n146), .Y(n67) );
  OAI21X4 U129 ( .A0(n146), .A1(n29), .B0(n22), .Y(n20) );
  OR2X6 U130 ( .A(A[11]), .B(n77), .Y(n151) );
  NAND2X8 U131 ( .A(A[11]), .B(n77), .Y(n15) );
  NOR2X8 U132 ( .A(n38), .B(n35), .Y(n33) );
  NOR2X3 U133 ( .A(A[9]), .B(n79), .Y(n28) );
  CLKAND2X4 U134 ( .A(A[6]), .B(n82), .Y(n139) );
  NAND2BX2 U135 ( .AN(n43), .B(n44), .Y(n8) );
  OR2X8 U136 ( .A(A[8]), .B(n80), .Y(n140) );
  CLKAND2X6 U137 ( .A(n149), .B(n56), .Y(n148) );
  CLKINVX8 U138 ( .A(n56), .Y(n54) );
  NAND2X5 U139 ( .A(A[3]), .B(n85), .Y(n56) );
  BUFX10 U140 ( .A(n60), .Y(n131) );
  OAI21X6 U141 ( .A0(n143), .A1(n24), .B0(n25), .Y(n23) );
  NAND2X4 U142 ( .A(A[1]), .B(n87), .Y(n64) );
  INVX12 U143 ( .A(n39), .Y(n135) );
  OA21X4 U144 ( .A0(n133), .A1(n39), .B0(n36), .Y(n137) );
  NAND2X2 U145 ( .A(n72), .B(n47), .Y(n9) );
  OAI21X3 U146 ( .A0(n48), .A1(n46), .B0(n47), .Y(n45) );
  CLKNAND2X8 U147 ( .A(n70), .B(n136), .Y(n7) );
  INVX12 U148 ( .A(n135), .Y(n136) );
  CLKNAND2X8 U149 ( .A(A[8]), .B(n80), .Y(n36) );
  OR2X4 U150 ( .A(A[9]), .B(n79), .Y(n132) );
  INVX12 U151 ( .A(n49), .Y(n48) );
  BUFX2 U152 ( .A(n52), .Y(n134) );
  NAND2X4 U153 ( .A(n132), .B(n29), .Y(n5) );
  NAND2X2 U154 ( .A(n33), .B(n132), .Y(n24) );
  XOR2X3 U155 ( .A(n134), .B(n10), .Y(DIFF[4]) );
  XOR2X8 U156 ( .A(n138), .B(n5), .Y(DIFF[9]) );
  OA21X4 U157 ( .A0(n31), .A1(n1), .B0(n137), .Y(n138) );
  INVX4 U158 ( .A(n64), .Y(n62) );
  XOR2X3 U159 ( .A(n148), .B(n57), .Y(DIFF[3]) );
  OR2X4 U160 ( .A(A[1]), .B(n87), .Y(n150) );
  CLKNAND2X2 U161 ( .A(A[10]), .B(n78), .Y(n22) );
  XOR2X8 U162 ( .A(n141), .B(n142), .Y(DIFF[11]) );
  OAI21X8 U163 ( .A0(n17), .A1(n143), .B0(n18), .Y(n141) );
  AND2X8 U164 ( .A(n151), .B(n15), .Y(n142) );
  BUFX20 U165 ( .A(n1), .Y(n143) );
  XOR2X8 U166 ( .A(n144), .B(n6), .Y(DIFF[8]) );
  OA21X4 U167 ( .A0(n38), .A1(n1), .B0(n136), .Y(n144) );
  NOR2X8 U168 ( .A(A[2]), .B(n86), .Y(n58) );
  NOR2X8 U169 ( .A(A[0]), .B(n88), .Y(n65) );
  OR2X6 U170 ( .A(A[3]), .B(n85), .Y(n149) );
  NAND2X4 U171 ( .A(n19), .B(n33), .Y(n17) );
  CLKNAND2X2 U172 ( .A(n36), .B(n140), .Y(n6) );
  NAND2X3 U173 ( .A(A[4]), .B(n84), .Y(n51) );
  CLKNAND2X4 U174 ( .A(n73), .B(n51), .Y(n10) );
  INVX1 U175 ( .A(n58), .Y(n75) );
  NAND2X6 U176 ( .A(A[2]), .B(n86), .Y(n59) );
  AOI21X8 U177 ( .A0(n57), .A1(n149), .B0(n54), .Y(n52) );
  NOR2BX8 U178 ( .AN(n41), .B(n48), .Y(n145) );
  OAI21X8 U179 ( .A0(n52), .A1(n50), .B0(n51), .Y(n49) );
  NOR2X6 U180 ( .A(n43), .B(n46), .Y(n41) );
  XOR2X8 U181 ( .A(n12), .B(n131), .Y(DIFF[2]) );
  AOI21BX4 U182 ( .A0(n34), .A1(n132), .B0N(n29), .Y(n25) );
  AOI21X8 U183 ( .A0(n19), .A1(n34), .B0(n20), .Y(n18) );
  NOR2X8 U184 ( .A(A[6]), .B(n82), .Y(n43) );
  XOR2X8 U185 ( .A(n48), .B(n9), .Y(DIFF[5]) );
  NOR2X8 U186 ( .A(n145), .B(n42), .Y(n1) );
  XOR2X8 U187 ( .A(n143), .B(n7), .Y(DIFF[7]) );
  AOI21X8 U188 ( .A0(n150), .A1(n2), .B0(n62), .Y(n60) );
  INVX1 U189 ( .A(n50), .Y(n73) );
  INVXL U190 ( .A(n46), .Y(n72) );
  XNOR2X1 U191 ( .A(A[0]), .B(n88), .Y(DIFF[0]) );
  XOR2X8 U192 ( .A(n23), .B(n147), .Y(DIFF[10]) );
  AND2X2 U193 ( .A(n67), .B(n22), .Y(n147) );
  INVX2 U194 ( .A(n65), .Y(n2) );
  INVX2 U195 ( .A(n38), .Y(n70) );
  XOR2X1 U196 ( .A(n13), .B(n65), .Y(DIFF[1]) );
  INVX6 U197 ( .A(B[1]), .Y(n87) );
  INVX6 U198 ( .A(B[0]), .Y(n88) );
endmodule


module CS_DW01_sub_23 ( A, B, DIFF );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  wire   n2, n5, n12, n13, n28, n29, n34, n35, n36, n38, n39, n45, n56, n57,
         n58, n59, n60, n64, n65, n70, n75, n79, n80, n81, n85, n86, n87, n88,
         net40964, net41160, net41178, net41542, net42738, net45807, net48672,
         net42980, net42979, net41189, n68, n27, n25, n23, net41060, n77, n15,
         net41517, n9, n84, n73, n52, n51, n50, n49, n46, n10, net41061, n78,
         n67, n33, n22, n21, n20, n19, n18, n17, n16, n1, net45005, n83, n71,
         n47, n44, n82, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145;

  OAI21X8 U32 ( .A0(n35), .A1(n39), .B0(n36), .Y(n34) );
  NOR2X8 U35 ( .A(A[8]), .B(n80), .Y(n35) );
  NOR2X8 U41 ( .A(A[7]), .B(n81), .Y(n38) );
  OAI21X8 U73 ( .A0(n60), .A1(n58), .B0(n59), .Y(n57) );
  AOI21X8 U65 ( .A0(n57), .A1(net40964), .B0(net48672), .Y(n52) );
  OAI21X8 U59 ( .A0(n52), .A1(n50), .B0(n51), .Y(n49) );
  OAI21X8 U8 ( .A0(n17), .A1(n1), .B0(n18), .Y(n16) );
  OR2X8 U104 ( .A(A[5]), .B(n83), .Y(n131) );
  INVX4 U105 ( .A(B[5]), .Y(n83) );
  NAND2X5 U106 ( .A(A[9]), .B(n79), .Y(n29) );
  BUFX8 U107 ( .A(n34), .Y(net45807) );
  OR2X8 U108 ( .A(A[1]), .B(n87), .Y(n145) );
  NAND2X3 U109 ( .A(n82), .B(A[6]), .Y(n44) );
  OAI21X1 U110 ( .A0(n46), .A1(net41517), .B0(n47), .Y(n45) );
  INVX14 U111 ( .A(n49), .Y(net41517) );
  INVX16 U112 ( .A(net41061), .Y(n1) );
  CLKBUFX4 U113 ( .A(n60), .Y(n139) );
  BUFX8 U114 ( .A(n22), .Y(n136) );
  XOR2X3 U115 ( .A(n52), .B(n10), .Y(DIFF[4]) );
  INVX14 U116 ( .A(n1), .Y(net42979) );
  XOR2X4 U117 ( .A(n1), .B(net41542), .Y(DIFF[7]) );
  INVX10 U118 ( .A(n28), .Y(n68) );
  NOR2X8 U119 ( .A(A[6]), .B(n133), .Y(n132) );
  CLKINVX40 U120 ( .A(B[6]), .Y(n133) );
  OR2X4 U121 ( .A(n132), .B(n46), .Y(net45005) );
  CLKNAND2X2 U122 ( .A(n70), .B(n39), .Y(net41542) );
  NOR2X8 U123 ( .A(n38), .B(n35), .Y(n33) );
  INVX2 U124 ( .A(B[4]), .Y(n84) );
  INVX2 U125 ( .A(B[9]), .Y(n79) );
  INVX3 U126 ( .A(n58), .Y(n75) );
  CLKINVX4 U127 ( .A(n144), .Y(n140) );
  INVX2 U128 ( .A(B[8]), .Y(n80) );
  INVX2 U129 ( .A(B[11]), .Y(n77) );
  INVX2 U130 ( .A(B[10]), .Y(n78) );
  INVX2 U131 ( .A(B[7]), .Y(n81) );
  INVX4 U132 ( .A(n29), .Y(n27) );
  INVX6 U133 ( .A(n38), .Y(n70) );
  INVX4 U134 ( .A(net48672), .Y(n56) );
  CLKNAND2X4 U135 ( .A(n73), .B(n51), .Y(n10) );
  INVX2 U136 ( .A(B[6]), .Y(n82) );
  NOR2X8 U137 ( .A(A[10]), .B(n78), .Y(n21) );
  XNOR2X4 U138 ( .A(A[0]), .B(n88), .Y(DIFF[0]) );
  INVXL U139 ( .A(n135), .Y(n67) );
  OA21X4 U140 ( .A0(n132), .A1(n47), .B0(n44), .Y(n134) );
  OAI21X8 U141 ( .A0(net45005), .A1(net41517), .B0(n134), .Y(net41061) );
  CLKNAND2X12 U142 ( .A(n131), .B(n47), .Y(n9) );
  NAND2X8 U143 ( .A(A[5]), .B(n83), .Y(n47) );
  NOR2X8 U144 ( .A(A[5]), .B(n83), .Y(n46) );
  INVXL U145 ( .A(n132), .Y(n71) );
  AND2X2 U146 ( .A(n44), .B(n71), .Y(net41178) );
  XOR2X8 U147 ( .A(n16), .B(net41060), .Y(DIFF[11]) );
  AOI21X8 U148 ( .A0(n19), .A1(n34), .B0(n20), .Y(n18) );
  OAI21X6 U149 ( .A0(n135), .A1(n29), .B0(n136), .Y(n20) );
  CLKAND2X4 U150 ( .A(n67), .B(n136), .Y(net41189) );
  CLKNAND2X2 U151 ( .A(n78), .B(A[10]), .Y(n22) );
  BUFX20 U152 ( .A(n21), .Y(n135) );
  NOR2X8 U153 ( .A(n28), .B(n135), .Y(n19) );
  NAND2X8 U154 ( .A(n19), .B(n33), .Y(n17) );
  AND2X4 U155 ( .A(n33), .B(n68), .Y(net42980) );
  AOI21X8 U156 ( .A0(net42979), .A1(n33), .B0(net45807), .Y(net41160) );
  NAND2BX8 U157 ( .AN(n1), .B(n70), .Y(net42738) );
  XOR2X1 U158 ( .A(n9), .B(net41517), .Y(DIFF[5]) );
  NOR2X8 U159 ( .A(A[4]), .B(n84), .Y(n50) );
  INVX6 U160 ( .A(n50), .Y(n73) );
  NAND2X6 U161 ( .A(A[4]), .B(n84), .Y(n51) );
  CLKXOR2X4 U162 ( .A(n137), .B(n57), .Y(DIFF[3]) );
  AND2X2 U163 ( .A(net40964), .B(n56), .Y(n137) );
  AND2X8 U164 ( .A(n138), .B(n15), .Y(net41060) );
  NAND2X8 U165 ( .A(A[11]), .B(n77), .Y(n15) );
  OR2X8 U166 ( .A(A[11]), .B(n77), .Y(n138) );
  CLKNAND2X8 U167 ( .A(net42738), .B(n39), .Y(n141) );
  CLKNAND2X4 U168 ( .A(n145), .B(n64), .Y(n13) );
  INVX16 U169 ( .A(n143), .Y(DIFF[8]) );
  XOR2X8 U170 ( .A(n23), .B(net41189), .Y(DIFF[10]) );
  OAI2BB1X4 U171 ( .A0N(net42979), .A1N(net42980), .B0(n25), .Y(n23) );
  AOI21X4 U172 ( .A0(n68), .A1(n34), .B0(n27), .Y(n25) );
  NAND2X4 U173 ( .A(n68), .B(n29), .Y(n5) );
  CLKAND2X6 U174 ( .A(A[3]), .B(n85), .Y(net48672) );
  NAND2X6 U175 ( .A(A[2]), .B(n86), .Y(n59) );
  OR2XL U176 ( .A(A[8]), .B(n80), .Y(n142) );
  NOR2X4 U177 ( .A(A[2]), .B(n86), .Y(n58) );
  NAND2X3 U178 ( .A(A[8]), .B(n80), .Y(n36) );
  OR2X2 U179 ( .A(A[3]), .B(n85), .Y(net40964) );
  XOR2X8 U180 ( .A(n141), .B(n140), .Y(n143) );
  CLKNAND2X2 U181 ( .A(n75), .B(n59), .Y(n12) );
  NAND2X8 U182 ( .A(A[7]), .B(n81), .Y(n39) );
  NOR2X8 U183 ( .A(A[9]), .B(n79), .Y(n28) );
  XOR2X8 U184 ( .A(n12), .B(n139), .Y(DIFF[2]) );
  NOR2X6 U185 ( .A(A[0]), .B(n88), .Y(n65) );
  CLKINVX12 U186 ( .A(B[3]), .Y(n85) );
  AND2X4 U187 ( .A(n142), .B(n36), .Y(n144) );
  INVX10 U188 ( .A(B[2]), .Y(n86) );
  NAND2X3 U189 ( .A(A[1]), .B(n87), .Y(n64) );
  AOI21BX4 U190 ( .A0(n145), .A1(n2), .B0N(n64), .Y(n60) );
  CLKINVX8 U191 ( .A(B[1]), .Y(n87) );
  XOR2X8 U192 ( .A(n45), .B(net41178), .Y(DIFF[6]) );
  XOR2X8 U193 ( .A(net41160), .B(n5), .Y(DIFF[9]) );
  INVX2 U194 ( .A(n65), .Y(n2) );
  XOR2X1 U195 ( .A(n13), .B(n65), .Y(DIFF[1]) );
  INVX6 U196 ( .A(B[0]), .Y(n88) );
endmodule


module CS_DW01_sub_20 ( A, B, DIFF );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  wire   n1, n7, n9, n10, n12, n13, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n27, n28, n29, n30, n32, n33, n34, n36, n38, n39, n41,
         n42, n44, n45, n46, n47, n48, n49, n50, n51, n52, n54, n56, n57, n58,
         n59, n60, n64, n65, n67, n68, n69, n71, n72, n73, n75, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153;

  OAI21X8 U59 ( .A0(n52), .A1(n50), .B0(n51), .Y(n49) );
  NOR2X8 U62 ( .A(A[4]), .B(n84), .Y(n50) );
  AOI21X8 U65 ( .A0(n57), .A1(n152), .B0(n54), .Y(n52) );
  OAI21X8 U73 ( .A0(n60), .A1(n58), .B0(n59), .Y(n57) );
  NOR2X8 U88 ( .A(A[0]), .B(n88), .Y(n65) );
  CLKXOR2X4 U104 ( .A(n12), .B(n60), .Y(DIFF[2]) );
  BUFX8 U105 ( .A(n22), .Y(n131) );
  XOR2X8 U106 ( .A(n132), .B(n133), .Y(DIFF[8]) );
  OAI21X8 U107 ( .A0(n1), .A1(n145), .B0(n142), .Y(n132) );
  AND2X6 U108 ( .A(n69), .B(n36), .Y(n133) );
  OAI21X8 U109 ( .A0(n144), .A1(n1), .B0(n32), .Y(n30) );
  NOR2X8 U110 ( .A(A[8]), .B(n80), .Y(n143) );
  NOR2X8 U111 ( .A(A[10]), .B(n78), .Y(n21) );
  NOR2X8 U112 ( .A(A[5]), .B(n83), .Y(n46) );
  NAND2X6 U113 ( .A(A[9]), .B(n79), .Y(n29) );
  AND2X4 U114 ( .A(n44), .B(n71), .Y(n149) );
  INVX10 U115 ( .A(n49), .Y(n48) );
  INVX2 U116 ( .A(B[10]), .Y(n78) );
  INVX2 U117 ( .A(B[8]), .Y(n80) );
  INVX2 U118 ( .A(n65), .Y(n138) );
  INVX4 U119 ( .A(n64), .Y(n139) );
  INVX2 U120 ( .A(B[4]), .Y(n84) );
  INVX6 U121 ( .A(B[3]), .Y(n85) );
  INVX2 U122 ( .A(B[7]), .Y(n81) );
  INVX2 U123 ( .A(B[9]), .Y(n79) );
  NAND2X6 U124 ( .A(A[4]), .B(n84), .Y(n51) );
  INVX2 U125 ( .A(B[5]), .Y(n83) );
  INVX2 U126 ( .A(B[11]), .Y(n77) );
  OR2X4 U127 ( .A(A[11]), .B(n77), .Y(n153) );
  NAND2X3 U128 ( .A(A[11]), .B(n77), .Y(n15) );
  INVX2 U129 ( .A(B[6]), .Y(n82) );
  AOI21X8 U130 ( .A0(n34), .A1(n68), .B0(n27), .Y(n25) );
  INVX6 U131 ( .A(n34), .Y(n32) );
  INVX6 U132 ( .A(A[6]), .Y(n137) );
  INVX2 U133 ( .A(n136), .Y(n71) );
  OAI21X8 U134 ( .A0(n48), .A1(n46), .B0(n47), .Y(n45) );
  NOR2X8 U135 ( .A(A[7]), .B(n81), .Y(n38) );
  NAND2X8 U136 ( .A(n41), .B(n49), .Y(n141) );
  NOR2X8 U137 ( .A(A[9]), .B(n79), .Y(n28) );
  AND2X4 U138 ( .A(n67), .B(n131), .Y(n148) );
  INVX10 U139 ( .A(n28), .Y(n68) );
  NOR2X6 U140 ( .A(n28), .B(n21), .Y(n19) );
  CLKAND2X4 U141 ( .A(n68), .B(n29), .Y(n147) );
  AOI21X6 U142 ( .A0(n19), .A1(n34), .B0(n20), .Y(n18) );
  OAI21X4 U143 ( .A0(n21), .A1(n29), .B0(n131), .Y(n20) );
  NAND2X2 U144 ( .A(A[6]), .B(n82), .Y(n44) );
  CLKNAND2X2 U145 ( .A(A[10]), .B(n78), .Y(n22) );
  OAI21X8 U146 ( .A0(n134), .A1(n24), .B0(n25), .Y(n23) );
  OAI21X8 U147 ( .A0(n17), .A1(n134), .B0(n18), .Y(n16) );
  NOR2BX8 U148 ( .AN(n141), .B(n42), .Y(n134) );
  CLKXOR2X12 U149 ( .A(n48), .B(n9), .Y(DIFF[5]) );
  AND2X1 U150 ( .A(n152), .B(n56), .Y(n146) );
  CLKNAND2X8 U151 ( .A(A[1]), .B(n87), .Y(n64) );
  OAI21X8 U152 ( .A0(n47), .A1(n136), .B0(n44), .Y(n42) );
  NAND2X8 U153 ( .A(n19), .B(n33), .Y(n17) );
  AND2X8 U154 ( .A(n137), .B(B[6]), .Y(n135) );
  AND2X8 U155 ( .A(n137), .B(B[6]), .Y(n136) );
  NAND2X4 U156 ( .A(A[5]), .B(n83), .Y(n47) );
  NAND2X8 U157 ( .A(A[7]), .B(n81), .Y(n39) );
  NAND2X6 U158 ( .A(A[2]), .B(n86), .Y(n59) );
  INVX2 U159 ( .A(n29), .Y(n27) );
  XOR2X8 U160 ( .A(n146), .B(n140), .Y(DIFF[3]) );
  AOI21X8 U161 ( .A0(n151), .A1(n138), .B0(n139), .Y(n60) );
  OR2X4 U162 ( .A(A[1]), .B(n87), .Y(n151) );
  BUFX2 U163 ( .A(n57), .Y(n140) );
  INVX3 U164 ( .A(n56), .Y(n54) );
  CLKNAND2X2 U165 ( .A(n72), .B(n47), .Y(n9) );
  NOR2BX8 U166 ( .AN(n141), .B(n42), .Y(n1) );
  CLKNAND2X8 U167 ( .A(n33), .B(n68), .Y(n24) );
  BUFX18 U168 ( .A(n39), .Y(n142) );
  INVX12 U169 ( .A(n144), .Y(n33) );
  NAND2BX2 U170 ( .AN(n38), .B(n142), .Y(n7) );
  CLKBUFX4 U171 ( .A(n38), .Y(n145) );
  NAND2X4 U172 ( .A(n151), .B(n64), .Y(n13) );
  XOR2X8 U173 ( .A(n134), .B(n7), .Y(DIFF[7]) );
  AND2X8 U174 ( .A(n153), .B(n15), .Y(n150) );
  INVX2 U175 ( .A(n46), .Y(n72) );
  OR2X8 U176 ( .A(n38), .B(n143), .Y(n144) );
  NOR2X8 U177 ( .A(A[2]), .B(n86), .Y(n58) );
  INVX4 U178 ( .A(n143), .Y(n69) );
  NAND2X4 U179 ( .A(A[8]), .B(n80), .Y(n36) );
  NOR2X8 U180 ( .A(n135), .B(n46), .Y(n41) );
  INVX1 U181 ( .A(n21), .Y(n67) );
  OR2X8 U182 ( .A(A[3]), .B(n85), .Y(n152) );
  NAND2X8 U183 ( .A(A[3]), .B(n85), .Y(n56) );
  OAI21X8 U184 ( .A0(n143), .A1(n39), .B0(n36), .Y(n34) );
  XOR2X8 U185 ( .A(n52), .B(n10), .Y(DIFF[4]) );
  CLKNAND2X4 U186 ( .A(n73), .B(n51), .Y(n10) );
  INVX6 U187 ( .A(B[2]), .Y(n86) );
  INVX6 U188 ( .A(B[1]), .Y(n87) );
  INVXL U189 ( .A(n50), .Y(n73) );
  CLKINVX8 U190 ( .A(B[0]), .Y(n88) );
  XOR2X8 U191 ( .A(n30), .B(n147), .Y(DIFF[9]) );
  XOR2X8 U192 ( .A(n23), .B(n148), .Y(DIFF[10]) );
  NAND2X2 U193 ( .A(n75), .B(n59), .Y(n12) );
  INVX2 U194 ( .A(n58), .Y(n75) );
  XOR2X8 U195 ( .A(n45), .B(n149), .Y(DIFF[6]) );
  CLKXOR2X2 U196 ( .A(n13), .B(n65), .Y(DIFF[1]) );
  XOR2X8 U197 ( .A(n16), .B(n150), .Y(DIFF[11]) );
  XNOR2X1 U198 ( .A(A[0]), .B(n88), .Y(DIFF[0]) );
endmodule


module CS_DW01_sub_19 ( A, B, DIFF );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  wire   n1, n2, n3, n5, n7, n8, n9, n10, n12, n13, n15, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n27, n28, n29, n33, n34, n35, n36, n37, n39,
         n41, n42, n43, n44, n45, n46, n47, n49, n50, n51, n52, n54, n56, n57,
         n59, n60, n64, n65, n67, n68, n69, n72, n77, n78, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n131, n132, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156;

  XNOR2X4 U43 ( .A(n45), .B(n8), .Y(DIFF[6]) );
  OAI21X8 U73 ( .A0(n60), .A1(n135), .B0(n59), .Y(n57) );
  CLKNAND2X2 U104 ( .A(A[10]), .B(n78), .Y(n22) );
  NOR2X3 U105 ( .A(A[10]), .B(n78), .Y(n21) );
  BUFX18 U106 ( .A(n21), .Y(n144) );
  NAND2X4 U107 ( .A(A[1]), .B(n87), .Y(n64) );
  CLKAND2X4 U108 ( .A(n147), .B(n51), .Y(n131) );
  CLKAND2X6 U109 ( .A(A[8]), .B(n80), .Y(n139) );
  INVX12 U110 ( .A(n156), .Y(n148) );
  CLKNAND2X8 U111 ( .A(n142), .B(n39), .Y(n7) );
  INVX10 U112 ( .A(n132), .Y(n142) );
  AOI21BX1 U113 ( .A0(n153), .A1(n2), .B0N(n64), .Y(n134) );
  NAND2BX2 U114 ( .AN(n43), .B(n44), .Y(n8) );
  INVX16 U115 ( .A(n143), .Y(n43) );
  INVXL U116 ( .A(n145), .Y(n140) );
  NAND2X6 U117 ( .A(A[9]), .B(n79), .Y(n29) );
  INVX6 U118 ( .A(n46), .Y(n72) );
  OAI21X6 U119 ( .A0(n131), .A1(n46), .B0(n47), .Y(n45) );
  INVX2 U120 ( .A(B[9]), .Y(n79) );
  INVX6 U121 ( .A(n139), .Y(n36) );
  INVX4 U122 ( .A(B[4]), .Y(n84) );
  INVX2 U123 ( .A(B[8]), .Y(n80) );
  INVX2 U124 ( .A(B[5]), .Y(n83) );
  INVX2 U125 ( .A(B[6]), .Y(n82) );
  INVX2 U126 ( .A(B[10]), .Y(n78) );
  INVX2 U127 ( .A(B[11]), .Y(n77) );
  NAND2X4 U128 ( .A(n33), .B(n68), .Y(n24) );
  CLKINVX6 U129 ( .A(n29), .Y(n27) );
  INVX2 U130 ( .A(n144), .Y(n67) );
  OR2X4 U131 ( .A(A[11]), .B(n77), .Y(n155) );
  INVX4 U132 ( .A(n50), .Y(n146) );
  INVX2 U133 ( .A(B[7]), .Y(n81) );
  OAI21X6 U134 ( .A0(n144), .A1(n29), .B0(n22), .Y(n20) );
  INVX4 U135 ( .A(n35), .Y(n69) );
  NAND2X3 U136 ( .A(A[6]), .B(n82), .Y(n44) );
  CLKNAND2X12 U137 ( .A(A[7]), .B(n81), .Y(n39) );
  AOI21X8 U138 ( .A0(n148), .A1(n33), .B0(n34), .Y(n151) );
  CLKNAND2X2 U139 ( .A(n68), .B(n29), .Y(n5) );
  NOR2X8 U140 ( .A(A[7]), .B(n81), .Y(n132) );
  NAND2X6 U141 ( .A(n19), .B(n33), .Y(n17) );
  BUFX2 U142 ( .A(n57), .Y(n141) );
  BUFX20 U143 ( .A(n156), .Y(n133) );
  INVX6 U144 ( .A(n137), .Y(n135) );
  INVX3 U145 ( .A(n56), .Y(n54) );
  AND2X6 U146 ( .A(A[5]), .B(n83), .Y(n136) );
  INVX12 U147 ( .A(n136), .Y(n47) );
  XNOR2XL U148 ( .A(A[0]), .B(n88), .Y(DIFF[0]) );
  NAND2X1 U149 ( .A(n153), .B(n64), .Y(n13) );
  OAI21X8 U150 ( .A0(n43), .A1(n47), .B0(n44), .Y(n42) );
  NOR2X8 U151 ( .A(A[8]), .B(n80), .Y(n35) );
  XOR2X8 U152 ( .A(n140), .B(n10), .Y(DIFF[4]) );
  NOR2X8 U153 ( .A(n144), .B(n28), .Y(n19) );
  NOR2X8 U154 ( .A(A[9]), .B(n79), .Y(n28) );
  OR2X8 U155 ( .A(A[2]), .B(n86), .Y(n137) );
  NAND2X3 U156 ( .A(A[2]), .B(n86), .Y(n59) );
  OR2X8 U157 ( .A(A[6]), .B(n82), .Y(n143) );
  INVX12 U158 ( .A(B[2]), .Y(n86) );
  XOR2X8 U159 ( .A(n138), .B(n3), .Y(DIFF[11]) );
  OA21X4 U160 ( .A0(n17), .A1(n156), .B0(n18), .Y(n138) );
  XOR2X8 U161 ( .A(n150), .B(n141), .Y(DIFF[3]) );
  AOI21X8 U162 ( .A0(n57), .A1(n154), .B0(n54), .Y(n52) );
  CLKXOR2X2 U163 ( .A(n12), .B(n134), .Y(DIFF[2]) );
  CLKNAND2X12 U164 ( .A(n145), .B(n146), .Y(n147) );
  AOI21X8 U165 ( .A0(n41), .A1(n49), .B0(n42), .Y(n1) );
  AOI21X8 U166 ( .A0(n34), .A1(n68), .B0(n27), .Y(n25) );
  OAI21X8 U167 ( .A0(n133), .A1(n132), .B0(n39), .Y(n37) );
  OR2X8 U168 ( .A(A[1]), .B(n87), .Y(n153) );
  XOR2X8 U169 ( .A(n133), .B(n7), .Y(DIFF[7]) );
  INVX10 U170 ( .A(n52), .Y(n145) );
  CLKNAND2X4 U171 ( .A(n137), .B(n59), .Y(n12) );
  NAND2X4 U172 ( .A(n155), .B(n15), .Y(n3) );
  BUFX20 U173 ( .A(n1), .Y(n156) );
  NOR2X8 U174 ( .A(n43), .B(n46), .Y(n41) );
  OAI21X8 U175 ( .A0(n133), .A1(n24), .B0(n25), .Y(n23) );
  AOI21X8 U176 ( .A0(n19), .A1(n34), .B0(n20), .Y(n18) );
  CLKNAND2X8 U177 ( .A(n72), .B(n47), .Y(n9) );
  NOR2X8 U178 ( .A(n132), .B(n35), .Y(n33) );
  NAND2X8 U179 ( .A(A[3]), .B(n85), .Y(n56) );
  OR2X8 U180 ( .A(A[3]), .B(n85), .Y(n154) );
  INVX10 U181 ( .A(n28), .Y(n68) );
  OAI21X8 U182 ( .A0(n35), .A1(n39), .B0(n36), .Y(n34) );
  NOR2X8 U183 ( .A(A[5]), .B(n83), .Y(n46) );
  NAND2X8 U184 ( .A(n147), .B(n51), .Y(n49) );
  NOR2X8 U185 ( .A(A[4]), .B(n84), .Y(n50) );
  NAND2X8 U186 ( .A(A[4]), .B(n84), .Y(n51) );
  AOI21BX4 U187 ( .A0(n2), .A1(n153), .B0N(n64), .Y(n60) );
  NOR2X8 U188 ( .A(A[0]), .B(n88), .Y(n65) );
  INVX6 U189 ( .A(B[0]), .Y(n88) );
  INVX12 U190 ( .A(B[3]), .Y(n85) );
  XOR2X8 U191 ( .A(n23), .B(n149), .Y(DIFF[10]) );
  AND2X2 U192 ( .A(n67), .B(n22), .Y(n149) );
  AND2X2 U193 ( .A(n154), .B(n56), .Y(n150) );
  XOR2X8 U194 ( .A(n151), .B(n5), .Y(DIFF[9]) );
  INVX2 U195 ( .A(n65), .Y(n2) );
  NAND2X2 U196 ( .A(n146), .B(n51), .Y(n10) );
  XOR2X8 U197 ( .A(n37), .B(n152), .Y(DIFF[8]) );
  AND2X2 U198 ( .A(n69), .B(n36), .Y(n152) );
  XOR2X8 U199 ( .A(n131), .B(n9), .Y(DIFF[5]) );
  CLKXOR2X2 U200 ( .A(n13), .B(n65), .Y(DIFF[1]) );
  NAND2X3 U201 ( .A(A[11]), .B(n77), .Y(n15) );
  INVX6 U202 ( .A(B[1]), .Y(n87) );
endmodule


module CS_DW01_sub_21 ( A, B, DIFF );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  wire   n1, n5, n6, n7, n8, n10, n12, n13, n15, n16, n18, n19, n22, n23, n24,
         n25, n27, n29, n33, n34, n35, n36, n38, n39, n42, n44, n45, n47, n49,
         n50, n51, n52, n54, n56, n57, n58, n59, n60, n64, n65, n67, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n131, n132, n133,
         n134, n135, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n180, n181, n182, n183, n184, n185, n186, n187;

  AOI21X8 U20 ( .A0(n34), .A1(n131), .B0(n27), .Y(n25) );
  OAI21X8 U32 ( .A0(n35), .A1(n39), .B0(n36), .Y(n34) );
  OAI21X8 U59 ( .A0(n52), .A1(n50), .B0(n51), .Y(n49) );
  NOR2X8 U62 ( .A(A[4]), .B(n84), .Y(n50) );
  AOI21X8 U65 ( .A0(n57), .A1(n185), .B0(n54), .Y(n52) );
  OAI21X8 U73 ( .A0(n60), .A1(n58), .B0(n59), .Y(n57) );
  NOR2X8 U88 ( .A(A[0]), .B(n88), .Y(n65) );
  CLKINVX16 U104 ( .A(n47), .Y(n165) );
  NAND2X8 U105 ( .A(A[9]), .B(n79), .Y(n29) );
  BUFX10 U106 ( .A(n145), .Y(n131) );
  CLKNAND2X2 U107 ( .A(n145), .B(n29), .Y(n5) );
  INVX2 U108 ( .A(n57), .Y(n132) );
  INVX8 U109 ( .A(n132), .Y(n133) );
  OR2X6 U110 ( .A(A[8]), .B(n80), .Y(n149) );
  NOR2X6 U111 ( .A(A[8]), .B(n80), .Y(n156) );
  NAND2X3 U112 ( .A(n149), .B(n36), .Y(n6) );
  CLKINVX16 U113 ( .A(n135), .Y(n44) );
  BUFX18 U114 ( .A(n1), .Y(n155) );
  INVX4 U115 ( .A(n157), .Y(n158) );
  INVX12 U116 ( .A(n149), .Y(n35) );
  OR2X8 U117 ( .A(A[5]), .B(n83), .Y(n153) );
  AOI21X8 U118 ( .A0(n187), .A1(n161), .B0(n150), .Y(n134) );
  CLKNAND2X8 U119 ( .A(n23), .B(n166), .Y(n167) );
  INVX20 U120 ( .A(n144), .Y(n33) );
  NAND2X6 U121 ( .A(n145), .B(n33), .Y(n24) );
  CLKXOR2X4 U122 ( .A(n172), .B(n178), .Y(DIFF[5]) );
  AND2X6 U123 ( .A(A[6]), .B(n82), .Y(n135) );
  INVX4 U124 ( .A(B[0]), .Y(n88) );
  INVX2 U125 ( .A(B[9]), .Y(n79) );
  INVX2 U126 ( .A(B[7]), .Y(n81) );
  INVX2 U127 ( .A(B[6]), .Y(n82) );
  INVX2 U128 ( .A(n65), .Y(n161) );
  INVX4 U129 ( .A(B[5]), .Y(n83) );
  INVX2 U130 ( .A(B[8]), .Y(n80) );
  INVX2 U131 ( .A(B[11]), .Y(n77) );
  INVX4 U132 ( .A(n29), .Y(n27) );
  CLKINVX8 U133 ( .A(n137), .Y(n166) );
  INVX4 U134 ( .A(B[4]), .Y(n84) );
  INVX4 U135 ( .A(n8), .Y(n175) );
  AND2X6 U136 ( .A(n67), .B(n22), .Y(n137) );
  INVX2 U137 ( .A(B[10]), .Y(n78) );
  INVX4 U138 ( .A(n56), .Y(n54) );
  XNOR2X2 U139 ( .A(A[0]), .B(n88), .Y(DIFF[0]) );
  AND2X1 U140 ( .A(n185), .B(n56), .Y(n180) );
  OAI21X6 U141 ( .A0(n35), .A1(n39), .B0(n36), .Y(n154) );
  CLKINVX24 U142 ( .A(n160), .Y(n169) );
  INVXL U143 ( .A(n146), .Y(n138) );
  OR2X8 U144 ( .A(A[6]), .B(n82), .Y(n146) );
  NAND2X8 U145 ( .A(n153), .B(n47), .Y(n178) );
  OR2XL U146 ( .A(A[4]), .B(n84), .Y(n139) );
  NAND2BX8 U147 ( .AN(A[10]), .B(B[10]), .Y(n140) );
  NAND2X8 U148 ( .A(A[5]), .B(n83), .Y(n47) );
  NAND2X6 U149 ( .A(n45), .B(n8), .Y(n176) );
  NAND2BX4 U150 ( .AN(n138), .B(n44), .Y(n8) );
  OR2X8 U151 ( .A(A[1]), .B(n87), .Y(n187) );
  AND2X6 U152 ( .A(A[1]), .B(n87), .Y(n150) );
  CLKINVX6 U153 ( .A(n150), .Y(n64) );
  CLKNAND2X12 U154 ( .A(n146), .B(n165), .Y(n170) );
  CLKINVX4 U155 ( .A(n33), .Y(n143) );
  INVX10 U156 ( .A(n140), .Y(n152) );
  NOR2X8 U157 ( .A(A[6]), .B(n82), .Y(n162) );
  NAND2X5 U158 ( .A(A[2]), .B(n86), .Y(n59) );
  NOR2X4 U159 ( .A(A[2]), .B(n86), .Y(n58) );
  OR2X6 U160 ( .A(A[2]), .B(n86), .Y(n142) );
  AOI21BX1 U161 ( .A0(n133), .A1(n185), .B0N(n56), .Y(n141) );
  INVX12 U162 ( .A(B[2]), .Y(n86) );
  INVX2 U163 ( .A(n38), .Y(n157) );
  AND2X8 U164 ( .A(A[8]), .B(n80), .Y(n147) );
  NAND2X8 U165 ( .A(A[4]), .B(n84), .Y(n51) );
  OR2X8 U166 ( .A(n156), .B(n38), .Y(n144) );
  OR2X8 U167 ( .A(A[9]), .B(n79), .Y(n145) );
  NOR2X8 U168 ( .A(A[7]), .B(n81), .Y(n38) );
  CLKINVX24 U169 ( .A(n147), .Y(n36) );
  NAND2X8 U170 ( .A(A[7]), .B(n81), .Y(n39) );
  XOR2X8 U171 ( .A(n141), .B(n10), .Y(DIFF[4]) );
  NAND2BX8 U172 ( .AN(n155), .B(n148), .Y(n171) );
  AND2X6 U173 ( .A(n19), .B(n33), .Y(n148) );
  NAND2BX8 U174 ( .AN(n162), .B(n153), .Y(n164) );
  CLKINVX20 U175 ( .A(n49), .Y(n172) );
  NOR2X8 U176 ( .A(n164), .B(n172), .Y(n173) );
  NAND2X4 U177 ( .A(n187), .B(n64), .Y(n13) );
  AND2X8 U178 ( .A(n145), .B(n140), .Y(n19) );
  DLY1X1 U179 ( .A(n134), .Y(n151) );
  CLKNAND2X4 U180 ( .A(n139), .B(n51), .Y(n10) );
  CLKXOR2X4 U181 ( .A(n12), .B(n151), .Y(DIFF[2]) );
  OA21X4 U182 ( .A0(n39), .A1(n156), .B0(n36), .Y(n159) );
  NAND2BX8 U183 ( .AN(n172), .B(n153), .Y(n160) );
  NAND2X2 U184 ( .A(A[10]), .B(n78), .Y(n22) );
  AOI21X8 U185 ( .A0(n187), .A1(n161), .B0(n150), .Y(n60) );
  AND2X8 U186 ( .A(n184), .B(n15), .Y(n181) );
  OR2X8 U187 ( .A(A[11]), .B(n77), .Y(n184) );
  NAND2X4 U188 ( .A(A[11]), .B(n77), .Y(n15) );
  AOI21BX4 U189 ( .A0(n154), .A1(n19), .B0N(n163), .Y(n18) );
  OA21X4 U190 ( .A0(n152), .A1(n29), .B0(n22), .Y(n163) );
  NAND2X4 U191 ( .A(n157), .B(n39), .Y(n7) );
  NAND2X8 U192 ( .A(n170), .B(n44), .Y(n42) );
  XOR2X8 U193 ( .A(n183), .B(n6), .Y(DIFF[8]) );
  OA21X4 U194 ( .A0(n143), .A1(n1), .B0(n159), .Y(n182) );
  NAND2BX8 U195 ( .AN(n23), .B(n137), .Y(n168) );
  NAND2BX8 U196 ( .AN(A[3]), .B(n186), .Y(n185) );
  NAND2X8 U197 ( .A(n168), .B(n167), .Y(DIFF[10]) );
  OAI21X8 U198 ( .A0(n24), .A1(n1), .B0(n25), .Y(n23) );
  OR2X8 U199 ( .A(n169), .B(n165), .Y(n45) );
  INVX6 U200 ( .A(n45), .Y(n174) );
  NAND2X8 U201 ( .A(n171), .B(n18), .Y(n16) );
  NOR2X8 U202 ( .A(n42), .B(n173), .Y(n1) );
  CLKNAND2X12 U203 ( .A(n174), .B(n175), .Y(n177) );
  NAND2X8 U204 ( .A(n176), .B(n177), .Y(DIFF[6]) );
  NAND2X6 U205 ( .A(A[3]), .B(n85), .Y(n56) );
  OA21X4 U206 ( .A0(n158), .A1(n1), .B0(n39), .Y(n183) );
  INVX4 U207 ( .A(n152), .Y(n67) );
  CLKINVX12 U208 ( .A(B[3]), .Y(n85) );
  INVX2 U209 ( .A(n85), .Y(n186) );
  CLKINVX12 U210 ( .A(B[1]), .Y(n87) );
  CLKXOR2X2 U211 ( .A(n180), .B(n133), .Y(DIFF[3]) );
  XOR2X8 U212 ( .A(n16), .B(n181), .Y(DIFF[11]) );
  XOR2X8 U213 ( .A(n182), .B(n5), .Y(DIFF[9]) );
  CLKNAND2X4 U214 ( .A(n142), .B(n59), .Y(n12) );
  CLKXOR2X2 U215 ( .A(n13), .B(n65), .Y(DIFF[1]) );
  XOR2X8 U216 ( .A(n155), .B(n7), .Y(DIFF[7]) );
endmodule


module CS_DW01_sub_18 ( A, B, DIFF );
  input [11:0] A;
  input [11:0] B;
  output [11:0] DIFF;
  wire   n1, n2, n3, n6, n10, n12, n13, n15, n17, n18, n19, n20, n21, n22, n24,
         n25, n28, n29, n31, n32, n34, n35, n36, n38, n39, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n54, n56, n57, n58, n59, n60,
         n64, n65, n67, n68, n69, n73, n75, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n159, n131, n133, n134, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158;

  AOI21X8 U44 ( .A0(n49), .A1(n41), .B0(n42), .Y(n1) );
  OAI21X8 U59 ( .A0(n52), .A1(n50), .B0(n51), .Y(n49) );
  AOI21X8 U65 ( .A0(n57), .A1(n157), .B0(n54), .Y(n52) );
  OAI21X8 U73 ( .A0(n58), .A1(n60), .B0(n59), .Y(n57) );
  BUFX10 U104 ( .A(n44), .Y(n131) );
  OAI21X4 U105 ( .A0(n21), .A1(n147), .B0(n22), .Y(n20) );
  NAND2X3 U106 ( .A(A[9]), .B(n79), .Y(n29) );
  NOR2X6 U107 ( .A(A[9]), .B(n79), .Y(n28) );
  NOR2X6 U108 ( .A(A[8]), .B(n80), .Y(n35) );
  NAND2X3 U109 ( .A(A[8]), .B(n80), .Y(n36) );
  NAND2X2 U110 ( .A(A[6]), .B(n82), .Y(n44) );
  OAI21X8 U111 ( .A0(n43), .A1(n47), .B0(n131), .Y(n42) );
  NOR2X8 U112 ( .A(n46), .B(n43), .Y(n41) );
  XOR2X8 U113 ( .A(n143), .B(n149), .Y(DIFF[7]) );
  NAND2X6 U114 ( .A(A[7]), .B(n81), .Y(n39) );
  INVX12 U115 ( .A(n144), .Y(n43) );
  NAND2X6 U116 ( .A(A[5]), .B(n83), .Y(n47) );
  AND2X6 U117 ( .A(n144), .B(n131), .Y(n154) );
  INVX2 U118 ( .A(B[7]), .Y(n81) );
  BUFX8 U119 ( .A(n29), .Y(n147) );
  INVX2 U120 ( .A(B[11]), .Y(n77) );
  INVX4 U121 ( .A(B[2]), .Y(n86) );
  INVX8 U122 ( .A(B[3]), .Y(n85) );
  INVX2 U123 ( .A(B[4]), .Y(n84) );
  INVX2 U124 ( .A(B[8]), .Y(n80) );
  INVX2 U125 ( .A(B[9]), .Y(n79) );
  INVX14 U126 ( .A(n136), .Y(n46) );
  INVX2 U127 ( .A(B[5]), .Y(n83) );
  INVX10 U128 ( .A(n142), .Y(n21) );
  INVX3 U129 ( .A(n147), .Y(n145) );
  NAND2X6 U130 ( .A(n156), .B(n15), .Y(n3) );
  NAND2X5 U131 ( .A(A[11]), .B(n77), .Y(n15) );
  XNOR2X4 U132 ( .A(n48), .B(n153), .Y(DIFF[5]) );
  AND2X8 U133 ( .A(n137), .B(n69), .Y(n133) );
  INVX2 U134 ( .A(B[10]), .Y(n78) );
  INVX2 U135 ( .A(B[6]), .Y(n82) );
  INVX4 U136 ( .A(n159), .Y(n134) );
  CLKINVX12 U137 ( .A(n134), .Y(DIFF[0]) );
  XNOR2XL U138 ( .A(A[0]), .B(n88), .Y(n159) );
  CLKXOR2X4 U139 ( .A(n52), .B(n10), .Y(DIFF[4]) );
  NAND2X4 U140 ( .A(n137), .B(n39), .Y(n149) );
  OR2X4 U141 ( .A(A[7]), .B(n81), .Y(n137) );
  AND2X4 U142 ( .A(n67), .B(n22), .Y(n141) );
  XOR2X3 U143 ( .A(n12), .B(n60), .Y(DIFF[2]) );
  CLKNAND2X4 U144 ( .A(n75), .B(n59), .Y(n12) );
  NAND2BX8 U145 ( .AN(A[5]), .B(B[5]), .Y(n136) );
  INVX4 U146 ( .A(n49), .Y(n48) );
  INVX6 U147 ( .A(n35), .Y(n69) );
  OR2X8 U148 ( .A(n35), .B(n39), .Y(n150) );
  INVX6 U149 ( .A(n34), .Y(n32) );
  AOI21X8 U150 ( .A0(n34), .A1(n68), .B0(n145), .Y(n25) );
  NAND2X6 U151 ( .A(n133), .B(n68), .Y(n24) );
  NOR2X8 U152 ( .A(A[4]), .B(n84), .Y(n50) );
  CLKNAND2X8 U153 ( .A(n73), .B(n51), .Y(n10) );
  NOR2XL U154 ( .A(A[7]), .B(n81), .Y(n38) );
  NAND2BX4 U155 ( .AN(A[10]), .B(B[10]), .Y(n142) );
  CLKNAND2X2 U156 ( .A(A[10]), .B(n78), .Y(n22) );
  XOR2X8 U157 ( .A(n138), .B(n139), .Y(DIFF[9]) );
  OAI21X6 U158 ( .A0(n143), .A1(n31), .B0(n32), .Y(n138) );
  AND2X6 U159 ( .A(n68), .B(n147), .Y(n139) );
  NAND2X2 U160 ( .A(n64), .B(n158), .Y(n13) );
  NOR2X8 U161 ( .A(n28), .B(n21), .Y(n19) );
  NOR2X6 U162 ( .A(A[2]), .B(n86), .Y(n58) );
  AOI21X6 U163 ( .A0(n19), .A1(n34), .B0(n20), .Y(n18) );
  XOR2X8 U164 ( .A(n140), .B(n141), .Y(DIFF[10]) );
  NAND2X8 U165 ( .A(n146), .B(n25), .Y(n140) );
  NAND2X6 U166 ( .A(A[2]), .B(n86), .Y(n59) );
  NAND2X1 U167 ( .A(n69), .B(n36), .Y(n6) );
  NAND2X2 U168 ( .A(A[1]), .B(n87), .Y(n64) );
  OR2X4 U169 ( .A(A[1]), .B(n87), .Y(n158) );
  BUFX20 U170 ( .A(n1), .Y(n143) );
  NAND2BX8 U171 ( .AN(A[6]), .B(B[6]), .Y(n144) );
  OR2X8 U172 ( .A(n143), .B(n24), .Y(n146) );
  INVX12 U173 ( .A(n28), .Y(n68) );
  OA21X4 U174 ( .A0(n17), .A1(n143), .B0(n18), .Y(n155) );
  NAND2X8 U175 ( .A(n150), .B(n36), .Y(n34) );
  NOR2X8 U176 ( .A(A[0]), .B(n88), .Y(n65) );
  INVX2 U177 ( .A(n133), .Y(n31) );
  NAND2X4 U178 ( .A(n19), .B(n133), .Y(n17) );
  OA21X4 U179 ( .A0(n1), .A1(n38), .B0(n39), .Y(n151) );
  OAI21X6 U180 ( .A0(n48), .A1(n46), .B0(n47), .Y(n45) );
  XOR2X4 U181 ( .A(n152), .B(n57), .Y(DIFF[3]) );
  OR2X4 U182 ( .A(A[3]), .B(n85), .Y(n157) );
  CLKAND2X6 U183 ( .A(n136), .B(n47), .Y(n153) );
  NAND2X8 U184 ( .A(A[4]), .B(n84), .Y(n51) );
  OR2X8 U185 ( .A(A[11]), .B(n77), .Y(n156) );
  NAND2X3 U186 ( .A(A[3]), .B(n85), .Y(n56) );
  AOI21BX4 U187 ( .A0(n158), .A1(n2), .B0N(n64), .Y(n60) );
  INVXL U188 ( .A(n58), .Y(n75) );
  XOR2X8 U189 ( .A(n151), .B(n6), .Y(DIFF[8]) );
  AND2X2 U190 ( .A(n157), .B(n56), .Y(n152) );
  INVX2 U191 ( .A(n65), .Y(n2) );
  INVX2 U192 ( .A(n56), .Y(n54) );
  INVX2 U193 ( .A(n21), .Y(n67) );
  INVX2 U194 ( .A(n50), .Y(n73) );
  XOR2X8 U195 ( .A(n45), .B(n154), .Y(DIFF[6]) );
  CLKXOR2X2 U196 ( .A(n13), .B(n65), .Y(DIFF[1]) );
  XOR2X8 U197 ( .A(n155), .B(n3), .Y(DIFF[11]) );
  INVX6 U198 ( .A(B[1]), .Y(n87) );
  INVX6 U199 ( .A(B[0]), .Y(n88) );
endmodule


module CS_DW01_add_15 ( A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, 
        A_2_, A_1_, A_0_, B_11_, B_10_, B_9_, B_8_, B_7_, B_6_, B_5_, B_4_, 
        B_3_, B_2_, B_1_, B_0_, SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, 
        SUM_7_, SUM_6_, SUM_5_, SUM_4_, SUM_3_ );
  input A_11_, A_10_, A_9_, A_8_, A_7_, A_6_, A_5_, A_4_, A_3_, A_2_, A_1_,
         A_0_, B_11_, B_10_, B_9_, B_8_, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_,
         B_1_, B_0_;
  output SUM_12_, SUM_11_, SUM_10_, SUM_9_, SUM_8_, SUM_7_, SUM_6_, SUM_5_,
         SUM_4_, SUM_3_;
  wire   n6, n7, n8, n10, n12, n14, n16, n17, n31, n32, n33, n51, n56, n61,
         n62, n63, n64, n65, n74, n75, net41073, net41082, net41315, net41623,
         net45179, net45053, net41102, n57, n55, n50, n43, net55649, net55748,
         net55743, net55720, net55707, net55705, net55692, net55691, net55675,
         net55672, net56013, net56012, net44915, n72, net55690, net55687,
         net55679, net55730, net55713, net55646, n53, n46, n45, n44, n28, n20,
         n19, n18, net46257, net42746, n34, n30, n29, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146;

  NOR2X8 U11 ( .A(n143), .B(A_11_), .Y(n16) );
  OAI21X8 U55 ( .A0(n45), .A1(n57), .B0(n46), .Y(n44) );
  INVX5 U94 ( .A(n133), .Y(net55748) );
  INVXL U95 ( .A(n134), .Y(n123) );
  INVX10 U96 ( .A(n44), .Y(n133) );
  OR2X2 U97 ( .A(n130), .B(A_6_), .Y(net55675) );
  NAND2XL U98 ( .A(n50), .B(net41102), .Y(n8) );
  XOR2X4 U99 ( .A(n51), .B(n8), .Y(SUM_5_) );
  BUFX16 U100 ( .A(B_6_), .Y(n130) );
  CLKINVX6 U101 ( .A(net56012), .Y(net56013) );
  NAND2X6 U102 ( .A(net56013), .B(net55675), .Y(n7) );
  INVX1 U103 ( .A(net46257), .Y(n31) );
  AO21X2 U104 ( .A0(net55743), .A1(n29), .B0(net55687), .Y(n126) );
  NAND2X6 U105 ( .A(B_4_), .B(A_4_), .Y(n55) );
  CLKINVX8 U106 ( .A(n55), .Y(n53) );
  AOI2BB1X2 U107 ( .A0N(net41623), .A1N(n12), .B0(n126), .Y(n125) );
  CLKINVX2 U108 ( .A(net55672), .Y(net56012) );
  NAND2X8 U109 ( .A(net41102), .B(net41073), .Y(n45) );
  AOI21X8 U110 ( .A0(n53), .A1(net41102), .B0(n132), .Y(n46) );
  BUFX16 U111 ( .A(n28), .Y(net55646) );
  NAND2X8 U112 ( .A(net55646), .B(n14), .Y(n12) );
  BUFX20 U113 ( .A(net55690), .Y(n124) );
  NAND2X8 U114 ( .A(B_10_), .B(A_10_), .Y(net55679) );
  BUFX16 U115 ( .A(B_11_), .Y(n143) );
  NAND2X8 U116 ( .A(n143), .B(A_11_), .Y(n17) );
  CLKINVX20 U117 ( .A(net55748), .Y(n43) );
  AOI21X4 U118 ( .A0(n56), .A1(net41073), .B0(n53), .Y(n51) );
  CLKINVX24 U119 ( .A(n125), .Y(SUM_12_) );
  NOR2X5 U120 ( .A(n16), .B(net55692), .Y(net55743) );
  OAI21X6 U121 ( .A0(net55707), .A1(net41623), .B0(net55705), .Y(n141) );
  INVX16 U122 ( .A(net55713), .Y(net41623) );
  CLKAND2X4 U123 ( .A(B_9_), .B(A_9_), .Y(net46257) );
  OAI21X8 U124 ( .A0(net45179), .A1(net55679), .B0(n17), .Y(net55687) );
  INVX2 U125 ( .A(A_10_), .Y(n138) );
  CLKINVX3 U126 ( .A(n131), .Y(net55649) );
  NAND2X8 U127 ( .A(B_8_), .B(A_8_), .Y(n34) );
  XOR2X4 U128 ( .A(n56), .B(net41315), .Y(SUM_4_) );
  INVX2 U129 ( .A(net55691), .Y(net55720) );
  INVXL U130 ( .A(n62), .Y(n127) );
  INVX3 U131 ( .A(n127), .Y(n128) );
  INVX4 U132 ( .A(n50), .Y(n132) );
  XNOR2X4 U133 ( .A(net41623), .B(n129), .Y(SUM_8_) );
  AND2X6 U134 ( .A(n75), .B(n34), .Y(n129) );
  XNOR2X2 U135 ( .A(n10), .B(n128), .Y(SUM_3_) );
  CLKINVX24 U136 ( .A(n142), .Y(SUM_10_) );
  NAND2X2 U137 ( .A(net55649), .B(n123), .Y(n6) );
  AND2X8 U138 ( .A(B_1_), .B(A_1_), .Y(n144) );
  CLKAND2X6 U139 ( .A(B_7_), .B(A_7_), .Y(n131) );
  INVX12 U140 ( .A(net45053), .Y(n134) );
  OR2X8 U141 ( .A(net42746), .B(net46257), .Y(n29) );
  INVX2 U142 ( .A(n29), .Y(net55705) );
  AOI21X8 U143 ( .A0(n29), .A1(n124), .B0(net55730), .Y(n20) );
  NOR2X8 U144 ( .A(n30), .B(n34), .Y(net42746) );
  NOR2X8 U145 ( .A(B_9_), .B(A_9_), .Y(n30) );
  INVXL U146 ( .A(n30), .Y(n74) );
  NOR2X4 U147 ( .A(n30), .B(n33), .Y(n28) );
  OAI21X8 U148 ( .A0(net41623), .A1(n33), .B0(n34), .Y(n32) );
  NOR2X8 U149 ( .A(B_8_), .B(A_8_), .Y(n33) );
  OAI21X8 U150 ( .A0(net41623), .A1(n19), .B0(n20), .Y(n18) );
  XOR2X8 U151 ( .A(n18), .B(net44915), .Y(SUM_11_) );
  INVX3 U152 ( .A(net55679), .Y(net55730) );
  NAND2X8 U153 ( .A(net55646), .B(n124), .Y(n19) );
  INVX6 U154 ( .A(net55646), .Y(net55707) );
  OAI21X8 U155 ( .A0(n133), .A1(n136), .B0(n137), .Y(net55713) );
  NOR2X8 U156 ( .A(n135), .B(n131), .Y(n137) );
  NOR2X8 U157 ( .A(net55672), .B(n134), .Y(n135) );
  OAI21X8 U158 ( .A0(n130), .A1(A_6_), .B0(net45053), .Y(n136) );
  NAND2BX8 U159 ( .AN(B_10_), .B(n138), .Y(net55690) );
  INVX18 U160 ( .A(net55690), .Y(net55692) );
  NOR2BX4 U161 ( .AN(net55679), .B(net55692), .Y(net55691) );
  AND2X6 U162 ( .A(n72), .B(n17), .Y(net44915) );
  INVX6 U163 ( .A(net45179), .Y(n72) );
  NAND2X4 U164 ( .A(B_5_), .B(A_5_), .Y(n50) );
  OR2X6 U165 ( .A(B_3_), .B(A_3_), .Y(net41082) );
  OR2X2 U166 ( .A(B_1_), .B(A_1_), .Y(n145) );
  AND2XL U167 ( .A(net41073), .B(n55), .Y(net41315) );
  AND2X4 U168 ( .A(n74), .B(n31), .Y(n140) );
  NAND2X8 U169 ( .A(B_6_), .B(A_6_), .Y(net55672) );
  INVX3 U170 ( .A(n33), .Y(n75) );
  CLKNAND2X2 U171 ( .A(B_2_), .B(A_2_), .Y(n64) );
  AOI21X6 U172 ( .A0(n145), .A1(n146), .B0(n144), .Y(n65) );
  XOR2X8 U173 ( .A(n139), .B(n6), .Y(SUM_7_) );
  OAI2BB1X4 U174 ( .A0N(net56013), .A1N(n43), .B0(net55675), .Y(n139) );
  INVX6 U175 ( .A(n57), .Y(n56) );
  XOR2X8 U176 ( .A(n7), .B(n43), .Y(SUM_6_) );
  XOR2X8 U177 ( .A(n32), .B(n140), .Y(SUM_9_) );
  OR2X8 U178 ( .A(B_4_), .B(A_4_), .Y(net41073) );
  XOR2X8 U179 ( .A(n141), .B(net55720), .Y(n142) );
  NOR2X8 U180 ( .A(n16), .B(net55692), .Y(n14) );
  OR2X8 U181 ( .A(B_7_), .B(A_7_), .Y(net45053) );
  AOI21BX4 U182 ( .A0(net41082), .A1(n62), .B0N(n61), .Y(n57) );
  OR2X8 U183 ( .A(B_5_), .B(A_5_), .Y(net41102) );
  AND2X2 U184 ( .A(B_0_), .B(A_0_), .Y(n146) );
  NOR2X8 U185 ( .A(n143), .B(A_11_), .Y(net45179) );
  OAI21X8 U186 ( .A0(n65), .A1(n63), .B0(n64), .Y(n62) );
  NOR2X2 U187 ( .A(B_2_), .B(A_2_), .Y(n63) );
  NAND2XL U188 ( .A(net41082), .B(n61), .Y(n10) );
  NAND2X2 U189 ( .A(B_3_), .B(A_3_), .Y(n61) );
endmodule


module CS_DW01_add_20 ( A, SUM, B_8_, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_, 
        B_0_ );
  input [11:0] A;
  output [11:0] SUM;
  input B_8_, B_7_, B_6_, B_5_, B_4_, B_3_, B_2_, B_1_, B_0_;
  wire   n1, n7, n8, n11, n12, n14, n19, n20, n22, n23, n24, n25, n26, n29,
         n30, n35, n36, n41, n42, n45, n46, n47, n48, n57, n73, n74, n75,
         net42618, net42743, net42741, net42740, net42779, net44060, net44544,
         net48638, n70, n69, net45223, n60, net40890, n66, n65, n63, n61, n10,
         n68, n67, net42673, net42672, net45295, net45089, net42671, n76, n59,
         n58, n56, n55, n53, n52, n51, n50, n49, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155;

  NOR2X8 U44 ( .A(B_7_), .B(A[7]), .Y(n41) );
  NOR2X8 U52 ( .A(B_6_), .B(A[6]), .Y(n46) );
  XNOR2X4 U76 ( .A(n66), .B(n10), .Y(SUM[2]) );
  AOI21X8 U77 ( .A0(n66), .A1(net40890), .B0(n63), .Y(n61) );
  NOR2X8 U61 ( .A(B_5_), .B(A[5]), .Y(n52) );
  OAI21X8 U71 ( .A0(n61), .A1(n59), .B0(net45295), .Y(n58) );
  AOI21X8 U56 ( .A0(n50), .A1(n58), .B0(n51), .Y(n49) );
  NAND2X6 U98 ( .A(B_5_), .B(A[5]), .Y(n53) );
  NAND2X8 U99 ( .A(n139), .B(n22), .Y(n20) );
  NAND2X6 U100 ( .A(n48), .B(n131), .Y(n139) );
  NOR2X5 U101 ( .A(n30), .B(n25), .Y(n122) );
  NOR2X6 U102 ( .A(n30), .B(n25), .Y(n23) );
  CLKNAND2X8 U103 ( .A(net40890), .B(n65), .Y(n10) );
  NAND2X6 U104 ( .A(net44544), .B(n48), .Y(n140) );
  INVX20 U105 ( .A(n49), .Y(n48) );
  NOR2BX8 U106 ( .AN(n48), .B(n123), .Y(n149) );
  NAND2X6 U107 ( .A(n35), .B(n74), .Y(n123) );
  CLKNAND2X8 U108 ( .A(n48), .B(net42672), .Y(net42673) );
  NAND2X6 U109 ( .A(n134), .B(A[8]), .Y(n130) );
  NOR2X8 U110 ( .A(B_5_), .B(A[5]), .Y(n124) );
  INVX16 U111 ( .A(n127), .Y(n55) );
  NAND2X6 U112 ( .A(net45223), .B(n60), .Y(net45089) );
  NAND2X6 U113 ( .A(n48), .B(net48638), .Y(n146) );
  INVX8 U114 ( .A(n65), .Y(n63) );
  NAND2X4 U115 ( .A(B_3_), .B(A[3]), .Y(n60) );
  NAND2X6 U116 ( .A(B_2_), .B(A[2]), .Y(n65) );
  XOR2X8 U117 ( .A(n61), .B(net45089), .Y(SUM[3]) );
  OAI21X8 U118 ( .A0(n67), .A1(n70), .B0(n68), .Y(n66) );
  NAND2X4 U119 ( .A(B_1_), .B(A[1]), .Y(n68) );
  INVX12 U120 ( .A(net45223), .Y(n59) );
  INVX2 U121 ( .A(A[8]), .Y(n129) );
  BUFX6 U122 ( .A(n35), .Y(net48638) );
  INVX8 U123 ( .A(n125), .Y(net42672) );
  CLKINVX2 U124 ( .A(A[3]), .Y(n128) );
  AND2X6 U125 ( .A(n74), .B(n130), .Y(n138) );
  INVX2 U126 ( .A(n45), .Y(net44060) );
  INVX4 U127 ( .A(n1), .Y(n143) );
  NAND2X2 U128 ( .A(n134), .B(A[10]), .Y(n19) );
  AND2X8 U129 ( .A(n76), .B(n47), .Y(n125) );
  CLKNAND2X12 U130 ( .A(net42671), .B(n125), .Y(n126) );
  NAND2X8 U131 ( .A(n126), .B(net42673), .Y(SUM[6]) );
  INVX12 U132 ( .A(n48), .Y(net42671) );
  OAI21X8 U133 ( .A0(n52), .A1(n56), .B0(n53), .Y(n51) );
  NOR2X8 U134 ( .A(n55), .B(n124), .Y(n50) );
  INVX10 U135 ( .A(n46), .Y(n76) );
  BUFX3 U136 ( .A(n76), .Y(net44544) );
  INVX10 U137 ( .A(n58), .Y(n57) );
  BUFX8 U138 ( .A(n60), .Y(net45295) );
  NAND2BX2 U139 ( .AN(n52), .B(n53), .Y(n7) );
  NAND2X5 U140 ( .A(A[4]), .B(B_4_), .Y(n56) );
  CLKINVX3 U141 ( .A(n56), .Y(net42618) );
  NAND2X3 U142 ( .A(n127), .B(n56), .Y(n8) );
  OR2X8 U143 ( .A(B_4_), .B(A[4]), .Y(n127) );
  OAI21X8 U144 ( .A0(n47), .A1(n41), .B0(n42), .Y(n36) );
  INVX1 U145 ( .A(n47), .Y(n45) );
  NOR2X8 U146 ( .A(n46), .B(n41), .Y(n35) );
  NOR2X8 U147 ( .A(B_1_), .B(A[1]), .Y(n67) );
  NAND2BX8 U148 ( .AN(n67), .B(n68), .Y(n11) );
  OR2X8 U149 ( .A(B_2_), .B(A[2]), .Y(net40890) );
  CLKINVX4 U150 ( .A(n70), .Y(net42741) );
  CLKNAND2X12 U151 ( .A(net42740), .B(n70), .Y(net42743) );
  NAND2BX8 U152 ( .AN(n69), .B(n70), .Y(n12) );
  NAND2BX8 U153 ( .AN(B_3_), .B(n128), .Y(net45223) );
  NAND2X8 U154 ( .A(B_0_), .B(A[0]), .Y(n70) );
  NOR2X2 U155 ( .A(B_0_), .B(A[0]), .Y(n69) );
  INVX3 U156 ( .A(n36), .Y(net42779) );
  CLKNAND2X4 U157 ( .A(n154), .B(n1), .Y(n144) );
  NOR2X8 U158 ( .A(n148), .B(net42618), .Y(n141) );
  AND2X6 U159 ( .A(n133), .B(n129), .Y(n30) );
  CLKINVX20 U160 ( .A(B_8_), .Y(n133) );
  INVX16 U161 ( .A(n133), .Y(n134) );
  NAND2X6 U162 ( .A(n134), .B(A[9]), .Y(n26) );
  AND2X8 U163 ( .A(n35), .B(n23), .Y(n131) );
  OAI21X8 U164 ( .A0(n132), .A1(n130), .B0(n26), .Y(n24) );
  CLKINVX8 U165 ( .A(n154), .Y(n142) );
  CLKAND2X6 U166 ( .A(n75), .B(n42), .Y(n136) );
  OAI2BB1X4 U167 ( .A0N(n152), .A1N(n20), .B0(n19), .Y(n154) );
  INVX10 U168 ( .A(n30), .Y(n74) );
  NOR2X8 U169 ( .A(n149), .B(n29), .Y(n150) );
  NOR2X8 U170 ( .A(n134), .B(A[9]), .Y(n132) );
  NAND2X8 U171 ( .A(n146), .B(net42779), .Y(n137) );
  OAI2BB1X4 U172 ( .A0N(n74), .A1N(n36), .B0(n130), .Y(n29) );
  XOR2X8 U173 ( .A(n135), .B(n136), .Y(SUM[7]) );
  NAND2X8 U174 ( .A(n140), .B(net44060), .Y(n135) );
  OR2X2 U175 ( .A(n134), .B(A[10]), .Y(n152) );
  XOR2X8 U176 ( .A(n137), .B(n138), .Y(SUM[8]) );
  NOR2X8 U177 ( .A(n57), .B(n55), .Y(n148) );
  NAND2X8 U178 ( .A(n144), .B(n145), .Y(SUM[11]) );
  NAND2X8 U179 ( .A(n142), .B(n143), .Y(n145) );
  INVX1 U180 ( .A(n41), .Y(n75) );
  INVX12 U181 ( .A(n11), .Y(net42740) );
  XOR2X8 U182 ( .A(n141), .B(n7), .Y(SUM[5]) );
  NAND2X8 U183 ( .A(B_6_), .B(A[6]), .Y(n47) );
  CLKNAND2X12 U184 ( .A(n73), .B(n26), .Y(n151) );
  INVX4 U185 ( .A(n132), .Y(n73) );
  AND2X6 U186 ( .A(n152), .B(n19), .Y(n153) );
  NAND2X4 U187 ( .A(n155), .B(n14), .Y(n1) );
  NAND2X4 U188 ( .A(n11), .B(net42741), .Y(n147) );
  NAND2X8 U189 ( .A(n147), .B(net42743), .Y(SUM[1]) );
  AOI21X8 U190 ( .A0(n36), .A1(n122), .B0(n24), .Y(n22) );
  NOR2X8 U191 ( .A(n134), .B(A[9]), .Y(n25) );
  NAND2X3 U192 ( .A(B_7_), .B(A[7]), .Y(n42) );
  INVX3 U193 ( .A(n12), .Y(SUM[0]) );
  XOR2X8 U194 ( .A(n57), .B(n8), .Y(SUM[4]) );
  XOR2X8 U195 ( .A(n150), .B(n151), .Y(SUM[9]) );
  XOR2X8 U196 ( .A(n20), .B(n153), .Y(SUM[10]) );
  OR2XL U197 ( .A(n134), .B(A[11]), .Y(n155) );
  NAND2XL U198 ( .A(n134), .B(A[11]), .Y(n14) );
endmodule


module CS ( Y, X, reset, clk );
  output [9:0] Y;
  input [7:0] X;
  input reset, clk;
  wire   N33, N34, N35, N36, N37, N38, N39, N40, N41, C1_11_, C2_11_, C3_11_,
         C4_11_, C5_11_, C6_11_, C7_11_, C8_11_, C9_11_, Y1_9_, Y1_8_, Y1_7_,
         Y1_6_, Y1_5_, Y1_4_, Y1_3_, Y1_2_, Y1_1_, Y1_10_, N240, N230, N220,
         N210, N200, N190, N180, N170, net13719, net38470, net38476, net38478,
         net38484, net38485, net38490, net38492, net38499, net38500, net38503,
         net38508, net38512, net38524, net38525, net38532, net38561, net38563,
         net38573, net38577, net38579, net38582, net38584, net38585, net38587,
         net38588, net38592, net38595, net38597, net38598, net38600, net38602,
         net38604, net38615, net38619, net38627, net38630, net38637, net38639,
         net38643, net38644, net38649, net38650, net38652, net38654, net38659,
         net38660, net38661, net38662, net38664, net38667, net38670, net38672,
         net38673, net38674, net38677, net38682, net38686, net38693, net38695,
         net38696, net38698, net38699, net38702, net38709, net38710, net38712,
         net38714, net38715, net38717, net38720, net38722, net38727, net38730,
         net38731, net38732, net38734, net38736, net38739, net38740, net38741,
         net38742, net38755, net38757, net38760, net38765, net38768, net38769,
         net38770, net38771, net38772, net38773, net38777, net38778, net38779,
         net38780, net38781, net38782, net38783, net38788, net38790, net38791,
         net38794, net38795, net38796, net38798, net38800, net38801, net38802,
         net38804, net38805, net38807, net38809, net38810, net38812, net38813,
         net38816, net38821, net38822, net38823, net38825, net38826, net38837,
         net38841, net38844, net38845, net38849, net38850, net38851, net38855,
         net38856, net38857, net38861, net38862, net38866, net38868, net38869,
         net38872, net38873, net38874, net38879, net38881, net38883, net38884,
         net38885, net38887, net38889, net38890, net38891, net38894, net38897,
         net38898, net38916, net38920, net38921, net38929, net38933, net38934,
         net38935, net38939, net38940, net38942, net38947, net38952, net38959,
         net38974, net38975, net38976, net38979, net38980, net38984, net38985,
         net38987, net38988, net38989, net38990, net38992, net38996, net38998,
         net39000, net39006, net39007, net39010, net39011, net39013, net39019,
         net39030, net39031, net39032, net39034, net39039, net39068, net39069,
         net39070, net39072, net39073, net39075, net39076, net39077, net39078,
         net39081, net39086, net39089, net39092, net39093, net39097, net39102,
         net39103, net39106, net39107, net39108, net39113, net39118, net39119,
         net39120, net39121, net39123, net39124, net39128, net39203, net39209,
         net39256, net39273, net39824, net39836, net39839, net39844, net39852,
         net40026, net40029, net40032, net40056, net40055, net40077, net40084,
         net40088, net40099, net40104, net40125, net40142, net40153, net40179,
         net40189, net40201, net40906, net40915, net40932, net40950, net41270,
         net41316, net41331, net41492, net42409, net42417, net42580, net42626,
         net42632, net42634, net42655, net42710, net42724, net42723, net42793,
         net42803, net43217, net43261, net43268, net43324, net43592, net43609,
         net43614, net43626, net43711, net43719, net43764, net43814, net43839,
         net43847, net43857, net43891, net43908, net44003, net44032, net44031,
         net44145, net44208, net44207, net44274, net44283, net44341, net44419,
         net44477, net44639, net44666, net44761, net44760, net44770, net44780,
         net44786, net44790, net44804, net44843, net44952, net44994, net45034,
         net45068, net45099, net45129, net45138, net45141, net45147, net45198,
         net45209, net45241, net45259, net45274, net45276, net45354, net45353,
         net45364, net45379, net45391, net45432, net45438, net45515, net45519,
         net45527, net45554, net45610, net45620, net45692, net45735, net45741,
         net45761, net45816, net45862, net45889, net46002, net46058, net46057,
         net46079, net46078, net46109, net46108, net46147, net46150, net46199,
         net46217, net46216, net46228, net46249, net46254, net46259, net48331,
         net48330, net48425, net48465, net48474, net48510, net48533, net48537,
         net48628, net48677, net48699, net48702, net48714, net39114, net51046,
         net51021, net51020, net51015, net50947, net51329, net51328, net51391,
         net51487, net51511, net51584, net51606, net51605, net38477, Y1_0_,
         net55884, net55912, net56032, net56086, net56091, net56090, net56102,
         net56119, net44818, net38799, net38793, net38713, net38704, net38700,
         net38586, net38718, net38703, net38701, net39846, net38766, net38806,
         net38797, net45919, net44444, net38719, net45667, net43299, net43253,
         net38973, net38972, net38944, net38888, net38877, net44979, net38487,
         net45118, net45107, net44831, net43642, net38834, net38756, net38606,
         net38599, net45189, net42659, net38648, net45477, net44855, net38775,
         net38723, net38721, net44805, net44894, net38977, net38968, net38946,
         net38945, net38941, net38875, net38689, net38893, net38876, net38792,
         net38687, net38971, net38970, net38969, net38967, net38964, net40236,
         net39014, net38997, net38776, net38697, net38690, net38896, net38867,
         net45897, net43610, net42800, net42636, net38570, net38565, net51578,
         net51259, net46173, net45892, net45703, net45650, net42574, net38865,
         net38833, net38808, net38758, net38601, net38594, net48615, net48545,
         net42633, net38895, net38880, net38870, net38818, net38784, net38574,
         net38569, net38568, net48342, net43763, net39834, net38632, net38622,
         net38609, net38605, net38593, net48683, net42658, net40884, net40042,
         net38645, net38576, net38564, net38537, net38504, net38497, net38489,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n26, n27, n28, n29, n30, n31, n32, n3300, n3400, n3500, n3600, n3700,
         n3800, n3900, n4000, n4100, n42, n43, n44, n45, n46, n47, n48, n49,
         n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n1700,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n1800, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n1900, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n2000, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n2100, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n2200, n221, n222, n223, n224, n225,
         n226, n227, n228, n229, n2300, n231, n232, n233, n234, n235, n236,
         n237, n238, n239, n2400, n241, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n263, n264, n265, n266, n267, n268, n269,
         n270, n271, n272, n273, n274, n275, n276, n277, n278, n279, n280,
         n281, n282, n283, n284, n285, n286, n287, n288, n289, n290, n291,
         n292, n293, n294, n295, n296, n297, n298, n299, n300, n301, n302,
         n303, n304, n305, n306, n307, n308, n309, n310, n311, n312, n313,
         n314, n315, n316, n317, n318, n319, n320, n321, n322, n323, n324,
         n325, n326, n327, n328, n329, n3301, n331, n332, n333, n334, n335,
         n336, n337, n338, n339, n3401, n341, n342, n343, n344, n345, n346,
         n347, n348, n349, n3501, n351, n352, n353, n354, n355, n356, n357,
         n358, n359, n3601, n361, n362, n363, n364, n365, n366, n367, n368,
         n369, n3701, n371, n372, n373, n374, n375, n376, n377, n378, n379,
         n3801, n381, n382, n383, n384, n385, n386, n387, n388, n389, n3901,
         n391, n392, n393, n394, n395, n396, n397, n398, n399, n4001, n401,
         n402, n403, n404, n405, n406, n407, n408, n409, n4101, n411, n412,
         n413, n414, n415, n416, n417, n418, n419, n420, n421, n422, n423,
         n424, n425, n426, n427, n428, n429, n430, n431, n432, n433, n434,
         n435, n436, n437, n438, n439, n440, n441, n442, n443, n444, n445,
         n446, n447, n448, n449, n450, n451, n452, n453, n454, n455, n456,
         n457, n458, n459, n460, n461, n462, n463, n464, n465, n466, n467,
         n468, n469, n470, n471, n472, n473, n474, n475, n476, n477, n478,
         n479, n480, n481, n482, n483, n484, n485, n486, n487, n488, n489,
         n490, n491, n492, n493, n494, n495, n496, n497, n498, n499, n500,
         n501, n502, n503, n504, n505, n506, n507, n508, n509, n510, n511,
         n512, n513, n514, n515, n516, n517, n518, n519, n520, n521, n522,
         n523, n524, n525, n526, n527, n528, n529, n530, n531, n532, n533,
         n534, n535, n536, n537, n538, n539, n540, n541, n542, n543, n544,
         n545, n546, n547, n548, n549, n550, n551, n552, n553, n554, n555,
         n556, n557, n558, n559, n560, n561, n562, n563, n564, n565, n566,
         n567, n568, n569, n570, n571, n572, n573, n574, n575, n576, n577,
         n578, n579, n580, n581, n582, n583, n584, n585, n586, n587, n588,
         n589, n590, n591, n592, n593, n594, n595, n596, n597, n598, n599,
         n600, n601, n602, n603, n604, n605, n606, n607, n608, n609, n610,
         n611, n612, n613, n614, n615, n616, n617, n618, n619, n620, n621,
         n622, n623, n624, n625, n626, n627, n628, n629, n630, n631, n632,
         n633, n634, n635, n636, n637, n638, n639, n640, n641, n642, n643,
         n644, n645, n646, n647, n648, n649, n650, n651, n652, n653, n654,
         n655, n656, n657, n658, n659, n660, n661, n662, n663, n664, n665,
         n666;
  wire   [7:1] X9;
  wire   [11:0] Xt;
  wire   [7:0] X1_d;
  wire   [11:0] Xt_temp;
  wire   [11:0] S1;
  wire   [10:0] C1_temp;
  wire   [11:0] S2;
  wire   [10:0] C2_temp;
  wire   [11:0] S3;
  wire   [10:0] C3_temp;
  wire   [11:0] S4;
  wire   [10:0] C4_temp;
  wire   [11:0] S5;
  wire   [10:0] C5_temp;
  wire   [11:0] S6;
  wire   [10:0] C6_temp;
  wire   [11:0] S7;
  wire   [10:0] C7_temp;
  wire   [11:0] S8;
  wire   [10:0] C8_temp;
  wire   [11:0] S9;
  wire   [10:0] C9_temp;
  wire   [7:0] X1;
  wire   [7:0] X2;
  wire   [7:0] X3;
  wire   [7:0] X4;
  wire   [7:0] X5;
  wire   [7:0] X6;
  wire   [7:0] X7;
  wire   [7:0] X8;

  DFFRHQX8 X9_reg_7_ ( .D(X[7]), .CK(clk), .RN(n326), .Q(X9[7]) );
  DFFRHQX8 X9_reg_6_ ( .D(X[6]), .CK(clk), .RN(n325), .Q(X9[6]) );
  DFFRHQX8 X9_reg_2_ ( .D(X[2]), .CK(clk), .RN(n324), .Q(X9[2]) );
  DFFRHQX8 X9_reg_1_ ( .D(X[1]), .CK(clk), .RN(n320), .Q(X9[1]) );
  DFFRHQX8 X1_d_reg_7_ ( .D(X1[7]), .CK(clk), .RN(n325), .Q(X1_d[7]) );
  DFFRHQX8 X1_d_reg_5_ ( .D(X1[5]), .CK(clk), .RN(n324), .Q(X1_d[5]) );
  DFFRHQX8 X1_d_reg_4_ ( .D(X1[4]), .CK(clk), .RN(n321), .Q(X1_d[4]) );
  DFFRHQX8 X1_d_reg_3_ ( .D(X1[3]), .CK(clk), .RN(n322), .Q(X1_d[3]) );
  DFFRHQX8 X1_d_reg_2_ ( .D(X1[2]), .CK(clk), .RN(n323), .Q(X1_d[2]) );
  DFFRHQX8 X1_d_reg_1_ ( .D(X1[1]), .CK(clk), .RN(n320), .Q(X1_d[1]) );
  DFFRHQX8 X1_d_reg_0_ ( .D(X1[0]), .CK(clk), .RN(n320), .Q(X1_d[0]) );
  DFFRHQX8 S6_reg_1_ ( .D(S7[1]), .CK(clk), .RN(n312), .Q(S6[1]) );
  DFFRHQX8 S3_reg_1_ ( .D(S4[1]), .CK(clk), .RN(n311), .Q(S3[1]) );
  DFFRHQX8 S3_reg_0_ ( .D(S4[0]), .CK(clk), .RN(n311), .Q(S3[0]) );
  CS_DW01_sub_0 sub_18 ( .A({n304, n191, n270, n201, n295, n195, n193, n291, 
        n263, n179, n151, n283}), .B(S9), .DIFF({C9_11_, C9_temp}) );
  CS_DW01_sub_24 sub_10 ( .A({n305, n302, n61, n298, n295, n206, n292, n291, 
        n289, n179, n285, n283}), .B(S1), .DIFF({C1_11_, C1_temp}) );
  CS_DW01_sub_25 sub_14 ( .A({n305, n302, n301, n297, n202, n206, n193, n264, 
        n266, n179, n151, n282}), .B(S5), .DIFF({C5_11_, C5_temp}) );
  CS_DW01_sub_22 sub_12 ( .A({n305, n302, n301, n297, n295, n206, n193, n264, 
        n181, n179, n151, n282}), .B(S3), .DIFF({C3_11_, C3_temp}) );
  CS_DW01_sub_23 sub_16 ( .A({n305, n302, n301, n297, n295, n293, n193, n262, 
        n266, n178, n285, n282}), .B(S7), .DIFF({C7_11_, C7_temp}) );
  CS_DW01_sub_20 sub_11 ( .A({n304, n302, n61, n298, n295, n293, n292, n262, 
        n263, n179, n151, n283}), .B(S2), .DIFF({C2_11_, C2_temp}) );
  CS_DW01_sub_19 sub_17 ( .A({n304, n302, n61, n298, n202, n206, n193, n262, 
        n288, n178, n285, n283}), .B(S8), .DIFF({C8_11_, C8_temp}) );
  CS_DW01_sub_21 sub_15 ( .A({n304, n302, n300, n297, n202, n293, n292, n264, 
        n289, n178, n285, n282}), .B(S6), .DIFF({C6_11_, C6_temp}) );
  CS_DW01_sub_18 sub_13 ( .A({n305, n302, n301, n298, n202, n206, n193, n262, 
        n289, n179, n151, n282}), .B(S4), .DIFF({C4_11_, C4_temp}) );
  CS_DW01_add_15 add_23 ( .A_11_(n305), .A_10_(n191), .A_9_(n270), .A_8_(n201), 
        .A_7_(n202), .A_6_(n195), .A_5_(n193), .A_4_(n291), .A_3_(n288), 
        .A_2_(n286), .A_1_(n151), .A_0_(n283), .B_11_(net13719), .B_10_(Y1_10_), .B_9_(Y1_9_), .B_8_(Y1_8_), .B_7_(Y1_7_), .B_6_(Y1_6_), .B_5_(Y1_5_), .B_4_(
        Y1_4_), .B_3_(Y1_3_), .B_2_(Y1_2_), .B_1_(Y1_1_), .B_0_(Y1_0_), 
        .SUM_12_(Y[9]), .SUM_11_(Y[8]), .SUM_10_(Y[7]), .SUM_9_(Y[6]), 
        .SUM_8_(Y[5]), .SUM_7_(Y[4]), .SUM_6_(Y[3]), .SUM_5_(Y[2]), .SUM_4_(
        Y[1]), .SUM_3_(Y[0]) );
  CS_DW01_add_20 add_0_root_sub_0_root_sub_9 ( .A(Xt), .SUM(Xt_temp), .B_8_(
        n665), .B_7_(N240), .B_6_(N230), .B_5_(n279), .B_4_(N210), .B_3_(N200), 
        .B_2_(N190), .B_1_(N180), .B_0_(N170) );
  DFFRX4 X1_d_reg_6_ ( .D(X1[6]), .CK(clk), .RN(n666), .Q(X1_d[6]), .QN(n362)
         );
  DFFRQX2 X8_reg_4_ ( .D(net46217), .CK(clk), .RN(n322), .Q(X8[4]) );
  DFFRQX2 X1_reg_6_ ( .D(X2[6]), .CK(clk), .RN(n325), .Q(X1[6]) );
  DFFRQX2 X7_reg_7_ ( .D(X8[7]), .CK(clk), .RN(n326), .Q(X7[7]) );
  DFFRQX2 X5_reg_7_ ( .D(X6[7]), .CK(clk), .RN(n326), .Q(X5[7]) );
  DFFRQX2 X3_reg_7_ ( .D(X4[7]), .CK(clk), .RN(n326), .Q(X3[7]) );
  DFFRQX2 X1_reg_7_ ( .D(X2[7]), .CK(clk), .RN(n325), .Q(X1[7]) );
  DFFRQX2 X7_reg_6_ ( .D(X8[6]), .CK(clk), .RN(n325), .Q(X7[6]) );
  DFFRQX2 X5_reg_6_ ( .D(X6[6]), .CK(clk), .RN(n325), .Q(X5[6]) );
  DFFRQX2 X3_reg_6_ ( .D(X4[6]), .CK(clk), .RN(n325), .Q(X3[6]) );
  DFFRQX2 X7_reg_5_ ( .D(X8[5]), .CK(clk), .RN(n324), .Q(X7[5]) );
  DFFRQX2 X5_reg_5_ ( .D(X6[5]), .CK(clk), .RN(n324), .Q(X5[5]) );
  DFFRQX2 X3_reg_5_ ( .D(X4[5]), .CK(clk), .RN(n324), .Q(X3[5]) );
  DFFRQX2 X1_reg_5_ ( .D(X2[5]), .CK(clk), .RN(n324), .Q(X1[5]) );
  DFFRQX2 X7_reg_4_ ( .D(X8[4]), .CK(clk), .RN(n322), .Q(X7[4]) );
  DFFRQX2 X5_reg_4_ ( .D(X6[4]), .CK(clk), .RN(n322), .Q(X5[4]) );
  DFFRQX2 X3_reg_4_ ( .D(X4[4]), .CK(clk), .RN(n321), .Q(X3[4]) );
  DFFRQX2 X1_reg_4_ ( .D(X2[4]), .CK(clk), .RN(n321), .Q(X1[4]) );
  DFFRQX2 X7_reg_3_ ( .D(X8[3]), .CK(clk), .RN(n323), .Q(X7[3]) );
  DFFRQX2 X5_reg_3_ ( .D(X6[3]), .CK(clk), .RN(n322), .Q(X5[3]) );
  DFFRQX2 X3_reg_3_ ( .D(X4[3]), .CK(clk), .RN(n322), .Q(X3[3]) );
  DFFRQX2 X1_reg_3_ ( .D(X2[3]), .CK(clk), .RN(n322), .Q(X1[3]) );
  DFFRQX2 X7_reg_2_ ( .D(X8[2]), .CK(clk), .RN(n323), .Q(X7[2]) );
  DFFRQX2 X5_reg_2_ ( .D(X6[2]), .CK(clk), .RN(n323), .Q(X5[2]) );
  DFFRQX2 X3_reg_2_ ( .D(X4[2]), .CK(clk), .RN(n323), .Q(X3[2]) );
  DFFRQX2 X1_reg_2_ ( .D(X2[2]), .CK(clk), .RN(n323), .Q(X1[2]) );
  DFFRQX2 X7_reg_1_ ( .D(X8[1]), .CK(clk), .RN(n320), .Q(X7[1]) );
  DFFRQX2 X5_reg_1_ ( .D(X6[1]), .CK(clk), .RN(n320), .Q(X5[1]) );
  DFFRQX2 X3_reg_1_ ( .D(X4[1]), .CK(clk), .RN(n320), .Q(X3[1]) );
  DFFRQX2 X1_reg_1_ ( .D(X2[1]), .CK(clk), .RN(n320), .Q(X1[1]) );
  DFFRQX2 X7_reg_0_ ( .D(X8[0]), .CK(clk), .RN(n321), .Q(X7[0]) );
  DFFRQX2 X5_reg_0_ ( .D(X6[0]), .CK(clk), .RN(n321), .Q(X5[0]) );
  DFFRQX2 X3_reg_0_ ( .D(X4[0]), .CK(clk), .RN(n321), .Q(X3[0]) );
  DFFRQX2 X1_reg_0_ ( .D(X2[0]), .CK(clk), .RN(n320), .Q(X1[0]) );
  DFFRQX2 X8_reg_7_ ( .D(X9[7]), .CK(clk), .RN(n326), .Q(X8[7]) );
  DFFRQX2 X8_reg_6_ ( .D(X9[6]), .CK(clk), .RN(n325), .Q(X8[6]) );
  DFFRQX2 X8_reg_5_ ( .D(n1800), .CK(clk), .RN(n324), .Q(X8[5]) );
  DFFRQX2 X8_reg_3_ ( .D(n184), .CK(clk), .RN(n323), .Q(X8[3]) );
  DFFRQX2 X8_reg_2_ ( .D(n124), .CK(clk), .RN(n324), .Q(X8[2]) );
  DFFRQX2 X8_reg_1_ ( .D(net45438), .CK(clk), .RN(n320), .Q(X8[1]) );
  DFFRQX2 X6_reg_7_ ( .D(X7[7]), .CK(clk), .RN(n326), .Q(X6[7]) );
  DFFRQX2 X4_reg_7_ ( .D(X5[7]), .CK(clk), .RN(n326), .Q(X4[7]) );
  DFFRQX2 X2_reg_7_ ( .D(X3[7]), .CK(clk), .RN(n326), .Q(X2[7]) );
  DFFRQX2 X6_reg_6_ ( .D(X7[6]), .CK(clk), .RN(n325), .Q(X6[6]) );
  DFFRQX2 X4_reg_6_ ( .D(X5[6]), .CK(clk), .RN(n325), .Q(X4[6]) );
  DFFRQX2 X2_reg_6_ ( .D(X3[6]), .CK(clk), .RN(n325), .Q(X2[6]) );
  DFFRQX2 X6_reg_5_ ( .D(X7[5]), .CK(clk), .RN(n324), .Q(X6[5]) );
  DFFRQX2 X4_reg_5_ ( .D(X5[5]), .CK(clk), .RN(n324), .Q(X4[5]) );
  DFFRQX2 X2_reg_5_ ( .D(X3[5]), .CK(clk), .RN(n324), .Q(X2[5]) );
  DFFRQX2 X6_reg_4_ ( .D(X7[4]), .CK(clk), .RN(n322), .Q(X6[4]) );
  DFFRQX2 X4_reg_4_ ( .D(X5[4]), .CK(clk), .RN(n322), .Q(X4[4]) );
  DFFRQX2 X2_reg_4_ ( .D(X3[4]), .CK(clk), .RN(n321), .Q(X2[4]) );
  DFFRQX2 X6_reg_3_ ( .D(X7[3]), .CK(clk), .RN(n323), .Q(X6[3]) );
  DFFRQX2 X4_reg_3_ ( .D(X5[3]), .CK(clk), .RN(n322), .Q(X4[3]) );
  DFFRQX2 X2_reg_3_ ( .D(X3[3]), .CK(clk), .RN(n322), .Q(X2[3]) );
  DFFRQX2 X6_reg_2_ ( .D(X7[2]), .CK(clk), .RN(n323), .Q(X6[2]) );
  DFFRQX2 X4_reg_2_ ( .D(X5[2]), .CK(clk), .RN(n323), .Q(X4[2]) );
  DFFRQX2 X2_reg_2_ ( .D(X3[2]), .CK(clk), .RN(n323), .Q(X2[2]) );
  DFFRQX2 X6_reg_1_ ( .D(X7[1]), .CK(clk), .RN(n320), .Q(X6[1]) );
  DFFRQX2 X4_reg_1_ ( .D(X5[1]), .CK(clk), .RN(n320), .Q(X4[1]) );
  DFFRQX2 X2_reg_1_ ( .D(X3[1]), .CK(clk), .RN(n320), .Q(X2[1]) );
  DFFRQX2 X6_reg_0_ ( .D(X7[0]), .CK(clk), .RN(n321), .Q(X6[0]) );
  DFFRQX2 X4_reg_0_ ( .D(X5[0]), .CK(clk), .RN(n321), .Q(X4[0]) );
  DFFRQX2 X2_reg_0_ ( .D(X3[0]), .CK(clk), .RN(n321), .Q(X2[0]) );
  DFFRQX2 S9_reg_11_ ( .D(N41), .CK(clk), .RN(n319), .Q(S9[11]) );
  DFFRQX2 X8_reg_0_ ( .D(net44780), .CK(clk), .RN(n321), .Q(X8[0]) );
  DFFRQX2 S9_reg_10_ ( .D(N40), .CK(clk), .RN(n319), .Q(S9[10]) );
  DFFRQX2 S9_reg_9_ ( .D(N39), .CK(clk), .RN(n318), .Q(S9[9]) );
  DFFRQX2 S9_reg_8_ ( .D(N38), .CK(clk), .RN(n317), .Q(S9[8]) );
  DFFRQX2 S9_reg_7_ ( .D(N37), .CK(clk), .RN(n316), .Q(S9[7]) );
  DFFRQX2 S9_reg_6_ ( .D(N36), .CK(clk), .RN(n316), .Q(S9[6]) );
  DFFRQX2 S9_reg_5_ ( .D(N35), .CK(clk), .RN(n315), .Q(S9[5]) );
  DFFRQX2 S9_reg_4_ ( .D(N34), .CK(clk), .RN(n314), .Q(S9[4]) );
  DFFRQX2 S9_reg_3_ ( .D(N33), .CK(clk), .RN(n313), .Q(S9[3]) );
  DFFRQX2 S9_reg_2_ ( .D(X[2]), .CK(clk), .RN(n313), .Q(S9[2]) );
  DFFRQX2 S9_reg_1_ ( .D(X[1]), .CK(clk), .RN(n312), .Q(S9[1]) );
  DFFRQX2 Xt_reg_11_ ( .D(n304), .CK(clk), .RN(n327), .Q(Xt[11]) );
  DFFRQX2 Xt_reg_0_ ( .D(n283), .CK(clk), .RN(n326), .Q(Xt[0]) );
  DFFRQX2 Xt_reg_9_ ( .D(n270), .CK(clk), .RN(n327), .Q(Xt[9]) );
  DFFRQX2 Xt_reg_4_ ( .D(n262), .CK(clk), .RN(n327), .Q(Xt[4]) );
  DFFRQX2 S1_reg_1_ ( .D(S2[1]), .CK(clk), .RN(n311), .Q(S1[1]) );
  DFFRQX2 S2_reg_1_ ( .D(S3[1]), .CK(clk), .RN(n311), .Q(S2[1]) );
  DFFRQX2 S7_reg_0_ ( .D(S8[0]), .CK(clk), .RN(n311), .Q(S7[0]) );
  DFFRQX2 S6_reg_0_ ( .D(S7[0]), .CK(clk), .RN(n311), .Q(S6[0]) );
  DFFRQX2 S2_reg_0_ ( .D(S3[0]), .CK(clk), .RN(n311), .Q(S2[0]) );
  DFFRQX2 S1_reg_11_ ( .D(S2[11]), .CK(clk), .RN(n319), .Q(S1[11]) );
  DFFRQX2 S1_reg_9_ ( .D(S2[9]), .CK(clk), .RN(n317), .Q(S1[9]) );
  DFFRQX2 S1_reg_4_ ( .D(S2[4]), .CK(clk), .RN(n314), .Q(S1[4]) );
  DFFRQX2 S2_reg_11_ ( .D(S3[11]), .CK(clk), .RN(n319), .Q(S2[11]) );
  DFFRQX2 S2_reg_9_ ( .D(S3[9]), .CK(clk), .RN(n317), .Q(S2[9]) );
  DFFRQX2 S2_reg_8_ ( .D(S3[8]), .CK(clk), .RN(n317), .Q(S2[8]) );
  DFFRQX2 S2_reg_6_ ( .D(S3[6]), .CK(clk), .RN(n315), .Q(S2[6]) );
  DFFRQX2 S1_reg_3_ ( .D(S2[3]), .CK(clk), .RN(n313), .Q(S1[3]) );
  DFFRQX2 S1_reg_2_ ( .D(S2[2]), .CK(clk), .RN(n312), .Q(S1[2]) );
  DFFRQX2 S3_reg_6_ ( .D(S4[6]), .CK(clk), .RN(n315), .Q(S3[6]) );
  DFFRQX2 S2_reg_5_ ( .D(S3[5]), .CK(clk), .RN(n314), .Q(S2[5]) );
  DFFRQX2 S2_reg_4_ ( .D(S3[4]), .CK(clk), .RN(n314), .Q(S2[4]) );
  DFFRQX2 S7_reg_3_ ( .D(S8[3]), .CK(clk), .RN(n313), .Q(S7[3]) );
  DFFRQX2 S2_reg_3_ ( .D(S3[3]), .CK(clk), .RN(n313), .Q(S2[3]) );
  DFFRQX2 S2_reg_2_ ( .D(S3[2]), .CK(clk), .RN(n312), .Q(S2[2]) );
  DFFRQX2 S7_reg_1_ ( .D(S8[1]), .CK(clk), .RN(n312), .Q(S7[1]) );
  DFFRQX2 S4_reg_0_ ( .D(S5[0]), .CK(clk), .RN(n311), .Q(S4[0]) );
  DFFRQX2 S5_reg_11_ ( .D(S6[11]), .CK(clk), .RN(n319), .Q(S5[11]) );
  DFFRQX2 S5_reg_1_ ( .D(S6[1]), .CK(clk), .RN(n312), .Q(S5[1]) );
  DFFRQX2 S5_reg_7_ ( .D(S6[7]), .CK(clk), .RN(n316), .Q(S5[7]) );
  DFFRQX2 S4_reg_11_ ( .D(S5[11]), .CK(clk), .RN(n319), .Q(S4[11]) );
  DFFRQX2 S5_reg_4_ ( .D(S6[4]), .CK(clk), .RN(n314), .Q(S5[4]) );
  DFFRQX2 S4_reg_10_ ( .D(S5[10]), .CK(clk), .RN(n318), .Q(S4[10]) );
  DFFRQX2 S1_reg_10_ ( .D(S2[10]), .CK(clk), .RN(n318), .Q(S1[10]) );
  DFFRQX2 S1_reg_6_ ( .D(S2[6]), .CK(clk), .RN(n315), .Q(S1[6]) );
  DFFRQX2 S5_reg_8_ ( .D(S6[8]), .CK(clk), .RN(n317), .Q(S5[8]) );
  DFFRQX2 S1_reg_0_ ( .D(S2[0]), .CK(clk), .RN(n311), .Q(S1[0]) );
  DFFRQX2 S8_reg_0_ ( .D(S9[0]), .CK(clk), .RN(n311), .Q(S8[0]) );
  DFFRQX2 S5_reg_0_ ( .D(S6[0]), .CK(clk), .RN(n311), .Q(S5[0]) );
  DFFRQX2 S1_reg_5_ ( .D(S2[5]), .CK(clk), .RN(n314), .Q(S1[5]) );
  DFFRQX2 S5_reg_5_ ( .D(S6[5]), .CK(clk), .RN(n315), .Q(S5[5]) );
  DFFRQX2 S1_reg_7_ ( .D(S2[7]), .CK(clk), .RN(n316), .Q(S1[7]) );
  DFFRQX2 S8_reg_1_ ( .D(S9[1]), .CK(clk), .RN(n312), .Q(S8[1]) );
  DFFRQX2 S4_reg_1_ ( .D(S5[1]), .CK(clk), .RN(n312), .Q(S4[1]) );
  DFFRQX2 S4_reg_7_ ( .D(S5[7]), .CK(clk), .RN(n316), .Q(S4[7]) );
  DFFRQX2 S7_reg_6_ ( .D(S8[6]), .CK(clk), .RN(n316), .Q(S7[6]) );
  DFFRQX2 S5_reg_3_ ( .D(S6[3]), .CK(clk), .RN(n313), .Q(S5[3]) );
  DFFRQX2 S5_reg_2_ ( .D(S6[2]), .CK(clk), .RN(n312), .Q(S5[2]) );
  DFFRQX2 S4_reg_9_ ( .D(S5[9]), .CK(clk), .RN(n318), .Q(S4[9]) );
  DFFRQX2 S5_reg_10_ ( .D(S6[10]), .CK(clk), .RN(n318), .Q(S5[10]) );
  DFFRQX2 S5_reg_6_ ( .D(S6[6]), .CK(clk), .RN(n315), .Q(S5[6]) );
  DFFRQX2 S4_reg_8_ ( .D(S5[8]), .CK(clk), .RN(n317), .Q(S4[8]) );
  DFFRQX4 Xt_reg_7_ ( .D(n295), .CK(clk), .RN(n327), .Q(Xt[7]) );
  DFFRHQX8 X9_reg_3_ ( .D(X[3]), .CK(clk), .RN(n666), .Q(n225) );
  DFFRHQX8 X9_reg_4_ ( .D(X[4]), .CK(clk), .RN(n666), .Q(net44031) );
  DFFRQX2 Xt_reg_6_ ( .D(n195), .CK(clk), .RN(n327), .Q(Xt[6]) );
  DFFRHQX8 X9_reg_5_ ( .D(X[5]), .CK(clk), .RN(n666), .Q(n213) );
  DFFRHQX8 X9_reg_0_ ( .D(X[0]), .CK(clk), .RN(n666), .Q(net44804) );
  DFFRQX4 Xt_reg_8_ ( .D(n201), .CK(clk), .RN(n327), .Q(Xt[8]) );
  DFFRQX4 Xt_reg_1_ ( .D(n151), .CK(clk), .RN(n326), .Q(Xt[1]) );
  DFFRQX4 Xt_reg_5_ ( .D(n193), .CK(clk), .RN(n327), .Q(Xt[5]) );
  DFFRQX4 Xt_reg_2_ ( .D(n179), .CK(clk), .RN(n326), .Q(Xt[2]) );
  DFFRQX4 Xt_reg_3_ ( .D(n263), .CK(clk), .RN(n326), .Q(Xt[3]) );
  DFFRQX4 Xt_reg_10_ ( .D(n191), .CK(clk), .RN(n327), .Q(Xt[10]) );
  DFFRQX2 S6_reg_7_ ( .D(S7[7]), .CK(clk), .RN(n666), .Q(S6[7]) );
  DFFRQX2 S2_reg_7_ ( .D(S3[7]), .CK(clk), .RN(n666), .Q(S2[7]) );
  DFFRQX2 S7_reg_10_ ( .D(S8[10]), .CK(clk), .RN(n666), .Q(S7[10]) );
  DFFRQX2 S7_reg_4_ ( .D(S8[4]), .CK(clk), .RN(n666), .Q(S7[4]) );
  DFFRQX2 S6_reg_10_ ( .D(S7[10]), .CK(clk), .RN(n666), .Q(S6[10]) );
  DFFRQX2 S6_reg_2_ ( .D(S7[2]), .CK(clk), .RN(n666), .Q(S6[2]) );
  DFFRQX2 S3_reg_3_ ( .D(S4[3]), .CK(clk), .RN(n666), .Q(S3[3]) );
  DFFRQX2 S7_reg_9_ ( .D(S8[9]), .CK(clk), .RN(n666), .Q(S7[9]) );
  DFFRQX2 S6_reg_5_ ( .D(S7[5]), .CK(clk), .RN(n666), .Q(S6[5]) );
  DFFRQX2 S7_reg_11_ ( .D(S8[11]), .CK(clk), .RN(n666), .Q(S7[11]) );
  DFFRQX2 S7_reg_8_ ( .D(S8[8]), .CK(clk), .RN(n666), .Q(S7[8]) );
  DFFRQX2 S7_reg_2_ ( .D(S8[2]), .CK(clk), .RN(n666), .Q(S7[2]) );
  DFFRQX2 S6_reg_11_ ( .D(S7[11]), .CK(clk), .RN(n666), .Q(S6[11]) );
  DFFRQX2 S6_reg_9_ ( .D(S7[9]), .CK(clk), .RN(n666), .Q(S6[9]) );
  DFFRQX2 S6_reg_4_ ( .D(S7[4]), .CK(clk), .RN(n666), .Q(S6[4]) );
  DFFRQX2 S3_reg_4_ ( .D(S4[4]), .CK(clk), .RN(n666), .Q(S3[4]) );
  DFFRQX2 S2_reg_10_ ( .D(S3[10]), .CK(clk), .RN(n666), .Q(S2[10]) );
  DFFRQX2 S5_reg_9_ ( .D(S6[9]), .CK(clk), .RN(n666), .Q(S5[9]) );
  DFFRQX2 S6_reg_8_ ( .D(S7[8]), .CK(clk), .RN(n666), .Q(S6[8]) );
  DFFRQX2 S7_reg_5_ ( .D(S8[5]), .CK(clk), .RN(n666), .Q(S7[5]) );
  DFFRQX2 S3_reg_5_ ( .D(S4[5]), .CK(clk), .RN(n666), .Q(S3[5]) );
  DFFRQX2 S7_reg_7_ ( .D(S8[7]), .CK(clk), .RN(n666), .Q(S7[7]) );
  DFFRQX2 S8_reg_11_ ( .D(S9[11]), .CK(clk), .RN(n666), .Q(S8[11]) );
  DFFRQX2 S8_reg_5_ ( .D(S9[5]), .CK(clk), .RN(n666), .Q(S8[5]) );
  DFFRQX2 S8_reg_10_ ( .D(S9[10]), .CK(clk), .RN(n666), .Q(S8[10]) );
  DFFRQX2 S8_reg_9_ ( .D(S9[9]), .CK(clk), .RN(n666), .Q(S8[9]) );
  DFFRQX2 S8_reg_8_ ( .D(S9[8]), .CK(clk), .RN(n666), .Q(S8[8]) );
  DFFRQX2 S8_reg_7_ ( .D(S9[7]), .CK(clk), .RN(n666), .Q(S8[7]) );
  DFFRQX2 S8_reg_6_ ( .D(S9[6]), .CK(clk), .RN(n666), .Q(S8[6]) );
  DFFRQX2 S8_reg_4_ ( .D(S9[4]), .CK(clk), .RN(n666), .Q(S8[4]) );
  DFFRQX2 S8_reg_3_ ( .D(S9[3]), .CK(clk), .RN(n666), .Q(S8[3]) );
  DFFRQX2 S8_reg_2_ ( .D(S9[2]), .CK(clk), .RN(n666), .Q(S8[2]) );
  DFFRQX2 S3_reg_11_ ( .D(S4[11]), .CK(clk), .RN(n666), .Q(S3[11]) );
  DFFRQX2 S1_reg_8_ ( .D(S2[8]), .CK(clk), .RN(n666), .Q(S1[8]) );
  DFFRQX2 S6_reg_6_ ( .D(S7[6]), .CK(clk), .RN(n666), .Q(S6[6]) );
  DFFRQX2 S4_reg_3_ ( .D(S5[3]), .CK(clk), .RN(n666), .Q(S4[3]) );
  DFFRQX2 S4_reg_2_ ( .D(S5[2]), .CK(clk), .RN(n666), .Q(S4[2]) );
  DFFRQX2 S3_reg_7_ ( .D(S4[7]), .CK(clk), .RN(n666), .Q(S3[7]) );
  DFFRQX2 S6_reg_3_ ( .D(S7[3]), .CK(clk), .RN(n666), .Q(S6[3]) );
  DFFRQX2 S4_reg_5_ ( .D(S5[5]), .CK(clk), .RN(n666), .Q(S4[5]) );
  DFFRQX2 S3_reg_10_ ( .D(S4[10]), .CK(clk), .RN(n666), .Q(S3[10]) );
  DFFRQX2 S3_reg_9_ ( .D(S4[9]), .CK(clk), .RN(n666), .Q(S3[9]) );
  DFFRQX2 S4_reg_6_ ( .D(S5[6]), .CK(clk), .RN(n666), .Q(S4[6]) );
  DFFRQX2 S4_reg_4_ ( .D(S5[4]), .CK(clk), .RN(n666), .Q(S4[4]) );
  DFFRQX2 S3_reg_8_ ( .D(S4[8]), .CK(clk), .RN(n666), .Q(S3[8]) );
  DFFRHQX4 S3_reg_2_ ( .D(S4[2]), .CK(clk), .RN(n312), .Q(S3[2]) );
  DFFRQX2 S9_reg_0_ ( .D(X[0]), .CK(clk), .RN(n311), .Q(S9[0]) );
  AND3X4 U3 ( .A(net46259), .B(net45741), .C(net44666), .Y(n199) );
  NAND2X6 U4 ( .A(net42655), .B(n99), .Y(net38601) );
  INVX18 U5 ( .A(n199), .Y(n648) );
  CLKNAND2X4 U6 ( .A(net44994), .B(net42634), .Y(net42655) );
  NAND3X6 U7 ( .A(n366), .B(n192), .C(n224), .Y(n3701) );
  OR2X8 U8 ( .A(net43814), .B(n98), .Y(net48545) );
  CLKAND2X2 U9 ( .A(net38595), .B(net45129), .Y(net43814) );
  OR3X4 U10 ( .A(net39852), .B(net46254), .C(net46259), .Y(net38695) );
  NOR2X8 U11 ( .A(n130), .B(n148), .Y(net39097) );
  BUFX10 U12 ( .A(n611), .Y(n1) );
  OR3X4 U13 ( .A(net48510), .B(net46254), .C(net46259), .Y(net38525) );
  NAND2X6 U14 ( .A(net38576), .B(n14), .Y(n268) );
  INVX12 U15 ( .A(net40104), .Y(net45519) );
  CLKINVX16 U16 ( .A(net45241), .Y(n9) );
  MXI2X1 U17 ( .A(n1), .B(n610), .S0(net43268), .Y(net41316) );
  INVX16 U18 ( .A(net38672), .Y(net38639) );
  CLKINVX20 U19 ( .A(C1_temp[10]), .Y(net39106) );
  CLKMX2X8 U20 ( .A(net38870), .B(net38818), .S0(net43261), .Y(n97) );
  INVX10 U21 ( .A(net38500), .Y(net38492) );
  INVX6 U22 ( .A(n60), .Y(net56090) );
  CLKAND2X12 U23 ( .A(net38470), .B(Y1_0_), .Y(net40077) );
  BUFX20 U24 ( .A(net43217), .Y(net39836) );
  NAND2X4 U25 ( .A(net38485), .B(Y1_1_), .Y(net38478) );
  OR2X4 U26 ( .A(net38500), .B(net38485), .Y(n69) );
  CLKMX2X8 U27 ( .A(n588), .B(n211), .S0(net43261), .Y(net38619) );
  INVX14 U28 ( .A(net38784), .Y(net38870) );
  INVX16 U38 ( .A(n111), .Y(net55912) );
  INVX18 U39 ( .A(n299), .Y(n300) );
  INVX6 U40 ( .A(net40125), .Y(net38801) );
  BUFX8 U41 ( .A(net44831), .Y(n2) );
  AOI32X4 U42 ( .A0(net44145), .A1(n4), .A2(n5), .B0(n5), .B1(n6), .Y(n3) );
  CLKINVX40 U43 ( .A(net40142), .Y(n4) );
  INVX20 U44 ( .A(net45034), .Y(n5) );
  CLKINVX40 U45 ( .A(net40032), .Y(n6) );
  CLKINVX16 U46 ( .A(net39107), .Y(net45034) );
  INVX20 U47 ( .A(C5_temp[8]), .Y(net38862) );
  MXI2X6 U48 ( .A(net45141), .B(n2), .S0(net39839), .Y(n7) );
  INVX20 U49 ( .A(n7), .Y(net38606) );
  INVX6 U50 ( .A(net48677), .Y(net38649) );
  BUFX16 U51 ( .A(Xt_temp[5]), .Y(n292) );
  NAND2X3 U52 ( .A(n197), .B(n371), .Y(n373) );
  INVX6 U53 ( .A(n3500), .Y(n8) );
  BUFX14 U54 ( .A(net38977), .Y(n3500) );
  INVX20 U55 ( .A(net38690), .Y(net45241) );
  NAND2X8 U56 ( .A(net38987), .B(C7_temp[10]), .Y(n522) );
  INVX10 U57 ( .A(net38727), .Y(net38664) );
  CLKNAND2X4 U58 ( .A(net38727), .B(net45889), .Y(net38712) );
  INVXL U59 ( .A(C2_temp[2]), .Y(n10) );
  INVX2 U60 ( .A(n10), .Y(n11) );
  INVX20 U61 ( .A(n299), .Y(n61) );
  INVX16 U62 ( .A(net51578), .Y(n12) );
  CLKINVX16 U63 ( .A(net43847), .Y(net51578) );
  INVX12 U64 ( .A(net45892), .Y(net43847) );
  INVX16 U65 ( .A(n81), .Y(n79) );
  CLKNAND2X12 U66 ( .A(net42636), .B(n80), .Y(n81) );
  CLKINVX20 U67 ( .A(net45198), .Y(net38597) );
  NOR2X8 U68 ( .A(n30), .B(n580), .Y(net38698) );
  INVX6 U69 ( .A(net45276), .Y(n13) );
  INVX6 U70 ( .A(net38639), .Y(net45276) );
  OAI222XL U71 ( .A0(C9_temp[4]), .A1(n31), .B0(C9_temp[6]), .B1(net38597), 
        .C0(C9_temp[5]), .C1(net38598), .Y(n93) );
  OA21X2 U72 ( .A0(net38739), .A1(net38598), .B0(net38597), .Y(n582) );
  MXI2X6 U73 ( .A(net41316), .B(n7), .S0(net38576), .Y(net43763) );
  BUFX5 U74 ( .A(net38577), .Y(n14) );
  BUFX14 U75 ( .A(C2_temp[8]), .Y(n278) );
  MXI2X8 U76 ( .A(net38868), .B(n16), .S0(net39839), .Y(n15) );
  CLKINVX40 U77 ( .A(net45147), .Y(n16) );
  OR4X8 U78 ( .A(n593), .B(n2100), .C(net38736), .D(net38734), .Y(n594) );
  CLKINVX16 U79 ( .A(n15), .Y(net38709) );
  NAND2X8 U80 ( .A(n157), .B(n252), .Y(n26) );
  CLKINVX20 U81 ( .A(n26), .Y(net48702) );
  INVX18 U82 ( .A(net51046), .Y(net51015) );
  MXI2X3 U83 ( .A(net51021), .B(net43839), .S0(net51015), .Y(n44) );
  BUFX2 U84 ( .A(n13), .Y(n27) );
  INVX14 U85 ( .A(n280), .Y(Y1_2_) );
  AO2B2X4 U86 ( .B0(net48628), .B1(n603), .A0(C9_temp[8]), .A1N(n27), .Y(n606)
         );
  AOI2BB2X4 U87 ( .B0(n510), .B1(n29), .A0N(net48510), .A1N(C3_temp[0]), .Y(
        n28) );
  INVX20 U88 ( .A(n28), .Y(n585) );
  CLKINVX40 U89 ( .A(C4_temp[0]), .Y(n29) );
  CLKBUFX24 U90 ( .A(net38696), .Y(net39852) );
  INVX20 U91 ( .A(C5_11_), .Y(net44283) );
  CLKBUFX2 U92 ( .A(net44952), .Y(net44786) );
  MXI2X6 U93 ( .A(net38802), .B(net38800), .S0(net43261), .Y(n3300) );
  INVX18 U94 ( .A(n3300), .Y(net45889) );
  INVX20 U95 ( .A(X1_d[1]), .Y(net44477) );
  NAND2X3 U96 ( .A(net43217), .B(net38772), .Y(n114) );
  MXI2X4 U97 ( .A(net45735), .B(net44341), .S0(net43217), .Y(net44843) );
  BUFX12 U98 ( .A(net43217), .Y(net43268) );
  AO21X4 U99 ( .A0(n582), .A1(net38760), .B0(n581), .Y(n30) );
  OAI221X2 U100 ( .A0(net38677), .A1(net38637), .B0(net38667), .B1(net48702), 
        .C0(net38592), .Y(n580) );
  OAI21X8 U101 ( .A0(net38883), .A1(net42417), .B0(n110), .Y(net38984) );
  INVXL U102 ( .A(n51), .Y(n31) );
  INVX10 U103 ( .A(n15), .Y(n51) );
  INVX14 U104 ( .A(net40189), .Y(net43908) );
  INVX10 U105 ( .A(net45554), .Y(net38771) );
  CLKINVX40 U106 ( .A(net51015), .Y(net40104) );
  NAND2X8 U107 ( .A(n374), .B(net39256), .Y(n366) );
  OA21X4 U108 ( .A0(net46217), .A1(n363), .B0(n371), .Y(n379) );
  MX2X8 U109 ( .A(net44855), .B(net38722), .S0(net43261), .Y(net38672) );
  CLKINVX24 U110 ( .A(Xt_temp[11]), .Y(n303) );
  OR4X6 U111 ( .A(n276), .B(n3501), .C(n349), .D(n275), .Y(n341) );
  BUFX16 U112 ( .A(N220), .Y(n279) );
  INVX12 U113 ( .A(C5_temp[9]), .Y(net38921) );
  INVX6 U114 ( .A(net38532), .Y(net48533) );
  INVX16 U115 ( .A(Xt_temp[7]), .Y(n294) );
  OR2X1 U116 ( .A(C1_temp[5]), .B(net38690), .Y(net42803) );
  CLKINVX12 U117 ( .A(net51015), .Y(net38690) );
  AND3X8 U118 ( .A(net44283), .B(net38921), .C(net44952), .Y(net38920) );
  INVX10 U119 ( .A(net43908), .Y(net51259) );
  OAI2BB2X4 U120 ( .B0(n529), .B1(n528), .A0N(n32), .A1N(n530), .Y(n533) );
  CLKINVX40 U121 ( .A(n272), .Y(n32) );
  INVX20 U122 ( .A(net40042), .Y(net38485) );
  CLKINVX4 U123 ( .A(net40056), .Y(net48699) );
  AND2X2 U124 ( .A(net46259), .B(n93), .Y(n98) );
  INVX20 U125 ( .A(net38485), .Y(net43711) );
  INVX16 U126 ( .A(X1_d[5]), .Y(n228) );
  OR3X2 U127 ( .A(n44), .B(net39014), .C(net39077), .Y(net39068) );
  OR3X2 U128 ( .A(net40236), .B(n44), .C(net39077), .Y(net39070) );
  INVX12 U129 ( .A(net38768), .Y(net39077) );
  CLKINVX40 U130 ( .A(net39852), .Y(net38693) );
  BUFX20 U131 ( .A(net38470), .Y(n60) );
  INVX16 U132 ( .A(net38921), .Y(net43592) );
  AOI22X1 U133 ( .A0(net38988), .A1(net56102), .B0(net38885), .B1(net38823), 
        .Y(n3600) );
  AND2X6 U134 ( .A(net38823), .B(n566), .Y(n1700) );
  CLKINVX12 U135 ( .A(C7_temp[8]), .Y(n112) );
  INVX20 U136 ( .A(net40055), .Y(net40056) );
  NOR2X6 U137 ( .A(net38833), .B(net38757), .Y(net51328) );
  MXI2X6 U138 ( .A(X9[6]), .B(net38561), .S0(net40055), .Y(net44979) );
  NAND3X4 U139 ( .A(n2300), .B(n231), .C(n654), .Y(n657) );
  BUFX20 U140 ( .A(net38484), .Y(n3400) );
  INVX16 U141 ( .A(net40084), .Y(net38484) );
  INVX18 U142 ( .A(net43719), .Y(net38470) );
  INVX20 U143 ( .A(net38682), .Y(net44666) );
  INVX16 U144 ( .A(C8_temp[9]), .Y(net38977) );
  INVX20 U145 ( .A(Xt_temp[9]), .Y(n299) );
  CLKBUFX40 U146 ( .A(n286), .Y(n178) );
  CLKBUFX40 U147 ( .A(n286), .Y(n179) );
  INVX16 U148 ( .A(net40104), .Y(net46002) );
  NOR2X2 U149 ( .A(net46057), .B(net43217), .Y(n3700) );
  INVX10 U150 ( .A(net38884), .Y(net38807) );
  CLKAND2X12 U151 ( .A(C6_temp[4]), .B(n560), .Y(net41270) );
  AO2B2X4 U152 ( .B0(net44666), .B1(net38876), .A0(net38841), .A1N(C6_temp[5]), 
        .Y(net38784) );
  CLKINVX6 U153 ( .A(net45189), .Y(net38648) );
  CLKAND2X4 U154 ( .A(net38654), .B(net45129), .Y(net45189) );
  NAND3X6 U155 ( .A(n43), .B(net44894), .C(net38964), .Y(net38970) );
  OAI2B11X2 U156 ( .A1N(net39824), .A0(net45432), .B0(net48537), .C0(net48714), 
        .Y(n386) );
  AO2B2X2 U157 ( .B0(X1_d[0]), .B1(net44805), .A0(net45432), .A1N(net39824), 
        .Y(net39209) );
  CLKBUFX6 U158 ( .A(C8_temp[3]), .Y(net45527) );
  INVX14 U159 ( .A(C8_temp[3]), .Y(net38850) );
  CLKINVX40 U160 ( .A(net45432), .Y(net45692) );
  CLKINVX40 U161 ( .A(net44477), .Y(net45432) );
  INVX6 U162 ( .A(net43891), .Y(n3800) );
  INVX6 U163 ( .A(C6_temp[10]), .Y(net43891) );
  NAND2BX8 U164 ( .AN(n44), .B(net38768), .Y(n3900) );
  CLKINVX12 U165 ( .A(n110), .Y(n111) );
  AO2B2X2 U166 ( .B0(net45118), .B1(net38967), .A0(net38823), .A1N(net45667), 
        .Y(net38783) );
  AOI21X2 U167 ( .A0(net39077), .A1(n44), .B0(net51020), .Y(n132) );
  INVX3 U168 ( .A(n233), .Y(n406) );
  NAND2X8 U169 ( .A(n233), .B(n430), .Y(n411) );
  CLKNAND2X8 U170 ( .A(n233), .B(n430), .Y(n443) );
  OAI21X8 U171 ( .A0(n471), .A1(n212), .B0(n407), .Y(n409) );
  CLKINVX12 U172 ( .A(C4_11_), .Y(n407) );
  AOI21X4 U173 ( .A0(n559), .A1(C6_temp[7]), .B0(C6_temp[8]), .Y(n539) );
  INVX18 U174 ( .A(C3_11_), .Y(n436) );
  BUFX4 U175 ( .A(net39203), .Y(net48465) );
  CLKBUFX40 U176 ( .A(C7_temp[9]), .Y(net40201) );
  BUFX14 U177 ( .A(net38776), .Y(net40236) );
  INVX16 U178 ( .A(net39846), .Y(net38686) );
  BUFX2 U179 ( .A(net40201), .Y(n4000) );
  INVX6 U180 ( .A(n104), .Y(n105) );
  INVX10 U181 ( .A(n443), .Y(n236) );
  BUFX14 U182 ( .A(C2_temp[10]), .Y(net40142) );
  NOR2X8 U183 ( .A(net40189), .B(C7_temp[8]), .Y(n521) );
  INVX10 U184 ( .A(net48702), .Y(n4100) );
  NAND2X4 U185 ( .A(n570), .B(n569), .Y(n589) );
  INVX20 U186 ( .A(Xt_temp[8]), .Y(n296) );
  NAND2X4 U187 ( .A(net38964), .B(net38967), .Y(net38969) );
  NOR2X8 U188 ( .A(net38703), .B(net38702), .Y(n78) );
  INVX10 U189 ( .A(net38702), .Y(n73) );
  AND2X8 U190 ( .A(net43609), .B(net38664), .Y(net38702) );
  INVX20 U191 ( .A(n67), .Y(net38497) );
  BUFX20 U192 ( .A(C7_11_), .Y(net40189) );
  AND2X6 U193 ( .A(n129), .B(n123), .Y(net39119) );
  INVX20 U194 ( .A(net40236), .Y(net38997) );
  NAND2X8 U195 ( .A(n359), .B(n45), .Y(n361) );
  CLKINVX40 U196 ( .A(net38880), .Y(net38841) );
  AND3X4 U197 ( .A(n4100), .B(net45897), .C(net38712), .Y(net38703) );
  INVX16 U198 ( .A(n148), .Y(net40032) );
  OAI2BB1X4 U199 ( .A0N(C3_temp[6]), .A1N(n498), .B0(n436), .Y(n437) );
  CLKINVX40 U200 ( .A(net38865), .Y(net38823) );
  CLKBUFX40 U201 ( .A(net43261), .Y(net39839) );
  CLKINVX12 U202 ( .A(net38972), .Y(net43299) );
  INVX6 U203 ( .A(net38973), .Y(net38972) );
  INVX12 U204 ( .A(net51584), .Y(net38770) );
  AND2X8 U205 ( .A(net42580), .B(net38816), .Y(net38804) );
  CLKINVX8 U206 ( .A(net38881), .Y(net38818) );
  CLKBUFX32 U207 ( .A(Xt_temp[6]), .Y(n206) );
  INVX6 U208 ( .A(net45274), .Y(net38861) );
  OAI2BB1XL U209 ( .A0N(C9_temp[0]), .A1N(net38619), .B0(n88), .Y(n86) );
  INVXL U210 ( .A(net38619), .Y(n87) );
  INVX16 U211 ( .A(net43642), .Y(net45107) );
  CLKINVX16 U212 ( .A(net38756), .Y(net38834) );
  INVX16 U213 ( .A(C8_temp[5]), .Y(net38875) );
  AOI2BB2X2 U214 ( .B0(n471), .B1(n188), .A0N(n212), .A1N(net48510), .Y(
        net38998) );
  OR3X2 U215 ( .A(C4_temp[10]), .B(C4_11_), .C(n408), .Y(n447) );
  INVX16 U216 ( .A(C4_temp[10]), .Y(n471) );
  INVX16 U217 ( .A(net44804), .Y(net44805) );
  NOR2X8 U218 ( .A(n247), .B(n427), .Y(n442) );
  NAND3X8 U219 ( .A(net38964), .B(net38968), .C(net43299), .Y(net38971) );
  INVX6 U220 ( .A(n372), .Y(n122) );
  CLKINVX40 U221 ( .A(net39846), .Y(net43642) );
  AO2B2X4 U222 ( .B0(net45519), .B1(net39078), .A0(net39034), .A1N(n278), .Y(
        net38773) );
  AND4X8 U223 ( .A(n3701), .B(n369), .C(n227), .D(n198), .Y(n377) );
  INVX12 U224 ( .A(net38773), .Y(net46057) );
  INVX4 U225 ( .A(n167), .Y(n513) );
  INVX10 U226 ( .A(n515), .Y(n473) );
  CLKNAND2X4 U227 ( .A(n49), .B(net38773), .Y(n144) );
  INVX2 U228 ( .A(n52), .Y(net38615) );
  CLKINVX1 U229 ( .A(C9_temp[8]), .Y(n608) );
  OR3X6 U230 ( .A(n3501), .B(n276), .C(n349), .Y(n351) );
  BUFX10 U231 ( .A(C8_temp[2]), .Y(net45391) );
  BUFX18 U232 ( .A(n288), .Y(n181) );
  BUFX14 U233 ( .A(C7_temp[7]), .Y(net42417) );
  CLKINVX12 U234 ( .A(net38775), .Y(net38723) );
  INVX6 U235 ( .A(net44818), .Y(net38713) );
  CLKINVX6 U236 ( .A(C5_temp[2]), .Y(n563) );
  NAND2X4 U237 ( .A(C1_temp[5]), .B(C1_temp[6]), .Y(n123) );
  NOR2X3 U238 ( .A(n139), .B(C1_temp[5]), .Y(n127) );
  NOR2BX4 U239 ( .AN(net39121), .B(C2_temp[5]), .Y(n139) );
  BUFX18 U240 ( .A(Xt_temp[4]), .Y(n264) );
  INVX4 U241 ( .A(net39086), .Y(net50947) );
  CLKNAND2X4 U242 ( .A(net45477), .B(net51487), .Y(net45620) );
  INVX1 U243 ( .A(n589), .Y(n53) );
  INVX12 U244 ( .A(net38585), .Y(net38739) );
  INVX4 U245 ( .A(C9_temp[10]), .Y(net38650) );
  INVX2 U246 ( .A(n163), .Y(n614) );
  INVX2 U247 ( .A(n608), .Y(n164) );
  INVX2 U248 ( .A(X5[4]), .Y(n116) );
  INVX2 U249 ( .A(X6[1]), .Y(n117) );
  INVX12 U250 ( .A(n597), .Y(n646) );
  CLKINVX2 U251 ( .A(n160), .Y(n150) );
  INVX20 U252 ( .A(n287), .Y(n289) );
  INVX2 U253 ( .A(n223), .Y(n188) );
  INVX4 U254 ( .A(n484), .Y(n487) );
  INVX6 U255 ( .A(n182), .Y(n570) );
  INVXL U256 ( .A(net45391), .Y(net45353) );
  CLKINVX1 U257 ( .A(net38888), .Y(net45667) );
  INVX12 U258 ( .A(net44855), .Y(net45477) );
  CLKINVX4 U259 ( .A(C5_temp[1]), .Y(n564) );
  INVX3 U260 ( .A(n175), .Y(n545) );
  INVX6 U261 ( .A(n278), .Y(n472) );
  NAND2X3 U262 ( .A(C2_temp[5]), .B(net39120), .Y(net39113) );
  INVX8 U263 ( .A(C1_temp[8]), .Y(net39078) );
  OAI222X2 U264 ( .A0(C2_temp[1]), .A1(n490), .B0(C2_temp[2]), .B1(n479), .C0(
        C2_temp[1]), .C1(n482), .Y(n449) );
  CLKINVX6 U265 ( .A(n260), .Y(n237) );
  CLKINVX12 U266 ( .A(C1_temp[6]), .Y(net39039) );
  INVXL U267 ( .A(n152), .Y(n187) );
  CLKINVX12 U268 ( .A(net45650), .Y(net45703) );
  NOR2X3 U269 ( .A(net39123), .B(net39124), .Y(n135) );
  NOR2BX4 U270 ( .AN(C1_temp[5]), .B(C2_temp[5]), .Y(n136) );
  BUFX10 U271 ( .A(C3_temp[3]), .Y(n267) );
  INVX8 U272 ( .A(n267), .Y(n421) );
  INVX4 U273 ( .A(C3_temp[1]), .Y(n480) );
  INVX2 U274 ( .A(net39011), .Y(net44760) );
  NOR2X6 U275 ( .A(net39072), .B(net39073), .Y(n140) );
  CLKNAND2X4 U276 ( .A(net39075), .B(net39076), .Y(n145) );
  AND3X6 U277 ( .A(n506), .B(n507), .C(n508), .Y(n249) );
  CLKINVX8 U278 ( .A(C4_temp[4]), .Y(n500) );
  CLKINVX16 U279 ( .A(n433), .Y(n203) );
  NAND2X4 U280 ( .A(n12), .B(net38622), .Y(n83) );
  AND2X2 U281 ( .A(C9_temp[3]), .B(C9_temp[2]), .Y(net43764) );
  OR3X4 U282 ( .A(net46259), .B(net38605), .C(net38604), .Y(net38600) );
  INVX4 U283 ( .A(net38710), .Y(net38734) );
  AND2X6 U284 ( .A(n436), .B(n476), .Y(n4101) );
  INVX5 U285 ( .A(net42574), .Y(net38790) );
  INVX4 U286 ( .A(n166), .Y(n605) );
  OR2X2 U287 ( .A(n614), .B(n613), .Y(net42632) );
  INVX14 U288 ( .A(n62), .Y(n234) );
  INVX4 U289 ( .A(net46108), .Y(net46109) );
  CLKINVX16 U290 ( .A(n227), .Y(n371) );
  INVX5 U291 ( .A(n224), .Y(n177) );
  INVX3 U292 ( .A(n3601), .Y(n344) );
  CLKINVX12 U293 ( .A(net39203), .Y(net45138) );
  INVX16 U294 ( .A(n213), .Y(n214) );
  INVX2 U295 ( .A(X7[7]), .Y(n165) );
  INVX10 U296 ( .A(net38487), .Y(n56) );
  CLKINVX8 U297 ( .A(net39203), .Y(net48537) );
  NAND2X8 U298 ( .A(n176), .B(net44032), .Y(n367) );
  CLKINVX6 U299 ( .A(X9[7]), .Y(n335) );
  INVX16 U300 ( .A(n367), .Y(n372) );
  CLKINVX6 U301 ( .A(n183), .Y(n349) );
  BUFX14 U302 ( .A(net44031), .Y(net45099) );
  INVX2 U303 ( .A(n194), .Y(n195) );
  BUFX2 U304 ( .A(n3301), .Y(n313) );
  BUFX2 U305 ( .A(n310), .Y(n314) );
  BUFX2 U306 ( .A(n329), .Y(n315) );
  BUFX2 U307 ( .A(n329), .Y(n316) );
  BUFX2 U308 ( .A(n329), .Y(n317) );
  BUFX2 U309 ( .A(n328), .Y(n318) );
  BUFX2 U310 ( .A(n328), .Y(n319) );
  NOR3X1 U311 ( .A(n3401), .B(n205), .C(n339), .Y(n42) );
  AND2X6 U312 ( .A(net38952), .B(net43253), .Y(n43) );
  INVX3 U313 ( .A(Xt_temp[4]), .Y(n290) );
  BUFX20 U314 ( .A(Xt_temp[4]), .Y(n262) );
  INVX6 U315 ( .A(n49), .Y(net43857) );
  INVX2 U316 ( .A(net43268), .Y(net46108) );
  INVX6 U317 ( .A(net46109), .Y(net46254) );
  AND2X4 U318 ( .A(n3601), .B(n71), .Y(n45) );
  OR3X8 U319 ( .A(net45862), .B(net45741), .C(net45129), .Y(n46) );
  CLKINVX2 U320 ( .A(n511), .Y(n497) );
  CLKINVX12 U321 ( .A(C7_temp[4]), .Y(net38952) );
  AND2X8 U322 ( .A(n3801), .B(n253), .Y(n47) );
  CLKINVX8 U323 ( .A(net38783), .Y(net38821) );
  AND3X8 U324 ( .A(n153), .B(n154), .C(n334), .Y(n48) );
  CLKAND2X12 U325 ( .A(n512), .B(n511), .Y(n49) );
  INVX16 U326 ( .A(C8_temp[10]), .Y(net38885) );
  CLKINVX16 U327 ( .A(n303), .Y(n304) );
  CLKINVX12 U328 ( .A(n172), .Y(n173) );
  INVX10 U329 ( .A(C4_temp[2]), .Y(n172) );
  BUFX3 U330 ( .A(Y1_2_), .Y(n50) );
  XOR2X4 U331 ( .A(net40084), .B(n280), .Y(n118) );
  AND2X8 U332 ( .A(net38487), .B(net38484), .Y(net40932) );
  CLKBUFX6 U333 ( .A(net39839), .Y(net45816) );
  CLKINVX20 U334 ( .A(net45816), .Y(net45741) );
  CLKNAND2X12 U335 ( .A(net43609), .B(net38664), .Y(n595) );
  INVX16 U336 ( .A(net40179), .Y(net51605) );
  MX2X8 U337 ( .A(n53), .B(n121), .S0(net39839), .Y(n52) );
  NAND2X3 U338 ( .A(net43261), .B(net38770), .Y(n246) );
  INVX18 U339 ( .A(net42634), .Y(net46249) );
  AND2X6 U340 ( .A(net39836), .B(net43857), .Y(n171) );
  MX2X8 U341 ( .A(n579), .B(n578), .S0(net39836), .Y(net38592) );
  INVX2 U342 ( .A(net39836), .Y(net42723) );
  AO2B2X1 U343 ( .B0(net38615), .B1(n86), .A0(net40906), .A1N(n87), .Y(n84) );
  NAND2X8 U344 ( .A(net38841), .B(n565), .Y(n569) );
  INVX20 U345 ( .A(n281), .Y(n282) );
  CLKINVX12 U346 ( .A(C7_temp[0]), .Y(n527) );
  NAND2X3 U347 ( .A(C7_temp[0]), .B(C7_temp[1]), .Y(n531) );
  INVX3 U348 ( .A(net38885), .Y(net43324) );
  INVXL U349 ( .A(net46002), .Y(n54) );
  INVX2 U350 ( .A(n54), .Y(n55) );
  CLKINVX16 U351 ( .A(net39114), .Y(n149) );
  INVX14 U352 ( .A(reset), .Y(n666) );
  NOR2X4 U353 ( .A(net38576), .B(net48342), .Y(net38609) );
  OR4X8 U354 ( .A(net38700), .B(net38699), .C(net38698), .D(net38697), .Y(n57)
         );
  CLKINVX12 U355 ( .A(net46259), .Y(n66) );
  NOR2BX4 U356 ( .AN(n100), .B(n58), .Y(n65) );
  NOR2X8 U357 ( .A(net38659), .B(net38660), .Y(n58) );
  MX2X8 U358 ( .A(n214), .B(n655), .S0(net40055), .Y(net40084) );
  INVX20 U359 ( .A(net40088), .Y(Y1_1_) );
  AND2X8 U360 ( .A(n268), .B(n269), .Y(n59) );
  NAND2X6 U361 ( .A(net45129), .B(net38579), .Y(n269) );
  AO2B2X4 U362 ( .B0(net38667), .B1(net45129), .A0(net46249), .A1N(net48702), 
        .Y(net38660) );
  NAND3X8 U363 ( .A(n55), .B(net46254), .C(net42634), .Y(n645) );
  OA21X2 U364 ( .A0(net38788), .A1(net46108), .B0(net41331), .Y(net38697) );
  MXI2X3 U365 ( .A(net38664), .B(net43610), .S0(net46259), .Y(n100) );
  CLKINVX32 U366 ( .A(net38576), .Y(net42634) );
  BUFX20 U367 ( .A(net38525), .Y(net42409) );
  AOI221X2 U368 ( .A0(net38637), .A1(n609), .B0(n27), .B1(n608), .C0(net45129), 
        .Y(n613) );
  OR2X8 U369 ( .A(C9_temp[9]), .B(n79), .Y(net42800) );
  OR2X4 U370 ( .A(C9_temp[9]), .B(n79), .Y(net42658) );
  NAND3X6 U371 ( .A(net45741), .B(net38682), .C(net46249), .Y(n62) );
  OAI32X4 U372 ( .A0(net38650), .A1(n607), .A2(net45129), .B0(net38650), .B1(
        net38652), .Y(net38644) );
  INVX2 U373 ( .A(n606), .Y(n607) );
  NAND4X8 U374 ( .A(net38565), .B(net38563), .C(n63), .D(net38564), .Y(
        net38537) );
  OR2X4 U375 ( .A(net38662), .B(net38661), .Y(n64) );
  NAND2X8 U376 ( .A(n64), .B(n65), .Y(n63) );
  NOR2X8 U377 ( .A(n66), .B(n607), .Y(net48677) );
  AO2B2X4 U378 ( .B0(X8[0]), .B1(n647), .A0(X7[0]), .A1N(n46), .Y(n650) );
  MX2X8 U379 ( .A(X9[7]), .B(n623), .S0(net40055), .Y(net38500) );
  OAI2BB1X4 U380 ( .A0N(net40088), .A1N(net43711), .B0(net40077), .Y(n207) );
  CLKNAND2X12 U381 ( .A(n68), .B(n69), .Y(n67) );
  NAND2BX8 U382 ( .AN(net38504), .B(net38503), .Y(n68) );
  INVX20 U383 ( .A(net40884), .Y(net40042) );
  INVX10 U384 ( .A(n219), .Y(n70) );
  NAND2X4 U385 ( .A(n72), .B(n70), .Y(n71) );
  AND2X8 U386 ( .A(net45099), .B(n363), .Y(n72) );
  AND2X6 U387 ( .A(X1_d[5]), .B(n214), .Y(n219) );
  INVX4 U388 ( .A(n72), .Y(n198) );
  CLKNAND2X12 U389 ( .A(net45276), .B(net44274), .Y(n592) );
  INVX20 U390 ( .A(net38674), .Y(net44274) );
  NAND2X8 U391 ( .A(n76), .B(n74), .Y(net38700) );
  AND3X6 U392 ( .A(n125), .B(n126), .C(n596), .Y(n75) );
  OR2X8 U393 ( .A(net38704), .B(n77), .Y(n74) );
  NAND2X6 U394 ( .A(n73), .B(n75), .Y(n77) );
  NAND2BX8 U395 ( .AN(net38701), .B(n78), .Y(n76) );
  OAI211X4 U396 ( .A0(net38974), .A1(C8_temp[7]), .B0(n533), .C0(n532), .Y(
        n534) );
  INVX10 U397 ( .A(net42417), .Y(net38974) );
  INVX12 U398 ( .A(net56086), .Y(Y1_0_) );
  NAND3BX4 U399 ( .AN(net46259), .B(n54), .C(net46254), .Y(n597) );
  INVX12 U400 ( .A(n598), .Y(n647) );
  OR3X4 U401 ( .A(net51391), .B(net45741), .C(net45129), .Y(n598) );
  INVX8 U402 ( .A(net38512), .Y(net38508) );
  MXI2X6 U403 ( .A(net44780), .B(net38490), .S0(net40055), .Y(net56086) );
  AOI21X8 U404 ( .A0(net38594), .A1(net38593), .B0(net48545), .Y(net38568) );
  NAND2X8 U405 ( .A(net38497), .B(n3400), .Y(net48683) );
  XOR2X8 U406 ( .A(net48683), .B(n56), .Y(Y1_9_) );
  NAND2X4 U407 ( .A(net38497), .B(net40932), .Y(net38499) );
  AND3X1 U408 ( .A(net38497), .B(net40932), .C(net38500), .Y(net13719) );
  XOR2X8 U409 ( .A(net38497), .B(n3400), .Y(Y1_8_) );
  AO2B2X4 U410 ( .B0(net38487), .B1(net38470), .A0(net38500), .A1N(net40042), 
        .Y(net38504) );
  OAI2B11X4 U411 ( .A1N(net40042), .A0(Y1_1_), .B0(net38470), .C0(Y1_0_), .Y(
        net38477) );
  MXI2X8 U412 ( .A(net44032), .B(net38508), .S0(net40055), .Y(net40884) );
  CLKINVX40 U413 ( .A(net38489), .Y(net40055) );
  INVX16 U414 ( .A(net38537), .Y(net38489) );
  MX2X8 U415 ( .A(net43614), .B(net46079), .S0(net38489), .Y(net40088) );
  NAND3X8 U416 ( .A(net42659), .B(net42658), .C(net38645), .Y(net38564) );
  OR3X4 U417 ( .A(net48677), .B(net45189), .C(n79), .Y(net38645) );
  NAND2X6 U418 ( .A(net45897), .B(n66), .Y(n80) );
  CLKINVX40 U419 ( .A(net39834), .Y(net38576) );
  AOI31X4 U420 ( .A0(C9_temp[2]), .A1(net38576), .A2(net38606), .B0(C9_temp[3]), .Y(net38599) );
  BUFX20 U421 ( .A(n57), .Y(net39834) );
  AOI2BB2X4 U422 ( .B0(net43763), .B1(net43764), .A0N(n82), .A1N(net38609), 
        .Y(net38593) );
  CLKINVX40 U423 ( .A(net39834), .Y(net46259) );
  AND3X2 U424 ( .A(n89), .B(n90), .C(n91), .Y(net48342) );
  NAND2XL U425 ( .A(net41316), .B(net38605), .Y(n91) );
  INVX2 U426 ( .A(C9_temp[2]), .Y(net38605) );
  NAND2XL U427 ( .A(n7), .B(net38605), .Y(n85) );
  AO22X1 U428 ( .A0(net38627), .A1(n92), .B0(net40906), .B1(net38630), .Y(n90)
         );
  OAI2BB1X4 U429 ( .A0N(C9_temp[0]), .A1N(net38630), .B0(n88), .Y(n92) );
  CLKINVX2 U430 ( .A(C9_temp[1]), .Y(n88) );
  NAND2XL U431 ( .A(net38632), .B(net38622), .Y(n89) );
  INVX2 U432 ( .A(C9_temp[3]), .Y(net38622) );
  INVX10 U433 ( .A(net38602), .Y(net38632) );
  OR3X4 U434 ( .A(net38632), .B(net38606), .C(net38604), .Y(net38731) );
  AOI31X4 U435 ( .A0(n83), .A1(n84), .A2(n85), .B0(net45129), .Y(n82) );
  BUFX20 U436 ( .A(n57), .Y(net45129) );
  AOI32X4 U437 ( .A0(net38740), .A1(n12), .A2(n7), .B0(n12), .B1(net44994), 
        .Y(net38730) );
  OR2X8 U438 ( .A(net38568), .B(net38569), .Y(net42633) );
  NAND3X8 U439 ( .A(net42633), .B(net42632), .C(net38570), .Y(net38565) );
  OAI222X4 U440 ( .A0(net38574), .A1(net38573), .B0(n59), .B1(net38573), .C0(
        net38574), .C1(n59), .Y(net38569) );
  CLKINVX1 U441 ( .A(C9_temp[6]), .Y(net38574) );
  INVX16 U442 ( .A(n97), .Y(net38598) );
  INVX20 U443 ( .A(net38687), .Y(net43261) );
  OR2X2 U444 ( .A(net38818), .B(net38784), .Y(net42626) );
  OAI32X2 U445 ( .A0(net38869), .A1(net38868), .A2(net45147), .B0(net38870), 
        .B1(net38881), .Y(net38874) );
  OA21X4 U446 ( .A0(net38870), .A1(net38881), .B0(net56032), .Y(net38855) );
  OR2X8 U447 ( .A(net39844), .B(net38807), .Y(net38880) );
  BUFX20 U448 ( .A(n94), .Y(net39844) );
  NAND3X8 U449 ( .A(net48331), .B(net48330), .C(n95), .Y(n94) );
  OR4X4 U450 ( .A(net38894), .B(net38893), .C(net38896), .D(net38895), .Y(n95)
         );
  AND2XL U451 ( .A(net48615), .B(n96), .Y(net38895) );
  INVX12 U452 ( .A(C6_temp[6]), .Y(n96) );
  NAND2X8 U453 ( .A(C5_temp[6]), .B(n96), .Y(net38935) );
  INVX4 U454 ( .A(net38867), .Y(net48615) );
  INVX10 U455 ( .A(C5_temp[6]), .Y(net38867) );
  AO2B2X4 U456 ( .B0(net44666), .B1(net38867), .A0(net46199), .A1N(C6_temp[6]), 
        .Y(net38782) );
  OAI2BB1X4 U457 ( .A0N(net38600), .A1N(net38599), .B0(net38601), .Y(net38594)
         );
  NAND2X3 U458 ( .A(net51578), .B(net46259), .Y(n99) );
  MXI2X6 U459 ( .A(net38851), .B(net46173), .S0(net39839), .Y(net45892) );
  INVXL U460 ( .A(net45703), .Y(net46173) );
  OR2X8 U461 ( .A(net45703), .B(net38851), .Y(net38826) );
  BUFX6 U462 ( .A(net38833), .Y(net45650) );
  INVX12 U463 ( .A(net38758), .Y(net38833) );
  NAND2X2 U464 ( .A(net38833), .B(net38834), .Y(net42793) );
  OAI2BB2X4 U465 ( .B0(net45862), .B1(C7_temp[3]), .A0N(net38850), .A1N(
        net38823), .Y(net38758) );
  CLKNAND2X12 U466 ( .A(net38686), .B(net42574), .Y(net38865) );
  BUFX8 U467 ( .A(net38808), .Y(net42574) );
  OAI222X4 U468 ( .A0(net40125), .A1(net51605), .B0(net38807), .B1(net42574), 
        .C0(net38723), .C1(net51487), .Y(net38806) );
  NAND2X2 U469 ( .A(net44790), .B(net51259), .Y(net38808) );
  OR3X4 U470 ( .A(net40201), .B(n3500), .C(net51259), .Y(net38980) );
  AND2X8 U471 ( .A(n101), .B(net42800), .Y(net38570) );
  CLKINVX16 U472 ( .A(net38667), .Y(net45897) );
  NAND2X4 U473 ( .A(net38712), .B(net45897), .Y(net38715) );
  NAND2BX4 U474 ( .AN(n4100), .B(net46259), .Y(net42636) );
  OAI2BB1X4 U475 ( .A0N(net45889), .A1N(net38727), .B0(n26), .Y(net38718) );
  AO2B2X4 U476 ( .B0(net44444), .B1(net38670), .A0(n26), .A1N(net38667), .Y(
        net38736) );
  OR2X4 U477 ( .A(n100), .B(C9_temp[10]), .Y(n101) );
  INVX3 U478 ( .A(net43609), .Y(net43610) );
  INVX8 U479 ( .A(net45889), .Y(net43609) );
  OR3X4 U480 ( .A(net41270), .B(net38867), .C(C6_temp[5]), .Y(net38934) );
  OA21X4 U481 ( .A0(net38867), .A1(net38876), .B0(net44283), .Y(net38933) );
  OAI221X2 U482 ( .A0(net38897), .A1(net38898), .B0(C6_temp[5]), .B1(net38876), 
        .C0(net44283), .Y(net38896) );
  INVX20 U483 ( .A(n102), .Y(net43217) );
  OR4X8 U484 ( .A(net38990), .B(net38989), .C(net38992), .D(n103), .Y(n102) );
  AND4X8 U485 ( .A(net39010), .B(net44760), .C(net44761), .D(n105), .Y(n103)
         );
  AO2B2X4 U486 ( .B0(net39006), .B1(net38772), .A0(net38997), .A1N(net39014), 
        .Y(n104) );
  INVX12 U487 ( .A(net38777), .Y(net39014) );
  OAI222X4 U488 ( .A0(net39031), .A1(net38780), .B0(net39014), .B1(net40236), 
        .C0(net39032), .C1(net38771), .Y(net39030) );
  CLKINVX24 U489 ( .A(net38997), .Y(net51511) );
  NOR2X5 U490 ( .A(net38997), .B(net45379), .Y(net51020) );
  NAND2X1 U491 ( .A(net38997), .B(net45379), .Y(net39069) );
  MX2X8 U492 ( .A(net40236), .B(net45379), .S0(net43217), .Y(net38727) );
  OAI32X4 U493 ( .A0(net45519), .A1(net40142), .A2(net39086), .B0(net44145), 
        .B1(n9), .Y(net38776) );
  AOI2BB2X4 U494 ( .B0(net39034), .B1(net44207), .A0N(n9), .A1N(net44208), .Y(
        net45554) );
  AOI32X4 U495 ( .A0(net38970), .A1(net38969), .A2(net38971), .B0(C7_temp[6]), 
        .B1(net38888), .Y(net38944) );
  INVX14 U496 ( .A(C7_temp[6]), .Y(net38967) );
  OA22X4 U497 ( .A0(C8_temp[6]), .A1(net38967), .B0(net44894), .B1(net38968), 
        .Y(net38945) );
  CLKINVX20 U498 ( .A(C7_11_), .Y(net38964) );
  AND2X8 U499 ( .A(net38964), .B(net48474), .Y(net43626) );
  OR3X8 U500 ( .A(net38791), .B(net38793), .C(net38792), .Y(net38687) );
  NAND2BX2 U501 ( .AN(net38866), .B(net38687), .Y(net42710) );
  AOI211X4 U502 ( .A0(net38855), .A1(net38856), .B0(net38857), .C0(n107), .Y(
        net38792) );
  OAI2B11X4 U503 ( .A1N(net38802), .A0(n3600), .B0(net38822), .C0(n108), .Y(
        n107) );
  OAI2B11X4 U504 ( .A1N(net38810), .A0(net38861), .B0(net45610), .C0(n109), 
        .Y(n108) );
  BUFX6 U505 ( .A(n106), .Y(n109) );
  OAI2B11X4 U506 ( .A1N(net38809), .A0(net38812), .B0(net45610), .C0(n109), 
        .Y(net38805) );
  NAND2XL U507 ( .A(net38862), .B(net39844), .Y(n106) );
  BUFX14 U508 ( .A(net44283), .Y(net40029) );
  INVX16 U509 ( .A(C5_temp[5]), .Y(net38876) );
  ACHCONX2 U510 ( .A(net41270), .B(C6_temp[5]), .CI(net38876), .CON(net38929)
         );
  AO2B2X4 U511 ( .B0(net40026), .B1(net43891), .A0(net43592), .A1N(net44952), 
        .Y(net38893) );
  OAI2BB1X4 U512 ( .A0N(net38939), .A1N(net38940), .B0(net38941), .Y(net38689)
         );
  BUFX20 U513 ( .A(net38689), .Y(net39846) );
  AOI33X4 U514 ( .A0(net38942), .A1(net38944), .A2(net56119), .B0(net38947), 
        .B1(net38945), .B2(net38946), .Y(net38941) );
  AOI2BB2X4 U515 ( .B0(n3500), .B1(net40201), .A0N(n111), .A1N(n112), .Y(
        net38946) );
  NAND2X3 U516 ( .A(net39846), .B(n112), .Y(net38810) );
  NAND3BX4 U517 ( .AN(net38883), .B(n111), .C(net38974), .Y(net38979) );
  INVX16 U518 ( .A(C8_temp[8]), .Y(n110) );
  CLKNAND2X2 U519 ( .A(net40201), .B(net38977), .Y(net45259) );
  NAND2X8 U520 ( .A(net38977), .B(net40201), .Y(net38985) );
  INVX12 U521 ( .A(C7_temp[5]), .Y(net38968) );
  NAND2X3 U522 ( .A(net38973), .B(net38968), .Y(net38976) );
  AO2B2X4 U523 ( .B0(net38968), .B1(net45118), .A0(net38823), .A1N(C8_temp[5]), 
        .Y(net38881) );
  INVX10 U524 ( .A(net38875), .Y(net44894) );
  AOI31X4 U525 ( .A0(net43253), .A1(net38952), .A2(net44894), .B0(C8_temp[6]), 
        .Y(net38975) );
  OAI2BB1X4 U526 ( .A0N(C8_temp[4]), .A1N(net38952), .B0(net38875), .Y(
        net38973) );
  XNOR3X4 U527 ( .A(X1_d[1]), .B(net39824), .C(n113), .Y(N180) );
  CLKBUFX40 U528 ( .A(X9[1]), .Y(net39824) );
  NAND2X4 U529 ( .A(net44805), .B(X1_d[0]), .Y(n113) );
  OAI2BB1X4 U530 ( .A0N(net45068), .A1N(net39203), .B0(n113), .Y(N170) );
  OAI2BB2X4 U531 ( .B0(net39824), .B1(net44477), .A0N(net44805), .A1N(net45138), .Y(net44003) );
  OAI2BB2X4 U532 ( .B0(net39824), .B1(net44477), .A0N(X1_d[0]), .A1N(net44805), 
        .Y(net39256) );
  INVX20 U533 ( .A(X1_d[0]), .Y(net39203) );
  BUFX12 U534 ( .A(net44804), .Y(net45068) );
  OAI2BB2X4 U535 ( .B0(net39839), .B1(net45477), .A0N(net38722), .A1N(net39839), .Y(net38721) );
  AOI211X4 U536 ( .A0(net38720), .A1(net38721), .B0(net44444), .C0(net38670), 
        .Y(net38719) );
  OAI2BB1X1 U537 ( .A0N(net45274), .A1N(net38810), .B0(net45477), .Y(net38872)
         );
  INVX10 U538 ( .A(net38723), .Y(net44855) );
  AO2B2X4 U539 ( .B0(net44666), .B1(net38862), .A0(net38841), .A1N(net40153), 
        .Y(net38775) );
  BUFX16 U540 ( .A(C6_temp[8]), .Y(net40153) );
  NAND2X2 U541 ( .A(net38648), .B(net38649), .Y(net38661) );
  OR2X2 U542 ( .A(net38643), .B(net38644), .Y(net42659) );
  OAI2B11X4 U543 ( .A1N(net38606), .A0(net38740), .B0(net38741), .C0(net38742), 
        .Y(net38732) );
  INVX4 U544 ( .A(net38834), .Y(net44831) );
  OR3X6 U545 ( .A(net38851), .B(net38849), .C(net44831), .Y(net38825) );
  NOR2X8 U546 ( .A(net38755), .B(net38834), .Y(net51329) );
  AO22X4 U547 ( .A0(net38823), .A1(net45353), .B0(net45354), .B1(net45118), 
        .Y(net38756) );
  INVX12 U548 ( .A(net43642), .Y(net45118) );
  AO22X2 U549 ( .A0(net38823), .A1(net38885), .B0(net45118), .B1(net38988), 
        .Y(net38714) );
  INVX12 U550 ( .A(net43642), .Y(net56102) );
  OAI32X4 U551 ( .A0(net45107), .A1(n8), .A2(net38790), .B0(n4000), .B1(
        net43642), .Y(net38766) );
  XOR3X4 U552 ( .A(net56091), .B(n56), .C(net40950), .Y(Y1_6_) );
  INVX16 U553 ( .A(net44979), .Y(net38487) );
  INVX10 U554 ( .A(C8_temp[6]), .Y(net38888) );
  CLKINVX12 U555 ( .A(net38877), .Y(net43253) );
  AO2B2X2 U556 ( .B0(net56102), .B1(net38952), .A0(net38823), .A1N(net43253), 
        .Y(net38779) );
  INVX4 U557 ( .A(C8_temp[4]), .Y(net38877) );
  OAI33X4 U558 ( .A0(net38715), .A1(net40099), .A2(net38717), .B0(net38719), 
        .B1(net40099), .B2(net38718), .Y(net38701) );
  INVX20 U559 ( .A(net45919), .Y(net44444) );
  INVX20 U560 ( .A(net44444), .Y(net38677) );
  OAI2BB2X4 U561 ( .B0(net38673), .B1(net44444), .A0N(net46147), .A1N(net41492), .Y(net38654) );
  CLKNAND2X12 U562 ( .A(net42724), .B(n114), .Y(net45919) );
  AOI221X4 U563 ( .A0(net38800), .A1(net38713), .B0(net38804), .B1(net38805), 
        .C0(net38806), .Y(net38797) );
  OAI33X4 U564 ( .A0(net38794), .A1(net38795), .A2(net38796), .B0(net38797), 
        .B1(net38798), .B2(net38799), .Y(net38793) );
  BUFX10 U565 ( .A(net38766), .Y(net40125) );
  NAND2X1 U566 ( .A(net38845), .B(net39846), .Y(net38837) );
  AOI32X4 U567 ( .A0(n51), .A1(net46150), .A2(net38710), .B0(net38586), .B1(
        n115), .Y(net38704) );
  BUFX20 U568 ( .A(net38585), .Y(n115) );
  OAI222X4 U569 ( .A0(C9_temp[6]), .A1(net38592), .B0(C9_temp[5]), .B1(n115), 
        .C0(C9_temp[4]), .C1(net46150), .Y(net38595) );
  OAI2B11X4 U570 ( .A1N(net38598), .A0(n115), .B0(n51), .C0(net46150), .Y(
        net38760) );
  OAI2BB1X4 U571 ( .A0N(net40915), .A1N(n115), .B0(net38582), .Y(net38579) );
  INVX6 U572 ( .A(net38598), .Y(net38586) );
  OAI21XL U573 ( .A0(net38586), .A1(net38587), .B0(net38588), .Y(net38577) );
  OAI32X4 U574 ( .A0(net38801), .A1(net38800), .A2(net51606), .B0(net38800), 
        .B1(net38713), .Y(net38799) );
  OA22X2 U575 ( .A0(net38800), .A1(net38713), .B0(net38816), .B1(net42580), 
        .Y(net38873) );
  INVX12 U576 ( .A(net38713), .Y(net38802) );
  AOI32X4 U577 ( .A0(net38682), .A1(net43891), .A2(net38884), .B0(net48425), 
        .B1(net44666), .Y(net44818) );
  INVX16 U578 ( .A(net39844), .Y(net38682) );
  AOI22X4 U579 ( .A0(net38883), .A1(net42417), .B0(net55912), .B1(C7_temp[8]), 
        .Y(net56119) );
  NAND3X4 U580 ( .A(net39069), .B(net39068), .C(net39070), .Y(n134) );
  INVX10 U581 ( .A(n209), .Y(n516) );
  INVX6 U582 ( .A(net56090), .Y(net56091) );
  CLKNAND2X8 U583 ( .A(n638), .B(n637), .Y(n660) );
  MX2X8 U584 ( .A(n640), .B(n656), .S0(net40055), .Y(n280) );
  CLKXOR2X4 U585 ( .A(Y1_0_), .B(net38470), .Y(Y1_3_) );
  OAI2BB2X4 U586 ( .B0(n116), .B1(n648), .A0N(X6[4]), .A1N(n234), .Y(n624) );
  CLKAND2X2 U587 ( .A(net39844), .B(n564), .Y(n182) );
  NAND2X4 U588 ( .A(net38809), .B(net38810), .Y(net51487) );
  INVX6 U589 ( .A(net38821), .Y(net56032) );
  INVX4 U590 ( .A(net38755), .Y(net38849) );
  OAI2BB1X4 U591 ( .A0N(net38866), .A1N(net38770), .B0(net38782), .Y(net38857)
         );
  OR3X8 U592 ( .A(net38868), .B(net45147), .C(net38869), .Y(net38856) );
  AND2X6 U593 ( .A(n588), .B(n568), .Y(n572) );
  NAND2X6 U594 ( .A(net51605), .B(net45209), .Y(net38822) );
  AO2B2X4 U595 ( .B0(X5[1]), .B1(n199), .A0(n234), .A1N(n117), .Y(n641) );
  MXI2X8 U596 ( .A(n184), .B(n653), .S0(net40055), .Y(net43719) );
  BUFX20 U597 ( .A(net38693), .Y(net48510) );
  CLKNAND2X4 U598 ( .A(net45147), .B(net38868), .Y(n238) );
  BUFX12 U599 ( .A(net38779), .Y(net45147) );
  INVX12 U600 ( .A(net38778), .Y(net38868) );
  INVX5 U601 ( .A(net38757), .Y(net38851) );
  CLKINVX12 U602 ( .A(net44419), .Y(net46199) );
  NAND2X8 U603 ( .A(net44283), .B(net38862), .Y(n541) );
  XOR2X8 U604 ( .A(net38476), .B(n118), .Y(Y1_5_) );
  CLKINVX8 U605 ( .A(net38866), .Y(net55884) );
  INVX10 U606 ( .A(net42580), .Y(net38866) );
  NOR2X8 U607 ( .A(n462), .B(net45364), .Y(n469) );
  OR2X4 U608 ( .A(net38816), .B(net55884), .Y(n2400) );
  NAND2X6 U609 ( .A(net39078), .B(net46002), .Y(n515) );
  CLKNAND2X12 U610 ( .A(n254), .B(n47), .Y(n381) );
  AND2X8 U611 ( .A(n28), .B(n586), .Y(n494) );
  INVX2 U612 ( .A(C3_temp[2]), .Y(n419) );
  CLKNAND2X12 U613 ( .A(n485), .B(n484), .Y(n590) );
  NAND2BX8 U614 ( .AN(net38693), .B(n480), .Y(n485) );
  AND2X6 U615 ( .A(n212), .B(n471), .Y(n257) );
  NAND2X4 U616 ( .A(net39108), .B(net39107), .Y(net51021) );
  NAND3X8 U617 ( .A(n238), .B(n239), .C(n2400), .Y(net38796) );
  OAI2BB1X4 U618 ( .A0N(n656), .A1N(n655), .B0(net48699), .Y(n637) );
  NAND2X3 U619 ( .A(C7_temp[10]), .B(net38885), .Y(n185) );
  OR2X8 U620 ( .A(n656), .B(n655), .Y(n231) );
  CLKINVX16 U621 ( .A(n636), .Y(n655) );
  OR2X8 U622 ( .A(net43614), .B(net38508), .Y(n2300) );
  CLKINVX16 U623 ( .A(n208), .Y(net43614) );
  NAND2X8 U624 ( .A(net38823), .B(net55912), .Y(net38809) );
  NAND2X8 U625 ( .A(net38477), .B(net38478), .Y(net38476) );
  INVX4 U626 ( .A(net38916), .Y(net40026) );
  INVX14 U627 ( .A(net56102), .Y(net45862) );
  AND3X4 U628 ( .A(n241), .B(net42803), .C(n577), .Y(n119) );
  AO2B2X2 U629 ( .B0(n510), .B1(n478), .A0(net39852), .A1N(n267), .Y(n583) );
  CLKINVX3 U630 ( .A(net38987), .Y(net44790) );
  INVX8 U631 ( .A(net51605), .Y(net51606) );
  BUFX10 U632 ( .A(net38765), .Y(net40179) );
  CLKAND2X4 U633 ( .A(net51605), .B(net45209), .Y(n244) );
  INVX16 U634 ( .A(net38801), .Y(net45209) );
  INVX4 U635 ( .A(C7_temp[10]), .Y(net38988) );
  AOI2BB2X4 U636 ( .B0(net38823), .B1(net38883), .A0N(net45862), .A1N(net42417), .Y(net51584) );
  NOR2BX8 U637 ( .AN(n120), .B(net38844), .Y(n573) );
  AOI21X8 U638 ( .A0(n569), .A1(n570), .B0(n1700), .Y(n120) );
  INVX10 U639 ( .A(net38714), .Y(net38800) );
  INVX10 U640 ( .A(net38670), .Y(net38637) );
  NOR2X8 U641 ( .A(net38844), .B(n1700), .Y(n121) );
  INVX2 U642 ( .A(net38837), .Y(net38844) );
  CLKINVX12 U643 ( .A(net44283), .Y(net44639) );
  INVX16 U644 ( .A(C5_temp[10]), .Y(net38916) );
  NAND2X8 U645 ( .A(n307), .B(n388), .Y(n382) );
  OR3X4 U646 ( .A(n365), .B(n364), .C(n72), .Y(n378) );
  CLKNAND2X8 U647 ( .A(net39209), .B(n389), .Y(n3901) );
  BUFX2 U648 ( .A(n161), .Y(n124) );
  XOR2X2 U649 ( .A(n161), .B(n391), .Y(n162) );
  OAI211X4 U650 ( .A0(net51511), .A1(net38998), .B0(n3900), .C0(net39000), .Y(
        net38996) );
  CLKINVX12 U651 ( .A(net56102), .Y(net46228) );
  NAND3X8 U652 ( .A(net42626), .B(n576), .C(net45620), .Y(net38795) );
  AO22X4 U653 ( .A0(n510), .A1(n172), .B0(net39852), .B1(n419), .Y(n610) );
  AND2X6 U654 ( .A(net38873), .B(n561), .Y(n2200) );
  AOI21X6 U655 ( .A0(n452), .A1(n451), .B0(C1_temp[3]), .Y(n453) );
  AND3X6 U656 ( .A(C6_temp[5]), .B(C6_temp[4]), .C(net38935), .Y(n535) );
  CLKBUFX12 U657 ( .A(net38809), .Y(net45274) );
  CLKINVX12 U658 ( .A(n587), .Y(n568) );
  INVXL U659 ( .A(net45862), .Y(net51391) );
  CLKINVX16 U660 ( .A(n290), .Y(n291) );
  NAND2X8 U661 ( .A(n489), .B(n488), .Y(n591) );
  NAND2X8 U662 ( .A(net39034), .B(n483), .Y(n488) );
  AND2X4 U663 ( .A(C6_temp[7]), .B(n559), .Y(n242) );
  INVX18 U664 ( .A(C5_temp[7]), .Y(n559) );
  AO2B2X4 U665 ( .B0(n477), .B1(net46002), .A0(net39034), .A1N(C2_temp[3]), 
        .Y(n584) );
  INVX4 U666 ( .A(C2_temp[3]), .Y(n452) );
  CLKINVX40 U667 ( .A(n129), .Y(n148) );
  AND3X4 U668 ( .A(C2_temp[5]), .B(n189), .C(net39118), .Y(n461) );
  INVX12 U669 ( .A(n583), .Y(n492) );
  NAND2X3 U670 ( .A(n196), .B(C1_temp[3]), .Y(net39124) );
  NOR2X8 U671 ( .A(net51328), .B(net51329), .Y(n571) );
  NOR2X8 U672 ( .A(C1_temp[8]), .B(n148), .Y(net39103) );
  CLKINVX40 U673 ( .A(net39019), .Y(net39034) );
  BUFX5 U674 ( .A(n266), .Y(n263) );
  INVX12 U675 ( .A(n147), .Y(n130) );
  BUFX18 U676 ( .A(X9[2]), .Y(n306) );
  INVX16 U677 ( .A(X1_d[4]), .Y(n363) );
  INVX4 U678 ( .A(net46216), .Y(net46217) );
  CLKINVX3 U679 ( .A(net45099), .Y(net46216) );
  CLKNAND2X4 U680 ( .A(n482), .B(net46002), .Y(n489) );
  CLKINVX24 U681 ( .A(C8_11_), .Y(net38987) );
  INVX6 U682 ( .A(net38781), .Y(net39031) );
  NAND2X4 U683 ( .A(net38975), .B(net38976), .Y(n186) );
  OR2X4 U684 ( .A(net38677), .B(net38637), .Y(n125) );
  OR2X8 U685 ( .A(net38667), .B(net48702), .Y(n126) );
  CLKINVX24 U686 ( .A(net44843), .Y(net38667) );
  INVX10 U687 ( .A(net39013), .Y(net44761) );
  INVX12 U688 ( .A(n372), .Y(n224) );
  OR3X4 U689 ( .A(n119), .B(net38781), .C(net39007), .Y(n519) );
  INVX10 U690 ( .A(net38780), .Y(net39007) );
  CLKNAND2X2 U691 ( .A(net39032), .B(net38771), .Y(net39073) );
  INVX16 U692 ( .A(C2_temp[9]), .Y(net39108) );
  NAND2X8 U693 ( .A(net38885), .B(net38987), .Y(n523) );
  AND2X6 U694 ( .A(net40153), .B(n242), .Y(n543) );
  OR2X8 U695 ( .A(net38890), .B(net38889), .Y(net48330) );
  OA22X4 U696 ( .A0(n3800), .A1(net48425), .B0(net38921), .B1(net44952), .Y(
        n537) );
  INVX10 U697 ( .A(net40026), .Y(net48425) );
  BUFX20 U698 ( .A(X1_d[2]), .Y(n277) );
  OAI2B11X4 U699 ( .A1N(n511), .A0(n517), .B0(n516), .C0(n515), .Y(net39000)
         );
  NOR2X8 U700 ( .A(n127), .B(n128), .Y(net45364) );
  NOR2X8 U701 ( .A(n130), .B(n131), .Y(net39093) );
  AOI21X8 U702 ( .A0(n132), .A1(n133), .B0(n134), .Y(net38989) );
  NOR2BX8 U703 ( .AN(C1_temp[6]), .B(n149), .Y(n137) );
  NOR2X8 U704 ( .A(net39106), .B(net40142), .Y(n131) );
  NOR2X8 U705 ( .A(n135), .B(n136), .Y(n141) );
  NAND2BX8 U706 ( .AN(C2_temp[6]), .B(net39113), .Y(n128) );
  NOR2X8 U707 ( .A(n140), .B(n143), .Y(n133) );
  NAND2X6 U708 ( .A(n144), .B(n145), .Y(n143) );
  CLKINVX8 U709 ( .A(net39089), .Y(n146) );
  NAND3X8 U710 ( .A(n142), .B(n141), .C(n146), .Y(n138) );
  NAND2BX8 U711 ( .AN(C2_temp[9]), .B(net43839), .Y(n147) );
  CLKNAND2X12 U712 ( .A(net40104), .B(net50947), .Y(net39019) );
  INVX16 U713 ( .A(C2_temp[6]), .Y(net39114) );
  NOR2X4 U714 ( .A(n137), .B(n148), .Y(n142) );
  AND2X8 U715 ( .A(n138), .B(net39092), .Y(net51046) );
  INVX16 U716 ( .A(C1_11_), .Y(n129) );
  NAND2X8 U717 ( .A(net39108), .B(net43839), .Y(net39102) );
  BUFX20 U718 ( .A(C1_temp[9]), .Y(net43839) );
  NAND2X8 U719 ( .A(C1_temp[6]), .B(net39114), .Y(net39118) );
  INVX14 U720 ( .A(net38695), .Y(net38524) );
  MXI2X6 U721 ( .A(net38592), .B(net38597), .S0(net46259), .Y(net38573) );
  INVX6 U722 ( .A(n355), .Y(n358) );
  INVX16 U723 ( .A(C2_temp[7]), .Y(net44207) );
  OR3X2 U724 ( .A(net48702), .B(net38652), .C(net45129), .Y(n604) );
  NAND2X4 U725 ( .A(net39824), .B(net44477), .Y(n374) );
  OR2X6 U726 ( .A(net38849), .B(net42793), .Y(n575) );
  CLKINVX6 U727 ( .A(net45068), .Y(net48714) );
  CLKINVX4 U728 ( .A(n436), .Y(n221) );
  INVX20 U729 ( .A(Xt_temp[1]), .Y(n284) );
  BUFX10 U730 ( .A(net38602), .Y(net44994) );
  CLKINVX32 U731 ( .A(n294), .Y(n295) );
  BUFX8 U732 ( .A(n436), .Y(n217) );
  NAND2X4 U733 ( .A(n3), .B(n148), .Y(net39076) );
  XOR2X8 U734 ( .A(n274), .B(n150), .Y(N240) );
  INVX6 U735 ( .A(n169), .Y(n250) );
  CLKINVX40 U736 ( .A(n284), .Y(n151) );
  INVX10 U737 ( .A(net38637), .Y(net48628) );
  CLKAND2X12 U738 ( .A(C7_temp[2]), .B(C7_temp[3]), .Y(n272) );
  INVX6 U739 ( .A(C7_temp[2]), .Y(net45354) );
  OR3X4 U740 ( .A(net39120), .B(net39039), .C(C2_temp[5]), .Y(n460) );
  NAND2BX4 U741 ( .AN(C2_temp[5]), .B(net39034), .Y(n241) );
  CLKBUFX2 U742 ( .A(n216), .Y(n158) );
  BUFX10 U743 ( .A(C8_temp[0]), .Y(n152) );
  AO2B2X2 U744 ( .B0(X4[6]), .B1(net38524), .A0(X3[6]), .A1N(net42409), .Y(
        n602) );
  CLKINVX32 U745 ( .A(net39824), .Y(net38532) );
  OR2X2 U746 ( .A(X1_d[7]), .B(n335), .Y(n153) );
  OR2X6 U747 ( .A(n275), .B(n353), .Y(n154) );
  NAND2X2 U748 ( .A(X9[6]), .B(n362), .Y(n353) );
  OR3X6 U749 ( .A(n333), .B(n3601), .C(n275), .Y(n334) );
  BUFX14 U750 ( .A(X1_d[3]), .Y(n155) );
  NAND2X2 U751 ( .A(n272), .B(n156), .Y(net48474) );
  INVXL U752 ( .A(n531), .Y(n156) );
  NAND2X6 U753 ( .A(n226), .B(n155), .Y(n253) );
  OR2X4 U754 ( .A(net43261), .B(net51605), .Y(n157) );
  NOR2X6 U755 ( .A(n232), .B(net48628), .Y(net38717) );
  INVX6 U756 ( .A(n225), .Y(n226) );
  AND3X6 U757 ( .A(net45259), .B(n186), .C(n185), .Y(net38942) );
  OAI2BB2X4 U758 ( .B0(net45692), .B1(net48533), .A0N(n277), .A1N(n640), .Y(
        n385) );
  OAI2BB2X4 U759 ( .B0(n155), .B1(n226), .A0N(n306), .A1N(n391), .Y(n332) );
  NAND2X6 U760 ( .A(n155), .B(n226), .Y(n345) );
  XNOR2XL U761 ( .A(X9[7]), .B(X1_d[7]), .Y(n159) );
  INVX4 U762 ( .A(n159), .Y(n160) );
  CLKBUFX40 U763 ( .A(X9[2]), .Y(n161) );
  XOR2X8 U764 ( .A(n3901), .B(n162), .Y(N190) );
  AO2B2X4 U765 ( .B0(n510), .B1(n509), .A0(net39852), .A1N(C3_temp[5]), .Y(
        n577) );
  OR2X8 U766 ( .A(net38891), .B(net38887), .Y(net48331) );
  OAI221X4 U767 ( .A0(net46147), .A1(n164), .B0(net38677), .B1(C9_temp[7]), 
        .C0(net42634), .Y(n163) );
  AO2B2X4 U768 ( .B0(X8[4]), .B1(n647), .A0(X7[4]), .A1N(n46), .Y(n625) );
  OAI2BB2X4 U769 ( .B0(n165), .B1(n46), .A0N(X8[7]), .A1N(n647), .Y(n620) );
  NOR2BX8 U770 ( .AN(C9_temp[9]), .B(net46249), .Y(n166) );
  MX2X8 U771 ( .A(n584), .B(n222), .S0(net39836), .Y(net38602) );
  AND2X8 U772 ( .A(n251), .B(n250), .Y(net45198) );
  AO2B2BX4 U773 ( .A0(net46002), .A1N(C1_temp[5]), .B0(net39034), .B1N(
        C2_temp[5]), .Y(n167) );
  INVX6 U774 ( .A(net38841), .Y(net44419) );
  NOR2X8 U775 ( .A(n248), .B(n486), .Y(n495) );
  CLKBUFX40 U776 ( .A(net38584), .Y(net46150) );
  INVX6 U777 ( .A(net44274), .Y(net46147) );
  AO21X4 U778 ( .A0(C9_temp[4]), .A1(net46150), .B0(C9_temp[5]), .Y(net40915)
         );
  NAND2BX4 U779 ( .AN(n612), .B(net46150), .Y(net38582) );
  INVXL U780 ( .A(net38532), .Y(net46078) );
  INVX2 U781 ( .A(net46078), .Y(net46079) );
  NAND2BX8 U782 ( .AN(net38693), .B(n476), .Y(n511) );
  NAND2X5 U783 ( .A(C4_11_), .B(n221), .Y(net38788) );
  CLKINVX4 U784 ( .A(net46057), .Y(net46058) );
  AOI21BX4 U785 ( .A0(n430), .A1(n233), .B0N(n217), .Y(n174) );
  NOR2BX4 U786 ( .AN(net38782), .B(net43261), .Y(n169) );
  CLKAND2X6 U787 ( .A(net45816), .B(net38790), .Y(net41331) );
  AO2B2X4 U788 ( .B0(net44666), .B1(n560), .A0(net46199), .A1N(C6_temp[4]), 
        .Y(net38778) );
  INVX2 U789 ( .A(n476), .Y(n168) );
  INVX16 U790 ( .A(C3_temp[8]), .Y(n476) );
  OAI21X8 U791 ( .A0(net38639), .A1(net38674), .B0(net38677), .Y(n232) );
  OAI2BB1X1 U792 ( .A0N(net46249), .A1N(net41331), .B0(C9_11_), .Y(net38563)
         );
  CLKMX2X8 U793 ( .A(n586), .B(n585), .S0(net43268), .Y(net38630) );
  AO2B2X4 U794 ( .B0(net45241), .B1(n490), .A0(net39034), .A1N(C2_temp[0]), 
        .Y(n586) );
  AO2B2X4 U795 ( .B0(net45241), .B1(net39039), .A0(net39034), .A1N(n149), .Y(
        n579) );
  OR2X4 U796 ( .A(net43217), .B(net39006), .Y(net42724) );
  OR3X4 U797 ( .A(n233), .B(n430), .C(n221), .Y(n414) );
  NAND2X8 U798 ( .A(n246), .B(net42710), .Y(net38670) );
  OAI22X4 U799 ( .A0(net45432), .A1(net38532), .B0(n176), .B1(net44032), .Y(
        n336) );
  CLKINVX24 U800 ( .A(net38771), .Y(net39006) );
  NOR2X8 U801 ( .A(n171), .B(n3700), .Y(net38720) );
  MXI2X8 U802 ( .A(net39007), .B(net39031), .S0(net43268), .Y(net38584) );
  OA22X2 U803 ( .A0(n278), .A1(net39078), .B0(C2_temp[7]), .B1(net39081), .Y(
        n470) );
  INVXL U804 ( .A(net40153), .Y(net45761) );
  BUFX12 U805 ( .A(C6_temp[7]), .Y(n204) );
  BUFX2 U806 ( .A(n44), .Y(net45735) );
  AOI2B1X4 U807 ( .A1N(C8_temp[9]), .A0(net40201), .B0(net40189), .Y(n525) );
  NAND2XL U808 ( .A(net45274), .B(net38810), .Y(net38722) );
  CLKNAND2X4 U809 ( .A(net38693), .B(net38788), .Y(n223) );
  OAI2B11X4 U810 ( .A1N(n174), .A0(n415), .B0(n413), .C0(n414), .Y(n446) );
  OAI222X4 U811 ( .A0(n175), .A1(n562), .B0(C6_temp[1]), .B1(C6_temp[0]), .C0(
        C6_temp[0]), .C1(n564), .Y(n548) );
  BUFX10 U812 ( .A(net38813), .Y(net45610) );
  CLKINVX12 U813 ( .A(C7_temp[3]), .Y(net38959) );
  CLKNAND2X2 U814 ( .A(net56032), .B(net43261), .Y(n251) );
  INVX14 U815 ( .A(C8_temp[7]), .Y(net38883) );
  INVX6 U816 ( .A(net40029), .Y(net45515) );
  BUFX14 U817 ( .A(C6_temp[3]), .Y(n175) );
  AOI2BB2X2 U818 ( .B0(n388), .B1(n307), .A0N(n277), .A1N(n640), .Y(n348) );
  AO2B2X4 U819 ( .B0(net45241), .B1(n479), .A0(net39034), .A1N(n11), .Y(n611)
         );
  INVX20 U820 ( .A(n363), .Y(n176) );
  OAI21BX2 U821 ( .A0(net38771), .A1(net39032), .B0N(n499), .Y(n518) );
  CLKINVX8 U822 ( .A(net38772), .Y(net39032) );
  NAND2BX4 U823 ( .AN(net44477), .B(net38532), .Y(n215) );
  INVXL U824 ( .A(net38532), .Y(net45438) );
  CLKMX2X8 U825 ( .A(n167), .B(n260), .S0(net43217), .Y(net38585) );
  AO2B2X4 U826 ( .B0(net44666), .B1(n567), .A0(net38841), .A1N(C6_temp[0]), 
        .Y(n588) );
  BUFX18 U827 ( .A(net38777), .Y(net45379) );
  NAND4X8 U828 ( .A(n351), .B(n353), .C(n352), .D(n354), .Y(n274) );
  BUFX20 U829 ( .A(Xt_temp[2]), .Y(n286) );
  CLKINVX24 U830 ( .A(net39081), .Y(net44208) );
  CLKINVX12 U831 ( .A(net44770), .Y(net38768) );
  BUFX20 U832 ( .A(n213), .Y(n1800) );
  OAI2B11X4 U833 ( .A1N(X1_d[3]), .A0(n307), .B0(n161), .C0(n391), .Y(n368) );
  OA21X4 U834 ( .A0(n307), .A1(n388), .B0(n161), .Y(n383) );
  OA22X4 U835 ( .A0(n362), .A1(X9[6]), .B0(n228), .B1(n1800), .Y(n183) );
  INVX5 U836 ( .A(X9[6]), .Y(net39273) );
  INVX16 U837 ( .A(net38770), .Y(net38816) );
  NAND2BX8 U838 ( .AN(net38532), .B(net45692), .Y(n389) );
  OAI2B2X4 U839 ( .A1N(net38532), .A0(net45692), .B0(net48465), .B1(net45068), 
        .Y(n375) );
  BUFX2 U840 ( .A(n307), .Y(n184) );
  BUFX20 U841 ( .A(C6_temp[9]), .Y(net44952) );
  AO2B2X4 U842 ( .B0(n187), .B1(net38823), .A0(n527), .A1N(net46228), .Y(n587)
         );
  NAND2X3 U843 ( .A(net43261), .B(net45209), .Y(n252) );
  BUFX2 U844 ( .A(C2_temp[4]), .Y(n189) );
  INVXL U845 ( .A(n302), .Y(n1900) );
  INVX2 U846 ( .A(n1900), .Y(n191) );
  OA22X4 U847 ( .A0(n388), .A1(n307), .B0(n391), .B1(n161), .Y(n192) );
  CLKBUFX40 U848 ( .A(Xt_temp[5]), .Y(n193) );
  INVXL U849 ( .A(n206), .Y(n194) );
  INVXL U850 ( .A(net38849), .Y(net45141) );
  BUFX6 U851 ( .A(C1_temp[2]), .Y(n196) );
  AND3X6 U852 ( .A(net38874), .B(net38872), .C(n2200), .Y(net38791) );
  INVX20 U853 ( .A(X1_d[3]), .Y(n388) );
  OA22X4 U854 ( .A0(n388), .A1(n307), .B0(n391), .B1(n161), .Y(n197) );
  INVX20 U855 ( .A(X1_d[2]), .Y(n391) );
  AND2X8 U856 ( .A(n198), .B(n338), .Y(n276) );
  OA21X4 U857 ( .A0(n307), .A1(n388), .B0(n3801), .Y(n357) );
  INVX20 U858 ( .A(net44031), .Y(net44032) );
  INVX2 U859 ( .A(C2_temp[10]), .Y(net39128) );
  INVX20 U860 ( .A(n296), .Y(n298) );
  INVXL U861 ( .A(n297), .Y(n2000) );
  INVX2 U862 ( .A(n2000), .Y(n201) );
  CLKINVX40 U863 ( .A(n294), .Y(n202) );
  NAND2BX8 U864 ( .AN(net38696), .B(net38788), .Y(n514) );
  INVX16 U865 ( .A(C3_temp[7]), .Y(n433) );
  NAND2X6 U866 ( .A(n255), .B(n256), .Y(net38740) );
  NAND2X3 U867 ( .A(net42723), .B(n1), .Y(n255) );
  MX2X2 U868 ( .A(n591), .B(n590), .S0(net43217), .Y(net38627) );
  INVXL U869 ( .A(n48), .Y(n205) );
  OAI222X4 U870 ( .A0(C4_temp[3]), .A1(n421), .B0(C4_temp[1]), .B1(C4_temp[0]), 
        .C0(C4_temp[0]), .C1(n480), .Y(n422) );
  OAI2B2X4 U871 ( .A1N(n207), .A0(n664), .B0(n50), .B1(net38484), .Y(net40950)
         );
  OAI211X4 U872 ( .A0(n208), .A1(net38512), .B0(n653), .C0(net38490), .Y(n654)
         );
  OR4X8 U873 ( .A(n644), .B(n643), .C(n642), .D(n641), .Y(n208) );
  OAI222X4 U874 ( .A0(net45527), .A1(net38959), .B0(C8_temp[1]), .B1(n152), 
        .C0(n152), .C1(net38845), .Y(n528) );
  INVX20 U875 ( .A(C4_temp[9]), .Y(n430) );
  CLKAND2X6 U876 ( .A(net39034), .B(n472), .Y(n209) );
  INVX6 U877 ( .A(n592), .Y(n2100) );
  INVXL U878 ( .A(n568), .Y(n211) );
  OA21X4 U879 ( .A0(n1800), .A1(n228), .B0(n367), .Y(n356) );
  BUFX20 U880 ( .A(C3_temp[10]), .Y(n212) );
  AOI211X4 U881 ( .A0(n155), .A1(n226), .B0(n277), .C0(n640), .Y(n364) );
  CLKBUFX40 U882 ( .A(n225), .Y(n307) );
  BUFX2 U883 ( .A(net45068), .Y(net44780) );
  OAI211X4 U884 ( .A0(n60), .A1(net38487), .B0(n659), .C0(n660), .Y(n661) );
  AOI32X4 U885 ( .A0(net38693), .A1(n430), .A2(net38788), .B0(n406), .B1(
        net39852), .Y(net44770) );
  INVX3 U886 ( .A(net38788), .Y(net39075) );
  OR4X4 U887 ( .A(n355), .B(n275), .C(n349), .D(n372), .Y(n342) );
  AO2B2X4 U888 ( .B0(net44666), .B1(n559), .A0(net38841), .A1N(n204), .Y(
        net38769) );
  BUFX3 U889 ( .A(C6_11_), .Y(n216) );
  NOR2X8 U890 ( .A(n245), .B(n534), .Y(net38947) );
  CLKINVX24 U891 ( .A(C2_11_), .Y(net39107) );
  AO2B2X4 U892 ( .B0(X1_d[6]), .B1(net39273), .A0(X1_d[5]), .A1N(n1800), .Y(
        n347) );
  NAND2X5 U893 ( .A(n1800), .B(n228), .Y(n3601) );
  NAND2X8 U894 ( .A(n389), .B(net44003), .Y(n254) );
  CLKXOR2X2 U895 ( .A(n362), .B(X9[6]), .Y(n218) );
  XOR2X8 U896 ( .A(n361), .B(n218), .Y(N230) );
  CLKINVX40 U897 ( .A(n284), .Y(n285) );
  NAND2BX8 U898 ( .AN(n391), .B(n640), .Y(n3801) );
  CLKINVX40 U899 ( .A(n514), .Y(n510) );
  INVX20 U900 ( .A(n306), .Y(n640) );
  OR4X8 U901 ( .A(n348), .B(n347), .C(n346), .D(n177), .Y(n352) );
  OAI221X4 U902 ( .A0(C6_temp[5]), .A1(net44419), .B0(C5_temp[5]), .B1(
        net38682), .C0(net38881), .Y(net38879) );
  BUFX20 U903 ( .A(net38769), .Y(net42580) );
  NAND2X1 U904 ( .A(n610), .B(net43217), .Y(n256) );
  CLKINVX40 U905 ( .A(n299), .Y(n301) );
  INVX2 U906 ( .A(n235), .Y(n270) );
  INVX6 U907 ( .A(n512), .Y(n517) );
  INVXL U908 ( .A(net39077), .Y(net44341) );
  INVXL U909 ( .A(n492), .Y(n222) );
  CLKAND2X4 U910 ( .A(n513), .B(n260), .Y(n504) );
  OAI2B1X4 U911 ( .A1N(C2_temp[10]), .A0(C1_temp[10]), .B0(net39107), .Y(n463)
         );
  AO22X4 U912 ( .A0(n510), .A1(n471), .B0(net39852), .B1(n408), .Y(net38777)
         );
  INVX2 U913 ( .A(n212), .Y(n408) );
  INVX16 U914 ( .A(net39106), .Y(net44145) );
  OAI21BX4 U915 ( .A0(net44207), .A1(net44208), .B0N(C2_temp[8]), .Y(n464) );
  AO2B2X4 U916 ( .B0(X2[7]), .B1(n646), .A0(X1[7]), .A1N(n645), .Y(n621) );
  OAI2BB1X4 U917 ( .A0N(n261), .A1N(n433), .B0(n475), .Y(n412) );
  NOR2BX8 U918 ( .AN(C5_temp[9]), .B(C6_temp[9]), .Y(n540) );
  BUFX14 U919 ( .A(C3_temp[4]), .Y(n265) );
  OR3X2 U920 ( .A(net43839), .B(net39108), .C(n148), .Y(n466) );
  NAND2BX4 U921 ( .AN(net45068), .B(net48537), .Y(n337) );
  CLKINVX24 U922 ( .A(n259), .Y(n562) );
  AO2B2X4 U923 ( .B0(C1_temp[7]), .B1(net44207), .A0(C1_temp[8]), .A1N(n278), 
        .Y(n458) );
  XOR2X2 U924 ( .A(n307), .B(n388), .Y(n243) );
  INVX4 U925 ( .A(n552), .Y(n553) );
  NAND2X8 U926 ( .A(n546), .B(n562), .Y(n552) );
  XOR2X8 U927 ( .A(n214), .B(n228), .Y(n227) );
  INVX10 U928 ( .A(n610), .Y(n491) );
  OA21X4 U929 ( .A0(n497), .A1(n517), .B0(net46057), .Y(net39011) );
  AO2B2X4 U930 ( .B0(net44145), .B1(net39128), .A0(net43839), .A1N(C2_temp[9]), 
        .Y(n457) );
  NAND2X6 U931 ( .A(n510), .B(n481), .Y(n484) );
  NOR2BX8 U932 ( .AN(n574), .B(n229), .Y(net38794) );
  NAND3X8 U933 ( .A(net38825), .B(net38826), .C(n575), .Y(n229) );
  AO2B2X2 U934 ( .B0(X8[6]), .B1(n647), .A0(X7[6]), .A1N(n46), .Y(n600) );
  AO2B2X2 U935 ( .B0(X2[6]), .B1(n646), .A0(X1[6]), .A1N(n645), .Y(n601) );
  OAI32X4 U936 ( .A0(net39844), .A1(net44786), .A2(n158), .B0(net43592), .B1(
        net38682), .Y(net38765) );
  OAI2BB1X2 U937 ( .A0N(net43609), .A1N(net38664), .B0(n592), .Y(n581) );
  CLKNAND2X2 U938 ( .A(C6_temp[2]), .B(n175), .Y(n551) );
  OAI221X4 U939 ( .A0(C4_temp[6]), .A1(n223), .B0(C3_temp[6]), .B1(net48510), 
        .C0(n3900), .Y(net39013) );
  BUFX20 U940 ( .A(C3_temp[9]), .Y(n233) );
  AO2B2X2 U941 ( .B0(X6[7]), .B1(n234), .A0(X5[7]), .A1N(n648), .Y(n619) );
  AO2B2X2 U942 ( .B0(X6[6]), .B1(n234), .A0(X5[6]), .A1N(n648), .Y(n599) );
  NAND2BX4 U943 ( .AN(net38887), .B(net45515), .Y(net38884) );
  OA21X2 U944 ( .A0(net38801), .A1(net51606), .B0(net38821), .Y(n561) );
  AO2B2X2 U945 ( .B0(n510), .B1(n498), .A0(net39852), .A1N(C3_temp[6]), .Y(
        n578) );
  AOI21X8 U946 ( .A0(C6_temp[10]), .A1(net38916), .B0(C6_11_), .Y(n538) );
  INVXL U947 ( .A(n61), .Y(n235) );
  OR3X2 U948 ( .A(n475), .B(n474), .C(n203), .Y(n415) );
  NAND2X1 U949 ( .A(n492), .B(n584), .Y(n507) );
  OAI2BB1X4 U950 ( .A0N(C7_temp[10]), .A1N(net38885), .B0(net43626), .Y(n245)
         );
  AOI21BX4 U951 ( .A0(n167), .A1(n237), .B0N(n578), .Y(n520) );
  AND2X4 U952 ( .A(net38802), .B(n244), .Y(net38798) );
  AOI2B1X4 U953 ( .A1N(C6_temp[9]), .A0(net43592), .B0(net44639), .Y(n544) );
  AO2B2X4 U954 ( .B0(X2[5]), .B1(n646), .A0(X1[5]), .A1N(n645), .Y(n617) );
  OR3X4 U955 ( .A(n554), .B(n553), .C(net38897), .Y(n556) );
  OA21X4 U956 ( .A0(n435), .A1(n509), .B0(n498), .Y(n432) );
  OR3X8 U957 ( .A(n459), .B(n458), .C(n457), .Y(net39089) );
  NAND2X8 U958 ( .A(n510), .B(n475), .Y(n512) );
  INVX6 U959 ( .A(n418), .Y(n424) );
  XOR2X8 U960 ( .A(net38499), .B(net38492), .Y(Y1_10_) );
  NAND2BX8 U961 ( .AN(net38800), .B(net38802), .Y(n239) );
  AO2B2X4 U962 ( .B0(n510), .B1(n474), .A0(net39852), .A1N(n203), .Y(net38772)
         );
  CLKINVX6 U963 ( .A(C7_temp[1]), .Y(net38845) );
  NOR2X8 U964 ( .A(n249), .B(n505), .Y(net38990) );
  INVX12 U965 ( .A(n287), .Y(n288) );
  AO2B2X4 U966 ( .B0(n52), .B1(net38627), .A0(net38630), .A1N(net38619), .Y(
        net38741) );
  CLKNAND2X12 U967 ( .A(net38598), .B(net38739), .Y(net38710) );
  OR4X8 U968 ( .A(net39030), .B(n503), .C(n504), .D(n502), .Y(n505) );
  CLKINVX40 U969 ( .A(n296), .Y(n297) );
  OAI2B11X4 U970 ( .A1N(net38929), .A0(C6_temp[6]), .B0(n537), .C0(n536), .Y(
        net38890) );
  CLKINVX40 U971 ( .A(n303), .Y(n305) );
  AO2B2X4 U972 ( .B0(n124), .B1(n391), .A0(n386), .A1N(n385), .Y(n387) );
  INVX12 U973 ( .A(net38879), .Y(net38869) );
  OAI2B1X4 U974 ( .A1N(n271), .A0(n417), .B0(n436), .Y(n428) );
  OA22X4 U975 ( .A0(n261), .A1(n433), .B0(C4_temp[8]), .B1(n476), .Y(n440) );
  CLKINVX12 U976 ( .A(C3_temp[5]), .Y(n434) );
  INVX16 U977 ( .A(C1_temp[7]), .Y(net39081) );
  NOR2BX8 U978 ( .AN(net38639), .B(net44274), .Y(net40099) );
  OA22X2 U979 ( .A0(net40153), .A1(net38862), .B0(n204), .B1(n559), .Y(n536)
         );
  OA22X4 U980 ( .A0(net40153), .A1(net38862), .B0(n204), .B1(n559), .Y(n555)
         );
  AOI222X4 U981 ( .A0(n168), .A1(n475), .B0(C3_temp[6]), .B1(n498), .C0(
        C3_temp[5]), .C1(n509), .Y(n444) );
  INVX20 U982 ( .A(C4_temp[8]), .Y(n475) );
  OR3X4 U983 ( .A(n472), .B(net44207), .C(net44208), .Y(n467) );
  AO2B2X4 U984 ( .B0(n510), .B1(n500), .A0(net39852), .A1N(n265), .Y(net38781)
         );
  BUFX12 U985 ( .A(n577), .Y(n260) );
  OA21X4 U986 ( .A0(net38674), .A1(net38639), .B0(net45198), .Y(n596) );
  OR4X8 U987 ( .A(n652), .B(n651), .C(n650), .D(n649), .Y(net38490) );
  AO2B2X4 U988 ( .B0(X4[7]), .B1(net38524), .A0(X3[7]), .A1N(net42409), .Y(
        n622) );
  CLKNAND2X2 U989 ( .A(net45761), .B(net38841), .Y(net38813) );
  OA22X4 U990 ( .A0(net43253), .A1(net38952), .B0(n531), .B1(n530), .Y(n532)
         );
  OAI2BB1X4 U991 ( .A0N(n499), .A1N(n578), .B0(n3900), .Y(n502) );
  AND2X4 U992 ( .A(n432), .B(n431), .Y(n258) );
  OR4X4 U993 ( .A(n602), .B(n601), .C(n600), .D(n599), .Y(net38561) );
  OAI2BB1X4 U994 ( .A0N(net38484), .A1N(Y1_2_), .B0(net38478), .Y(n664) );
  NAND2X8 U995 ( .A(n332), .B(n345), .Y(n355) );
  OR4X8 U996 ( .A(n635), .B(n634), .C(n633), .D(n632), .Y(n663) );
  INVX10 U997 ( .A(C1_temp[4]), .Y(n501) );
  AO2B2X4 U998 ( .B0(net45241), .B1(n501), .A0(net39034), .A1N(n189), .Y(
        net38780) );
  MX2X8 U999 ( .A(net46058), .B(net43857), .S0(net43217), .Y(net38674) );
  AO2B2X4 U1000 ( .B0(X8[5]), .B1(n647), .A0(X7[5]), .A1N(n46), .Y(n616) );
  CLKINVX16 U1001 ( .A(n265), .Y(n429) );
  AO2B2X4 U1002 ( .B0(X8[2]), .B1(n647), .A0(X7[2]), .A1N(n46), .Y(n633) );
  AO2B2X4 U1003 ( .B0(X2[2]), .B1(n646), .A0(X1[2]), .A1N(n645), .Y(n634) );
  OR4X8 U1004 ( .A(n631), .B(n630), .C(n629), .D(n628), .Y(n653) );
  AO2B2X2 U1005 ( .B0(X8[3]), .B1(n647), .A0(X7[3]), .A1N(n46), .Y(n629) );
  BUFX20 U1006 ( .A(Xt_temp[3]), .Y(n266) );
  OA22X4 U1007 ( .A0(C4_temp[4]), .A1(n429), .B0(n417), .B1(n418), .Y(n426) );
  INVX8 U1008 ( .A(C4_temp[3]), .Y(n478) );
  AO2B2X4 U1009 ( .B0(X4[1]), .B1(net38524), .A0(X3[1]), .A1N(net42409), .Y(
        n644) );
  AO2B2X4 U1010 ( .B0(X2[1]), .B1(n646), .A0(X1[1]), .A1N(n645), .Y(n643) );
  NAND2X4 U1011 ( .A(C5_temp[2]), .B(n259), .Y(net38898) );
  INVX20 U1012 ( .A(n281), .Y(n283) );
  CLKINVX16 U1013 ( .A(Xt_temp[0]), .Y(n281) );
  XOR2X8 U1014 ( .A(n387), .B(n243), .Y(N200) );
  OAI2BB1X4 U1015 ( .A0N(C9_temp[7]), .A1N(net38677), .B0(n608), .Y(net41492)
         );
  AO21X4 U1016 ( .A0(n212), .A1(n471), .B0(n428), .Y(n247) );
  AO21X4 U1017 ( .A0(n489), .A1(n488), .B0(n487), .Y(n248) );
  CLKINVX4 U1018 ( .A(n485), .Y(n486) );
  INVX12 U1019 ( .A(net38740), .Y(net38604) );
  NOR3X8 U1020 ( .A(n257), .B(n258), .C(n236), .Y(n441) );
  AOI21X8 U1021 ( .A0(n215), .A1(n337), .B0(n336), .Y(n3501) );
  BUFX10 U1022 ( .A(C5_temp[3]), .Y(n259) );
  XOR3X4 U1023 ( .A(n176), .B(net44032), .C(n384), .Y(N210) );
  OAI2B11X4 U1024 ( .A1N(n383), .A0(n277), .B0(n381), .C0(n382), .Y(n384) );
  XNOR3X4 U1025 ( .A(net43711), .B(Y1_1_), .C(net40077), .Y(Y1_4_) );
  OAI2B11X4 U1026 ( .A1N(n525), .A0(net38979), .B0(n524), .C0(net38980), .Y(
        net38940) );
  NAND2X8 U1027 ( .A(C2_temp[4]), .B(n501), .Y(net39121) );
  OAI221X4 U1028 ( .A0(n456), .A1(n455), .B0(n189), .B1(n501), .C0(n454), .Y(
        n459) );
  BUFX14 U1029 ( .A(C4_temp[7]), .Y(n261) );
  INVX20 U1030 ( .A(n266), .Y(n287) );
  OAI2BB1X2 U1031 ( .A0N(C9_temp[7]), .A1N(net45276), .B0(net38673), .Y(n603)
         );
  INVX16 U1032 ( .A(C4_temp[5]), .Y(n509) );
  CLKBUFX40 U1033 ( .A(Xt_temp[6]), .Y(n293) );
  AOI32X4 U1034 ( .A0(n4101), .A1(n412), .A2(n411), .B0(n409), .B1(n217), .Y(
        n413) );
  OAI2B11X4 U1035 ( .A1N(net38667), .A0(n605), .B0(n604), .C0(net38650), .Y(
        net38662) );
  INVX6 U1036 ( .A(n261), .Y(n474) );
  NAND2X8 U1037 ( .A(C4_temp[4]), .B(n429), .Y(n435) );
  NAND2X1 U1038 ( .A(C5_temp[4]), .B(n550), .Y(n557) );
  INVX4 U1039 ( .A(C5_temp[0]), .Y(n567) );
  NAND2XL U1040 ( .A(C9_temp[7]), .B(C9_temp[8]), .Y(net38673) );
  XOR3X4 U1041 ( .A(net43711), .B(net38492), .C(n662), .Y(Y1_7_) );
  NAND2X2 U1042 ( .A(C5_temp[0]), .B(C5_temp[1]), .Y(net38897) );
  CLKINVX4 U1043 ( .A(C1_temp[0]), .Y(n490) );
  AOI33X4 U1044 ( .A0(n70), .A1(n122), .A2(n358), .B0(n357), .B1(n366), .B2(
        n356), .Y(n359) );
  INVX6 U1045 ( .A(net39121), .Y(net39120) );
  CLKINVX2 U1046 ( .A(n382), .Y(n365) );
  NAND2X1 U1047 ( .A(C1_temp[0]), .B(C1_temp[1]), .Y(net39123) );
  OA21X4 U1048 ( .A0(n273), .A1(n453), .B0(net39124), .Y(n455) );
  OAI2B11X4 U1049 ( .A1N(n203), .A0(n261), .B0(n426), .C0(n425), .Y(n427) );
  INVXL U1050 ( .A(C4_temp[1]), .Y(n481) );
  INVX16 U1051 ( .A(C4_temp[6]), .Y(n498) );
  INVXL U1052 ( .A(C1_temp[3]), .Y(n477) );
  INVX10 U1053 ( .A(C5_temp[4]), .Y(n560) );
  CLKINVX8 U1054 ( .A(n196), .Y(n479) );
  INVXL U1055 ( .A(C2_temp[1]), .Y(n483) );
  NAND2X6 U1056 ( .A(C2_temp[2]), .B(n479), .Y(n451) );
  INVXL U1057 ( .A(C8_temp[1]), .Y(n566) );
  INVXL U1058 ( .A(C6_temp[1]), .Y(n565) );
  INVX4 U1059 ( .A(net39076), .Y(net39086) );
  CLKINVX8 U1060 ( .A(C1_temp[1]), .Y(n482) );
  CLKAND2X2 U1061 ( .A(C2_temp[2]), .B(C2_temp[3]), .Y(n273) );
  AOI33X4 U1062 ( .A0(n442), .A1(n443), .A2(n444), .B0(n441), .B1(n440), .B2(
        n439), .Y(n445) );
  NAND2XL U1063 ( .A(net38650), .B(net38652), .Y(net38659) );
  AO2B2X4 U1064 ( .B0(X4[0]), .B1(net38524), .A0(X3[0]), .A1N(net42409), .Y(
        n652) );
  AO2B2X4 U1065 ( .B0(X2[0]), .B1(n646), .A0(X1[0]), .A1N(n645), .Y(n651) );
  AND2X8 U1066 ( .A(X1_d[7]), .B(n335), .Y(n275) );
  OAI211X2 U1067 ( .A0(n584), .A1(n492), .B0(n491), .C0(n611), .Y(n508) );
  INVX6 U1068 ( .A(n579), .Y(n499) );
  INVX2 U1069 ( .A(net38810), .Y(net38812) );
  INVX6 U1070 ( .A(n590), .Y(n496) );
  CLKINVX1 U1071 ( .A(n551), .Y(n554) );
  AND2X2 U1072 ( .A(C3_temp[2]), .B(n267), .Y(n271) );
  INVX2 U1073 ( .A(C6_temp[4]), .Y(n550) );
  CLKBUFX4 U1074 ( .A(n3301), .Y(n312) );
  CLKBUFX4 U1075 ( .A(n309), .Y(n320) );
  CLKBUFX4 U1076 ( .A(n331), .Y(n326) );
  CLKBUFX4 U1077 ( .A(n308), .Y(n323) );
  CLKBUFX4 U1078 ( .A(n308), .Y(n324) );
  CLKBUFX4 U1079 ( .A(n331), .Y(n325) );
  CLKBUFX4 U1080 ( .A(n3301), .Y(n321) );
  CLKBUFX4 U1081 ( .A(n328), .Y(n322) );
  BUFX2 U1082 ( .A(n308), .Y(n327) );
  INVX2 U1083 ( .A(C2_temp[0]), .Y(n450) );
  OAI222X2 U1084 ( .A0(C8_temp[1]), .A1(n527), .B0(net45391), .B1(net45354), 
        .C0(C8_temp[1]), .C1(net38845), .Y(n529) );
  OAI222X2 U1085 ( .A0(C6_temp[1]), .A1(n567), .B0(C6_temp[2]), .B1(n563), 
        .C0(C6_temp[1]), .C1(n564), .Y(n549) );
  OAI222X2 U1086 ( .A0(C4_temp[1]), .A1(n420), .B0(n173), .B1(n419), .C0(
        C4_temp[1]), .C1(n480), .Y(n423) );
  NAND2X1 U1087 ( .A(C3_temp[0]), .B(C3_temp[1]), .Y(n417) );
  INVX2 U1088 ( .A(C3_temp[0]), .Y(n420) );
  CLKBUFX4 U1089 ( .A(n331), .Y(n311) );
  BUFX2 U1090 ( .A(n310), .Y(n331) );
  BUFX2 U1091 ( .A(n310), .Y(n3301) );
  BUFX2 U1092 ( .A(n309), .Y(n329) );
  BUFX2 U1093 ( .A(n309), .Y(n328) );
  AND3XL U1094 ( .A(net38654), .B(net45129), .C(C9_temp[10]), .Y(net38643) );
  INVX2 U1095 ( .A(n345), .Y(n346) );
  NAND2BXL U1096 ( .AN(n612), .B(n15), .Y(net38588) );
  AOI21XL U1097 ( .A0(n15), .A1(C9_temp[4]), .B0(C9_temp[5]), .Y(net38587) );
  NAND2X2 U1098 ( .A(C9_temp[4]), .B(C9_temp[5]), .Y(n612) );
  INVX2 U1099 ( .A(C9_temp[9]), .Y(net38652) );
  INVX2 U1100 ( .A(n399), .Y(n401) );
  INVX2 U1101 ( .A(C9_temp[7]), .Y(n609) );
  AND2X2 U1102 ( .A(C9_temp[0]), .B(C9_temp[1]), .Y(net40906) );
  INVXL U1103 ( .A(n341), .Y(n339) );
  INVXL U1104 ( .A(n342), .Y(n3401) );
  BUFX2 U1105 ( .A(n666), .Y(n310) );
  BUFX2 U1106 ( .A(n666), .Y(n309) );
  BUFX2 U1107 ( .A(n666), .Y(n308) );
  INVX2 U1108 ( .A(n402), .Y(n394) );
  INVX2 U1109 ( .A(n404), .Y(n392) );
  INVX2 U1110 ( .A(n403), .Y(n393) );
  INVX2 U1111 ( .A(X[5]), .Y(n396) );
  INVX2 U1112 ( .A(X[6]), .Y(n395) );
  XNOR2X1 U1113 ( .A(X[7]), .B(n398), .Y(N40) );
  XNOR2X1 U1114 ( .A(X[5]), .B(n401), .Y(N38) );
  XNOR2X1 U1115 ( .A(X[6]), .B(n4001), .Y(N39) );
  NAND2X2 U1116 ( .A(X[5]), .B(n399), .Y(n4001) );
  NAND2X2 U1117 ( .A(X[0]), .B(X[3]), .Y(n405) );
  XOR3XL U1118 ( .A(X[3]), .B(X[6]), .C(n403), .Y(N36) );
  XOR3XL U1119 ( .A(X[7]), .B(X[4]), .C(n402), .Y(N37) );
  AND2X2 U1120 ( .A(n397), .B(X[7]), .Y(N41) );
  INVX2 U1121 ( .A(n398), .Y(n397) );
  XOR3XL U1122 ( .A(X[2]), .B(X[5]), .C(n404), .Y(N35) );
  XNOR3XL U1123 ( .A(X[1]), .B(X[4]), .C(n405), .Y(N34) );
  XOR2X1 U1124 ( .A(X[0]), .B(X[3]), .Y(N33) );
  OAI221X4 U1125 ( .A0(n573), .A1(n572), .B0(n121), .B1(n589), .C0(n571), .Y(
        n574) );
  OAI221X4 U1126 ( .A0(n496), .A1(n591), .B0(n495), .B1(n494), .C0(n493), .Y(
        n506) );
  OR4X6 U1127 ( .A(n618), .B(n617), .C(n616), .D(n615), .Y(n636) );
  INVX10 U1128 ( .A(n663), .Y(n656) );
  OAI2BB1X4 U1129 ( .A0N(net38487), .A1N(net56091), .B0(n661), .Y(n662) );
  OAI211X4 U1130 ( .A0(net38470), .A1(net38487), .B0(n659), .C0(n660), .Y(
        net38503) );
  AOI33X4 U1131 ( .A0(net38933), .A1(net38934), .A2(net38935), .B0(net40029), 
        .B1(n560), .B2(n535), .Y(net38889) );
  OAI2B11X4 U1132 ( .A1N(net39097), .A0(n467), .B0(n465), .C0(n466), .Y(n468)
         );
  AOI33X4 U1133 ( .A0(net40032), .A1(n501), .A2(n461), .B0(net39119), .B1(n460), .B2(net39118), .Y(n462) );
  OAI2BB1X4 U1134 ( .A0N(n214), .A1N(n640), .B0(net40056), .Y(n638) );
  OR4X8 U1135 ( .A(n627), .B(n626), .C(n625), .D(n624), .Y(net38512) );
  OAI221XL U1136 ( .A0(n640), .A1(n214), .B0(net46079), .B1(net44032), .C0(
        n639), .Y(n658) );
  AND3X8 U1137 ( .A(n48), .B(n342), .C(n341), .Y(n665) );
  AOI33X4 U1138 ( .A0(n522), .A1(n523), .A2(net43908), .B0(n521), .B1(net38984), .B2(net38985), .Y(n524) );
  OAI2B11XL U1139 ( .A1N(net44032), .A0(net45438), .B0(n184), .C0(net44780), 
        .Y(n639) );
  OAI221X4 U1140 ( .A0(net45198), .A1(net38592), .B0(net38709), .B1(net46150), 
        .C0(n595), .Y(n593) );
  CLKBUFX40 U1141 ( .A(Xt_temp[10]), .Y(n302) );
  NAND2X4 U1142 ( .A(X1_d[6]), .B(net39273), .Y(n343) );
  CLKINVX8 U1143 ( .A(n343), .Y(n333) );
  OAI222X4 U1144 ( .A0(n161), .A1(n391), .B0(net45099), .B1(n363), .C0(n307), 
        .C1(n388), .Y(n338) );
  NAND2X4 U1145 ( .A(n344), .B(n343), .Y(n354) );
  OAI2BB1X4 U1146 ( .A0N(n382), .A1N(n368), .B0(n122), .Y(n369) );
  AOI211X4 U1147 ( .A0(n375), .A1(n374), .B0(n373), .C0(n372), .Y(n376) );
  AOI211X4 U1148 ( .A0(n379), .A1(n378), .B0(n377), .C0(n376), .Y(N220) );
  ACHCINX2 U1149 ( .CIN(n405), .A(X[1]), .B(X[4]), .CO(n404) );
  ACHCINX2 U1150 ( .CIN(n392), .A(X[2]), .B(X[5]), .CO(n403) );
  ACHCINX2 U1151 ( .CIN(n393), .A(X[6]), .B(X[3]), .CO(n402) );
  ACHCINX2 U1152 ( .CIN(n394), .A(X[7]), .B(X[4]), .CO(n399) );
  OR3X2 U1153 ( .A(n396), .B(n395), .C(n401), .Y(n398) );
  OAI2BB1X4 U1154 ( .A0N(C4_temp[2]), .A1N(n419), .B0(n478), .Y(n416) );
  AO2B2X4 U1155 ( .B0(n416), .B1(n421), .A0(n173), .A1N(n478), .Y(n418) );
  OAI22X4 U1156 ( .A0(n271), .A1(n424), .B0(n422), .B1(n423), .Y(n425) );
  OAI2BB1X4 U1157 ( .A0N(n435), .A1N(n509), .B0(n434), .Y(n431) );
  OR3X2 U1158 ( .A(n500), .B(n509), .C(n265), .Y(n438) );
  AOI31X4 U1159 ( .A0(n431), .A1(n438), .A2(C3_temp[6]), .B0(n437), .Y(n439)
         );
  OAI2BB1X4 U1160 ( .A0N(n447), .A1N(n446), .B0(n445), .Y(net38696) );
  AO2B2X4 U1161 ( .B0(C1_temp[3]), .B1(n452), .A0(n450), .A1N(C2_temp[1]), .Y(
        n448) );
  AOI211X4 U1162 ( .A0(C1_temp[1]), .A1(n450), .B0(n449), .C0(n448), .Y(n456)
         );
  OR3X2 U1163 ( .A(n273), .B(n453), .C(net39123), .Y(n454) );
  AOI32X4 U1164 ( .A0(n464), .A1(net39103), .A2(net39102), .B0(net40032), .B1(
        n463), .Y(n465) );
  AOI32X4 U1165 ( .A0(n469), .A1(net39093), .A2(n470), .B0(n3), .B1(n468), .Y(
        net39092) );
  AOI211X4 U1166 ( .A0(n512), .A1(n511), .B0(n473), .C0(n209), .Y(net39072) );
  OA22X4 U1167 ( .A0(n492), .A1(n584), .B0(n611), .B1(n491), .Y(n493) );
  OA21X4 U1168 ( .A0(n497), .A1(n517), .B0(net46057), .Y(n503) );
  OAI32X4 U1169 ( .A0(n119), .A1(net39007), .A2(net38781), .B0(n513), .B1(n260), .Y(net39010) );
  AOI211X4 U1170 ( .A0(n520), .A1(n519), .B0(net38996), .C0(n518), .Y(net38992) );
  OR3X2 U1171 ( .A(net44790), .B(net43324), .C(net38988), .Y(net38939) );
  OAI2BB1X4 U1172 ( .A0N(net45391), .A1N(net45354), .B0(net38850), .Y(n526) );
  AO2B2X4 U1173 ( .B0(n526), .B1(net38959), .A0(net45391), .A1N(net38850), .Y(
        n530) );
  OAI32X4 U1174 ( .A0(n539), .A1(n541), .A2(n540), .B0(n538), .B1(net44639), 
        .Y(n542) );
  AOI211X4 U1175 ( .A0(n544), .A1(n543), .B0(n542), .C0(net38920), .Y(net38891) );
  OAI32X4 U1176 ( .A0(C6_11_), .A1(net38916), .A2(C6_temp[10]), .B0(net40029), 
        .B1(n216), .Y(net38887) );
  OAI2BB1X4 U1177 ( .A0N(C6_temp[2]), .A1N(n563), .B0(n545), .Y(n546) );
  OAI2BB1X4 U1178 ( .A0N(n552), .A1N(n551), .B0(net38898), .Y(n547) );
  OA21X4 U1179 ( .A0(n549), .A1(n548), .B0(n547), .Y(n558) );
  NAND4BX4 U1180 ( .AN(n558), .B(n555), .C(n556), .D(n557), .Y(net38894) );
  AO2B2X4 U1181 ( .B0(net44666), .B1(n562), .A0(net38841), .A1N(n175), .Y(
        net38757) );
  AO2B2X4 U1182 ( .B0(net44666), .B1(n563), .A0(net38841), .A1N(C6_temp[2]), 
        .Y(net38755) );
  OA21X4 U1183 ( .A0(net38821), .A1(net38782), .B0(net38822), .Y(n576) );
  OA22X4 U1184 ( .A0(net38627), .A1(n52), .B0(net43847), .B1(net38602), .Y(
        net38742) );
  AOI31X4 U1185 ( .A0(net38732), .A1(net38731), .A2(net38730), .B0(n594), .Y(
        net38699) );
  AO2B2X4 U1186 ( .B0(X4[5]), .B1(net38524), .A0(X3[5]), .A1N(net42409), .Y(
        n618) );
  AO2B2X4 U1187 ( .B0(X6[5]), .B1(n234), .A0(X5[5]), .A1N(n648), .Y(n615) );
  OR4X2 U1188 ( .A(n622), .B(n621), .C(n620), .D(n619), .Y(n623) );
  AO2B2X4 U1189 ( .B0(X4[4]), .B1(net38524), .A0(X3[4]), .A1N(net42409), .Y(
        n627) );
  AO2B2X4 U1190 ( .B0(X2[4]), .B1(n646), .A0(X1[4]), .A1N(n645), .Y(n626) );
  AO2B2X4 U1191 ( .B0(X4[3]), .B1(net38524), .A0(X3[3]), .A1N(net42409), .Y(
        n631) );
  AO2B2X4 U1192 ( .B0(X2[3]), .B1(n646), .A0(X1[3]), .A1N(n645), .Y(n630) );
  AO2B2X4 U1193 ( .B0(X6[3]), .B1(n234), .A0(X5[3]), .A1N(n648), .Y(n628) );
  AO2B2X4 U1194 ( .B0(X4[2]), .B1(net38524), .A0(X3[2]), .A1N(net42409), .Y(
        n635) );
  AO2B2X4 U1195 ( .B0(X6[2]), .B1(n234), .A0(X5[2]), .A1N(n648), .Y(n632) );
  AO2B2X4 U1196 ( .B0(X8[1]), .B1(n647), .A0(X7[1]), .A1N(n46), .Y(n642) );
  AO2B2X4 U1197 ( .B0(X6[0]), .B1(n234), .A0(X5[0]), .A1N(n648), .Y(n649) );
  AO2B2X4 U1198 ( .B0(net40056), .B1(n658), .A0(n657), .A1N(net40056), .Y(n659) );
endmodule


module CHIP ( Y, X, reset, clk );
  output [9:0] Y;
  input [7:0] X;
  input reset, clk;
  wire   i_clk, i_reset, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  wire   [7:0] i_X;
  wire   [9:0] i_Y;

  PDIDGZ_33 ipad_clk ( .PAD(clk), .C(i_clk) );
  PDIDGZ_33 ipad_reset ( .PAD(reset), .C(i_reset) );
  PDIDGZ_33 ipad_X7 ( .PAD(X[7]), .C(i_X[7]) );
  PDIDGZ_33 ipad_X6 ( .PAD(X[6]), .C(i_X[6]) );
  PDIDGZ_33 ipad_X5 ( .PAD(X[5]), .C(i_X[5]) );
  PDIDGZ_33 ipad_X4 ( .PAD(X[4]), .C(i_X[4]) );
  PDIDGZ_33 ipad_X3 ( .PAD(X[3]), .C(i_X[3]) );
  PDIDGZ_33 ipad_X2 ( .PAD(X[2]), .C(i_X[2]) );
  PDIDGZ_33 ipad_X1 ( .PAD(X[1]), .C(i_X[1]) );
  PDIDGZ_33 ipad_X0 ( .PAD(X[0]), .C(i_X[0]) );
  PDO16CDG_33 opad_Y9 ( .I(i_Y[9]), .PAD(Y[9]) );
  PDO16CDG_33 opad_Y8 ( .I(n10), .PAD(Y[8]) );
  PDO16CDG_33 opad_Y7 ( .I(i_Y[7]), .PAD(Y[7]) );
  PDO16CDG_33 opad_Y6 ( .I(n11), .PAD(Y[6]) );
  PDO16CDG_33 opad_Y5 ( .I(n8), .PAD(Y[5]) );
  PDO16CDG_33 opad_Y4 ( .I(n9), .PAD(Y[4]) );
  PDO16CDG_33 opad_Y3 ( .I(n5), .PAD(Y[3]) );
  PDO16CDG_33 opad_Y2 ( .I(n2), .PAD(Y[2]) );
  PDO16CDG_33 opad_Y1 ( .I(n7), .PAD(Y[1]) );
  PDO16CDG_33 opad_Y0 ( .I(n3), .PAD(Y[0]) );
  CS top ( .Y(i_Y), .X(i_X), .reset(i_reset), .clk(i_clk) );
  INVX14 U1 ( .A(i_Y[2]), .Y(n1) );
  CLKINVX32 U2 ( .A(n1), .Y(n2) );
  BUFX16 U3 ( .A(i_Y[0]), .Y(n3) );
  INVX16 U4 ( .A(i_Y[3]), .Y(n4) );
  CLKINVX32 U5 ( .A(n4), .Y(n5) );
  BUFX20 U6 ( .A(i_Y[4]), .Y(n9) );
  BUFX20 U7 ( .A(i_Y[6]), .Y(n11) );
  BUFX20 U8 ( .A(i_Y[8]), .Y(n10) );
  INVX16 U9 ( .A(i_Y[1]), .Y(n6) );
  CLKINVX32 U10 ( .A(n6), .Y(n7) );
  BUFX20 U11 ( .A(i_Y[5]), .Y(n8) );
endmodule

