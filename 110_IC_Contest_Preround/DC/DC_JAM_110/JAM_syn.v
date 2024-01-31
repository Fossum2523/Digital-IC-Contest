/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : S-2021.06-SP1
// Date      : Thu Feb  1 01:58:13 2024
/////////////////////////////////////////////////////////////


module JAM_DW01_inc_0_DW01_inc_3 ( A, SUM );
  input [15:0] A;
  output [15:0] SUM;

  wire   [15:2] carry;

  ADDHXL U1_1_14 ( .A(A[14]), .B(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  ADDHXL U1_1_13 ( .A(A[13]), .B(carry[13]), .CO(carry[14]), .S(SUM[13]) );
  ADDHXL U1_1_12 ( .A(A[12]), .B(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  ADDHXL U1_1_11 ( .A(A[11]), .B(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  ADDHXL U1_1_10 ( .A(A[10]), .B(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  ADDHXL U1_1_9 ( .A(A[9]), .B(carry[9]), .CO(carry[10]), .S(SUM[9]) );
  ADDHXL U1_1_8 ( .A(A[8]), .B(carry[8]), .CO(carry[9]), .S(SUM[8]) );
  ADDHXL U1_1_7 ( .A(A[7]), .B(carry[7]), .CO(carry[8]), .S(SUM[7]) );
  ADDHXL U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[15]), .B(A[15]), .Y(SUM[15]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module JAM_DW01_add_0_DW01_add_2 ( A, B, CI, SUM, CO );
  input [9:0] A;
  input [9:0] B;
  output [9:0] SUM;
  input CI;
  output CO;
  wire   n1, n2, n3, n4;
  wire   [9:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2 U1 ( .A(A[0]), .B(B[0]), .Y(carry[1]) );
  CLKINVX1 U2 ( .A(carry[7]), .Y(n3) );
  XNOR2X1 U3 ( .A(A[7]), .B(n3), .Y(SUM[7]) );
  XOR2X1 U4 ( .A(A[9]), .B(carry[9]), .Y(SUM[9]) );
  NOR2X1 U5 ( .A(n1), .B(n2), .Y(carry[9]) );
  XNOR2X1 U6 ( .A(A[8]), .B(n1), .Y(SUM[8]) );
  XNOR2X1 U7 ( .A(B[0]), .B(n4), .Y(SUM[0]) );
  CLKINVX1 U8 ( .A(A[0]), .Y(n4) );
  CLKINVX1 U9 ( .A(A[8]), .Y(n2) );
  NAND2BX1 U10 ( .AN(n3), .B(A[7]), .Y(n1) );
endmodule


module JAM ( CLK, RST, W, J, Cost, MatchCount, MinCost, Valid );
  output [2:0] W;
  output [2:0] J;
  input [6:0] Cost;
  output [3:0] MatchCount;
  output [9:0] MinCost;
  input CLK, RST;
  output Valid;
  wire   N117, N118, N119, N120, N121, N122, N123, N124, N125, N126, N127,
         N128, N130, \CHMT_cnt[0] , \arrange_1[7][2] , \arrange_1[7][1] ,
         \arrange_1[7][0] , \arrange_1[6][2] , \arrange_1[6][1] ,
         \arrange_1[6][0] , \arrange_1[5][2] , \arrange_1[5][1] ,
         \arrange_1[5][0] , \arrange_1[4][2] , \arrange_1[4][1] ,
         \arrange_1[4][0] , \arrange_1[3][2] , \arrange_1[3][1] ,
         \arrange_1[3][0] , \arrange_1[2][2] , \arrange_1[2][1] ,
         \arrange_1[2][0] , \arrange_1[1][2] , \arrange_1[1][1] ,
         \arrange_1[1][0] , \arrange_1[0][2] , \arrange_1[0][1] ,
         \arrange_1[0][0] , N177, N178, N179, N180, N181, N182, N183, N184,
         N185, N186, \arrange_2[7][2] , \arrange_2[6][2] , \arrange_2[6][0] ,
         \arrange_2[5][2] , \arrange_2[5][0] , \arrange_2[4][2] ,
         \arrange_2[4][0] , \arrange_2[3][2] , \arrange_2[3][0] ,
         \arrange_2[2][2] , \arrange_2[1][2] , \arrange_2[1][0] , \min[3] ,
         N343, N344, N345, N346, N347, N348, N349, N350, N351, N352, N353,
         N354, N355, N356, N357, N358, n106, n111, n112, n124, n130, n163,
         n164, n179, n190, n191, n193, n196, n200, n203, n206, n207, n209,
         n211, n212, n213, n245, n279, n290, n307, n323, n335, n456, n457,
         n458, n459, n460, n461, n462, n463, n464, n465, n466, n467, n468,
         n469, n470, n471, n472, n473, n474, n475, n476, n477, n478, n479,
         n480, n481, n482, n483, n484, n485, n486, n487, n488, n489, n490,
         n491, n492, n493, n494, n495, n496, n497, n498, n499, n500, n501,
         n502, n503, n504, n505, n506, n507, n508, n509, n510, n511, n512,
         n513, n514, n515, n516, n517, n518, n519, n520, n521, n522, n523,
         n524, n525, n526, n527, n528, n529, n530, n531, n532, n533, n534,
         n535, n536, n537, n538, n539, n540, n541, n542, n543, n544, n545,
         n546, n547, n548, n549, n550, n551, n552, n553, n554, n555, n556,
         n557, n558, n559, n560, n561, n562, n563, n564, n565, n566, n567,
         n568, n569, n570, n571, n572, n573, n574, n575, n576, n577, n578,
         n579, n580, n581, n582, n583, n584, n585, n586, n587, n588, n589,
         n590, n591, n592, n593, n594, n595, n596, n597, n598, n599, n600,
         n601, n602, n603, n604, n605, n606, n607, n608, n609, n610, n611,
         n612, n613, n614, n615, n616, n617, n618, n619, n620, n621, n622,
         n623, n624, n625, n626, n627, n628, n629, n630, n631, n632, n633,
         n634, n635, n636, n637, n638, n639, n640, n641, n642, n643, n644,
         n645, n646, n647, n648, n649, n650, n651, n652, n653, n654, n655,
         n656, n657, n658, n659, n660, n661, n662, n663, n664, n665, n666,
         n667, n668, n669, n670, n671, n672, n673, n674, n675, n676, n677,
         n678, n679, n680, n681, n682, n683, n684, n685, n686, n687, n688,
         n689, n690, n691, n692, n693, n694, n695, n696, n697, n698, n699,
         n700, n701, n702, n703, n704, n705, n706, n707, n708, n709, n710,
         n711, n712, n713, n714, n715, n716, n717, n718, n719, n720, n721,
         n722, n723, n724, n725, n726, n727, n728, n729, n730, n731, n732,
         n733, n734, n735, n736, n737, n738, n739, n740, n741, n742, n743,
         n744, n745, n746, n747, n748, n749, n750, n751, n752, n753, n754,
         n755, n756, n757, n758, n759, n760, n761, n762, n763, n764, n765,
         n766, n767, n768, n769, n770, n771, n772, n773, n774, n775, n776,
         n777, n778, n779, n780, n781, n782, n783, n784, n785, n786, n787,
         n788, n789, n790, n791, n792, n793, n794, n795, n796, n797, n798,
         n799, n800, n801, n802, n803, n804, n805, n806, n807, n808, n809,
         n810, n811, n812, n813, n814, n815, n816, n817, n818, n819, n820,
         n821, n822, n823, n824, n825, n826, n827, n828, n829, n830, n831,
         n832, n833, n834, n835, n836, n837, n838, n839, n840, n841, n842,
         n843, n844, n845, n846, n847, n848, n849, n850, n851, n852, n853,
         n854, n855, n856, n857, n858, n859, n860, n861, n862, n863, n864,
         n865, n866, n867, n868, n869, n870, n871, n872, n873, n874, n875,
         n876, n877, n878, n879, n880, n881, n882, n883, n884, n885, n886,
         n887, n888, n889, n890, n891, n892, n893, n894, n895, n896, n897,
         n898, n899, n900, n901, n902, n903, n904, n905, n906, n907, n908,
         n909, n910, n911, n912, n913, n914, n915, n916, n917, n918, n919,
         n920, n921, n922, n923, n924, n925, n926, n927, n928, n929, n930,
         n931, n932, n933, n934, n935, n936, n937, n938, n939, n940, n941,
         n942, n943, n944, n945, n946, n947, n948, n949, n950, n951, n952,
         n953, n954, n955, n956, n957, n958, n959, n960, n961, n962, n963,
         n964, n965, n966, n967, n968, n969, n970, n971, n972, n973, n974,
         n975, n976, n977, n978, n979, n980, n981, n982, n983, n984, n985,
         n986, n987, n988, n989, n990, n991, n992, n993, n994, n995, n996,
         n997, n998, n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006,
         n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016,
         n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026,
         n1027, n1028, n1029, n1030, n1031;
  wire   [1:0] CalCost_next_state;
  wire   [15:0] cnt_40320;
  wire   [9:0] total_cost;
  wire   [3:0] LX_Sort_next_state;
  assign W[0] = N117;
  assign W[1] = N118;
  assign W[2] = N119;

  JAM_DW01_inc_0_DW01_inc_3 add_217 ( .A(cnt_40320), .SUM({N358, N357, N356, 
        N355, N354, N353, N352, N351, N350, N349, N348, N347, N346, N345, N344, 
        N343}) );
  JAM_DW01_add_0_DW01_add_2 r625 ( .A(total_cost), .B({1'b0, 1'b0, 1'b0, Cost}), .CI(1'b0), .SUM({N186, N185, N184, N183, N182, N181, N180, N179, N178, N177}) );
  DFFRX1 \LX_Sort_curr_state_reg[0]  ( .D(LX_Sort_next_state[0]), .CK(CLK), 
        .RN(n1022), .Q(n560), .QN(n164) );
  DFFRX1 \LX_Sort_curr_state_reg[2]  ( .D(LX_Sort_next_state[2]), .CK(CLK), 
        .RN(n1022), .Q(n578), .QN(n1020) );
  DFFRX1 \LX_Sort_curr_state_reg[1]  ( .D(LX_Sort_next_state[1]), .CK(CLK), 
        .RN(n1022), .Q(n558), .QN(n163) );
  DFFRX1 \CalCost_curr_state_reg[3]  ( .D(n1026), .CK(CLK), .RN(n1022), .Q(
        n562), .QN(n106) );
  DFFRX1 \CalCost_curr_state_reg[1]  ( .D(CalCost_next_state[1]), .CK(CLK), 
        .RN(n1022), .Q(n571), .QN(n111) );
  DFFRX1 \CalCost_curr_state_reg[0]  ( .D(CalCost_next_state[0]), .CK(CLK), 
        .RN(n1022), .QN(n112) );
  DFFX1 \arrange_2_reg[2][0]  ( .D(n528), .CK(CLK), .Q(n573), .QN(n207) );
  DFFX1 \CHMT_cnt_reg[1]  ( .D(n548), .CK(CLK), .Q(n569), .QN(N130) );
  EDFFX1 \min_reg[0]  ( .D(n1024), .E(n245), .CK(CLK), .QN(n179) );
  EDFFX1 \arrange_2_reg[5][1]  ( .D(n1028), .E(n323), .CK(CLK), .Q(n570), .QN(
        n196) );
  DFFX1 \arrange_2_reg[3][1]  ( .D(n524), .CK(CLK), .Q(n572), .QN(n203) );
  DFFX1 \arrange_2_reg[2][1]  ( .D(n527), .CK(CLK), .Q(n564), .QN(n206) );
  EDFFX1 \arrange_2_reg[7][1]  ( .D(n1030), .E(n290), .CK(CLK), .Q(n563), .QN(
        n190) );
  EDFFX1 \arrange_2_reg[7][0]  ( .D(n1025), .E(n290), .CK(CLK), .Q(n574), .QN(
        n191) );
  EDFFX1 \arrange_2_reg[4][1]  ( .D(n1027), .E(n335), .CK(CLK), .Q(n561), .QN(
        n200) );
  EDFFX1 \arrange_2_reg[6][1]  ( .D(n1029), .E(n307), .CK(CLK), .Q(n581), .QN(
        n193) );
  DFFX1 \arrange_2_reg[1][1]  ( .D(n530), .CK(CLK), .Q(n566), .QN(n209) );
  DFFX1 \arrange_2_reg[0][2]  ( .D(n482), .CK(CLK), .Q(n577), .QN(n211) );
  DFFX1 \arrange_2_reg[0][1]  ( .D(n481), .CK(CLK), .Q(n576), .QN(n212) );
  DFFX1 \arrange_2_reg[0][0]  ( .D(n480), .CK(CLK), .Q(n575), .QN(n213) );
  DFFX1 \i_reg[1]  ( .D(n513), .CK(CLK), .Q(N118), .QN(n130) );
  DFFX1 \MatchCount_reg[3]  ( .D(n498), .CK(CLK), .Q(MatchCount[3]), .QN(n124)
         );
  DFFX1 \min_reg[2]  ( .D(n515), .CK(CLK), .QN(n584) );
  DFFX1 \min_reg[1]  ( .D(n516), .CK(CLK), .QN(n585) );
  DFFQX1 \arrange_1_reg[1][0]  ( .D(n476), .CK(CLK), .Q(\arrange_1[1][0] ) );
  DFFQX1 \arrange_1_reg[5][0]  ( .D(n464), .CK(CLK), .Q(\arrange_1[5][0] ) );
  DFFQX1 \arrange_1_reg[5][2]  ( .D(n462), .CK(CLK), .Q(\arrange_1[5][2] ) );
  DFFQX1 \arrange_1_reg[5][1]  ( .D(n463), .CK(CLK), .Q(\arrange_1[5][1] ) );
  DFFQX1 \arrange_1_reg[4][2]  ( .D(n465), .CK(CLK), .Q(\arrange_1[4][2] ) );
  DFFQX1 \arrange_1_reg[4][1]  ( .D(n466), .CK(CLK), .Q(\arrange_1[4][1] ) );
  DFFQX1 \arrange_1_reg[4][0]  ( .D(n467), .CK(CLK), .Q(\arrange_1[4][0] ) );
  DFFQX1 \arrange_1_reg[1][2]  ( .D(n474), .CK(CLK), .Q(\arrange_1[1][2] ) );
  DFFQX1 \arrange_1_reg[1][1]  ( .D(n475), .CK(CLK), .Q(\arrange_1[1][1] ) );
  DFFQX1 \arrange_1_reg[0][2]  ( .D(n477), .CK(CLK), .Q(\arrange_1[0][2] ) );
  DFFQX1 \arrange_1_reg[0][1]  ( .D(n478), .CK(CLK), .Q(\arrange_1[0][1] ) );
  DFFQX1 \arrange_1_reg[0][0]  ( .D(n479), .CK(CLK), .Q(\arrange_1[0][0] ) );
  DFFQX1 \MatchCount_reg[0]  ( .D(n497), .CK(CLK), .Q(MatchCount[0]) );
  DFFQX1 \arrange_1_reg[7][2]  ( .D(n456), .CK(CLK), .Q(\arrange_1[7][2] ) );
  DFFQX1 \arrange_1_reg[3][0]  ( .D(n470), .CK(CLK), .Q(\arrange_1[3][0] ) );
  DFFQX1 \arrange_1_reg[3][2]  ( .D(n468), .CK(CLK), .Q(\arrange_1[3][2] ) );
  DFFQX1 \arrange_1_reg[3][1]  ( .D(n469), .CK(CLK), .Q(\arrange_1[3][1] ) );
  DFFQX1 \arrange_1_reg[7][1]  ( .D(n457), .CK(CLK), .Q(\arrange_1[7][1] ) );
  DFFQX1 \arrange_1_reg[7][0]  ( .D(n458), .CK(CLK), .Q(\arrange_1[7][0] ) );
  DFFQX1 \min_reg[3]  ( .D(n514), .CK(CLK), .Q(\min[3] ) );
  DFFQX1 \arrange_1_reg[2][0]  ( .D(n473), .CK(CLK), .Q(\arrange_1[2][0] ) );
  DFFQX1 \arrange_1_reg[2][2]  ( .D(n471), .CK(CLK), .Q(\arrange_1[2][2] ) );
  DFFQX1 \arrange_1_reg[2][1]  ( .D(n472), .CK(CLK), .Q(\arrange_1[2][1] ) );
  DFFQX1 \arrange_1_reg[6][2]  ( .D(n459), .CK(CLK), .Q(\arrange_1[6][2] ) );
  DFFQX1 \arrange_1_reg[6][1]  ( .D(n460), .CK(CLK), .Q(\arrange_1[6][1] ) );
  DFFQX1 \arrange_1_reg[6][0]  ( .D(n461), .CK(CLK), .Q(\arrange_1[6][0] ) );
  DFFQX1 \MinCost_reg[9]  ( .D(n499), .CK(CLK), .Q(MinCost[9]) );
  DFFQX1 \MinCost_reg[8]  ( .D(n486), .CK(CLK), .Q(MinCost[8]) );
  DFFQX1 \MinCost_reg[5]  ( .D(n489), .CK(CLK), .Q(MinCost[5]) );
  DFFQX1 \MinCost_reg[4]  ( .D(n490), .CK(CLK), .Q(MinCost[4]) );
  DFFQX1 \MinCost_reg[6]  ( .D(n488), .CK(CLK), .Q(MinCost[6]) );
  DFFQX1 \MinCost_reg[1]  ( .D(n493), .CK(CLK), .Q(MinCost[1]) );
  DFFQX1 \arrange_2_reg[6][2]  ( .D(n517), .CK(CLK), .Q(\arrange_2[6][2] ) );
  DFFQX1 \cnt_40320_reg[15]  ( .D(n546), .CK(CLK), .Q(cnt_40320[15]) );
  DFFQX1 \MinCost_reg[3]  ( .D(n491), .CK(CLK), .Q(MinCost[3]) );
  DFFQX1 \MinCost_reg[2]  ( .D(n492), .CK(CLK), .Q(MinCost[2]) );
  DFFQX1 \MinCost_reg[0]  ( .D(n494), .CK(CLK), .Q(MinCost[0]) );
  DFFQX1 \arrange_2_reg[6][0]  ( .D(n518), .CK(CLK), .Q(\arrange_2[6][0] ) );
  DFFQX1 \min_pos_reg[0]  ( .D(n485), .CK(CLK), .Q(N126) );
  DFFQX1 \MatchCount_reg[2]  ( .D(n495), .CK(CLK), .Q(MatchCount[2]) );
  DFFQX1 \arrange_2_reg[4][0]  ( .D(n522), .CK(CLK), .Q(\arrange_2[4][0] ) );
  DFFQX1 \min_pos_reg[1]  ( .D(n484), .CK(CLK), .Q(N127) );
  DFFQX1 \arrange_2_reg[5][0]  ( .D(n520), .CK(CLK), .Q(\arrange_2[5][0] ) );
  DFFQX1 \arrange_2_reg[1][2]  ( .D(n529), .CK(CLK), .Q(\arrange_2[1][2] ) );
  DFFQX1 \arrange_2_reg[3][2]  ( .D(n523), .CK(CLK), .Q(\arrange_2[3][2] ) );
  DFFQX1 \arrange_2_reg[3][0]  ( .D(n525), .CK(CLK), .Q(\arrange_2[3][0] ) );
  DFFX1 \i_reg[3]  ( .D(n510), .CK(CLK), .Q(n1019), .QN(n579) );
  DFFQX1 \arrange_2_reg[5][2]  ( .D(n519), .CK(CLK), .Q(\arrange_2[5][2] ) );
  DFFQX1 \MinCost_reg[7]  ( .D(n487), .CK(CLK), .Q(MinCost[7]) );
  DFFQX1 \MatchCount_reg[1]  ( .D(n496), .CK(CLK), .Q(MatchCount[1]) );
  DFFQX1 \arrange_2_reg[1][0]  ( .D(n555), .CK(CLK), .Q(\arrange_2[1][0] ) );
  DFFQX1 \arrange_2_reg[2][2]  ( .D(n526), .CK(CLK), .Q(\arrange_2[2][2] ) );
  DFFQX1 \i_reg[0]  ( .D(n512), .CK(CLK), .Q(N117) );
  DFFQX1 \LCG_cnt_reg[0]  ( .D(n552), .CK(CLK), .Q(N120) );
  DFFQX1 \arrange_2_reg[7][2]  ( .D(n554), .CK(CLK), .Q(\arrange_2[7][2] ) );
  DFFQX1 \LCG_cnt_reg[1]  ( .D(n551), .CK(CLK), .Q(N121) );
  DFFRX1 \LX_Sort_curr_state_reg[3]  ( .D(LX_Sort_next_state[3]), .CK(CLK), 
        .RN(n1022), .Q(n1021), .QN(n559) );
  DFFQX1 \p_reg[0]  ( .D(n550), .CK(CLK), .Q(N123) );
  DFFQX1 \min_pos_reg[2]  ( .D(n483), .CK(CLK), .Q(N128) );
  DFFQX1 \arrange_2_reg[4][2]  ( .D(n521), .CK(CLK), .Q(\arrange_2[4][2] ) );
  DFFQX1 \CHMT_cnt_reg[0]  ( .D(n547), .CK(CLK), .Q(\CHMT_cnt[0] ) );
  DFFQX1 \p_reg[2]  ( .D(n1023), .CK(CLK), .Q(N125) );
  DFFQX1 \cnt_40320_reg[0]  ( .D(n545), .CK(CLK), .Q(cnt_40320[0]) );
  DFFQX1 \LCG_cnt_reg[2]  ( .D(n553), .CK(CLK), .Q(N122) );
  DFFQX1 \p_reg[1]  ( .D(n549), .CK(CLK), .Q(N124) );
  DFFQX1 \i_reg[2]  ( .D(n511), .CK(CLK), .Q(N119) );
  DFFQX1 \cnt_40320_reg[1]  ( .D(n544), .CK(CLK), .Q(cnt_40320[1]) );
  DFFQX1 \cnt_40320_reg[5]  ( .D(n540), .CK(CLK), .Q(cnt_40320[5]) );
  DFFQX1 \cnt_40320_reg[10]  ( .D(n535), .CK(CLK), .Q(cnt_40320[10]) );
  DFFQX1 \cnt_40320_reg[4]  ( .D(n541), .CK(CLK), .Q(cnt_40320[4]) );
  DFFQX1 \cnt_40320_reg[2]  ( .D(n543), .CK(CLK), .Q(cnt_40320[2]) );
  DFFQX1 \cnt_40320_reg[6]  ( .D(n539), .CK(CLK), .Q(cnt_40320[6]) );
  DFFQX1 \cnt_40320_reg[11]  ( .D(n534), .CK(CLK), .Q(cnt_40320[11]) );
  DFFQX1 \cnt_40320_reg[3]  ( .D(n542), .CK(CLK), .Q(cnt_40320[3]) );
  DFFQX1 \cnt_40320_reg[8]  ( .D(n537), .CK(CLK), .Q(cnt_40320[8]) );
  DFFQX1 \cnt_40320_reg[12]  ( .D(n533), .CK(CLK), .Q(cnt_40320[12]) );
  DFFX1 \total_cost_reg[9]  ( .D(n500), .CK(CLK), .Q(total_cost[9]) );
  DFFQX1 \cnt_40320_reg[13]  ( .D(n532), .CK(CLK), .Q(cnt_40320[13]) );
  DFFQX1 \cnt_40320_reg[7]  ( .D(n538), .CK(CLK), .Q(cnt_40320[7]) );
  DFFQX1 \cnt_40320_reg[14]  ( .D(n531), .CK(CLK), .Q(cnt_40320[14]) );
  DFFQX1 \cnt_40320_reg[9]  ( .D(n536), .CK(CLK), .Q(cnt_40320[9]) );
  DFFX1 \total_cost_reg[1]  ( .D(n508), .CK(CLK), .Q(total_cost[1]), .QN(n583)
         );
  DFFX1 \total_cost_reg[2]  ( .D(n507), .CK(CLK), .Q(total_cost[2]), .QN(n568)
         );
  DFFX1 \total_cost_reg[3]  ( .D(n506), .CK(CLK), .Q(total_cost[3]), .QN(n582)
         );
  DFFX1 \total_cost_reg[4]  ( .D(n505), .CK(CLK), .Q(total_cost[4]), .QN(n556)
         );
  DFFX1 \total_cost_reg[6]  ( .D(n503), .CK(CLK), .Q(total_cost[6]), .QN(n580)
         );
  DFFX1 \total_cost_reg[5]  ( .D(n504), .CK(CLK), .Q(total_cost[5]) );
  DFFX1 \total_cost_reg[0]  ( .D(n509), .CK(CLK), .Q(total_cost[0]), .QN(n567)
         );
  DFFX1 \total_cost_reg[7]  ( .D(n502), .CK(CLK), .Q(total_cost[7]), .QN(n565)
         );
  DFFX1 \total_cost_reg[8]  ( .D(n501), .CK(CLK), .Q(total_cost[8]), .QN(n557)
         );
  EDFFX1 Valid_reg ( .D(n279), .E(n1031), .CK(CLK), .Q(Valid) );
  OAI22XL U460 ( .A0(n556), .A1(MinCost[4]), .B0(MinCost[3]), .B1(n582), .Y(
        n830) );
  NAND2BX1 U461 ( .AN(n794), .B(n801), .Y(n799) );
  OAI21XL U462 ( .A0(n557), .A1(MinCost[8]), .B0(n853), .Y(n851) );
  OR2X1 U463 ( .A(n794), .B(N119), .Y(n802) );
  CLKINVX1 U464 ( .A(RST), .Y(n1022) );
  OAI221XL U465 ( .A0(n586), .A1(n587), .B0(n588), .B1(n589), .C0(n590), .Y(
        n1023) );
  NAND2X1 U466 ( .A(n590), .B(n591), .Y(n1024) );
  OAI221XL U467 ( .A0(n592), .A1(n593), .B0(n594), .B1(n595), .C0(n596), .Y(
        n1025) );
  AOI221XL U468 ( .A0(n597), .A1(n598), .B0(n599), .B1(n600), .C0(n601), .Y(
        n596) );
  CLKINVX1 U469 ( .A(n602), .Y(n1027) );
  AOI221XL U470 ( .A0(n603), .A1(n604), .B0(n605), .B1(n606), .C0(n607), .Y(
        n602) );
  OAI22XL U471 ( .A0(n608), .A1(n609), .B0(n610), .B1(n611), .Y(n607) );
  OAI221XL U472 ( .A0(n612), .A1(n613), .B0(n614), .B1(n610), .C0(n615), .Y(
        n1028) );
  AOI22X1 U473 ( .A0(n605), .A1(n616), .B0(n617), .B1(n618), .Y(n615) );
  OAI221XL U474 ( .A0(n612), .A1(n619), .B0(n620), .B1(n610), .C0(n621), .Y(
        n1029) );
  AOI221XL U475 ( .A0(n617), .A1(n622), .B0(n623), .B1(n605), .C0(n601), .Y(
        n621) );
  CLKINVX1 U476 ( .A(n608), .Y(n617) );
  CLKINVX1 U477 ( .A(n624), .Y(n619) );
  CLKINVX1 U478 ( .A(n603), .Y(n612) );
  OAI221XL U479 ( .A0(n592), .A1(n608), .B0(n594), .B1(n610), .C0(n625), .Y(
        n1030) );
  AOI221XL U480 ( .A0(n597), .A1(n605), .B0(n599), .B1(n603), .C0(n601), .Y(
        n625) );
  MXI2X1 U481 ( .A(n626), .B(n627), .S0(n628), .Y(n603) );
  AOI221XL U482 ( .A0(n629), .A1(n572), .B0(n630), .B1(n564), .C0(n631), .Y(
        n627) );
  OAI22XL U483 ( .A0(n209), .A1(n632), .B0(n212), .B1(n633), .Y(n631) );
  AOI221XL U484 ( .A0(n629), .A1(n563), .B0(n630), .B1(n581), .C0(n634), .Y(
        n626) );
  OAI22XL U485 ( .A0(n196), .A1(n632), .B0(n200), .B1(n633), .Y(n634) );
  NAND2X1 U486 ( .A(n635), .B(n636), .Y(n608) );
  OAI21XL U487 ( .A0(n637), .A1(n638), .B0(n639), .Y(n555) );
  MXI2X1 U488 ( .A(\arrange_2[1][0] ), .B(n640), .S0(n641), .Y(n639) );
  MXI2X1 U489 ( .A(n598), .B(n642), .S0(n643), .Y(n638) );
  CLKMX2X2 U490 ( .A(\arrange_2[7][2] ), .B(n644), .S0(n290), .Y(n554) );
  OAI221XL U491 ( .A0(n645), .A1(n592), .B0(n646), .B1(n594), .C0(n647), .Y(
        n644) );
  AOI221XL U492 ( .A0(n648), .A1(n599), .B0(n649), .B1(n597), .C0(n601), .Y(
        n647) );
  NOR2X1 U493 ( .A(n650), .B(n651), .Y(n599) );
  CLKINVX1 U494 ( .A(n650), .Y(n594) );
  CLKINVX1 U495 ( .A(n652), .Y(n592) );
  OAI221XL U496 ( .A0(n653), .A1(n654), .B0(n655), .B1(n656), .C0(n657), .Y(
        n553) );
  OAI21XL U497 ( .A0(n658), .A1(n659), .B0(n660), .Y(n657) );
  OAI211X1 U498 ( .A0(n661), .A1(n586), .B0(n662), .C0(n663), .Y(n552) );
  AOI22X1 U499 ( .A0(n664), .A1(n665), .B0(n666), .B1(n667), .Y(n663) );
  OAI22XL U500 ( .A0(\arrange_2[4][2] ), .A1(n668), .B0(n669), .B1(n589), .Y(
        n665) );
  AOI31X1 U501 ( .A0(n670), .A1(n671), .A2(n672), .B0(n673), .Y(n669) );
  AOI2BB2X1 U502 ( .B0(N120), .B1(n655), .A0N(n656), .A1N(n654), .Y(n661) );
  OAI211X1 U503 ( .A0(n674), .A1(n589), .B0(n662), .C0(n675), .Y(n551) );
  AOI2BB2X1 U504 ( .B0(n676), .B1(n666), .A0N(n653), .A1N(n677), .Y(n675) );
  OA21XL U505 ( .A0(N120), .A1(n655), .B0(n678), .Y(n653) );
  OAI21XL U506 ( .A0(N122), .A1(n655), .B0(n679), .Y(n678) );
  NOR2X1 U507 ( .A(n680), .B(n681), .Y(n674) );
  OAI211X1 U508 ( .A0(n586), .A1(n682), .B0(n683), .C0(n684), .Y(n550) );
  OAI211X1 U509 ( .A0(n680), .A1(n681), .B0(n660), .C0(n685), .Y(n683) );
  AND4X1 U510 ( .A(n686), .B(n672), .C(n687), .D(n688), .Y(n680) );
  NAND2X1 U511 ( .A(n670), .B(n671), .Y(n688) );
  OAI221XL U512 ( .A0(n689), .A1(n564), .B0(\arrange_2[2][2] ), .B1(n690), 
        .C0(n691), .Y(n671) );
  AO21X1 U513 ( .A0(n564), .A1(n689), .B0(n209), .Y(n691) );
  NOR2X1 U514 ( .A(n207), .B(\arrange_2[1][0] ), .Y(n689) );
  NAND2X1 U515 ( .A(\arrange_2[2][2] ), .B(n690), .Y(n670) );
  CLKINVX1 U516 ( .A(n658), .Y(n672) );
  NAND4X1 U517 ( .A(n590), .B(n692), .C(n684), .D(n662), .Y(n549) );
  NAND2X1 U518 ( .A(n660), .B(n693), .Y(n662) );
  OAI31XL U519 ( .A0(n659), .A1(n686), .A2(n658), .B0(n685), .Y(n693) );
  NAND3X1 U520 ( .A(n660), .B(n658), .C(n588), .Y(n684) );
  CLKINVX1 U521 ( .A(n659), .Y(n588) );
  NAND3X1 U522 ( .A(n685), .B(n687), .C(n664), .Y(n659) );
  AOI2BB1X1 U523 ( .A0N(\arrange_2[4][2] ), .A1N(n694), .B0(n673), .Y(n687) );
  AOI221XL U524 ( .A0(n694), .A1(\arrange_2[4][2] ), .B0(n561), .B1(n196), 
        .C0(n695), .Y(n673) );
  AOI2BB2X1 U525 ( .B0(n570), .B1(n200), .A0N(\arrange_2[4][0] ), .A1N(n696), 
        .Y(n695) );
  OA21XL U526 ( .A0(\arrange_2[6][2] ), .A1(n697), .B0(n698), .Y(n685) );
  OAI221XL U527 ( .A0(n699), .A1(n563), .B0(\arrange_2[7][2] ), .B1(n700), 
        .C0(n701), .Y(n698) );
  AO21X1 U528 ( .A0(n563), .A1(n699), .B0(n193), .Y(n701) );
  NOR2X1 U529 ( .A(n191), .B(\arrange_2[6][0] ), .Y(n699) );
  OAI21XL U530 ( .A0(\arrange_2[3][2] ), .A1(n702), .B0(n703), .Y(n658) );
  OAI221XL U531 ( .A0(\arrange_2[4][2] ), .A1(n704), .B0(n203), .B1(n561), 
        .C0(n705), .Y(n703) );
  OAI22XL U532 ( .A0(\arrange_2[3][0] ), .A1(n706), .B0(n200), .B1(n572), .Y(
        n705) );
  NAND2X1 U533 ( .A(N124), .B(n679), .Y(n692) );
  CLKINVX1 U534 ( .A(n586), .Y(n679) );
  NAND2X1 U535 ( .A(n590), .B(n589), .Y(n586) );
  NAND2X1 U536 ( .A(n707), .B(n613), .Y(n548) );
  CLKINVX1 U537 ( .A(n708), .Y(n613) );
  MXI2X1 U538 ( .A(n569), .B(n624), .S0(n709), .Y(n707) );
  MXI2X1 U539 ( .A(n710), .B(n709), .S0(\CHMT_cnt[0] ), .Y(n547) );
  NAND2X1 U540 ( .A(n711), .B(n709), .Y(n710) );
  NAND2X1 U541 ( .A(n590), .B(n712), .Y(n709) );
  AO22X1 U542 ( .A0(n713), .A1(cnt_40320[15]), .B0(N358), .B1(n714), .Y(n546)
         );
  AO22X1 U543 ( .A0(n713), .A1(cnt_40320[0]), .B0(N343), .B1(n714), .Y(n545)
         );
  AO22X1 U544 ( .A0(n713), .A1(cnt_40320[1]), .B0(N344), .B1(n714), .Y(n544)
         );
  AO22X1 U545 ( .A0(n713), .A1(cnt_40320[2]), .B0(N345), .B1(n714), .Y(n543)
         );
  AO22X1 U546 ( .A0(n713), .A1(cnt_40320[3]), .B0(N346), .B1(n714), .Y(n542)
         );
  AO22X1 U547 ( .A0(n713), .A1(cnt_40320[4]), .B0(N347), .B1(n714), .Y(n541)
         );
  AO22X1 U548 ( .A0(n713), .A1(cnt_40320[5]), .B0(N348), .B1(n714), .Y(n540)
         );
  AO22X1 U549 ( .A0(n713), .A1(cnt_40320[6]), .B0(N349), .B1(n714), .Y(n539)
         );
  AO22X1 U550 ( .A0(n713), .A1(cnt_40320[7]), .B0(N350), .B1(n714), .Y(n538)
         );
  AO22X1 U551 ( .A0(n713), .A1(cnt_40320[8]), .B0(N351), .B1(n714), .Y(n537)
         );
  AO22X1 U552 ( .A0(n713), .A1(cnt_40320[9]), .B0(N352), .B1(n714), .Y(n536)
         );
  AO22X1 U553 ( .A0(n713), .A1(cnt_40320[10]), .B0(N353), .B1(n714), .Y(n535)
         );
  AO22X1 U554 ( .A0(n713), .A1(cnt_40320[11]), .B0(N354), .B1(n714), .Y(n534)
         );
  AO22X1 U555 ( .A0(n713), .A1(cnt_40320[12]), .B0(N355), .B1(n714), .Y(n533)
         );
  AO22X1 U556 ( .A0(n713), .A1(cnt_40320[13]), .B0(N356), .B1(n714), .Y(n532)
         );
  AO22X1 U557 ( .A0(n713), .A1(cnt_40320[14]), .B0(N357), .B1(n714), .Y(n531)
         );
  NOR2X1 U558 ( .A(n713), .B(n715), .Y(n714) );
  OAI21XL U559 ( .A0(n601), .A1(n716), .B0(n717), .Y(n713) );
  OAI21XL U560 ( .A0(n637), .A1(n718), .B0(n719), .Y(n530) );
  MXI2X1 U561 ( .A(n566), .B(n720), .S0(n641), .Y(n719) );
  MXI2X1 U562 ( .A(n605), .B(n636), .S0(n643), .Y(n718) );
  OAI21XL U563 ( .A0(n637), .A1(n721), .B0(n722), .Y(n529) );
  MXI2X1 U564 ( .A(\arrange_2[1][2] ), .B(n723), .S0(n641), .Y(n722) );
  MXI2X1 U565 ( .A(n649), .B(n724), .S0(n643), .Y(n721) );
  NAND2X1 U566 ( .A(n635), .B(n641), .Y(n637) );
  OAI211X1 U567 ( .A0(n632), .A1(n725), .B0(n726), .C0(n727), .Y(n641) );
  OA22X1 U568 ( .A0(n728), .A1(n729), .B0(n643), .B1(n730), .Y(n727) );
  OAI21XL U569 ( .A0(n731), .A1(n732), .B0(n733), .Y(n528) );
  MXI2X1 U570 ( .A(n573), .B(n734), .S0(n735), .Y(n733) );
  MXI2X1 U571 ( .A(n598), .B(n642), .S0(n736), .Y(n732) );
  OAI21XL U572 ( .A0(n731), .A1(n737), .B0(n738), .Y(n527) );
  MXI2X1 U573 ( .A(n564), .B(n739), .S0(n735), .Y(n738) );
  MXI2X1 U574 ( .A(n605), .B(n636), .S0(n736), .Y(n737) );
  OAI21XL U575 ( .A0(n731), .A1(n740), .B0(n741), .Y(n526) );
  MXI2X1 U576 ( .A(\arrange_2[2][2] ), .B(n723), .S0(n735), .Y(n741) );
  MXI2X1 U577 ( .A(n649), .B(n724), .S0(n736), .Y(n740) );
  NAND2X1 U578 ( .A(n635), .B(n735), .Y(n731) );
  OAI211X1 U579 ( .A0(n742), .A1(n725), .B0(n726), .C0(n743), .Y(n735) );
  OA22X1 U580 ( .A0(n728), .A1(n744), .B0(n736), .B1(n730), .Y(n743) );
  OAI21XL U581 ( .A0(n745), .A1(n746), .B0(n747), .Y(n525) );
  MXI2X1 U582 ( .A(\arrange_2[3][0] ), .B(n640), .S0(n748), .Y(n747) );
  NAND2X1 U583 ( .A(n726), .B(n595), .Y(n640) );
  MXI2X1 U584 ( .A(n598), .B(n642), .S0(n749), .Y(n746) );
  OAI21XL U585 ( .A0(n745), .A1(n750), .B0(n751), .Y(n524) );
  MXI2X1 U586 ( .A(n572), .B(n739), .S0(n748), .Y(n751) );
  NAND2X1 U587 ( .A(n726), .B(n610), .Y(n739) );
  MXI2X1 U588 ( .A(n605), .B(n636), .S0(n749), .Y(n750) );
  OAI21XL U589 ( .A0(n745), .A1(n752), .B0(n753), .Y(n523) );
  MXI2X1 U590 ( .A(\arrange_2[3][2] ), .B(n723), .S0(n748), .Y(n753) );
  MXI2X1 U591 ( .A(n649), .B(n724), .S0(n749), .Y(n752) );
  NAND2X1 U592 ( .A(n635), .B(n748), .Y(n745) );
  OAI211X1 U593 ( .A0(n754), .A1(n725), .B0(n726), .C0(n755), .Y(n748) );
  OA22X1 U594 ( .A0(n728), .A1(n756), .B0(n749), .B1(n730), .Y(n755) );
  MXI2X1 U595 ( .A(n706), .B(n757), .S0(n335), .Y(n522) );
  AOI221XL U596 ( .A0(n604), .A1(n600), .B0(n606), .B1(n598), .C0(n758), .Y(
        n757) );
  OAI22XL U597 ( .A0(n611), .A1(n595), .B0(n609), .B1(n593), .Y(n758) );
  CLKMX2X2 U598 ( .A(\arrange_2[4][2] ), .B(n759), .S0(n335), .Y(n521) );
  OAI221XL U599 ( .A0(n645), .A1(n609), .B0(n646), .B1(n611), .C0(n760), .Y(
        n759) );
  AOI221XL U600 ( .A0(n648), .A1(n604), .B0(n649), .B1(n606), .C0(n601), .Y(
        n760) );
  NOR2X1 U601 ( .A(n761), .B(n651), .Y(n604) );
  CLKINVX1 U602 ( .A(n762), .Y(n609) );
  MXI2X1 U603 ( .A(n696), .B(n763), .S0(n323), .Y(n520) );
  AOI221XL U604 ( .A0(n708), .A1(n600), .B0(n734), .B1(n764), .C0(n765), .Y(
        n763) );
  OAI221XL U605 ( .A0(n766), .A1(n767), .B0(n768), .B1(n593), .C0(n726), .Y(
        n765) );
  MXI2X1 U606 ( .A(n694), .B(n769), .S0(n323), .Y(n519) );
  AOI221XL U607 ( .A0(n708), .A1(n648), .B0(n723), .B1(n764), .C0(n770), .Y(
        n769) );
  OAI221XL U608 ( .A0(n771), .A1(n767), .B0(n768), .B1(n645), .C0(n726), .Y(
        n770) );
  NOR2X1 U609 ( .A(n764), .B(n651), .Y(n708) );
  MXI2X1 U610 ( .A(n772), .B(n773), .S0(n307), .Y(n518) );
  AOI221XL U611 ( .A0(n624), .A1(n600), .B0(n734), .B1(n774), .C0(n775), .Y(
        n773) );
  OAI22XL U612 ( .A0(n776), .A1(n593), .B0(n766), .B1(n777), .Y(n775) );
  CLKINVX1 U613 ( .A(n598), .Y(n766) );
  NAND2X1 U614 ( .A(n635), .B(n642), .Y(n593) );
  MXI2X1 U615 ( .A(n778), .B(n779), .S0(n628), .Y(n600) );
  AOI221XL U616 ( .A0(n629), .A1(\arrange_2[3][0] ), .B0(n630), .B1(n573), 
        .C0(n780), .Y(n779) );
  OAI22XL U617 ( .A0(n781), .A1(n632), .B0(n213), .B1(n633), .Y(n780) );
  AOI221XL U618 ( .A0(n629), .A1(n574), .B0(n630), .B1(\arrange_2[6][0] ), 
        .C0(n782), .Y(n778) );
  OAI22XL U619 ( .A0(n696), .A1(n632), .B0(n706), .B1(n633), .Y(n782) );
  MXI2X1 U620 ( .A(n700), .B(n783), .S0(n307), .Y(n517) );
  AOI221XL U621 ( .A0(n624), .A1(n648), .B0(n723), .B1(n774), .C0(n784), .Y(
        n783) );
  OAI221XL U622 ( .A0(n771), .A1(n777), .B0(n776), .B1(n645), .C0(n726), .Y(
        n784) );
  NAND2X1 U623 ( .A(n635), .B(n724), .Y(n645) );
  CLKINVX1 U624 ( .A(n649), .Y(n771) );
  MXI2X1 U625 ( .A(n785), .B(n786), .S0(n628), .Y(n648) );
  AOI221XL U626 ( .A0(n629), .A1(\arrange_2[3][2] ), .B0(n630), .B1(
        \arrange_2[2][2] ), .C0(n787), .Y(n786) );
  OAI22XL U627 ( .A0(n690), .A1(n632), .B0(n211), .B1(n633), .Y(n787) );
  AOI221XL U628 ( .A0(n629), .A1(\arrange_2[7][2] ), .B0(n630), .B1(
        \arrange_2[6][2] ), .C0(n788), .Y(n785) );
  OAI22XL U629 ( .A0(n694), .A1(n632), .B0(n702), .B1(n633), .Y(n788) );
  NOR2X1 U630 ( .A(n774), .B(n651), .Y(n624) );
  OAI22XL U631 ( .A0(n245), .A1(n585), .B0(n789), .B1(n790), .Y(n516) );
  OAI22XL U632 ( .A0(n245), .A1(n584), .B0(n791), .B1(n790), .Y(n515) );
  OAI21XL U633 ( .A0(n245), .A1(n792), .B0(n590), .Y(n514) );
  CLKINVX1 U634 ( .A(\min[3] ), .Y(n792) );
  OAI222XL U635 ( .A0(n130), .A1(n793), .B0(n794), .B1(n795), .C0(n794), .C1(
        n796), .Y(n513) );
  CLKINVX1 U636 ( .A(n797), .Y(n796) );
  MXI2X1 U637 ( .A(n794), .B(n793), .S0(N117), .Y(n512) );
  CLKINVX1 U638 ( .A(n798), .Y(n793) );
  MXI2X1 U639 ( .A(n799), .B(n800), .S0(N119), .Y(n511) );
  AOI21X1 U640 ( .A0(n800), .A1(n802), .B0(n579), .Y(n510) );
  AOI2BB1X1 U641 ( .A0N(n801), .A1N(n794), .B0(n798), .Y(n800) );
  AO22X1 U642 ( .A0(n803), .A1(total_cost[0]), .B0(N177), .B1(n804), .Y(n509)
         );
  AO22X1 U643 ( .A0(n803), .A1(total_cost[1]), .B0(N178), .B1(n804), .Y(n508)
         );
  AO22X1 U644 ( .A0(n803), .A1(total_cost[2]), .B0(N179), .B1(n804), .Y(n507)
         );
  AO22X1 U645 ( .A0(n803), .A1(total_cost[3]), .B0(N180), .B1(n804), .Y(n506)
         );
  AO22X1 U646 ( .A0(n803), .A1(total_cost[4]), .B0(N181), .B1(n804), .Y(n505)
         );
  AO22X1 U647 ( .A0(n803), .A1(total_cost[5]), .B0(N182), .B1(n804), .Y(n504)
         );
  OAI2BB2XL U648 ( .B0(n805), .B1(n580), .A0N(N183), .A1N(n804), .Y(n503) );
  OAI2BB2XL U649 ( .B0(n805), .B1(n565), .A0N(N184), .A1N(n804), .Y(n502) );
  AO22X1 U650 ( .A0(n803), .A1(total_cost[8]), .B0(N185), .B1(n804), .Y(n501)
         );
  AO22X1 U651 ( .A0(n803), .A1(total_cost[9]), .B0(N186), .B1(n804), .Y(n500)
         );
  AOI2BB1X1 U652 ( .A0N(n806), .A1N(n807), .B0(n803), .Y(n804) );
  CLKINVX1 U653 ( .A(n805), .Y(n803) );
  OAI21XL U654 ( .A0(n808), .A1(n798), .B0(n809), .Y(n805) );
  NOR2X1 U655 ( .A(n810), .B(n807), .Y(n798) );
  NOR4X1 U656 ( .A(n1019), .B(N119), .C(n810), .D(n811), .Y(n808) );
  NAND2X1 U657 ( .A(n812), .B(n813), .Y(n810) );
  NAND2X1 U658 ( .A(n814), .B(n812), .Y(n499) );
  MXI2X1 U659 ( .A(total_cost[9]), .B(MinCost[9]), .S0(n815), .Y(n814) );
  MXI2X1 U660 ( .A(n816), .B(n817), .S0(n124), .Y(n498) );
  NAND3X1 U661 ( .A(MatchCount[1]), .B(n818), .C(MatchCount[2]), .Y(n817) );
  OA21XL U662 ( .A0(n819), .A1(MatchCount[2]), .B0(n820), .Y(n816) );
  MXI2X1 U663 ( .A(n821), .B(n822), .S0(n823), .Y(n497) );
  OAI21XL U664 ( .A0(n824), .A1(n822), .B0(n825), .Y(n821) );
  MXI2X1 U665 ( .A(n826), .B(n827), .S0(MatchCount[1]), .Y(n496) );
  CLKINVX1 U666 ( .A(n818), .Y(n826) );
  MXI2X1 U667 ( .A(n828), .B(n820), .S0(MatchCount[2]), .Y(n495) );
  OA21XL U668 ( .A0(MatchCount[1]), .A1(n819), .B0(n827), .Y(n820) );
  AOI2BB1X1 U669 ( .A0N(MatchCount[0]), .A1N(n819), .B0(n823), .Y(n827) );
  NAND2X1 U670 ( .A(MatchCount[1]), .B(n818), .Y(n828) );
  NOR3X1 U671 ( .A(n819), .B(n823), .C(n822), .Y(n818) );
  CLKINVX1 U672 ( .A(MatchCount[0]), .Y(n822) );
  OA21XL U673 ( .A0(n829), .A1(n819), .B0(n815), .Y(n823) );
  NAND4BX1 U674 ( .AN(n830), .B(n831), .C(n832), .D(n833), .Y(n819) );
  AOI221XL U675 ( .A0(total_cost[7]), .A1(n834), .B0(total_cost[8]), .B1(n835), 
        .C0(n836), .Y(n833) );
  OAI211X1 U676 ( .A0(MinCost[0]), .A1(n567), .B0(n837), .C0(n838), .Y(n836)
         );
  CLKINVX1 U677 ( .A(MinCost[7]), .Y(n834) );
  AOI211X1 U678 ( .A0(total_cost[9]), .A1(n839), .B0(n840), .C0(n841), .Y(n832) );
  CLKINVX1 U679 ( .A(n825), .Y(n841) );
  NAND2X1 U680 ( .A(n842), .B(n812), .Y(n494) );
  MXI2X1 U681 ( .A(total_cost[0]), .B(MinCost[0]), .S0(n815), .Y(n842) );
  NAND2X1 U682 ( .A(n843), .B(n812), .Y(n493) );
  MXI2X1 U683 ( .A(total_cost[1]), .B(MinCost[1]), .S0(n815), .Y(n843) );
  NAND2X1 U684 ( .A(n844), .B(n812), .Y(n492) );
  MXI2X1 U685 ( .A(total_cost[2]), .B(MinCost[2]), .S0(n815), .Y(n844) );
  NAND2X1 U686 ( .A(n845), .B(n812), .Y(n491) );
  MXI2X1 U687 ( .A(total_cost[3]), .B(MinCost[3]), .S0(n815), .Y(n845) );
  NAND2X1 U688 ( .A(n846), .B(n812), .Y(n490) );
  MXI2X1 U689 ( .A(total_cost[4]), .B(MinCost[4]), .S0(n815), .Y(n846) );
  NAND2X1 U690 ( .A(n847), .B(n812), .Y(n489) );
  MXI2X1 U691 ( .A(total_cost[5]), .B(MinCost[5]), .S0(n815), .Y(n847) );
  NAND2X1 U692 ( .A(n848), .B(n812), .Y(n488) );
  MXI2X1 U693 ( .A(total_cost[6]), .B(MinCost[6]), .S0(n815), .Y(n848) );
  NAND2X1 U694 ( .A(n849), .B(n812), .Y(n487) );
  MXI2X1 U695 ( .A(total_cost[7]), .B(MinCost[7]), .S0(n815), .Y(n849) );
  NAND2X1 U696 ( .A(n850), .B(n812), .Y(n486) );
  MXI2X1 U697 ( .A(total_cost[8]), .B(MinCost[8]), .S0(n815), .Y(n850) );
  OA21XL U698 ( .A0(n831), .A1(n813), .B0(n812), .Y(n815) );
  CLKINVX1 U699 ( .A(n824), .Y(n831) );
  OAI21XL U700 ( .A0(n851), .A1(n839), .B0(n852), .Y(n824) );
  AO21X1 U701 ( .A0(n851), .A1(n839), .B0(total_cost[9]), .Y(n852) );
  CLKINVX1 U702 ( .A(MinCost[9]), .Y(n839) );
  OAI22XL U703 ( .A0(n854), .A1(n855), .B0(total_cost[8]), .B1(n835), .Y(n853)
         );
  AOI222XL U704 ( .A0(MinCost[7]), .A1(n565), .B0(n856), .B1(n857), .C0(
        MinCost[6]), .C1(n580), .Y(n855) );
  OAI222XL U705 ( .A0(total_cost[4]), .A1(n858), .B0(n859), .B1(n830), .C0(
        total_cost[5]), .C1(n860), .Y(n857) );
  AOI222XL U706 ( .A0(MinCost[3]), .A1(n582), .B0(n861), .B1(n862), .C0(
        MinCost[2]), .C1(n568), .Y(n859) );
  AO22X1 U707 ( .A0(n583), .A1(MinCost[1]), .B0(n567), .B1(MinCost[0]), .Y(
        n862) );
  CLKINVX1 U708 ( .A(n840), .Y(n861) );
  OAI22XL U709 ( .A0(MinCost[2]), .A1(n568), .B0(MinCost[1]), .B1(n583), .Y(
        n840) );
  CLKINVX1 U710 ( .A(MinCost[4]), .Y(n858) );
  AND2X1 U711 ( .A(n838), .B(n837), .Y(n856) );
  NAND2BX1 U712 ( .AN(MinCost[6]), .B(total_cost[6]), .Y(n837) );
  NAND2X1 U713 ( .A(total_cost[5]), .B(n860), .Y(n838) );
  CLKINVX1 U714 ( .A(MinCost[5]), .Y(n860) );
  NOR2X1 U715 ( .A(MinCost[7]), .B(n565), .Y(n854) );
  CLKINVX1 U716 ( .A(MinCost[8]), .Y(n835) );
  OAI22XL U717 ( .A0(n245), .A1(n863), .B0(n667), .B1(n790), .Y(n485) );
  OAI22XL U718 ( .A0(n245), .A1(n864), .B0(n677), .B1(n790), .Y(n484) );
  CLKINVX1 U719 ( .A(N121), .Y(n677) );
  OAI22XL U720 ( .A0(n245), .A1(n865), .B0(n654), .B1(n790), .Y(n483) );
  NAND2X1 U721 ( .A(n666), .B(n245), .Y(n790) );
  CLKINVX1 U722 ( .A(N122), .Y(n654) );
  OAI21XL U723 ( .A0(n866), .A1(n867), .B0(n868), .Y(n482) );
  MXI2X1 U724 ( .A(n577), .B(n723), .S0(n869), .Y(n868) );
  CLKINVX1 U725 ( .A(n646), .Y(n723) );
  OAI211X1 U726 ( .A0(\arrange_2[7][2] ), .A1(n650), .B0(n711), .C0(n870), .Y(
        n646) );
  AOI222XL U727 ( .A0(n620), .A1(n700), .B0(n611), .B1(n702), .C0(n614), .C1(
        n694), .Y(n870) );
  MXI2X1 U728 ( .A(n649), .B(n724), .S0(n871), .Y(n867) );
  CLKINVX1 U729 ( .A(n872), .Y(n724) );
  MXI2X1 U730 ( .A(n873), .B(n874), .S0(N128), .Y(n649) );
  AOI221XL U731 ( .A0(n875), .A1(\arrange_2[4][2] ), .B0(n876), .B1(
        \arrange_2[5][2] ), .C0(n877), .Y(n874) );
  OAI22XL U732 ( .A0(n700), .A1(n744), .B0(n697), .B1(n756), .Y(n877) );
  AOI221XL U733 ( .A0(n875), .A1(n577), .B0(n876), .B1(\arrange_2[1][2] ), 
        .C0(n878), .Y(n873) );
  OAI22XL U734 ( .A0(n879), .A1(n744), .B0(n704), .B1(n756), .Y(n878) );
  OAI21XL U735 ( .A0(n866), .A1(n880), .B0(n881), .Y(n481) );
  MXI2X1 U736 ( .A(n576), .B(n720), .S0(n869), .Y(n881) );
  CLKINVX1 U737 ( .A(n610), .Y(n720) );
  OAI211X1 U738 ( .A0(n563), .A1(n650), .B0(n711), .C0(n882), .Y(n610) );
  AOI222XL U739 ( .A0(n193), .A1(n620), .B0(n611), .B1(n200), .C0(n614), .C1(
        n196), .Y(n882) );
  MXI2X1 U740 ( .A(n605), .B(n636), .S0(n871), .Y(n880) );
  CLKINVX1 U741 ( .A(n883), .Y(n636) );
  MXI2X1 U742 ( .A(n884), .B(n885), .S0(N128), .Y(n605) );
  AOI221XL U743 ( .A0(n875), .A1(n561), .B0(n876), .B1(n570), .C0(n886), .Y(
        n885) );
  OAI22XL U744 ( .A0(n193), .A1(n744), .B0(n190), .B1(n756), .Y(n886) );
  AOI221XL U745 ( .A0(n875), .A1(n576), .B0(n876), .B1(n566), .C0(n887), .Y(
        n884) );
  OAI22XL U746 ( .A0(n206), .A1(n744), .B0(n203), .B1(n756), .Y(n887) );
  OAI21XL U747 ( .A0(n866), .A1(n888), .B0(n889), .Y(n480) );
  MXI2X1 U748 ( .A(n575), .B(n734), .S0(n869), .Y(n889) );
  CLKINVX1 U749 ( .A(n595), .Y(n734) );
  OAI211X1 U750 ( .A0(n650), .A1(n574), .B0(n711), .C0(n890), .Y(n595) );
  AOI222XL U751 ( .A0(n620), .A1(n772), .B0(n611), .B1(n706), .C0(n614), .C1(
        n696), .Y(n890) );
  CLKINVX1 U752 ( .A(n764), .Y(n614) );
  CLKINVX1 U753 ( .A(n761), .Y(n611) );
  CLKINVX1 U754 ( .A(n774), .Y(n620) );
  MXI2X1 U755 ( .A(n598), .B(n642), .S0(n871), .Y(n888) );
  CLKINVX1 U756 ( .A(n891), .Y(n642) );
  MXI2X1 U757 ( .A(n892), .B(n893), .S0(N128), .Y(n598) );
  AOI221XL U758 ( .A0(n875), .A1(\arrange_2[4][0] ), .B0(n876), .B1(
        \arrange_2[5][0] ), .C0(n894), .Y(n893) );
  OAI22XL U759 ( .A0(n772), .A1(n744), .B0(n191), .B1(n756), .Y(n894) );
  AOI221XL U760 ( .A0(n875), .A1(n575), .B0(n876), .B1(\arrange_2[1][0] ), 
        .C0(n895), .Y(n892) );
  OAI22XL U761 ( .A0(n207), .A1(n744), .B0(n896), .B1(n756), .Y(n895) );
  CLKINVX1 U762 ( .A(n729), .Y(n876) );
  CLKINVX1 U763 ( .A(n897), .Y(n875) );
  NAND2X1 U764 ( .A(n635), .B(n869), .Y(n866) );
  OAI211X1 U765 ( .A0(n633), .A1(n725), .B0(n726), .C0(n898), .Y(n869) );
  OA22X1 U766 ( .A0(n728), .A1(n897), .B0(n871), .B1(n730), .Y(n898) );
  NAND2X1 U767 ( .A(n635), .B(n865), .Y(n728) );
  CLKINVX1 U768 ( .A(N128), .Y(n865) );
  NAND2BX1 U769 ( .AN(n712), .B(n628), .Y(n725) );
  OAI22XL U770 ( .A0(n213), .A1(n715), .B0(n717), .B1(n899), .Y(n479) );
  OAI22XL U771 ( .A0(n212), .A1(n715), .B0(n717), .B1(n900), .Y(n478) );
  OAI22XL U772 ( .A0(n211), .A1(n715), .B0(n717), .B1(n901), .Y(n477) );
  OAI221XL U773 ( .A0(n717), .A1(n902), .B0(n781), .B1(n715), .C0(n726), .Y(
        n476) );
  OAI22XL U774 ( .A0(n209), .A1(n715), .B0(n717), .B1(n903), .Y(n475) );
  OAI22XL U775 ( .A0(n690), .A1(n715), .B0(n717), .B1(n904), .Y(n474) );
  OAI22XL U776 ( .A0(n207), .A1(n715), .B0(n717), .B1(n905), .Y(n473) );
  CLKINVX1 U777 ( .A(\arrange_1[2][0] ), .Y(n905) );
  OAI221XL U778 ( .A0(n717), .A1(n906), .B0(n206), .B1(n715), .C0(n726), .Y(
        n472) );
  CLKINVX1 U779 ( .A(\arrange_1[2][1] ), .Y(n906) );
  OAI22XL U780 ( .A0(n879), .A1(n715), .B0(n717), .B1(n907), .Y(n471) );
  CLKINVX1 U781 ( .A(\arrange_1[2][2] ), .Y(n907) );
  OAI221XL U782 ( .A0(n717), .A1(n908), .B0(n896), .B1(n715), .C0(n726), .Y(
        n470) );
  CLKINVX1 U783 ( .A(\arrange_1[3][0] ), .Y(n908) );
  OAI221XL U784 ( .A0(n717), .A1(n909), .B0(n203), .B1(n715), .C0(n726), .Y(
        n469) );
  CLKINVX1 U785 ( .A(\arrange_1[3][1] ), .Y(n909) );
  OAI22XL U786 ( .A0(n704), .A1(n715), .B0(n717), .B1(n910), .Y(n468) );
  CLKINVX1 U787 ( .A(\arrange_1[3][2] ), .Y(n910) );
  OAI22XL U788 ( .A0(n706), .A1(n715), .B0(n717), .B1(n911), .Y(n467) );
  OAI22XL U789 ( .A0(n200), .A1(n715), .B0(n717), .B1(n912), .Y(n466) );
  OAI221XL U790 ( .A0(n717), .A1(n913), .B0(n702), .B1(n715), .C0(n726), .Y(
        n465) );
  OAI221XL U791 ( .A0(n717), .A1(n914), .B0(n696), .B1(n715), .C0(n726), .Y(
        n464) );
  OAI22XL U792 ( .A0(n196), .A1(n715), .B0(n717), .B1(n915), .Y(n463) );
  OAI221XL U793 ( .A0(n717), .A1(n916), .B0(n694), .B1(n715), .C0(n726), .Y(
        n462) );
  OAI22XL U794 ( .A0(n772), .A1(n715), .B0(n717), .B1(n917), .Y(n461) );
  CLKINVX1 U795 ( .A(\arrange_1[6][0] ), .Y(n917) );
  OAI221XL U796 ( .A0(n717), .A1(n918), .B0(n193), .B1(n715), .C0(n726), .Y(
        n460) );
  CLKINVX1 U797 ( .A(\arrange_1[6][1] ), .Y(n918) );
  OAI221XL U798 ( .A0(n717), .A1(n919), .B0(n700), .B1(n715), .C0(n726), .Y(
        n459) );
  CLKINVX1 U799 ( .A(\arrange_1[6][2] ), .Y(n919) );
  OAI221XL U800 ( .A0(n717), .A1(n920), .B0(n191), .B1(n715), .C0(n726), .Y(
        n458) );
  CLKINVX1 U801 ( .A(\arrange_1[7][0] ), .Y(n920) );
  OAI221XL U802 ( .A0(n717), .A1(n921), .B0(n190), .B1(n715), .C0(n726), .Y(
        n457) );
  CLKINVX1 U803 ( .A(\arrange_1[7][1] ), .Y(n921) );
  OAI221XL U804 ( .A0(n717), .A1(n922), .B0(n697), .B1(n715), .C0(n726), .Y(
        n456) );
  CLKINVX1 U805 ( .A(\arrange_1[7][2] ), .Y(n922) );
  NAND2X1 U806 ( .A(n715), .B(n726), .Y(n717) );
  OAI221XL U807 ( .A0(n897), .A1(n923), .B0(n761), .B1(n712), .C0(n924), .Y(
        n335) );
  AOI211X1 U808 ( .A0(n925), .A1(n926), .B0(n606), .C0(n601), .Y(n924) );
  NOR2X1 U809 ( .A(n730), .B(n762), .Y(n606) );
  CLKINVX1 U810 ( .A(n633), .Y(n926) );
  NAND2X1 U811 ( .A(n927), .B(n928), .Y(n633) );
  NAND2X1 U812 ( .A(\CHMT_cnt[0] ), .B(n569), .Y(n761) );
  NAND2X1 U813 ( .A(n863), .B(n864), .Y(n897) );
  OAI221XL U814 ( .A0(n729), .A1(n923), .B0(n764), .B1(n712), .C0(n929), .Y(
        n323) );
  AOI211X1 U815 ( .A0(n925), .A1(n930), .B0(n616), .C0(n601), .Y(n929) );
  CLKINVX1 U816 ( .A(n767), .Y(n616) );
  NAND2X1 U817 ( .A(n635), .B(n768), .Y(n767) );
  CLKINVX1 U818 ( .A(n618), .Y(n768) );
  CLKINVX1 U819 ( .A(n632), .Y(n930) );
  NAND2X1 U820 ( .A(n928), .B(n931), .Y(n632) );
  NAND2X1 U821 ( .A(n569), .B(n932), .Y(n764) );
  NAND2X1 U822 ( .A(N126), .B(n864), .Y(n729) );
  CLKINVX1 U823 ( .A(N127), .Y(n864) );
  OAI221XL U824 ( .A0(n744), .A1(n923), .B0(n774), .B1(n712), .C0(n933), .Y(
        n307) );
  AOI211X1 U825 ( .A0(n925), .A1(n630), .B0(n623), .C0(n601), .Y(n933) );
  CLKINVX1 U826 ( .A(n777), .Y(n623) );
  NAND2X1 U827 ( .A(n635), .B(n776), .Y(n777) );
  CLKINVX1 U828 ( .A(n622), .Y(n776) );
  CLKINVX1 U829 ( .A(n742), .Y(n630) );
  NAND2X1 U830 ( .A(n927), .B(n934), .Y(n742) );
  NAND2X1 U831 ( .A(\CHMT_cnt[0] ), .B(N130), .Y(n774) );
  NAND2X1 U832 ( .A(N127), .B(n863), .Y(n744) );
  CLKINVX1 U833 ( .A(N126), .Y(n863) );
  OAI221XL U834 ( .A0(n756), .A1(n923), .B0(n650), .B1(n712), .C0(n935), .Y(
        n290) );
  AOI211X1 U835 ( .A0(n925), .A1(n629), .B0(n597), .C0(n601), .Y(n935) );
  NOR2X1 U836 ( .A(n730), .B(n652), .Y(n597) );
  CLKINVX1 U837 ( .A(n754), .Y(n629) );
  NAND2X1 U838 ( .A(n934), .B(n931), .Y(n754) );
  CLKINVX1 U839 ( .A(n927), .Y(n931) );
  AOI2BB1X1 U840 ( .A0N(n682), .A1N(n932), .B0(n936), .Y(n927) );
  CLKINVX1 U841 ( .A(n928), .Y(n934) );
  XNOR2X1 U842 ( .A(n936), .B(n937), .Y(n928) );
  NOR2X1 U843 ( .A(n712), .B(n628), .Y(n925) );
  XNOR2X1 U844 ( .A(n938), .B(N125), .Y(n628) );
  OAI22XL U845 ( .A0(N130), .A1(n939), .B0(n936), .B1(n937), .Y(n938) );
  XOR2X1 U846 ( .A(N130), .B(N124), .Y(n937) );
  NOR2X1 U847 ( .A(\CHMT_cnt[0] ), .B(N123), .Y(n936) );
  NAND2X1 U848 ( .A(n711), .B(n940), .Y(n712) );
  NAND2X1 U849 ( .A(N130), .B(n932), .Y(n650) );
  CLKINVX1 U850 ( .A(\CHMT_cnt[0] ), .Y(n932) );
  NAND2X1 U851 ( .A(N128), .B(n635), .Y(n923) );
  CLKINVX1 U852 ( .A(n730), .Y(n635) );
  NAND2X1 U853 ( .A(N127), .B(N126), .Y(n756) );
  OAI31XL U854 ( .A0(n655), .A1(n686), .A2(n664), .B0(n590), .Y(n245) );
  NOR2X1 U855 ( .A(n941), .B(n601), .Y(n590) );
  CLKINVX1 U856 ( .A(n726), .Y(n601) );
  NAND4X1 U857 ( .A(n1020), .B(n164), .C(n163), .D(n559), .Y(n726) );
  CLKINVX1 U858 ( .A(n681), .Y(n664) );
  OAI2BB1X1 U859 ( .A0N(n942), .A1N(n943), .B0(n944), .Y(n681) );
  OAI221XL U860 ( .A0(n945), .A1(n946), .B0(n943), .B1(n942), .C0(n947), .Y(
        n944) );
  OAI2BB1X1 U861 ( .A0N(n946), .A1N(n945), .B0(n948), .Y(n947) );
  OAI22XL U862 ( .A0(n196), .A1(n589), .B0(n883), .B1(n655), .Y(n948) );
  NOR4X1 U863 ( .A(n949), .B(n950), .C(n951), .D(n952), .Y(n883) );
  OAI22XL U864 ( .A0(n212), .A1(n871), .B0(n203), .B1(n749), .Y(n952) );
  OAI22XL U865 ( .A0(n206), .A1(n736), .B0(n209), .B1(n643), .Y(n951) );
  OAI22XL U866 ( .A0(n190), .A1(n652), .B0(n193), .B1(n622), .Y(n950) );
  OAI22XL U867 ( .A0(n196), .A1(n618), .B0(n200), .B1(n762), .Y(n949) );
  OAI22XL U868 ( .A0(n193), .A1(n589), .B0(n789), .B1(n655), .Y(n946) );
  OA21XL U869 ( .A0(n891), .A1(n655), .B0(n953), .Y(n945) );
  OAI31XL U870 ( .A0(n772), .A1(\arrange_2[5][0] ), .A2(n589), .B0(n591), .Y(
        n953) );
  NOR4X1 U871 ( .A(n954), .B(n955), .C(n956), .D(n957), .Y(n891) );
  OAI22XL U872 ( .A0(n213), .A1(n871), .B0(n749), .B1(n896), .Y(n957) );
  OAI22XL U873 ( .A0(n207), .A1(n736), .B0(n643), .B1(n781), .Y(n956) );
  CLKINVX1 U874 ( .A(\arrange_2[1][0] ), .Y(n781) );
  OAI22XL U875 ( .A0(n191), .A1(n652), .B0(n622), .B1(n772), .Y(n955) );
  OAI22XL U876 ( .A0(n618), .A1(n696), .B0(n762), .B1(n706), .Y(n954) );
  CLKINVX1 U877 ( .A(\arrange_2[4][0] ), .Y(n706) );
  CLKINVX1 U878 ( .A(\arrange_2[5][0] ), .Y(n696) );
  OA21XL U879 ( .A0(n872), .A1(n655), .B0(n668), .Y(n943) );
  NAND2X1 U880 ( .A(\arrange_2[5][2] ), .B(n660), .Y(n668) );
  CLKINVX1 U881 ( .A(n589), .Y(n660) );
  NOR4X1 U882 ( .A(n958), .B(n959), .C(n960), .D(n961), .Y(n872) );
  OAI22XL U883 ( .A0(n211), .A1(n871), .B0(n749), .B1(n704), .Y(n961) );
  NAND3X1 U884 ( .A(N123), .B(n587), .C(N124), .Y(n749) );
  NAND3X1 U885 ( .A(n939), .B(n587), .C(n682), .Y(n871) );
  OAI22XL U886 ( .A0(n736), .A1(n879), .B0(n643), .B1(n690), .Y(n960) );
  CLKINVX1 U887 ( .A(\arrange_2[1][2] ), .Y(n690) );
  NAND3X1 U888 ( .A(n939), .B(n587), .C(N123), .Y(n643) );
  NAND3X1 U889 ( .A(n682), .B(n587), .C(N124), .Y(n736) );
  CLKINVX1 U890 ( .A(N125), .Y(n587) );
  OAI22XL U891 ( .A0(n652), .A1(n697), .B0(n622), .B1(n700), .Y(n959) );
  NAND3X1 U892 ( .A(N125), .B(n682), .C(N124), .Y(n622) );
  NAND3X1 U893 ( .A(N123), .B(N125), .C(N124), .Y(n652) );
  OAI22XL U894 ( .A0(n694), .A1(n618), .B0(n762), .B1(n702), .Y(n958) );
  CLKINVX1 U895 ( .A(\arrange_2[4][2] ), .Y(n702) );
  NAND3X1 U896 ( .A(n682), .B(n939), .C(N125), .Y(n762) );
  CLKINVX1 U897 ( .A(N123), .Y(n682) );
  NAND3X1 U898 ( .A(N125), .B(n939), .C(N123), .Y(n618) );
  CLKINVX1 U899 ( .A(N124), .Y(n939) );
  CLKINVX1 U900 ( .A(\arrange_2[5][2] ), .Y(n694) );
  OAI22XL U901 ( .A0(n589), .A1(n700), .B0(n791), .B1(n655), .Y(n942) );
  AOI221XL U902 ( .A0(n666), .A1(\min[3] ), .B0(n962), .B1(n963), .C0(n964), 
        .Y(n686) );
  AOI221XL U903 ( .A0(n965), .A1(n966), .B0(n967), .B1(n968), .C0(n969), .Y(
        n964) );
  CLKINVX1 U904 ( .A(n970), .Y(n969) );
  OAI222XL U905 ( .A0(n203), .A1(n589), .B0(n967), .B1(n968), .C0(n655), .C1(
        n585), .Y(n970) );
  OAI211X1 U906 ( .A0(n207), .A1(n589), .B0(n971), .C0(n591), .Y(n968) );
  NAND2X1 U907 ( .A(n972), .B(n666), .Y(n591) );
  MXI2X1 U908 ( .A(n973), .B(n974), .S0(N122), .Y(n972) );
  AOI221XL U909 ( .A0(\arrange_2[4][0] ), .A1(n975), .B0(\arrange_2[5][0] ), 
        .B1(n676), .C0(n976), .Y(n974) );
  OAI22XL U910 ( .A0(n977), .A1(n772), .B0(n191), .B1(n656), .Y(n976) );
  CLKINVX1 U911 ( .A(\arrange_2[6][0] ), .Y(n772) );
  AOI221XL U912 ( .A0(n975), .A1(n575), .B0(\arrange_2[1][0] ), .B1(n676), 
        .C0(n978), .Y(n973) );
  OAI22XL U913 ( .A0(n207), .A1(n977), .B0(n656), .B1(n896), .Y(n978) );
  OAI22XL U914 ( .A0(n589), .A1(n896), .B0(n655), .B1(n179), .Y(n971) );
  CLKINVX1 U915 ( .A(\arrange_2[3][0] ), .Y(n896) );
  OAI22XL U916 ( .A0(n206), .A1(n589), .B0(n789), .B1(n655), .Y(n967) );
  CLKMX2X2 U917 ( .A(n979), .B(n980), .S0(N122), .Y(n789) );
  AOI221XL U918 ( .A0(n975), .A1(n561), .B0(n676), .B1(n570), .C0(n981), .Y(
        n980) );
  OAI22XL U919 ( .A0(n193), .A1(n977), .B0(n190), .B1(n656), .Y(n981) );
  AOI221XL U920 ( .A0(n975), .A1(n576), .B0(n676), .B1(n566), .C0(n982), .Y(
        n979) );
  OAI22XL U921 ( .A0(n206), .A1(n977), .B0(n203), .B1(n656), .Y(n982) );
  CLKINVX1 U922 ( .A(n962), .Y(n966) );
  CLKINVX1 U923 ( .A(n965), .Y(n963) );
  OAI22XL U924 ( .A0(n589), .A1(n879), .B0(n791), .B1(n655), .Y(n965) );
  CLKMX2X2 U925 ( .A(n983), .B(n984), .S0(N122), .Y(n791) );
  AOI221XL U926 ( .A0(n975), .A1(\arrange_2[4][2] ), .B0(n676), .B1(
        \arrange_2[5][2] ), .C0(n985), .Y(n984) );
  OAI22XL U927 ( .A0(n700), .A1(n977), .B0(n697), .B1(n656), .Y(n985) );
  CLKINVX1 U928 ( .A(\arrange_2[7][2] ), .Y(n697) );
  CLKINVX1 U929 ( .A(\arrange_2[6][2] ), .Y(n700) );
  AOI221XL U930 ( .A0(n975), .A1(n577), .B0(n676), .B1(\arrange_2[1][2] ), 
        .C0(n986), .Y(n983) );
  OAI22XL U931 ( .A0(n879), .A1(n977), .B0(n704), .B1(n656), .Y(n986) );
  NAND2X1 U932 ( .A(N121), .B(n667), .Y(n977) );
  NOR2X1 U933 ( .A(n667), .B(N121), .Y(n676) );
  CLKINVX1 U934 ( .A(N120), .Y(n667) );
  NOR2X1 U935 ( .A(N120), .B(N121), .Y(n975) );
  CLKINVX1 U936 ( .A(\arrange_2[2][2] ), .Y(n879) );
  OAI22XL U937 ( .A0(n655), .A1(n584), .B0(n589), .B1(n704), .Y(n962) );
  CLKINVX1 U938 ( .A(\arrange_2[3][2] ), .Y(n704) );
  OAI211X1 U939 ( .A0(n716), .A1(n715), .B0(n730), .C0(n987), .Y(
        LX_Sort_next_state[3]) );
  NOR2X1 U940 ( .A(n941), .B(n711), .Y(n987) );
  CLKINVX1 U941 ( .A(n651), .Y(n711) );
  NAND4X1 U942 ( .A(n558), .B(n560), .C(n559), .D(n578), .Y(n730) );
  OAI211X1 U943 ( .A0(n988), .A1(n715), .B0(n989), .C0(n655), .Y(
        LX_Sort_next_state[2]) );
  NAND3X1 U944 ( .A(n163), .B(n559), .C(n164), .Y(n989) );
  NAND3X1 U945 ( .A(n655), .B(n589), .C(n990), .Y(LX_Sort_next_state[1]) );
  OA22X1 U946 ( .A0(n829), .A1(n825), .B0(n940), .B1(n651), .Y(n990) );
  NAND3X1 U947 ( .A(n164), .B(n163), .C(n991), .Y(n651) );
  NAND2X1 U948 ( .A(n992), .B(n993), .Y(n940) );
  XOR2X1 U949 ( .A(N124), .B(\CHMT_cnt[0] ), .Y(n993) );
  XOR2X1 U950 ( .A(n569), .B(N125), .Y(n992) );
  NAND2X1 U951 ( .A(n994), .B(n163), .Y(n589) );
  OAI211X1 U952 ( .A0(n716), .A1(n715), .B0(n995), .C0(n813), .Y(
        LX_Sort_next_state[0]) );
  NAND2X1 U953 ( .A(n825), .B(n941), .Y(n813) );
  NOR2X1 U954 ( .A(n996), .B(n106), .Y(n825) );
  NAND3BX1 U955 ( .AN(n656), .B(n666), .C(N122), .Y(n995) );
  CLKINVX1 U956 ( .A(n655), .Y(n666) );
  NAND2X1 U957 ( .A(n994), .B(n558), .Y(n655) );
  NOR3X1 U958 ( .A(n1021), .B(n1020), .C(n560), .Y(n994) );
  NAND2X1 U959 ( .A(N121), .B(N120), .Y(n656) );
  NAND3X1 U960 ( .A(n163), .B(n560), .C(n991), .Y(n715) );
  MXI2X1 U961 ( .A(n997), .B(n998), .S0(N119), .Y(J[2]) );
  AOI221XL U962 ( .A0(\arrange_1[7][2] ), .A1(n801), .B0(\arrange_1[6][2] ), 
        .B1(n797), .C0(n999), .Y(n998) );
  OAI22XL U963 ( .A0(n795), .A1(n916), .B0(n811), .B1(n913), .Y(n999) );
  CLKINVX1 U964 ( .A(\arrange_1[4][2] ), .Y(n913) );
  CLKINVX1 U965 ( .A(\arrange_1[5][2] ), .Y(n916) );
  AOI221XL U966 ( .A0(\arrange_1[3][2] ), .A1(n801), .B0(\arrange_1[2][2] ), 
        .B1(n797), .C0(n1000), .Y(n997) );
  OAI22XL U967 ( .A0(n795), .A1(n904), .B0(n811), .B1(n901), .Y(n1000) );
  CLKINVX1 U968 ( .A(\arrange_1[0][2] ), .Y(n901) );
  CLKINVX1 U969 ( .A(\arrange_1[1][2] ), .Y(n904) );
  MXI2X1 U970 ( .A(n1001), .B(n1002), .S0(N119), .Y(J[1]) );
  AOI221XL U971 ( .A0(\arrange_1[7][1] ), .A1(n801), .B0(\arrange_1[6][1] ), 
        .B1(n797), .C0(n1003), .Y(n1002) );
  OAI22XL U972 ( .A0(n795), .A1(n915), .B0(n811), .B1(n912), .Y(n1003) );
  CLKINVX1 U973 ( .A(\arrange_1[4][1] ), .Y(n912) );
  CLKINVX1 U974 ( .A(\arrange_1[5][1] ), .Y(n915) );
  AOI221XL U975 ( .A0(\arrange_1[3][1] ), .A1(n801), .B0(\arrange_1[2][1] ), 
        .B1(n797), .C0(n1004), .Y(n1001) );
  OAI22XL U976 ( .A0(n795), .A1(n903), .B0(n811), .B1(n900), .Y(n1004) );
  CLKINVX1 U977 ( .A(\arrange_1[0][1] ), .Y(n900) );
  CLKINVX1 U978 ( .A(\arrange_1[1][1] ), .Y(n903) );
  MXI2X1 U979 ( .A(n1005), .B(n1006), .S0(N119), .Y(J[0]) );
  AOI221XL U980 ( .A0(\arrange_1[7][0] ), .A1(n801), .B0(\arrange_1[6][0] ), 
        .B1(n797), .C0(n1007), .Y(n1006) );
  OAI22XL U981 ( .A0(n795), .A1(n914), .B0(n811), .B1(n911), .Y(n1007) );
  CLKINVX1 U982 ( .A(\arrange_1[4][0] ), .Y(n911) );
  CLKINVX1 U983 ( .A(\arrange_1[5][0] ), .Y(n914) );
  AOI221XL U984 ( .A0(\arrange_1[3][0] ), .A1(n801), .B0(\arrange_1[2][0] ), 
        .B1(n797), .C0(n1008), .Y(n1005) );
  OAI22XL U985 ( .A0(n795), .A1(n902), .B0(n811), .B1(n899), .Y(n1008) );
  CLKINVX1 U986 ( .A(\arrange_1[0][0] ), .Y(n899) );
  NAND2X1 U987 ( .A(n130), .B(n1009), .Y(n811) );
  CLKINVX1 U988 ( .A(\arrange_1[1][0] ), .Y(n902) );
  NAND2X1 U989 ( .A(n130), .B(N117), .Y(n795) );
  NOR2X1 U990 ( .A(N117), .B(n130), .Y(n797) );
  AO21X1 U991 ( .A0(n807), .A1(n1010), .B0(n1026), .Y(CalCost_next_state[1])
         );
  OAI211X1 U992 ( .A0(n1011), .A1(n996), .B0(n809), .C0(n1012), .Y(n1026) );
  CLKINVX1 U993 ( .A(n806), .Y(n809) );
  NOR2X1 U994 ( .A(n562), .B(n996), .Y(n806) );
  NAND2X1 U995 ( .A(n112), .B(n571), .Y(n996) );
  NOR2X1 U996 ( .A(n988), .B(n829), .Y(n1011) );
  CLKINVX1 U997 ( .A(n1013), .Y(n1010) );
  NAND3BX1 U998 ( .AN(n1031), .B(n794), .C(n1014), .Y(CalCost_next_state[0])
         );
  OAI211X1 U999 ( .A0(n941), .A1(n988), .B0(n562), .C0(n571), .Y(n1014) );
  CLKINVX1 U1000 ( .A(n716), .Y(n988) );
  NAND4X1 U1001 ( .A(n1015), .B(n1016), .C(n1017), .D(n1018), .Y(n716) );
  NOR4X1 U1002 ( .A(cnt_40320[9]), .B(cnt_40320[7]), .C(cnt_40320[14]), .D(
        cnt_40320[13]), .Y(n1018) );
  AND4X1 U1003 ( .A(cnt_40320[0]), .B(cnt_40320[10]), .C(cnt_40320[11]), .D(
        cnt_40320[12]), .Y(n1017) );
  AND4X1 U1004 ( .A(cnt_40320[15]), .B(cnt_40320[1]), .C(cnt_40320[2]), .D(
        cnt_40320[3]), .Y(n1016) );
  AND4X1 U1005 ( .A(cnt_40320[4]), .B(cnt_40320[5]), .C(cnt_40320[6]), .D(
        cnt_40320[8]), .Y(n1015) );
  CLKINVX1 U1006 ( .A(n829), .Y(n941) );
  NAND3X1 U1007 ( .A(n164), .B(n558), .C(n991), .Y(n829) );
  NOR2X1 U1008 ( .A(n559), .B(n578), .Y(n991) );
  NAND2X1 U1009 ( .A(n807), .B(n1013), .Y(n794) );
  NAND3X1 U1010 ( .A(n801), .B(n579), .C(N119), .Y(n1013) );
  NOR2X1 U1011 ( .A(n1009), .B(n130), .Y(n801) );
  CLKINVX1 U1012 ( .A(N117), .Y(n1009) );
  NOR3X1 U1013 ( .A(n562), .B(n112), .C(n571), .Y(n807) );
  NAND2X1 U1014 ( .A(n1012), .B(n812), .Y(n1031) );
  NAND3X1 U1015 ( .A(n106), .B(n112), .C(n111), .Y(n812) );
  CLKINVX1 U1016 ( .A(n279), .Y(n1012) );
  NOR3X1 U1017 ( .A(n111), .B(n112), .C(n106), .Y(n279) );
endmodule

