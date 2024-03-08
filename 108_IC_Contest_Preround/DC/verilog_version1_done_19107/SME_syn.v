/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP6
// Date      : Fri Mar  8 20:19:50 2024
/////////////////////////////////////////////////////////////


module SME ( clk, reset, chardata, isstring, ispattern, valid, match, 
        match_index );
  input [7:0] chardata;
  output [4:0] match_index;
  input clk, reset, isstring, ispattern;
  output valid, match;
  wire   N205, N206, N207, n1366, n1367, n1368, n1369, n1370, n1371, n1372,
         \pattern_index[3] , \pattern[7][7] , \pattern[7][6] , \pattern[7][5] ,
         \pattern[7][4] , \pattern[7][3] , \pattern[7][2] , \pattern[7][1] ,
         \pattern[7][0] , \pattern[6][7] , \pattern[6][6] , \pattern[6][5] ,
         \pattern[6][4] , \pattern[6][3] , \pattern[6][2] , \pattern[6][1] ,
         \pattern[6][0] , \pattern[5][7] , \pattern[5][6] , \pattern[5][5] ,
         \pattern[5][4] , \pattern[5][3] , \pattern[5][2] , \pattern[5][1] ,
         \pattern[5][0] , \pattern[4][7] , \pattern[4][6] , \pattern[4][5] ,
         \pattern[4][4] , \pattern[4][3] , \pattern[4][2] , \pattern[4][1] ,
         \pattern[4][0] , \pattern[3][7] , \pattern[3][6] , \pattern[3][5] ,
         \pattern[3][4] , \pattern[3][3] , \pattern[3][2] , \pattern[3][1] ,
         \pattern[3][0] , \pattern[2][7] , \pattern[2][6] , \pattern[2][5] ,
         \pattern[2][4] , \pattern[2][3] , \pattern[2][2] , \pattern[2][1] ,
         \pattern[2][0] , \pattern[1][7] , \pattern[1][6] , \pattern[1][5] ,
         \pattern[1][4] , \pattern[1][3] , \pattern[1][2] , \pattern[1][1] ,
         \pattern[1][0] , \pattern[0][7] , \pattern[0][6] , \pattern[0][5] ,
         \pattern[0][4] , \pattern[0][3] , \pattern[0][2] , \pattern[0][1] ,
         \pattern[0][0] , N208, N209, N210, N211, N212, N213, N214, N215,
         \star_fg[1] , begin_word_fg, N396, N397, N398, N399, N403, N404, N405,
         N406, N407, N505, N506, N507, N508, N509, N583, N584, N585, N586,
         N587, n50, n52, n53, n54, n56, n69, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n241, n242, n243, n244, n245, n246, n247, n248,
         n249, n250, n251, n252, n253, n254, n255, n256, n257, n258, n259,
         n260, n261, n262, n263, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n284, n285, n286, n287, n288, n289, n290, n291, n292,
         n293, n294, n295, n296, n297, n298, n299, n300, n301, n302, n303,
         n304, n305, n306, n307, n308, n309, n310, n311, n312, n313, n314,
         n315, n316, n317, n318, n319, n320, n321, n322, n323, n324, n325,
         n326, n327, n328, n329, n330, n331, n332, n333, n334, n335, n336,
         n337, n338, n339, n340, n341, n342, n343, n344, n345, n346, n347,
         n348, n349, n350, n351, n352, n353, n354, n355, n356, n357, n358,
         n359, n360, n361, n362, n363, n364, n365, n366, n367, n368, n369,
         n370, n371, n372, n373, n374, n375, n376, n377, n378, n379, n380,
         n381, n382, n383, n384, n385, n386, n387, n388, n389, n390, n398,
         n403, n404, n405, n406, n407, n408, n409, n410, n411, n412, n413,
         n414, n415, n416, n417, n418, n419, n420, n421, n422, n423, n424,
         n425, n426, n427, n428, n429, n430, n431, n432, n433, n434, n435,
         n436, n437, n438, n439, n440, n441, n442, n443, n444, n445, n446,
         n447, n448, n449, n450, n451, n452, n453, n454, n455, n456, n457,
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
         n876, n879, n880, n881, n882, n883, n884, n885, n886, n887, n888,
         n889, n890, n891, n892, n893, n894, n895, n896, n897, n898, n899,
         n900, n901, n902, n903, n904, n905, n906, n907, n908, n909, n910,
         n911, n912, n913, n914, n915, n916, n917, n918, n919, n920, n921,
         n922, n923, n924, n925, n926, n927, n928, n929, n930, n931, n932,
         n933, n934, n935, n936, n937, n938, n939, n940, n941, n942, n943,
         n944, n945, n946, n947, n948, n949, n950, n951, n952, n953, n954,
         n955, n956, n957, n958, n959, n960, n961, n962, n963, n964, n965,
         n966, n967, n968, n969, n970, n971, n972, n973, n974, n975, n976,
         n977, n978, n979, n980, n981, n982, n983, n984, n985, n986, n987,
         n988, n989, n990, n991, n992, n993, n994, n995, n996, n997, n998,
         n999, n1000, n1001, n1002, n1003, n1004, n1005, n1006, n1007, n1008,
         n1009, n1010, n1011, n1012, n1013, n1014, n1015, n1016, n1017, n1018,
         n1019, n1020, n1021, n1022, n1023, n1024, n1025, n1026, n1027, n1028,
         n1029, n1030, n1031, n1032, n1033, n1034, n1035, n1036, n1037, n1038,
         n1039, n1040, n1041, n1042, n1043, n1044, n1045, n1046, n1047, n1048,
         n1049, n1050, n1051, n1052, n1053, n1054, n1055, n1056, n1057, n1058,
         n1059, n1060, n1061, n1062, n1063, n1064, n1065, n1066, n1067, n1068,
         n1069, n1070, n1071, n1072, n1073, n1074, n1075, n1076, n1077, n1078,
         n1079, n1080, n1081, n1082, n1083, n1084, n1085, n1086, n1087, n1088,
         n1089, n1090, n1091, n1092, n1093, n1094, n1095, n1096, n1097, n1098,
         n1099, n1100, n1101, n1102, n1103, n1104, n1105, n1106, n1107, n1108,
         n1109, n1110, n1111, n1112, n1113, n1114, n1115, n1116, n1117, n1118,
         n1119, n1120, n1121, n1122, n1123, n1124, n1125, n1126, n1127, n1128,
         n1129, n1130, n1131, n1132, n1133, n1134, n1135, n1136, n1137, n1138,
         n1139, n1140, n1141, n1142, n1143, n1144, n1145, n1146, n1147, n1148,
         n1149, n1150, n1151, n1152, n1153, n1154, n1155, n1156, n1157, n1158,
         n1159, n1160, n1161, n1162, n1163, n1164, n1165, n1166, n1167, n1168,
         n1169, n1170, n1171, n1172, n1173, n1174, n1175, n1176, n1177, n1178,
         n1179, n1180, n1181, n1182, N504, n1190, n1191, n1192, n1193, n1194,
         n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204,
         n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214,
         n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224,
         n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234,
         n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244,
         n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254,
         n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264,
         n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274,
         n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284,
         n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294,
         n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304,
         n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314,
         n1315, n1316, n1317, n1318, n1319, n1320, n1321, n1322, n1323, n1324,
         n1325, n1326, n1327, n1328, n1329, n1330, n1331, n1332, n1333, n1334,
         n1335, n1336, n1337, n1338, n1339, n1340, n1341, n1342, n1343, n1344,
         n1345, n1346, n1347, n1348, n1349, n1350, n1351, n1352, n1353, n1354,
         n1355, n1356, n1357, n1358, n1359, n1360, n1361, n1362, n1363, n1364,
         n1365;
  wire   [3:0] curr_state;
  wire   [3:0] next_state;
  wire   [5:0] string_index;
  wire   [3:0] pattern_len;
  wire   [1:0] pattern_curr_state;
  wire   [5:0] string_len_comp;
  wire   [5:0] star_cnt;
  wire   [7:0] test;
  wire   [1:0] string_curr_state;
  wire   [1:0] string_next_state;
  wire   [5:0] string_len;
  wire   [1:0] pattern_next_state;
  wire   [5:2] \r516/carry ;
  wire   [5:2] \r512/carry ;
  wire   [5:2] \r511/carry ;
  wire   [4:1] \add_0_root_sub_0_root_add_250/carry ;

  DFFQX1 \star_cnt_reg[3]  ( .D(n883), .CK(clk), .Q(star_cnt[3]) );
  DFFQX1 \star_cnt_reg[1]  ( .D(n885), .CK(clk), .Q(star_cnt[1]) );
  DFFX1 dot_fg_reg ( .D(n893), .CK(clk), .QN(n56) );
  DFFQX1 \string_len_comp_reg[3]  ( .D(n1178), .CK(clk), .Q(string_len_comp[3]) );
  DFFQX1 \string_len_comp_reg[0]  ( .D(n1181), .CK(clk), .Q(string_len_comp[0]) );
  DFFQX1 \string_len_comp_reg[2]  ( .D(n1179), .CK(clk), .Q(string_len_comp[2]) );
  DFFQX1 \string_len_comp_reg[1]  ( .D(n1180), .CK(clk), .Q(string_len_comp[1]) );
  DFFQX1 \string_len_comp_reg[5]  ( .D(n1176), .CK(clk), .Q(string_len_comp[5]) );
  DFFQX1 \string_len_reg[5]  ( .D(n1171), .CK(clk), .Q(string_len[5]) );
  DFFQX1 \string_len_comp_reg[4]  ( .D(n1177), .CK(clk), .Q(string_len_comp[4]) );
  DFFQX1 \string_len_reg[3]  ( .D(n1173), .CK(clk), .Q(string_len[3]) );
  DFFQX1 \string_len_reg[4]  ( .D(n1172), .CK(clk), .Q(string_len[4]) );
  DFFQX1 \pattern_index_reg[3]  ( .D(n879), .CK(clk), .Q(\pattern_index[3] )
         );
  DFFRX1 \pattern_curr_state_reg[0]  ( .D(pattern_next_state[0]), .CK(clk), 
        .RN(n1292), .Q(pattern_curr_state[0]) );
  DFFRX1 \pattern_curr_state_reg[1]  ( .D(pattern_next_state[1]), .CK(clk), 
        .RN(n1292), .Q(pattern_curr_state[1]), .QN(n398) );
  DFFQX1 \pattern_len_reg[1]  ( .D(n876), .CK(clk), .Q(pattern_len[1]) );
  DFFQX1 \star_fg_reg[1]  ( .D(n895), .CK(clk), .Q(\star_fg[1] ) );
  DFFX1 \string_v_reg[6][5]  ( .D(n1119), .CK(clk), .QN(n337) );
  DFFQX1 \pattern_len_reg[2]  ( .D(n875), .CK(clk), .Q(pattern_len[2]) );
  DFFX1 \string_v_reg[23][5]  ( .D(n983), .CK(clk), .QN(n201) );
  DFFX1 \string_v_reg[7][5]  ( .D(n1111), .CK(clk), .QN(n329) );
  DFFX1 \string_v_reg[6][7]  ( .D(n1121), .CK(clk), .QN(n335) );
  DFFX1 \star_fg_reg[0]  ( .D(n894), .CK(clk), .QN(n72) );
  DFFX1 \string_v_reg[4][5]  ( .D(n1135), .CK(clk), .QN(n353) );
  DFFX1 \string_v_reg[7][7]  ( .D(n1113), .CK(clk), .QN(n327) );
  DFFX1 \string_v_reg[12][5]  ( .D(n1071), .CK(clk), .QN(n289) );
  DFFX1 \string_v_reg[5][5]  ( .D(n1127), .CK(clk), .QN(n345) );
  DFFX1 \string_v_reg[24][5]  ( .D(n975), .CK(clk), .QN(n193) );
  DFFX1 \string_v_reg[23][7]  ( .D(n985), .CK(clk), .QN(n199) );
  DFFX1 \string_v_reg[21][5]  ( .D(n999), .CK(clk), .QN(n217) );
  DFFX1 \string_v_reg[29][5]  ( .D(n935), .CK(clk), .QN(n153) );
  DFFX1 \string_v_reg[13][5]  ( .D(n1063), .CK(clk), .QN(n281) );
  DFFX1 \string_v_reg[22][5]  ( .D(n991), .CK(clk), .QN(n209) );
  DFFX1 \string_v_reg[2][5]  ( .D(n1151), .CK(clk), .QN(n369) );
  DFFX1 \string_v_reg[24][7]  ( .D(n977), .CK(clk), .QN(n191) );
  DFFX1 \string_v_reg[4][7]  ( .D(n1137), .CK(clk), .QN(n351) );
  DFFX1 \string_v_reg[0][5]  ( .D(n1167), .CK(clk), .QN(n385) );
  DFFX1 \string_v_reg[10][5]  ( .D(n1087), .CK(clk), .QN(n305) );
  DFFX1 \string_v_reg[3][5]  ( .D(n1143), .CK(clk), .QN(n361) );
  DFFX1 \string_v_reg[19][5]  ( .D(n1015), .CK(clk), .QN(n233) );
  DFFX1 \string_v_reg[30][5]  ( .D(n927), .CK(clk), .QN(n145) );
  DFFX1 \string_v_reg[12][7]  ( .D(n1073), .CK(clk), .QN(n287) );
  DFFX1 \string_v_reg[5][7]  ( .D(n1129), .CK(clk), .QN(n343) );
  DFFX1 \string_v_reg[1][5]  ( .D(n1159), .CK(clk), .QN(n377) );
  DFFX1 \string_v_reg[11][5]  ( .D(n1079), .CK(clk), .QN(n297) );
  DFFX1 \string_v_reg[27][5]  ( .D(n951), .CK(clk), .QN(n169) );
  DFFX1 \string_v_reg[21][7]  ( .D(n1001), .CK(clk), .QN(n215) );
  DFFX1 \string_v_reg[8][5]  ( .D(n1103), .CK(clk), .QN(n321) );
  DFFX1 \string_v_reg[20][5]  ( .D(n1007), .CK(clk), .QN(n225) );
  DFFX1 \string_v_reg[13][7]  ( .D(n1065), .CK(clk), .QN(n279) );
  DFFX1 \string_v_reg[29][7]  ( .D(n937), .CK(clk), .QN(n151) );
  DFFX1 \string_v_reg[17][5]  ( .D(n1031), .CK(clk), .QN(n249) );
  DFFX1 \string_v_reg[28][5]  ( .D(n943), .CK(clk), .QN(n161) );
  DFFX1 \string_v_reg[22][7]  ( .D(n993), .CK(clk), .QN(n207) );
  DFFX1 \string_v_reg[9][5]  ( .D(n1095), .CK(clk), .QN(n313) );
  DFFX1 \string_v_reg[2][7]  ( .D(n1153), .CK(clk), .QN(n367) );
  DFFX1 \string_v_reg[25][5]  ( .D(n967), .CK(clk), .QN(n185) );
  DFFX1 \string_v_reg[30][7]  ( .D(n929), .CK(clk), .QN(n143) );
  DFFX1 \string_v_reg[6][6]  ( .D(n1120), .CK(clk), .QN(n336) );
  DFFX1 \string_v_reg[18][5]  ( .D(n1023), .CK(clk), .QN(n241) );
  DFFX1 \string_v_reg[0][7]  ( .D(n1169), .CK(clk), .QN(n383) );
  DFFX1 \string_v_reg[10][7]  ( .D(n1089), .CK(clk), .QN(n303) );
  DFFX1 \string_v_reg[3][7]  ( .D(n1145), .CK(clk), .QN(n359) );
  DFFX1 \string_v_reg[6][4]  ( .D(n1118), .CK(clk), .QN(n338) );
  DFFX1 \string_v_reg[26][5]  ( .D(n959), .CK(clk), .QN(n177) );
  DFFX1 \string_v_reg[7][6]  ( .D(n1112), .CK(clk), .QN(n328) );
  DFFX1 \string_v_reg[19][7]  ( .D(n1017), .CK(clk), .QN(n231) );
  DFFX1 \string_v_reg[1][7]  ( .D(n1161), .CK(clk), .QN(n375) );
  DFFX1 \string_v_reg[14][5]  ( .D(n1055), .CK(clk), .QN(n273) );
  DFFX1 \string_v_reg[11][7]  ( .D(n1081), .CK(clk), .QN(n295) );
  DFFX1 \string_v_reg[7][4]  ( .D(n1110), .CK(clk), .QN(n330) );
  DFFX1 \string_v_reg[23][6]  ( .D(n984), .CK(clk), .QN(n200) );
  DFFX1 \string_v_reg[27][7]  ( .D(n953), .CK(clk), .QN(n167) );
  DFFX1 \string_v_reg[8][7]  ( .D(n1105), .CK(clk), .QN(n319) );
  DFFX1 \string_v_reg[20][7]  ( .D(n1009), .CK(clk), .QN(n223) );
  DFFX1 \string_v_reg[23][4]  ( .D(n982), .CK(clk), .QN(n202) );
  DFFX1 \string_v_reg[17][7]  ( .D(n1033), .CK(clk), .QN(n247) );
  DFFX1 \string_v_reg[28][7]  ( .D(n945), .CK(clk), .QN(n159) );
  DFFX1 \string_v_reg[24][6]  ( .D(n976), .CK(clk), .QN(n192) );
  DFFX1 \string_v_reg[9][7]  ( .D(n1097), .CK(clk), .QN(n311) );
  DFFX1 \string_v_reg[24][4]  ( .D(n974), .CK(clk), .QN(n194) );
  DFFX1 \string_v_reg[25][7]  ( .D(n969), .CK(clk), .QN(n183) );
  DFFX1 \string_v_reg[18][7]  ( .D(n1025), .CK(clk), .QN(n239) );
  DFFX1 \string_v_reg[4][6]  ( .D(n1136), .CK(clk), .QN(n352) );
  DFFX1 \string_v_reg[31][5]  ( .D(n919), .CK(clk), .QN(n137) );
  DFFX1 \string_v_reg[14][7]  ( .D(n1057), .CK(clk), .QN(n271) );
  DFFX1 \string_v_reg[4][4]  ( .D(n1134), .CK(clk), .QN(n354) );
  DFFX1 \string_v_reg[26][7]  ( .D(n961), .CK(clk), .QN(n175) );
  DFFX1 \string_v_reg[12][6]  ( .D(n1072), .CK(clk), .QN(n288) );
  DFFX1 \string_v_reg[5][6]  ( .D(n1128), .CK(clk), .QN(n344) );
  DFFX1 \string_v_reg[12][4]  ( .D(n1070), .CK(clk), .QN(n290) );
  DFFX1 \string_v_reg[5][4]  ( .D(n1126), .CK(clk), .QN(n346) );
  DFFX1 \string_v_reg[21][6]  ( .D(n1000), .CK(clk), .QN(n216) );
  DFFX1 \string_v_reg[13][6]  ( .D(n1064), .CK(clk), .QN(n280) );
  DFFX1 \string_v_reg[21][4]  ( .D(n998), .CK(clk), .QN(n218) );
  DFFX1 \string_v_reg[29][6]  ( .D(n936), .CK(clk), .QN(n152) );
  DFFX1 \string_v_reg[31][7]  ( .D(n921), .CK(clk), .QN(n135) );
  DFFX1 \string_v_reg[13][4]  ( .D(n1062), .CK(clk), .QN(n282) );
  DFFX1 \string_v_reg[22][6]  ( .D(n992), .CK(clk), .QN(n208) );
  DFFX1 \string_v_reg[29][4]  ( .D(n934), .CK(clk), .QN(n154) );
  DFFX1 \string_v_reg[2][6]  ( .D(n1152), .CK(clk), .QN(n368) );
  DFFX1 \string_v_reg[15][5]  ( .D(n1047), .CK(clk), .QN(n265) );
  DFFX1 \string_v_reg[22][4]  ( .D(n990), .CK(clk), .QN(n210) );
  DFFX1 \string_v_reg[2][4]  ( .D(n1150), .CK(clk), .QN(n370) );
  DFFX1 \string_v_reg[30][6]  ( .D(n928), .CK(clk), .QN(n144) );
  DFFX1 \string_v_reg[6][3]  ( .D(n1117), .CK(clk), .QN(n339) );
  DFFX1 \string_v_reg[0][6]  ( .D(n1168), .CK(clk), .QN(n384) );
  DFFX1 \string_v_reg[30][4]  ( .D(n926), .CK(clk), .QN(n146) );
  DFFX1 \string_v_reg[10][6]  ( .D(n1088), .CK(clk), .QN(n304) );
  DFFX1 \string_v_reg[3][6]  ( .D(n1144), .CK(clk), .QN(n360) );
  DFFX1 \string_v_reg[0][4]  ( .D(n1166), .CK(clk), .QN(n386) );
  DFFX1 \string_v_reg[10][4]  ( .D(n1086), .CK(clk), .QN(n306) );
  DFFX1 \string_v_reg[3][4]  ( .D(n1142), .CK(clk), .QN(n362) );
  DFFX1 \string_v_reg[19][6]  ( .D(n1016), .CK(clk), .QN(n232) );
  DFFX1 \string_v_reg[1][6]  ( .D(n1160), .CK(clk), .QN(n376) );
  DFFX1 \string_v_reg[7][3]  ( .D(n1109), .CK(clk), .QN(n331) );
  DFFX1 \string_v_reg[11][6]  ( .D(n1080), .CK(clk), .QN(n296) );
  DFFX1 \string_v_reg[19][4]  ( .D(n1014), .CK(clk), .QN(n234) );
  DFFX1 \string_v_reg[27][6]  ( .D(n952), .CK(clk), .QN(n168) );
  DFFX1 \string_v_reg[32][5]  ( .D(n911), .CK(clk), .QN(n129) );
  DFFX1 \string_v_reg[1][4]  ( .D(n1158), .CK(clk), .QN(n378) );
  DFFX1 \string_v_reg[15][7]  ( .D(n1049), .CK(clk), .QN(n263) );
  DFFX1 \string_v_reg[11][4]  ( .D(n1078), .CK(clk), .QN(n298) );
  DFFX1 \string_v_reg[23][3]  ( .D(n981), .CK(clk), .QN(n203) );
  DFFX1 \string_v_reg[8][6]  ( .D(n1104), .CK(clk), .QN(n320) );
  DFFX1 \string_v_reg[20][6]  ( .D(n1008), .CK(clk), .QN(n224) );
  DFFX1 \string_v_reg[27][4]  ( .D(n950), .CK(clk), .QN(n170) );
  DFFX1 \string_v_reg[8][4]  ( .D(n1102), .CK(clk), .QN(n322) );
  DFFX1 \string_v_reg[20][4]  ( .D(n1006), .CK(clk), .QN(n226) );
  DFFX1 \string_v_reg[17][6]  ( .D(n1032), .CK(clk), .QN(n248) );
  DFFX1 \string_v_reg[28][6]  ( .D(n944), .CK(clk), .QN(n160) );
  DFFX1 \string_v_reg[9][6]  ( .D(n1096), .CK(clk), .QN(n312) );
  DFFX1 \string_v_reg[24][3]  ( .D(n973), .CK(clk), .QN(n195) );
  DFFX1 \string_v_reg[17][4]  ( .D(n1030), .CK(clk), .QN(n250) );
  DFFX1 \string_v_reg[14][6]  ( .D(n1056), .CK(clk), .QN(n272) );
  DFFX1 \string_v_reg[28][4]  ( .D(n942), .CK(clk), .QN(n162) );
  DFFX1 \string_v_reg[25][6]  ( .D(n968), .CK(clk), .QN(n184) );
  DFFX1 \string_v_reg[9][4]  ( .D(n1094), .CK(clk), .QN(n314) );
  DFFX1 \string_v_reg[14][4]  ( .D(n1054), .CK(clk), .QN(n274) );
  DFFX1 \string_v_reg[16][5]  ( .D(n1039), .CK(clk), .QN(n257) );
  DFFX1 \string_v_reg[18][6]  ( .D(n1024), .CK(clk), .QN(n240) );
  DFFX1 \string_v_reg[25][4]  ( .D(n966), .CK(clk), .QN(n186) );
  DFFX1 \string_v_reg[6][2]  ( .D(n1116), .CK(clk), .QN(n340) );
  DFFX1 \string_v_reg[4][3]  ( .D(n1133), .CK(clk), .QN(n355) );
  DFFX1 \string_v_reg[32][7]  ( .D(n913), .CK(clk), .QN(n127) );
  DFFX1 \string_v_reg[18][4]  ( .D(n1022), .CK(clk), .QN(n242) );
  DFFX1 \string_v_reg[26][6]  ( .D(n960), .CK(clk), .QN(n176) );
  DFFX1 \string_v_reg[31][6]  ( .D(n920), .CK(clk), .QN(n136) );
  DFFX1 \string_v_reg[26][4]  ( .D(n958), .CK(clk), .QN(n178) );
  DFFX1 \string_v_reg[7][2]  ( .D(n1108), .CK(clk), .QN(n332) );
  DFFX1 \string_v_reg[31][4]  ( .D(n918), .CK(clk), .QN(n138) );
  DFFX1 \string_v_reg[12][3]  ( .D(n1069), .CK(clk), .QN(n291) );
  DFFX1 \string_v_reg[5][3]  ( .D(n1125), .CK(clk), .QN(n347) );
  DFFX1 \string_v_reg[23][2]  ( .D(n980), .CK(clk), .QN(n204) );
  DFFX1 \string_v_reg[21][3]  ( .D(n997), .CK(clk), .QN(n219) );
  DFFX1 \string_v_reg[33][5]  ( .D(n903), .CK(clk), .QN(n121) );
  DFFX1 \string_v_reg[15][6]  ( .D(n1048), .CK(clk), .QN(n264) );
  DFFX1 \string_v_reg[16][7]  ( .D(n1041), .CK(clk), .QN(n255) );
  DFFX1 \string_v_reg[13][3]  ( .D(n1061), .CK(clk), .QN(n283) );
  DFFX1 \string_v_reg[29][3]  ( .D(n933), .CK(clk), .QN(n155) );
  DFFX1 \string_v_reg[24][2]  ( .D(n972), .CK(clk), .QN(n196) );
  DFFX1 \string_v_reg[6][1]  ( .D(n1115), .CK(clk), .QN(n341) );
  DFFX1 \string_v_reg[22][3]  ( .D(n989), .CK(clk), .QN(n211) );
  DFFX1 \string_v_reg[2][3]  ( .D(n1149), .CK(clk), .QN(n371) );
  DFFX1 \string_v_reg[15][4]  ( .D(n1046), .CK(clk), .QN(n266) );
  DFFX1 \string_v_reg[30][3]  ( .D(n925), .CK(clk), .QN(n147) );
  DFFX1 \string_v_reg[4][2]  ( .D(n1132), .CK(clk), .QN(n356) );
  DFFRX1 \curr_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(n1292), .Q(
        curr_state[0]), .QN(n54) );
  DFFX1 \string_v_reg[7][1]  ( .D(n1107), .CK(clk), .QN(n333) );
  DFFX1 \string_v_reg[0][3]  ( .D(n1165), .CK(clk), .QN(n387) );
  DFFX1 \string_v_reg[10][3]  ( .D(n1085), .CK(clk), .QN(n307) );
  DFFX1 \string_v_reg[3][3]  ( .D(n1141), .CK(clk), .QN(n363) );
  DFFX1 \string_v_reg[32][6]  ( .D(n912), .CK(clk), .QN(n128) );
  DFFX1 \string_v_reg[6][0]  ( .D(n1122), .CK(clk), .QN(n342) );
  DFFX1 \string_v_reg[23][1]  ( .D(n979), .CK(clk), .QN(n205) );
  DFFX1 \string_v_reg[33][7]  ( .D(n905), .CK(clk), .QN(n119) );
  DFFX1 \string_v_reg[19][3]  ( .D(n1013), .CK(clk), .QN(n235) );
  DFFX1 \string_v_reg[12][2]  ( .D(n1068), .CK(clk), .QN(n292) );
  DFFX1 \string_v_reg[5][2]  ( .D(n1124), .CK(clk), .QN(n348) );
  DFFX1 \string_v_reg[1][3]  ( .D(n1157), .CK(clk), .QN(n379) );
  DFFX1 \string_v_reg[11][3]  ( .D(n1077), .CK(clk), .QN(n299) );
  DFFX1 \string_v_reg[27][3]  ( .D(n949), .CK(clk), .QN(n171) );
  DFFX1 \string_v_reg[32][4]  ( .D(n910), .CK(clk), .QN(n130) );
  DFFX1 \string_v_reg[7][0]  ( .D(n1114), .CK(clk), .QN(n334) );
  DFFX1 \string_v_reg[21][2]  ( .D(n996), .CK(clk), .QN(n220) );
  DFFX1 \string_v_reg[24][1]  ( .D(n971), .CK(clk), .QN(n197) );
  DFFX1 \string_v_reg[8][3]  ( .D(n1101), .CK(clk), .QN(n323) );
  DFFX1 \string_v_reg[13][2]  ( .D(n1060), .CK(clk), .QN(n284) );
  DFFX1 \string_v_reg[20][3]  ( .D(n1005), .CK(clk), .QN(n227) );
  DFFX1 \string_v_reg[23][0]  ( .D(n986), .CK(clk), .QN(n206) );
  DFFX1 \string_v_reg[29][2]  ( .D(n932), .CK(clk), .QN(n156) );
  DFFX1 \string_v_reg[16][6]  ( .D(n1040), .CK(clk), .QN(n256) );
  DFFX1 \string_v_reg[17][3]  ( .D(n1029), .CK(clk), .QN(n251) );
  DFFX1 \string_v_reg[28][3]  ( .D(n941), .CK(clk), .QN(n163) );
  DFFX1 \string_v_reg[22][2]  ( .D(n988), .CK(clk), .QN(n212) );
  DFFX1 \string_v_reg[4][1]  ( .D(n1131), .CK(clk), .QN(n357) );
  DFFX1 \string_v_reg[2][2]  ( .D(n1148), .CK(clk), .QN(n372) );
  DFFX1 \string_v_reg[9][3]  ( .D(n1093), .CK(clk), .QN(n315) );
  DFFX1 \string_v_reg[14][3]  ( .D(n1053), .CK(clk), .QN(n275) );
  DFFX1 \string_v_reg[25][3]  ( .D(n965), .CK(clk), .QN(n187) );
  DFFX1 \string_v_reg[30][2]  ( .D(n924), .CK(clk), .QN(n148) );
  DFFX1 \string_v_reg[24][0]  ( .D(n978), .CK(clk), .QN(n198) );
  DFFX1 \string_v_reg[16][4]  ( .D(n1038), .CK(clk), .QN(n258) );
  DFFX1 \string_v_reg[18][3]  ( .D(n1021), .CK(clk), .QN(n243) );
  DFFX1 \string_v_reg[0][2]  ( .D(n1164), .CK(clk), .QN(n388) );
  DFFX1 \string_v_reg[12][1]  ( .D(n1067), .CK(clk), .QN(n293) );
  DFFX1 \string_v_reg[5][1]  ( .D(n1123), .CK(clk), .QN(n349) );
  DFFX1 \string_v_reg[10][2]  ( .D(n1084), .CK(clk), .QN(n308) );
  DFFX1 \string_v_reg[3][2]  ( .D(n1140), .CK(clk), .QN(n364) );
  DFFX1 \string_v_reg[26][3]  ( .D(n957), .CK(clk), .QN(n179) );
  DFFX1 \string_v_reg[4][0]  ( .D(n1138), .CK(clk), .QN(n358) );
  DFFX1 \string_v_reg[31][3]  ( .D(n917), .CK(clk), .QN(n139) );
  DFFX1 \string_v_reg[21][1]  ( .D(n995), .CK(clk), .QN(n221) );
  DFFX1 \string_v_reg[19][2]  ( .D(n1012), .CK(clk), .QN(n236) );
  DFFX1 \string_v_reg[1][2]  ( .D(n1156), .CK(clk), .QN(n380) );
  DFFX1 \string_v_reg[33][6]  ( .D(n904), .CK(clk), .QN(n120) );
  DFFX1 \string_v_reg[13][1]  ( .D(n1059), .CK(clk), .QN(n285) );
  DFFX1 \string_v_reg[11][2]  ( .D(n1076), .CK(clk), .QN(n300) );
  DFFX1 \string_v_reg[29][1]  ( .D(n931), .CK(clk), .QN(n157) );
  DFFX1 \string_v_reg[27][2]  ( .D(n948), .CK(clk), .QN(n172) );
  DFFX1 \string_v_reg[12][0]  ( .D(n1074), .CK(clk), .QN(n294) );
  DFFX1 \string_v_reg[5][0]  ( .D(n1130), .CK(clk), .QN(n350) );
  DFFX1 \string_v_reg[8][2]  ( .D(n1100), .CK(clk), .QN(n324) );
  DFFX1 \string_v_reg[22][1]  ( .D(n987), .CK(clk), .QN(n213) );
  DFFX1 \string_v_reg[20][2]  ( .D(n1004), .CK(clk), .QN(n228) );
  DFFX1 \string_v_reg[2][1]  ( .D(n1147), .CK(clk), .QN(n373) );
  DFFX1 \string_v_reg[33][4]  ( .D(n902), .CK(clk), .QN(n122) );
  DFFX1 \string_v_reg[15][3]  ( .D(n1045), .CK(clk), .QN(n267) );
  DFFX1 \string_v_reg[21][0]  ( .D(n1002), .CK(clk), .QN(n222) );
  DFFX1 \string_v_reg[17][2]  ( .D(n1028), .CK(clk), .QN(n252) );
  DFFX1 \string_v_reg[30][1]  ( .D(n923), .CK(clk), .QN(n149) );
  DFFX1 \string_v_reg[28][2]  ( .D(n940), .CK(clk), .QN(n164) );
  DFFX1 \string_v_reg[13][0]  ( .D(n1066), .CK(clk), .QN(n286) );
  DFFX1 \string_v_reg[9][2]  ( .D(n1092), .CK(clk), .QN(n316) );
  DFFX1 \string_v_reg[0][1]  ( .D(n1163), .CK(clk), .QN(n389) );
  DFFX1 \string_v_reg[14][2]  ( .D(n1052), .CK(clk), .QN(n276) );
  DFFX1 \string_v_reg[29][0]  ( .D(n938), .CK(clk), .QN(n158) );
  DFFX1 \string_v_reg[10][1]  ( .D(n1083), .CK(clk), .QN(n309) );
  DFFX1 \string_v_reg[3][1]  ( .D(n1139), .CK(clk), .QN(n365) );
  DFFX1 \string_v_reg[25][2]  ( .D(n964), .CK(clk), .QN(n188) );
  DFFX1 \string_v_reg[22][0]  ( .D(n994), .CK(clk), .QN(n214) );
  DFFX1 \string_v_reg[18][2]  ( .D(n1020), .CK(clk), .QN(n244) );
  DFFX1 \string_v_reg[2][0]  ( .D(n1154), .CK(clk), .QN(n374) );
  DFFX1 \string_v_reg[16][3]  ( .D(n1037), .CK(clk), .QN(n259) );
  DFFX1 \string_v_reg[32][3]  ( .D(n909), .CK(clk), .QN(n131) );
  DFFX1 \string_v_reg[19][1]  ( .D(n1011), .CK(clk), .QN(n237) );
  DFFX1 \string_v_reg[1][1]  ( .D(n1155), .CK(clk), .QN(n381) );
  DFFX1 \string_v_reg[11][1]  ( .D(n1075), .CK(clk), .QN(n301) );
  DFFX1 \string_v_reg[30][0]  ( .D(n930), .CK(clk), .QN(n150) );
  DFFX1 \string_v_reg[26][2]  ( .D(n956), .CK(clk), .QN(n180) );
  DFFX1 \string_v_reg[31][2]  ( .D(n916), .CK(clk), .QN(n140) );
  DFFX1 \string_v_reg[27][1]  ( .D(n947), .CK(clk), .QN(n173) );
  DFFX1 \string_v_reg[0][0]  ( .D(n1170), .CK(clk), .QN(n390) );
  DFFX1 \string_v_reg[10][0]  ( .D(n1090), .CK(clk), .QN(n310) );
  DFFX1 \string_v_reg[8][1]  ( .D(n1099), .CK(clk), .QN(n325) );
  DFFX1 \string_v_reg[3][0]  ( .D(n1146), .CK(clk), .QN(n366) );
  DFFX1 \string_v_reg[20][1]  ( .D(n1003), .CK(clk), .QN(n229) );
  DFFX1 \string_v_reg[19][0]  ( .D(n1018), .CK(clk), .QN(n238) );
  DFFX1 \string_v_reg[17][1]  ( .D(n1027), .CK(clk), .QN(n253) );
  DFFX1 \string_v_reg[28][1]  ( .D(n939), .CK(clk), .QN(n165) );
  DFFX1 \string_v_reg[1][0]  ( .D(n1162), .CK(clk), .QN(n382) );
  DFFX1 \string_v_reg[33][3]  ( .D(n901), .CK(clk), .QN(n123) );
  DFFX1 \string_v_reg[11][0]  ( .D(n1082), .CK(clk), .QN(n302) );
  DFFX1 \string_v_reg[9][1]  ( .D(n1091), .CK(clk), .QN(n317) );
  DFFX1 \string_v_reg[14][1]  ( .D(n1051), .CK(clk), .QN(n277) );
  DFFX1 \string_v_reg[27][0]  ( .D(n954), .CK(clk), .QN(n174) );
  DFFX1 \string_v_reg[25][1]  ( .D(n963), .CK(clk), .QN(n189) );
  DFFX1 \string_v_reg[15][2]  ( .D(n1044), .CK(clk), .QN(n268) );
  DFFX1 \string_v_reg[8][0]  ( .D(n1106), .CK(clk), .QN(n326) );
  DFFX1 \string_v_reg[20][0]  ( .D(n1010), .CK(clk), .QN(n230) );
  DFFX1 \string_v_reg[18][1]  ( .D(n1019), .CK(clk), .QN(n245) );
  DFFX1 \string_v_reg[17][0]  ( .D(n1034), .CK(clk), .QN(n254) );
  DFFX1 \string_v_reg[28][0]  ( .D(n946), .CK(clk), .QN(n166) );
  DFFX1 \string_v_reg[26][1]  ( .D(n955), .CK(clk), .QN(n181) );
  DFFX1 \string_v_reg[31][1]  ( .D(n915), .CK(clk), .QN(n141) );
  DFFX1 \string_v_reg[16][2]  ( .D(n1036), .CK(clk), .QN(n260) );
  DFFX1 \string_v_reg[32][2]  ( .D(n908), .CK(clk), .QN(n132) );
  DFFX1 \string_v_reg[9][0]  ( .D(n1098), .CK(clk), .QN(n318) );
  DFFX1 \string_v_reg[14][0]  ( .D(n1058), .CK(clk), .QN(n278) );
  DFFX1 \string_v_reg[25][0]  ( .D(n970), .CK(clk), .QN(n190) );
  DFFX1 \string_v_reg[18][0]  ( .D(n1026), .CK(clk), .QN(n246) );
  DFFX1 \string_v_reg[33][2]  ( .D(n900), .CK(clk), .QN(n124) );
  DFFX1 \string_v_reg[26][0]  ( .D(n962), .CK(clk), .QN(n182) );
  DFFX1 \string_v_reg[31][0]  ( .D(n922), .CK(clk), .QN(n142) );
  DFFX1 \string_v_reg[15][1]  ( .D(n1043), .CK(clk), .QN(n269) );
  DFFX1 \string_v_reg[16][1]  ( .D(n1035), .CK(clk), .QN(n261) );
  DFFX1 \string_v_reg[32][1]  ( .D(n907), .CK(clk), .QN(n133) );
  DFFX1 \string_v_reg[15][0]  ( .D(n1050), .CK(clk), .QN(n270) );
  DFFRX1 \string_curr_state_reg[1]  ( .D(string_next_state[1]), .CK(clk), .RN(
        n1292), .Q(string_curr_state[1]), .QN(n118) );
  DFFX1 \string_v_reg[33][1]  ( .D(n899), .CK(clk), .QN(n125) );
  DFFX1 \string_v_reg[16][0]  ( .D(n1042), .CK(clk), .QN(n262) );
  DFFX1 \string_v_reg[32][0]  ( .D(n914), .CK(clk), .QN(n134) );
  DFFX1 \string_v_reg[33][0]  ( .D(n906), .CK(clk), .QN(n126) );
  DFFQX1 begin_word_fg_reg ( .D(n896), .CK(clk), .Q(begin_word_fg) );
  DFFRX1 \string_curr_state_reg[0]  ( .D(string_next_state[0]), .CK(clk), .RN(
        n1292), .Q(string_curr_state[0]) );
  DFFQX1 \pattern_reg[5][2]  ( .D(n851), .CK(clk), .Q(\pattern[5][2] ) );
  DFFQX1 \pattern_reg[7][2]  ( .D(n867), .CK(clk), .Q(\pattern[7][2] ) );
  DFFQX1 \pattern_reg[4][2]  ( .D(n843), .CK(clk), .Q(\pattern[4][2] ) );
  DFFQX1 \pattern_reg[6][2]  ( .D(n859), .CK(clk), .Q(\pattern[6][2] ) );
  DFFQX1 \pattern_reg[3][2]  ( .D(n835), .CK(clk), .Q(\pattern[3][2] ) );
  DFFQX1 \pattern_reg[1][2]  ( .D(n819), .CK(clk), .Q(\pattern[1][2] ) );
  DFFQX1 \pattern_reg[2][2]  ( .D(n827), .CK(clk), .Q(\pattern[2][2] ) );
  DFFQX1 \pattern_reg[0][2]  ( .D(n811), .CK(clk), .Q(\pattern[0][2] ) );
  DFFQX1 \pattern_reg[5][7]  ( .D(n856), .CK(clk), .Q(\pattern[5][7] ) );
  DFFQX1 \pattern_reg[7][7]  ( .D(n872), .CK(clk), .Q(\pattern[7][7] ) );
  DFFQX1 \pattern_reg[5][0]  ( .D(n849), .CK(clk), .Q(\pattern[5][0] ) );
  DFFQX1 \pattern_reg[7][0]  ( .D(n865), .CK(clk), .Q(\pattern[7][0] ) );
  DFFQX1 \pattern_reg[4][7]  ( .D(n848), .CK(clk), .Q(\pattern[4][7] ) );
  DFFQX1 \pattern_reg[6][7]  ( .D(n864), .CK(clk), .Q(\pattern[6][7] ) );
  DFFQX1 \pattern_reg[4][0]  ( .D(n841), .CK(clk), .Q(\pattern[4][0] ) );
  DFFQX1 \pattern_reg[6][0]  ( .D(n857), .CK(clk), .Q(\pattern[6][0] ) );
  DFFQX1 \pattern_reg[5][5]  ( .D(n854), .CK(clk), .Q(\pattern[5][5] ) );
  DFFQX1 \pattern_reg[7][5]  ( .D(n870), .CK(clk), .Q(\pattern[7][5] ) );
  DFFQX1 \pattern_reg[3][7]  ( .D(n840), .CK(clk), .Q(\pattern[3][7] ) );
  DFFQX1 \pattern_reg[4][5]  ( .D(n846), .CK(clk), .Q(\pattern[4][5] ) );
  DFFQX1 \pattern_reg[1][7]  ( .D(n824), .CK(clk), .Q(\pattern[1][7] ) );
  DFFQX1 \pattern_reg[6][5]  ( .D(n862), .CK(clk), .Q(\pattern[6][5] ) );
  DFFQX1 \pattern_reg[3][0]  ( .D(n833), .CK(clk), .Q(\pattern[3][0] ) );
  DFFQX1 \pattern_reg[5][3]  ( .D(n852), .CK(clk), .Q(\pattern[5][3] ) );
  DFFQX1 \pattern_reg[1][0]  ( .D(n817), .CK(clk), .Q(\pattern[1][0] ) );
  DFFQX1 \pattern_reg[7][3]  ( .D(n868), .CK(clk), .Q(\pattern[7][3] ) );
  DFFQX1 \pattern_reg[2][7]  ( .D(n832), .CK(clk), .Q(\pattern[2][7] ) );
  DFFQX1 \pattern_reg[0][7]  ( .D(n816), .CK(clk), .Q(\pattern[0][7] ) );
  DFFQX1 \pattern_reg[2][0]  ( .D(n825), .CK(clk), .Q(\pattern[2][0] ) );
  DFFQX1 \pattern_reg[5][1]  ( .D(n850), .CK(clk), .Q(\pattern[5][1] ) );
  DFFQX1 \pattern_reg[4][3]  ( .D(n844), .CK(clk), .Q(\pattern[4][3] ) );
  DFFQX1 \pattern_reg[3][5]  ( .D(n838), .CK(clk), .Q(\pattern[3][5] ) );
  DFFQX1 \pattern_reg[7][1]  ( .D(n866), .CK(clk), .Q(\pattern[7][1] ) );
  DFFQX1 \pattern_reg[0][0]  ( .D(n809), .CK(clk), .Q(\pattern[0][0] ) );
  DFFQX1 \pattern_reg[6][3]  ( .D(n860), .CK(clk), .Q(\pattern[6][3] ) );
  DFFQX1 \pattern_reg[1][5]  ( .D(n822), .CK(clk), .Q(\pattern[1][5] ) );
  DFFQX1 \pattern_reg[4][1]  ( .D(n842), .CK(clk), .Q(\pattern[4][1] ) );
  DFFQX1 \pattern_reg[2][5]  ( .D(n830), .CK(clk), .Q(\pattern[2][5] ) );
  DFFQX1 \pattern_reg[6][1]  ( .D(n858), .CK(clk), .Q(\pattern[6][1] ) );
  DFFQX1 \pattern_reg[0][5]  ( .D(n814), .CK(clk), .Q(\pattern[0][5] ) );
  DFFQX1 \pattern_reg[3][3]  ( .D(n836), .CK(clk), .Q(\pattern[3][3] ) );
  DFFQX1 \pattern_reg[5][6]  ( .D(n855), .CK(clk), .Q(\pattern[5][6] ) );
  DFFQX1 \pattern_reg[1][3]  ( .D(n820), .CK(clk), .Q(\pattern[1][3] ) );
  DFFQX1 \pattern_reg[7][6]  ( .D(n871), .CK(clk), .Q(\pattern[7][6] ) );
  DFFQX1 \pattern_reg[3][1]  ( .D(n834), .CK(clk), .Q(\pattern[3][1] ) );
  DFFQX1 \pattern_reg[2][3]  ( .D(n828), .CK(clk), .Q(\pattern[2][3] ) );
  DFFQX1 \pattern_reg[4][6]  ( .D(n847), .CK(clk), .Q(\pattern[4][6] ) );
  DFFQX1 \pattern_reg[1][1]  ( .D(n818), .CK(clk), .Q(\pattern[1][1] ) );
  DFFQX1 \pattern_reg[0][3]  ( .D(n812), .CK(clk), .Q(\pattern[0][3] ) );
  DFFQX1 \pattern_reg[6][6]  ( .D(n863), .CK(clk), .Q(\pattern[6][6] ) );
  DFFQX1 \pattern_reg[2][1]  ( .D(n826), .CK(clk), .Q(\pattern[2][1] ) );
  DFFQX1 \pattern_reg[0][1]  ( .D(n810), .CK(clk), .Q(\pattern[0][1] ) );
  DFFQX1 \pattern_reg[3][6]  ( .D(n839), .CK(clk), .Q(\pattern[3][6] ) );
  DFFQX1 \pattern_reg[1][6]  ( .D(n823), .CK(clk), .Q(\pattern[1][6] ) );
  DFFQX1 \pattern_reg[2][6]  ( .D(n831), .CK(clk), .Q(\pattern[2][6] ) );
  DFFQX1 \pattern_reg[5][4]  ( .D(n853), .CK(clk), .Q(\pattern[5][4] ) );
  DFFQX1 \pattern_reg[7][4]  ( .D(n869), .CK(clk), .Q(\pattern[7][4] ) );
  DFFQX1 \pattern_reg[0][6]  ( .D(n815), .CK(clk), .Q(\pattern[0][6] ) );
  DFFQX1 \pattern_reg[4][4]  ( .D(n845), .CK(clk), .Q(\pattern[4][4] ) );
  DFFQX1 \pattern_reg[6][4]  ( .D(n861), .CK(clk), .Q(\pattern[6][4] ) );
  DFFQX1 \pattern_reg[3][4]  ( .D(n837), .CK(clk), .Q(\pattern[3][4] ) );
  DFFQX1 \pattern_reg[1][4]  ( .D(n821), .CK(clk), .Q(\pattern[1][4] ) );
  DFFQX1 \pattern_reg[2][4]  ( .D(n829), .CK(clk), .Q(\pattern[2][4] ) );
  DFFQX1 \pattern_reg[0][4]  ( .D(n813), .CK(clk), .Q(\pattern[0][4] ) );
  DFFQX1 \star_cnt_reg[2]  ( .D(n884), .CK(clk), .Q(star_cnt[2]) );
  DFFQX1 \star_cnt_reg[0]  ( .D(n886), .CK(clk), .Q(star_cnt[0]) );
  DFFQX1 \pattern_len_reg[3]  ( .D(n874), .CK(clk), .Q(pattern_len[3]) );
  DFFRX1 \curr_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(n1292), .Q(
        curr_state[2]), .QN(n52) );
  DFFRX1 \curr_state_reg[3]  ( .D(next_state[3]), .CK(clk), .RN(n1292), .Q(
        curr_state[3]), .QN(n50) );
  DFFQX1 \string_index_reg[5]  ( .D(n887), .CK(clk), .Q(string_index[5]) );
  DFFQX1 \pattern_index_reg[1]  ( .D(n881), .CK(clk), .Q(N206) );
  DFFQX1 \string_index_reg[2]  ( .D(n890), .CK(clk), .Q(string_index[2]) );
  DFFQX1 \string_index_reg[3]  ( .D(n889), .CK(clk), .Q(string_index[3]) );
  DFFQX1 \string_index_reg[4]  ( .D(n888), .CK(clk), .Q(string_index[4]) );
  DFFQX1 \match_index_reg[4]  ( .D(n1287), .CK(clk), .Q(n1368) );
  DFFQX1 \match_index_reg[0]  ( .D(n1291), .CK(clk), .Q(n1372) );
  DFFQX1 \match_index_reg[1]  ( .D(n1290), .CK(clk), .Q(n1371) );
  DFFQX1 \match_index_reg[2]  ( .D(n1289), .CK(clk), .Q(n1370) );
  DFFQX1 \match_index_reg[3]  ( .D(n1288), .CK(clk), .Q(n1369) );
  DFFQX1 valid_reg ( .D(n897), .CK(clk), .Q(n1366) );
  DFFX1 match_reg ( .D(n873), .CK(clk), .Q(n1367), .QN(n69) );
  DFFX1 \pattern_len_reg[0]  ( .D(n898), .CK(clk), .Q(pattern_len[0]), .QN(
        n1339) );
  DFFX1 \string_len_reg[2]  ( .D(n1174), .CK(clk), .Q(string_len[2]), .QN(
        n1334) );
  DFFX1 \string_len_reg[1]  ( .D(n1175), .CK(clk), .Q(string_len[1]), .QN(
        n1333) );
  DFFX1 \string_index_reg[1]  ( .D(n891), .CK(clk), .Q(string_index[1]), .QN(
        n1356) );
  DFFRX1 \curr_state_reg[1]  ( .D(n1332), .CK(clk), .RN(n1292), .Q(
        curr_state[1]), .QN(n53) );
  DFFX2 \pattern_index_reg[0]  ( .D(n882), .CK(clk), .Q(N205), .QN(n1228) );
  DFFX2 \string_index_reg[0]  ( .D(n892), .CK(clk), .Q(string_index[0]), .QN(
        n1354) );
  DFFX2 \pattern_index_reg[2]  ( .D(n880), .CK(clk), .Q(N207), .QN(n1226) );
  DFFRX2 \test_reg[7]  ( .D(chardata[7]), .CK(clk), .RN(n1292), .Q(test[7]), 
        .QN(n73) );
  DFFRX2 \test_reg[6]  ( .D(chardata[6]), .CK(clk), .RN(n1292), .Q(test[6]), 
        .QN(n74) );
  DFFRX2 \test_reg[5]  ( .D(chardata[5]), .CK(clk), .RN(n1292), .Q(test[5]), 
        .QN(n75) );
  DFFRX2 \test_reg[4]  ( .D(chardata[4]), .CK(clk), .RN(n1292), .Q(test[4]), 
        .QN(n76) );
  DFFRX2 \test_reg[3]  ( .D(chardata[3]), .CK(clk), .RN(n1292), .Q(test[3]), 
        .QN(n77) );
  DFFRX2 \test_reg[2]  ( .D(chardata[2]), .CK(clk), .RN(n1292), .Q(test[2]), 
        .QN(n78) );
  DFFRX2 \test_reg[1]  ( .D(chardata[1]), .CK(clk), .RN(n1292), .Q(test[1]), 
        .QN(n79) );
  DFFRX2 \test_reg[0]  ( .D(chardata[0]), .CK(clk), .RN(n1292), .Q(test[0]), 
        .QN(n80) );
  DFFX1 \string_len_reg[0]  ( .D(n1182), .CK(clk), .Q(string_len[0]), .QN(
        n1330) );
  AND4X2 U872 ( .A(string_len[4]), .B(string_len[3]), .C(n762), .D(n1337), .Y(
        n765) );
  AND4X2 U873 ( .A(string_len[3]), .B(n762), .C(n1336), .D(n1337), .Y(n788) );
  AND4X2 U874 ( .A(string_len[4]), .B(n762), .C(n1335), .D(n1337), .Y(n779) );
  OAI211X1 U875 ( .A0(n1355), .A1(n701), .B0(n702), .C0(n731), .Y(n710) );
  CLKBUFX2 U876 ( .A(n754), .Y(n1278) );
  NAND3XL U877 ( .A(pattern_len[0]), .B(n1341), .C(n669), .Y(n670) );
  NAND3XL U878 ( .A(pattern_len[0]), .B(n1270), .C(n669), .Y(n672) );
  NAND3XL U879 ( .A(n1348), .B(curr_state[3]), .C(curr_state[1]), .Y(n417) );
  NOR3XL U880 ( .A(curr_state[1]), .B(curr_state[2]), .C(n50), .Y(n691) );
  NAND3XL U881 ( .A(curr_state[1]), .B(n52), .C(n744), .Y(n734) );
  NAND2XL U882 ( .A(n748), .B(curr_state[1]), .Y(n732) );
  OAI22X1 U883 ( .A0(n1228), .A1(n1201), .B0(N205), .B1(n1200), .Y(N213) );
  OAI22X1 U884 ( .A0(n1228), .A1(n1193), .B0(N205), .B1(n1192), .Y(N215) );
  OAI22X1 U885 ( .A0(n1225), .A1(n1228), .B0(N205), .B1(n1224), .Y(N208) );
  OAI22X1 U886 ( .A0(n1228), .A1(n1213), .B0(N205), .B1(n1212), .Y(N210) );
  OAI22X1 U887 ( .A0(n1228), .A1(n1197), .B0(N205), .B1(n1196), .Y(N214) );
  OAI22X1 U888 ( .A0(n1228), .A1(n1205), .B0(N205), .B1(n1204), .Y(N212) );
  OAI22X1 U889 ( .A0(n1228), .A1(n1217), .B0(N205), .B1(n1216), .Y(N209) );
  BUFX12 U890 ( .A(n1367), .Y(match) );
  OAI22X1 U891 ( .A0(n1228), .A1(n1209), .B0(N205), .B1(n1208), .Y(N211) );
  BUFX12 U892 ( .A(n1366), .Y(valid) );
  BUFX16 U893 ( .A(n1369), .Y(match_index[3]) );
  BUFX16 U894 ( .A(n1370), .Y(match_index[2]) );
  BUFX16 U895 ( .A(n1371), .Y(match_index[1]) );
  BUFX16 U896 ( .A(n1372), .Y(match_index[0]) );
  BUFX16 U897 ( .A(n1368), .Y(match_index[4]) );
  XOR2XL U898 ( .A(n433), .B(N214), .Y(n560) );
  XOR2XL U899 ( .A(n428), .B(N210), .Y(n442) );
  XOR2XL U900 ( .A(n434), .B(N215), .Y(n559) );
  XOR2XL U901 ( .A(n431), .B(N212), .Y(n558) );
  XOR2XL U902 ( .A(n435), .B(N209), .Y(n439) );
  XOR2XL U903 ( .A(n427), .B(N208), .Y(n440) );
  NOR2X2 U904 ( .A(n1357), .B(n1356), .Y(n634) );
  NOR2BX1 U905 ( .AN(n642), .B(n1354), .Y(n641) );
  NOR2BX1 U906 ( .AN(n656), .B(n1354), .Y(n654) );
  NOR3BXL U907 ( .AN(n658), .B(n659), .C(n660), .Y(n414) );
  NOR3X1 U908 ( .A(n1333), .B(n1330), .C(n1334), .Y(n764) );
  CLKINVX1 U909 ( .A(n1270), .Y(n1341) );
  OAI222XL U910 ( .A0(n457), .A1(n134), .B0(n458), .B1(n126), .C0(n459), .C1(
        n142), .Y(n585) );
  OAI222XL U911 ( .A0(n457), .A1(n133), .B0(n458), .B1(n125), .C0(n459), .C1(
        n141), .Y(n565) );
  OAI22XL U912 ( .A0(n451), .A1(n190), .B0(n452), .B1(n182), .Y(n588) );
  OAI22XL U913 ( .A0(n453), .A1(n174), .B0(n454), .B1(n166), .Y(n587) );
  OAI22XL U914 ( .A0(n451), .A1(n189), .B0(n452), .B1(n181), .Y(n568) );
  OAI22XL U915 ( .A0(n453), .A1(n173), .B0(n454), .B1(n165), .Y(n567) );
  OAI222XL U916 ( .A0(n457), .A1(n132), .B0(n458), .B1(n124), .C0(n459), .C1(
        n140), .Y(n625) );
  OAI22XL U917 ( .A0(n455), .A1(n158), .B0(n456), .B1(n150), .Y(n586) );
  OAI222XL U918 ( .A0(n457), .A1(n131), .B0(n458), .B1(n123), .C0(n459), .C1(
        n139), .Y(n605) );
  OAI22XL U919 ( .A0(n455), .A1(n157), .B0(n456), .B1(n149), .Y(n566) );
  OAI22XL U920 ( .A0(n451), .A1(n188), .B0(n452), .B1(n180), .Y(n628) );
  OAI22XL U921 ( .A0(n453), .A1(n172), .B0(n454), .B1(n164), .Y(n627) );
  OAI22XL U922 ( .A0(n451), .A1(n187), .B0(n452), .B1(n179), .Y(n608) );
  OAI22XL U923 ( .A0(n453), .A1(n171), .B0(n454), .B1(n163), .Y(n607) );
  OAI22XL U924 ( .A0(n455), .A1(n156), .B0(n456), .B1(n148), .Y(n626) );
  OAI22XL U925 ( .A0(n455), .A1(n155), .B0(n456), .B1(n147), .Y(n606) );
  OAI222XL U926 ( .A0(n457), .A1(n130), .B0(n458), .B1(n122), .C0(n459), .C1(
        n138), .Y(n501) );
  OAI222XL U927 ( .A0(n457), .A1(n128), .B0(n458), .B1(n120), .C0(n459), .C1(
        n136), .Y(n541) );
  OAI22XL U928 ( .A0(n451), .A1(n186), .B0(n452), .B1(n178), .Y(n504) );
  OAI22XL U929 ( .A0(n451), .A1(n184), .B0(n452), .B1(n176), .Y(n544) );
  OAI22XL U930 ( .A0(n453), .A1(n170), .B0(n454), .B1(n162), .Y(n503) );
  OAI22XL U931 ( .A0(n453), .A1(n168), .B0(n454), .B1(n160), .Y(n543) );
  OAI22XL U932 ( .A0(n455), .A1(n154), .B0(n456), .B1(n146), .Y(n502) );
  OAI22XL U933 ( .A0(n455), .A1(n152), .B0(n456), .B1(n144), .Y(n542) );
  NOR2BX1 U934 ( .AN(n642), .B(string_index[0]), .Y(n640) );
  OAI222XL U935 ( .A0(n457), .A1(n129), .B0(n458), .B1(n121), .C0(n459), .C1(
        n137), .Y(n447) );
  OAI22XL U936 ( .A0(n451), .A1(n185), .B0(n452), .B1(n177), .Y(n450) );
  OAI22XL U937 ( .A0(n453), .A1(n169), .B0(n454), .B1(n161), .Y(n449) );
  OAI22XL U938 ( .A0(n455), .A1(n153), .B0(n456), .B1(n145), .Y(n448) );
  OAI222XL U939 ( .A0(n457), .A1(n127), .B0(n458), .B1(n119), .C0(n459), .C1(
        n135), .Y(n521) );
  OAI22XL U940 ( .A0(n451), .A1(n183), .B0(n452), .B1(n175), .Y(n524) );
  OAI22XL U941 ( .A0(n453), .A1(n167), .B0(n454), .B1(n159), .Y(n523) );
  OAI22XL U942 ( .A0(n455), .A1(n151), .B0(n456), .B1(n143), .Y(n522) );
  NOR2BX1 U943 ( .AN(n649), .B(string_index[0]), .Y(n648) );
  NOR2X2 U944 ( .A(n1357), .B(string_index[1]), .Y(n633) );
  OAI22XL U945 ( .A0(n464), .A1(n254), .B0(n465), .B1(n246), .Y(n592) );
  OAI22XL U946 ( .A0(n466), .A1(n238), .B0(n467), .B1(n230), .Y(n591) );
  OAI22XL U947 ( .A0(n464), .A1(n253), .B0(n465), .B1(n245), .Y(n572) );
  OAI22XL U948 ( .A0(n466), .A1(n237), .B0(n467), .B1(n229), .Y(n571) );
  NOR2BX1 U949 ( .AN(n635), .B(string_index[0]), .Y(n630) );
  OAI22XL U950 ( .A0(n468), .A1(n222), .B0(n469), .B1(n214), .Y(n590) );
  OAI22XL U951 ( .A0(n468), .A1(n221), .B0(n469), .B1(n213), .Y(n570) );
  OAI22XL U952 ( .A0(n464), .A1(n252), .B0(n465), .B1(n244), .Y(n639) );
  OAI22XL U953 ( .A0(n466), .A1(n236), .B0(n467), .B1(n228), .Y(n638) );
  OAI22XL U954 ( .A0(n464), .A1(n251), .B0(n465), .B1(n243), .Y(n612) );
  OAI22XL U955 ( .A0(n466), .A1(n235), .B0(n467), .B1(n227), .Y(n611) );
  OAI22XL U956 ( .A0(n468), .A1(n220), .B0(n469), .B1(n212), .Y(n637) );
  OAI22XL U957 ( .A0(n468), .A1(n219), .B0(n469), .B1(n211), .Y(n610) );
  OAI22XL U958 ( .A0(n470), .A1(n206), .B0(n471), .B1(n198), .Y(n589) );
  OAI22XL U959 ( .A0(n470), .A1(n205), .B0(n471), .B1(n197), .Y(n569) );
  OAI22XL U960 ( .A0(n464), .A1(n250), .B0(n465), .B1(n242), .Y(n508) );
  OAI22XL U961 ( .A0(n464), .A1(n248), .B0(n465), .B1(n240), .Y(n548) );
  OAI22XL U962 ( .A0(n466), .A1(n234), .B0(n467), .B1(n226), .Y(n507) );
  OAI22XL U963 ( .A0(n466), .A1(n232), .B0(n467), .B1(n224), .Y(n547) );
  OAI22XL U964 ( .A0(n470), .A1(n204), .B0(n471), .B1(n196), .Y(n636) );
  OAI22XL U965 ( .A0(n468), .A1(n218), .B0(n469), .B1(n210), .Y(n506) );
  OAI22XL U966 ( .A0(n468), .A1(n216), .B0(n469), .B1(n208), .Y(n546) );
  OAI22XL U967 ( .A0(n470), .A1(n203), .B0(n471), .B1(n195), .Y(n609) );
  OAI22XL U968 ( .A0(n464), .A1(n249), .B0(n465), .B1(n241), .Y(n463) );
  OAI22XL U969 ( .A0(n466), .A1(n233), .B0(n467), .B1(n225), .Y(n462) );
  OAI22XL U970 ( .A0(n470), .A1(n202), .B0(n471), .B1(n194), .Y(n505) );
  OAI22XL U971 ( .A0(n470), .A1(n200), .B0(n471), .B1(n192), .Y(n545) );
  OAI22XL U972 ( .A0(n468), .A1(n217), .B0(n469), .B1(n209), .Y(n461) );
  OAI22XL U973 ( .A0(n470), .A1(n201), .B0(n471), .B1(n193), .Y(n460) );
  OAI22XL U974 ( .A0(n464), .A1(n247), .B0(n465), .B1(n239), .Y(n528) );
  OAI22XL U975 ( .A0(n466), .A1(n231), .B0(n467), .B1(n223), .Y(n527) );
  OAI22XL U976 ( .A0(n468), .A1(n215), .B0(n469), .B1(n207), .Y(n526) );
  NOR2BX1 U977 ( .AN(n656), .B(string_index[0]), .Y(n655) );
  OAI22XL U978 ( .A0(n1261), .A1(n390), .B0(n490), .B1(n382), .Y(n600) );
  OAI22XL U979 ( .A0(n1261), .A1(n389), .B0(n490), .B1(n381), .Y(n580) );
  OAI22XL U980 ( .A0(n1261), .A1(n388), .B0(n490), .B1(n380), .Y(n653) );
  OAI22XL U981 ( .A0(n470), .A1(n199), .B0(n471), .B1(n191), .Y(n525) );
  OAI22XL U982 ( .A0(n1261), .A1(n387), .B0(n490), .B1(n379), .Y(n620) );
  OAI22XL U983 ( .A0(n493), .A1(n358), .B0(n494), .B1(n350), .Y(n598) );
  OAI22XL U984 ( .A0(n493), .A1(n357), .B0(n494), .B1(n349), .Y(n578) );
  OAI22XL U985 ( .A0(n495), .A1(n342), .B0(n496), .B1(n334), .Y(n597) );
  OAI22XL U986 ( .A0(n495), .A1(n341), .B0(n496), .B1(n333), .Y(n577) );
  OAI22XL U987 ( .A0(n493), .A1(n356), .B0(n494), .B1(n348), .Y(n651) );
  OAI22XL U988 ( .A0(n493), .A1(n355), .B0(n494), .B1(n347), .Y(n618) );
  OAI22XL U989 ( .A0(n495), .A1(n340), .B0(n496), .B1(n332), .Y(n650) );
  OAI22XL U990 ( .A0(n495), .A1(n339), .B0(n496), .B1(n331), .Y(n617) );
  OAI22XL U991 ( .A0(n1261), .A1(n384), .B0(n490), .B1(n376), .Y(n556) );
  OAI22XL U992 ( .A0(n493), .A1(n354), .B0(n494), .B1(n346), .Y(n514) );
  OAI22XL U993 ( .A0(n493), .A1(n352), .B0(n494), .B1(n344), .Y(n554) );
  OAI22XL U994 ( .A0(n1261), .A1(n386), .B0(n490), .B1(n378), .Y(n516) );
  OAI22XL U995 ( .A0(n495), .A1(n338), .B0(n496), .B1(n330), .Y(n513) );
  OAI22XL U996 ( .A0(n495), .A1(n336), .B0(n496), .B1(n328), .Y(n553) );
  OAI22XL U997 ( .A0(n493), .A1(n353), .B0(n494), .B1(n345), .Y(n486) );
  OAI22XL U998 ( .A0(n495), .A1(n337), .B0(n496), .B1(n329), .Y(n485) );
  OAI22XL U999 ( .A0(n491), .A1(n374), .B0(n492), .B1(n366), .Y(n599) );
  OAI22XL U1000 ( .A0(n491), .A1(n373), .B0(n492), .B1(n365), .Y(n579) );
  OAI22XL U1001 ( .A0(n491), .A1(n372), .B0(n492), .B1(n364), .Y(n652) );
  OAI22XL U1002 ( .A0(n493), .A1(n351), .B0(n494), .B1(n343), .Y(n534) );
  OAI22XL U1003 ( .A0(n1261), .A1(n383), .B0(n490), .B1(n375), .Y(n536) );
  OAI22XL U1004 ( .A0(n491), .A1(n371), .B0(n492), .B1(n363), .Y(n619) );
  OAI22XL U1005 ( .A0(n495), .A1(n335), .B0(n496), .B1(n327), .Y(n533) );
  NOR2X2 U1006 ( .A(string_index[1]), .B(string_index[2]), .Y(n631) );
  OAI22XL U1007 ( .A0(n491), .A1(n368), .B0(n492), .B1(n360), .Y(n555) );
  NOR2X2 U1008 ( .A(n1356), .B(string_index[2]), .Y(n629) );
  OAI22XL U1009 ( .A0(n491), .A1(n370), .B0(n492), .B1(n362), .Y(n515) );
  OAI22XL U1010 ( .A0(n1261), .A1(n385), .B0(n490), .B1(n377), .Y(n488) );
  OAI22XL U1011 ( .A0(n491), .A1(n367), .B0(n492), .B1(n359), .Y(n535) );
  OAI22XL U1012 ( .A0(n491), .A1(n369), .B0(n492), .B1(n361), .Y(n487) );
  CLKINVX1 U1013 ( .A(N206), .Y(n1364) );
  NAND4BX1 U1014 ( .AN(n730), .B(n742), .C(n741), .D(n743), .Y(n739) );
  NOR4X1 U1015 ( .A(n667), .B(n425), .C(n1270), .D(pattern_len[3]), .Y(n660)
         );
  NAND2X1 U1016 ( .A(string_curr_state[0]), .B(n118), .Y(n403) );
  NOR2X1 U1017 ( .A(n404), .B(pattern_len[3]), .Y(n664) );
  NOR3BXL U1018 ( .AN(n664), .B(pattern_len[0]), .C(pattern_len[2]), .Y(n662)
         );
  CLKBUFX3 U1019 ( .A(n672), .Y(n1262) );
  CLKBUFX3 U1020 ( .A(n670), .Y(n1264) );
  CLKINVX1 U1021 ( .A(string_len[5]), .Y(n1337) );
  NAND2X1 U1022 ( .A(test[0]), .B(n1293), .Y(n757) );
  NAND2X1 U1023 ( .A(test[7]), .B(n1293), .Y(n756) );
  NAND2X1 U1024 ( .A(test[6]), .B(n1293), .Y(n755) );
  NAND2X1 U1025 ( .A(test[4]), .B(n1293), .Y(n753) );
  NAND2X1 U1026 ( .A(test[3]), .B(n1293), .Y(n752) );
  NAND2X1 U1027 ( .A(test[2]), .B(n1293), .Y(n751) );
  NAND2X1 U1028 ( .A(test[1]), .B(n1293), .Y(n749) );
  NOR2X1 U1029 ( .A(n807), .B(test[5]), .Y(n754) );
  NOR3X2 U1030 ( .A(string_len[1]), .B(string_len[2]), .C(n1330), .Y(n758) );
  NOR3X1 U1031 ( .A(n1330), .B(string_len[2]), .C(n1333), .Y(n773) );
  NOR3X1 U1032 ( .A(n1330), .B(string_len[1]), .C(n1334), .Y(n769) );
  NOR3X1 U1033 ( .A(n1333), .B(string_len[0]), .C(n1334), .Y(n767) );
  NOR3X1 U1034 ( .A(string_len[0]), .B(string_len[1]), .C(n1334), .Y(n771) );
  NOR3X1 U1035 ( .A(string_len[0]), .B(string_len[2]), .C(n1333), .Y(n775) );
  NOR3X2 U1036 ( .A(string_len[1]), .B(string_len[2]), .C(string_len[0]), .Y(
        n761) );
  CLKINVX1 U1037 ( .A(n719), .Y(n1345) );
  INVX3 U1038 ( .A(n1238), .Y(n1301) );
  AND4X1 U1039 ( .A(n410), .B(n411), .C(n412), .D(n1343), .Y(next_state[2]) );
  NAND4BX1 U1040 ( .AN(n427), .B(n428), .C(n429), .D(n430), .Y(n419) );
  NOR2X1 U1041 ( .A(n435), .B(n436), .Y(n429) );
  NOR4X1 U1042 ( .A(n431), .B(n432), .C(n433), .D(n434), .Y(n430) );
  NAND2X2 U1043 ( .A(n647), .B(n634), .Y(n482) );
  NAND2X2 U1044 ( .A(n634), .B(n632), .Y(n459) );
  NAND2X2 U1045 ( .A(n641), .B(n634), .Y(n470) );
  NAND2X2 U1046 ( .A(n654), .B(n634), .Y(n496) );
  INVX3 U1047 ( .A(n1231), .Y(n1294) );
  INVX3 U1048 ( .A(n766), .Y(n1324) );
  INVX3 U1049 ( .A(n763), .Y(n1325) );
  INVX3 U1050 ( .A(n1239), .Y(n1302) );
  INVX3 U1051 ( .A(n1247), .Y(n1310) );
  INVX3 U1052 ( .A(n1241), .Y(n1304) );
  INVX3 U1053 ( .A(n1249), .Y(n1312) );
  INVX3 U1054 ( .A(n1243), .Y(n1306) );
  INVX3 U1055 ( .A(n1251), .Y(n1314) );
  INVX3 U1056 ( .A(n1245), .Y(n1308) );
  INVX3 U1057 ( .A(n1253), .Y(n1316) );
  INVX3 U1058 ( .A(n1240), .Y(n1303) );
  INVX3 U1059 ( .A(n1248), .Y(n1311) );
  INVX3 U1060 ( .A(n1242), .Y(n1305) );
  INVX3 U1061 ( .A(n1250), .Y(n1313) );
  INVX3 U1062 ( .A(n1244), .Y(n1307) );
  INVX3 U1063 ( .A(n1252), .Y(n1315) );
  INVX3 U1064 ( .A(n1246), .Y(n1309) );
  INVX3 U1065 ( .A(n1254), .Y(n1317) );
  INVX3 U1066 ( .A(n1255), .Y(n1318) );
  INVX3 U1067 ( .A(n1256), .Y(n1319) );
  INVX3 U1068 ( .A(n1257), .Y(n1320) );
  INVX3 U1069 ( .A(n1259), .Y(n1322) );
  INVX3 U1070 ( .A(n1258), .Y(n1321) );
  INVX3 U1071 ( .A(n1260), .Y(n1323) );
  NOR2BX1 U1072 ( .AN(n710), .B(n682), .Y(n719) );
  CLKINVX1 U1073 ( .A(n1261), .Y(n1355) );
  OAI21XL U1074 ( .A0(n712), .A1(n1345), .B0(n710), .Y(n720) );
  INVX3 U1075 ( .A(n1233), .Y(n1296) );
  INVX3 U1076 ( .A(n1235), .Y(n1298) );
  INVX3 U1077 ( .A(n1237), .Y(n1300) );
  INVX3 U1078 ( .A(n1232), .Y(n1295) );
  INVX3 U1079 ( .A(n1234), .Y(n1297) );
  INVX3 U1080 ( .A(n1236), .Y(n1299) );
  CLKBUFX3 U1081 ( .A(n796), .Y(n1238) );
  NAND2X1 U1082 ( .A(n797), .B(n764), .Y(n796) );
  NOR2X1 U1083 ( .A(n682), .B(n674), .Y(n675) );
  INVX3 U1084 ( .A(n750), .Y(n1327) );
  INVX3 U1085 ( .A(n760), .Y(n1326) );
  NOR2X1 U1086 ( .A(n730), .B(n1353), .Y(n682) );
  XOR2XL U1087 ( .A(n436), .B(N211), .Y(n441) );
  AND2X2 U1088 ( .A(n437), .B(n438), .Y(n418) );
  NOR4X1 U1089 ( .A(n557), .B(n558), .C(n559), .D(n560), .Y(n437) );
  NOR4X1 U1090 ( .A(n439), .B(n440), .C(n441), .D(n442), .Y(n438) );
  XOR2XL U1091 ( .A(n432), .B(N213), .Y(n557) );
  CLKINVX1 U1092 ( .A(n413), .Y(n1332) );
  AOI221XL U1093 ( .A0(n406), .A1(n1347), .B0(n414), .B1(n1351), .C0(n415), 
        .Y(n413) );
  AND3X2 U1094 ( .A(n416), .B(n412), .C(n1343), .Y(n415) );
  OAI211X1 U1095 ( .A0(n418), .A1(n1361), .B0(n411), .C0(n410), .Y(n416) );
  OAI22XL U1096 ( .A0(n414), .A1(n407), .B0(n422), .B1(n417), .Y(next_state[0]) );
  NOR2BXL U1097 ( .AN(n412), .B(n423), .Y(n422) );
  AOI211X1 U1098 ( .A0(n424), .A1(n425), .B0(n418), .C0(n1338), .Y(n423) );
  CLKINVX1 U1099 ( .A(n411), .Y(n1338) );
  CLKBUFX3 U1100 ( .A(n1222), .Y(n1230) );
  NOR2X1 U1101 ( .A(n1226), .B(n1227), .Y(n1222) );
  NAND4BXL U1102 ( .AN(n419), .B(n420), .C(N210), .D(n421), .Y(n410) );
  NOR4XL U1103 ( .A(N214), .B(N212), .C(N211), .D(N209), .Y(n421) );
  AND4XL U1104 ( .A(N212), .B(N210), .C(N214), .D(n657), .Y(n424) );
  NOR4XL U1105 ( .A(N215), .B(N211), .C(N209), .D(N208), .Y(n657) );
  NAND4XL U1106 ( .A(N212), .B(N211), .C(N214), .D(n426), .Y(n411) );
  NOR4BBXL U1107 ( .AN(n420), .BN(N209), .C(N210), .D(n419), .Y(n426) );
  NAND2XL U1108 ( .A(n424), .B(N213), .Y(n412) );
  NOR3BXL U1109 ( .AN(N213), .B(N208), .C(N215), .Y(n420) );
  NAND2X2 U1110 ( .A(n640), .B(n631), .Y(n483) );
  NAND4X1 U1111 ( .A(n581), .B(n582), .C(n583), .D(n584), .Y(n434) );
  NOR4X1 U1112 ( .A(n597), .B(n598), .C(n599), .D(n600), .Y(n581) );
  NOR4X1 U1113 ( .A(n589), .B(n590), .C(n591), .D(n592), .Y(n583) );
  NOR4X1 U1114 ( .A(n585), .B(n586), .C(n587), .D(n588), .Y(n584) );
  NAND4X1 U1115 ( .A(n561), .B(n562), .C(n563), .D(n564), .Y(n433) );
  NOR4X1 U1116 ( .A(n577), .B(n578), .C(n579), .D(n580), .Y(n561) );
  NOR4X1 U1117 ( .A(n569), .B(n570), .C(n571), .D(n572), .Y(n563) );
  NOR4X1 U1118 ( .A(n565), .B(n566), .C(n567), .D(n568), .Y(n564) );
  NAND4X1 U1119 ( .A(n621), .B(n622), .C(n623), .D(n624), .Y(n432) );
  NOR4X1 U1120 ( .A(n650), .B(n651), .C(n652), .D(n653), .Y(n621) );
  NOR4X1 U1121 ( .A(n636), .B(n637), .C(n638), .D(n639), .Y(n623) );
  NOR4X1 U1122 ( .A(n625), .B(n626), .C(n627), .D(n628), .Y(n624) );
  NAND4X1 U1123 ( .A(n601), .B(n602), .C(n603), .D(n604), .Y(n431) );
  NOR4X1 U1124 ( .A(n617), .B(n618), .C(n619), .D(n620), .Y(n601) );
  NOR4X1 U1125 ( .A(n609), .B(n610), .C(n611), .D(n612), .Y(n603) );
  NOR4X1 U1126 ( .A(n605), .B(n606), .C(n607), .D(n608), .Y(n604) );
  NOR2BX1 U1127 ( .AN(n649), .B(n1354), .Y(n647) );
  NAND2X2 U1128 ( .A(n629), .B(n630), .Y(n452) );
  NOR2X1 U1129 ( .A(n1359), .B(n1358), .Y(n635) );
  NAND4X1 U1130 ( .A(n497), .B(n498), .C(n499), .D(n500), .Y(n436) );
  NOR4X1 U1131 ( .A(n513), .B(n514), .C(n515), .D(n516), .Y(n497) );
  NOR4X1 U1132 ( .A(n505), .B(n506), .C(n507), .D(n508), .Y(n499) );
  NOR4X1 U1133 ( .A(n501), .B(n502), .C(n503), .D(n504), .Y(n500) );
  NAND2X2 U1134 ( .A(n640), .B(n629), .Y(n465) );
  NAND2X2 U1135 ( .A(n633), .B(n630), .Y(n454) );
  NAND2X2 U1136 ( .A(n630), .B(n634), .Y(n456) );
  NAND2X2 U1137 ( .A(n640), .B(n633), .Y(n467) );
  NAND4X1 U1138 ( .A(n537), .B(n538), .C(n539), .D(n540), .Y(n435) );
  NOR4X1 U1139 ( .A(n553), .B(n554), .C(n555), .D(n556), .Y(n537) );
  NOR4X1 U1140 ( .A(n545), .B(n546), .C(n547), .D(n548), .Y(n539) );
  NOR4X1 U1141 ( .A(n541), .B(n542), .C(n543), .D(n544), .Y(n540) );
  NAND2X2 U1142 ( .A(n647), .B(n631), .Y(n477) );
  NAND2X2 U1143 ( .A(n640), .B(n634), .Y(n469) );
  NAND2X2 U1144 ( .A(n647), .B(n629), .Y(n479) );
  NOR2BX1 U1145 ( .AN(n635), .B(n1354), .Y(n632) );
  NAND2X2 U1146 ( .A(n647), .B(n633), .Y(n481) );
  NAND2X2 U1147 ( .A(n631), .B(n632), .Y(n451) );
  NAND2X2 U1148 ( .A(n641), .B(n631), .Y(n464) );
  NAND2X2 U1149 ( .A(n629), .B(n632), .Y(n453) );
  NAND2X2 U1150 ( .A(n648), .B(n634), .Y(n484) );
  NAND2X2 U1151 ( .A(n641), .B(n629), .Y(n466) );
  NAND2X2 U1152 ( .A(n631), .B(n630), .Y(n471) );
  NAND4X1 U1153 ( .A(n517), .B(n518), .C(n519), .D(n520), .Y(n427) );
  NOR4X1 U1154 ( .A(n533), .B(n534), .C(n535), .D(n536), .Y(n517) );
  NOR4X1 U1155 ( .A(n525), .B(n526), .C(n527), .D(n528), .Y(n519) );
  NOR4X1 U1156 ( .A(n521), .B(n522), .C(n523), .D(n524), .Y(n520) );
  NAND2X2 U1157 ( .A(n633), .B(n632), .Y(n455) );
  NAND2X2 U1158 ( .A(n648), .B(n631), .Y(n476) );
  NAND2X2 U1159 ( .A(n641), .B(n633), .Y(n468) );
  NAND2X2 U1160 ( .A(n648), .B(n629), .Y(n478) );
  NAND2X2 U1161 ( .A(n648), .B(n633), .Y(n480) );
  NAND4X1 U1162 ( .A(n443), .B(n444), .C(n445), .D(n446), .Y(n428) );
  NOR4X1 U1163 ( .A(n485), .B(n486), .C(n487), .D(n488), .Y(n443) );
  NOR4X1 U1164 ( .A(n460), .B(n461), .C(n462), .D(n463), .Y(n445) );
  NOR4X1 U1165 ( .A(n447), .B(n448), .C(n449), .D(n450), .Y(n446) );
  NAND2X2 U1166 ( .A(n654), .B(n629), .Y(n492) );
  NAND2X2 U1167 ( .A(n654), .B(n633), .Y(n494) );
  NAND2X2 U1168 ( .A(n655), .B(n629), .Y(n491) );
  NAND2X2 U1169 ( .A(n655), .B(n633), .Y(n493) );
  NAND2X2 U1170 ( .A(n655), .B(n634), .Y(n495) );
  NAND3X2 U1171 ( .A(n631), .B(n1360), .C(n654), .Y(n490) );
  CLKBUFX3 U1172 ( .A(n489), .Y(n1261) );
  NAND3X1 U1173 ( .A(n631), .B(n1360), .C(n655), .Y(n489) );
  AND4X2 U1174 ( .A(n762), .B(n1335), .C(n1336), .D(n1337), .Y(n797) );
  CLKINVX1 U1175 ( .A(n807), .Y(n1329) );
  NAND2X1 U1176 ( .A(n403), .B(n1329), .Y(n762) );
  CLKBUFX3 U1177 ( .A(n804), .Y(n1231) );
  AO21X1 U1178 ( .A0(n761), .A1(n797), .B0(n806), .Y(n804) );
  NAND2X2 U1179 ( .A(n767), .B(n765), .Y(n766) );
  NAND2X2 U1180 ( .A(n764), .B(n765), .Y(n763) );
  CLKBUFX3 U1181 ( .A(n795), .Y(n1239) );
  NAND2X1 U1182 ( .A(n788), .B(n761), .Y(n795) );
  CLKBUFX3 U1183 ( .A(n786), .Y(n1247) );
  NAND2X1 U1184 ( .A(n779), .B(n761), .Y(n786) );
  CLKBUFX3 U1185 ( .A(n793), .Y(n1241) );
  NAND2X1 U1186 ( .A(n788), .B(n775), .Y(n793) );
  CLKBUFX3 U1187 ( .A(n784), .Y(n1249) );
  NAND2X1 U1188 ( .A(n779), .B(n775), .Y(n784) );
  CLKBUFX3 U1189 ( .A(n791), .Y(n1243) );
  NAND2X1 U1190 ( .A(n788), .B(n771), .Y(n791) );
  CLKBUFX3 U1191 ( .A(n782), .Y(n1251) );
  NAND2X1 U1192 ( .A(n779), .B(n771), .Y(n782) );
  CLKBUFX3 U1193 ( .A(n789), .Y(n1245) );
  NAND2X1 U1194 ( .A(n788), .B(n767), .Y(n789) );
  CLKBUFX3 U1195 ( .A(n780), .Y(n1253) );
  NAND2X1 U1196 ( .A(n779), .B(n767), .Y(n780) );
  CLKBUFX3 U1197 ( .A(n794), .Y(n1240) );
  NAND2X1 U1198 ( .A(n788), .B(n758), .Y(n794) );
  CLKBUFX3 U1199 ( .A(n785), .Y(n1248) );
  NAND2X1 U1200 ( .A(n779), .B(n758), .Y(n785) );
  CLKBUFX3 U1201 ( .A(n792), .Y(n1242) );
  NAND2X1 U1202 ( .A(n788), .B(n773), .Y(n792) );
  CLKBUFX3 U1203 ( .A(n783), .Y(n1250) );
  NAND2X1 U1204 ( .A(n779), .B(n773), .Y(n783) );
  CLKBUFX3 U1205 ( .A(n790), .Y(n1244) );
  NAND2X1 U1206 ( .A(n788), .B(n769), .Y(n790) );
  CLKBUFX3 U1207 ( .A(n781), .Y(n1252) );
  NAND2X1 U1208 ( .A(n779), .B(n769), .Y(n781) );
  CLKBUFX3 U1209 ( .A(n787), .Y(n1246) );
  NAND2X1 U1210 ( .A(n788), .B(n764), .Y(n787) );
  CLKBUFX3 U1211 ( .A(n778), .Y(n1254) );
  NAND2X1 U1212 ( .A(n779), .B(n764), .Y(n778) );
  CLKBUFX3 U1213 ( .A(n777), .Y(n1255) );
  NAND2X1 U1214 ( .A(n765), .B(n761), .Y(n777) );
  CLKBUFX3 U1215 ( .A(n776), .Y(n1256) );
  NAND2X1 U1216 ( .A(n765), .B(n758), .Y(n776) );
  CLKBUFX3 U1217 ( .A(n774), .Y(n1257) );
  NAND2X1 U1218 ( .A(n775), .B(n765), .Y(n774) );
  CLKBUFX3 U1219 ( .A(n770), .Y(n1259) );
  NAND2X1 U1220 ( .A(n771), .B(n765), .Y(n770) );
  CLKBUFX3 U1221 ( .A(n772), .Y(n1258) );
  NAND2X1 U1222 ( .A(n773), .B(n765), .Y(n772) );
  CLKBUFX3 U1223 ( .A(n768), .Y(n1260) );
  NAND2X1 U1224 ( .A(n769), .B(n765), .Y(n768) );
  NOR2X1 U1225 ( .A(n1347), .B(n1349), .Y(n731) );
  CLKBUFX3 U1226 ( .A(n802), .Y(n1233) );
  NAND2X1 U1227 ( .A(n797), .B(n775), .Y(n802) );
  CLKBUFX3 U1228 ( .A(n800), .Y(n1235) );
  NAND2X1 U1229 ( .A(n797), .B(n771), .Y(n800) );
  CLKBUFX3 U1230 ( .A(n798), .Y(n1237) );
  NAND2X1 U1231 ( .A(n797), .B(n767), .Y(n798) );
  CLKBUFX3 U1232 ( .A(n803), .Y(n1232) );
  NAND2X1 U1233 ( .A(n797), .B(n758), .Y(n803) );
  CLKBUFX3 U1234 ( .A(n801), .Y(n1234) );
  NAND2X1 U1235 ( .A(n797), .B(n773), .Y(n801) );
  CLKBUFX3 U1236 ( .A(n799), .Y(n1236) );
  NAND2X1 U1237 ( .A(n797), .B(n769), .Y(n799) );
  OAI222XL U1238 ( .A0(n707), .A1(n708), .B0(n709), .B1(n1345), .C0(n1365), 
        .C1(n710), .Y(n879) );
  XOR2X1 U1239 ( .A(n1365), .B(n711), .Y(n709) );
  XOR2X1 U1240 ( .A(n713), .B(n714), .Y(n707) );
  NOR2BX1 U1241 ( .AN(n712), .B(n1226), .Y(n711) );
  AND2X2 U1242 ( .A(n683), .B(n684), .Y(n674) );
  OAI31XL U1243 ( .A0(n660), .A1(n681), .A2(n659), .B0(n1351), .Y(n684) );
  CLKINVX1 U1244 ( .A(n745), .Y(n1349) );
  AND4X1 U1245 ( .A(n732), .B(n733), .C(n734), .D(n735), .Y(n702) );
  CLKINVX1 U1246 ( .A(n743), .Y(n1347) );
  CLKINVX1 U1247 ( .A(n409), .Y(n1348) );
  NAND2X2 U1248 ( .A(n758), .B(n759), .Y(n750) );
  NAND2X2 U1249 ( .A(n761), .B(n759), .Y(n760) );
  CLKINVX1 U1250 ( .A(n740), .Y(n1344) );
  OAI31XL U1251 ( .A0(n730), .A1(n1349), .A2(n1350), .B0(n739), .Y(n740) );
  CLKINVX1 U1252 ( .A(n741), .Y(n1350) );
  NAND3X1 U1253 ( .A(n734), .B(n735), .C(n736), .Y(n730) );
  AND2X2 U1254 ( .A(n701), .B(n733), .Y(n736) );
  OAI2BB2XL U1255 ( .B0(n1359), .B1(n739), .A0N(N406), .A1N(n1344), .Y(n888)
         );
  OAI2BB2XL U1256 ( .B0(n1358), .B1(n739), .A0N(N405), .A1N(n1344), .Y(n889)
         );
  OAI2BB2XL U1257 ( .B0(n1357), .B1(n739), .A0N(N404), .A1N(n1344), .Y(n890)
         );
  OAI2BB2XL U1258 ( .B0(n1356), .B1(n739), .A0N(N403), .A1N(n1344), .Y(n891)
         );
  NOR2X1 U1259 ( .A(n658), .B(n660), .Y(n681) );
  AOI221XL U1260 ( .A0(n1361), .A1(n1352), .B0(n729), .B1(n1349), .C0(n1347), 
        .Y(n738) );
  NOR2X1 U1261 ( .A(n1346), .B(n736), .Y(n706) );
  NOR2X1 U1262 ( .A(n745), .B(n729), .Y(n700) );
  CLKINVX1 U1263 ( .A(n407), .Y(n1351) );
  CLKINVX1 U1264 ( .A(n727), .Y(n1363) );
  NOR2BX1 U1265 ( .AN(n664), .B(n1342), .Y(n669) );
  CLKBUFX3 U1266 ( .A(n668), .Y(n1265) );
  NAND3X1 U1267 ( .A(n1339), .B(n1341), .C(n669), .Y(n668) );
  CLKBUFX3 U1268 ( .A(n671), .Y(n1263) );
  NAND3X1 U1269 ( .A(n1270), .B(n1339), .C(n669), .Y(n671) );
  CLKINVX1 U1270 ( .A(n732), .Y(n1353) );
  NAND2X1 U1271 ( .A(n738), .B(n732), .Y(n746) );
  CLKINVX1 U1272 ( .A(n733), .Y(n1352) );
  NOR2BX1 U1273 ( .AN(n681), .B(n407), .Y(n676) );
  OAI21XL U1274 ( .A0(n1362), .A1(n746), .B0(n747), .Y(n895) );
  OAI21XL U1275 ( .A0(n1349), .A1(n1353), .B0(n746), .Y(n747) );
  NAND2X1 U1276 ( .A(n1349), .B(n729), .Y(n708) );
  CLKINVX1 U1277 ( .A(n425), .Y(n1361) );
  CLKBUFX3 U1278 ( .A(n661), .Y(n1269) );
  NAND2X1 U1279 ( .A(n662), .B(n1341), .Y(n661) );
  CLKBUFX3 U1280 ( .A(n665), .Y(n1267) );
  NAND2X1 U1281 ( .A(n662), .B(n1270), .Y(n665) );
  OAI2BB2XL U1282 ( .B0(n1337), .B1(n808), .A0N(n1293), .A1N(N587), .Y(n1171)
         );
  INVX3 U1283 ( .A(n403), .Y(n1293) );
  CLKBUFX3 U1284 ( .A(n757), .Y(n1272) );
  CLKBUFX3 U1285 ( .A(n756), .Y(n1274) );
  CLKBUFX3 U1286 ( .A(n755), .Y(n1276) );
  CLKBUFX3 U1287 ( .A(n753), .Y(n1280) );
  CLKBUFX3 U1288 ( .A(n752), .Y(n1282) );
  CLKBUFX3 U1289 ( .A(n751), .Y(n1284) );
  CLKBUFX3 U1290 ( .A(n749), .Y(n1286) );
  CLKBUFX3 U1291 ( .A(n757), .Y(n1271) );
  CLKBUFX3 U1292 ( .A(n756), .Y(n1273) );
  CLKBUFX3 U1293 ( .A(n755), .Y(n1275) );
  CLKBUFX3 U1294 ( .A(n753), .Y(n1279) );
  CLKBUFX3 U1295 ( .A(n752), .Y(n1281) );
  CLKBUFX3 U1296 ( .A(n751), .Y(n1283) );
  CLKBUFX3 U1297 ( .A(n749), .Y(n1285) );
  NOR2X1 U1298 ( .A(n1228), .B(n1364), .Y(n712) );
  OA21XL U1299 ( .A0(n1270), .A1(n404), .B0(n705), .Y(n704) );
  CLKBUFX3 U1300 ( .A(n663), .Y(n1268) );
  NAND3X1 U1301 ( .A(n1340), .B(n1341), .C(n664), .Y(n663) );
  CLKBUFX3 U1302 ( .A(n666), .Y(n1266) );
  NAND3X1 U1303 ( .A(n1340), .B(n1270), .C(n664), .Y(n666) );
  OAI32X1 U1304 ( .A0(n667), .A1(n404), .A2(n1341), .B0(n704), .B1(n1342), .Y(
        n875) );
  NAND2X1 U1305 ( .A(n403), .B(n1328), .Y(n808) );
  CLKBUFX3 U1306 ( .A(n754), .Y(n1277) );
  CLKINVX1 U1307 ( .A(n806), .Y(n1328) );
  CLKINVX1 U1308 ( .A(n667), .Y(n1340) );
  CLKINVX1 U1309 ( .A(n417), .Y(n1343) );
  OAI2BB2XL U1310 ( .B0(n1333), .B1(n808), .A0N(n1293), .A1N(N583), .Y(n1175)
         );
  OAI2BB2XL U1311 ( .B0(n1334), .B1(n808), .A0N(n1293), .A1N(N584), .Y(n1174)
         );
  OAI2BB2XL U1312 ( .B0(n1336), .B1(n808), .A0N(n1293), .A1N(N586), .Y(n1172)
         );
  OAI2BB2XL U1313 ( .B0(n1335), .B1(n808), .A0N(n1293), .A1N(N585), .Y(n1173)
         );
  NOR2BX1 U1314 ( .AN(isstring), .B(string_curr_state[1]), .Y(
        string_next_state[0]) );
  NOR2BX1 U1315 ( .AN(ispattern), .B(pattern_curr_state[1]), .Y(
        pattern_next_state[0]) );
  OAI2BB2XL U1316 ( .B0(ispattern), .B1(n404), .A0N(n405), .A1N(n406), .Y(
        pattern_next_state[1]) );
  NOR2X1 U1317 ( .A(isstring), .B(n403), .Y(string_next_state[1]) );
  NOR2X4 U1318 ( .A(n1227), .B(N207), .Y(n1220) );
  CLKINVX1 U1319 ( .A(N206), .Y(n1227) );
  NOR2X4 U1320 ( .A(N206), .B(N207), .Y(n1219) );
  CLKBUFX3 U1321 ( .A(n1223), .Y(n1229) );
  NOR2X1 U1322 ( .A(n1226), .B(N206), .Y(n1223) );
  OAI222XL U1323 ( .A0(n482), .A1(n270), .B0(n483), .B1(n262), .C0(n484), .C1(
        n278), .Y(n593) );
  NOR4X1 U1324 ( .A(n593), .B(n594), .C(n595), .D(n596), .Y(n582) );
  OAI22XL U1325 ( .A0(n480), .A1(n294), .B0(n481), .B1(n286), .Y(n594) );
  OAI22XL U1326 ( .A0(n478), .A1(n310), .B0(n479), .B1(n302), .Y(n595) );
  OAI22XL U1327 ( .A0(n476), .A1(n326), .B0(n477), .B1(n318), .Y(n596) );
  CLKINVX1 U1328 ( .A(string_index[4]), .Y(n1359) );
  NOR2X1 U1329 ( .A(n1359), .B(string_index[3]), .Y(n642) );
  OAI222XL U1330 ( .A0(n482), .A1(n269), .B0(n483), .B1(n261), .C0(n484), .C1(
        n277), .Y(n573) );
  NOR4X1 U1331 ( .A(n573), .B(n574), .C(n575), .D(n576), .Y(n562) );
  OAI22XL U1332 ( .A0(n480), .A1(n293), .B0(n481), .B1(n285), .Y(n574) );
  OAI22XL U1333 ( .A0(n478), .A1(n309), .B0(n479), .B1(n301), .Y(n575) );
  OAI22XL U1334 ( .A0(n476), .A1(n325), .B0(n477), .B1(n317), .Y(n576) );
  OAI222XL U1335 ( .A0(n482), .A1(n268), .B0(n483), .B1(n260), .C0(n484), .C1(
        n276), .Y(n643) );
  NOR4X1 U1336 ( .A(n643), .B(n644), .C(n645), .D(n646), .Y(n622) );
  OAI22XL U1337 ( .A0(n480), .A1(n292), .B0(n481), .B1(n284), .Y(n644) );
  OAI22XL U1338 ( .A0(n478), .A1(n308), .B0(n479), .B1(n300), .Y(n645) );
  OAI22XL U1339 ( .A0(n476), .A1(n324), .B0(n477), .B1(n316), .Y(n646) );
  CLKINVX1 U1340 ( .A(n673), .Y(n1287) );
  AOI222XL U1341 ( .A0(match_index[4]), .A1(n674), .B0(n675), .B1(
        string_index[4]), .C0(N509), .C1(n676), .Y(n673) );
  XOR3XL U1342 ( .A(N504), .B(match_index[4]), .C(
        \add_0_root_sub_0_root_add_250/carry [4]), .Y(N509) );
  ADDFXL U1343 ( .A(N504), .B(match_index[0]), .CI(1'b0), .CO(
        \add_0_root_sub_0_root_add_250/carry [1]), .S(N505) );
  ADDFXL U1344 ( .A(N504), .B(match_index[1]), .CI(
        \add_0_root_sub_0_root_add_250/carry [1]), .CO(
        \add_0_root_sub_0_root_add_250/carry [2]), .S(N506) );
  ADDFXL U1345 ( .A(N504), .B(match_index[2]), .CI(
        \add_0_root_sub_0_root_add_250/carry [2]), .CO(
        \add_0_root_sub_0_root_add_250/carry [3]), .S(N507) );
  ADDFXL U1346 ( .A(N504), .B(match_index[3]), .CI(
        \add_0_root_sub_0_root_add_250/carry [3]), .CO(
        \add_0_root_sub_0_root_add_250/carry [4]), .S(N508) );
  OAI222XL U1347 ( .A0(n482), .A1(n267), .B0(n483), .B1(n259), .C0(n484), .C1(
        n275), .Y(n613) );
  NOR4X1 U1348 ( .A(n613), .B(n614), .C(n615), .D(n616), .Y(n602) );
  OAI22XL U1349 ( .A0(n480), .A1(n291), .B0(n481), .B1(n283), .Y(n614) );
  OAI22XL U1350 ( .A0(n478), .A1(n307), .B0(n479), .B1(n299), .Y(n615) );
  OAI22XL U1351 ( .A0(n476), .A1(n323), .B0(n477), .B1(n315), .Y(n616) );
  CLKINVX1 U1352 ( .A(string_index[3]), .Y(n1358) );
  NOR2X1 U1353 ( .A(n1358), .B(string_index[4]), .Y(n649) );
  OAI222XL U1354 ( .A0(n482), .A1(n266), .B0(n483), .B1(n258), .C0(n484), .C1(
        n274), .Y(n509) );
  NOR4X1 U1355 ( .A(n509), .B(n510), .C(n511), .D(n512), .Y(n498) );
  OAI22XL U1356 ( .A0(n480), .A1(n290), .B0(n481), .B1(n282), .Y(n510) );
  OAI22XL U1357 ( .A0(n478), .A1(n306), .B0(n479), .B1(n298), .Y(n511) );
  OAI22XL U1358 ( .A0(n476), .A1(n322), .B0(n477), .B1(n314), .Y(n512) );
  OAI222XL U1359 ( .A0(n482), .A1(n264), .B0(n483), .B1(n256), .C0(n484), .C1(
        n272), .Y(n549) );
  NOR4X1 U1360 ( .A(n549), .B(n550), .C(n551), .D(n552), .Y(n538) );
  OAI22XL U1361 ( .A0(n480), .A1(n288), .B0(n481), .B1(n280), .Y(n550) );
  OAI22XL U1362 ( .A0(n478), .A1(n304), .B0(n479), .B1(n296), .Y(n551) );
  OAI22XL U1363 ( .A0(n476), .A1(n320), .B0(n477), .B1(n312), .Y(n552) );
  CLKINVX1 U1364 ( .A(string_index[2]), .Y(n1357) );
  OAI222XL U1365 ( .A0(n482), .A1(n263), .B0(n483), .B1(n255), .C0(n484), .C1(
        n271), .Y(n529) );
  NOR4X1 U1366 ( .A(n529), .B(n530), .C(n531), .D(n532), .Y(n518) );
  OAI22XL U1367 ( .A0(n480), .A1(n287), .B0(n481), .B1(n279), .Y(n530) );
  OAI22XL U1368 ( .A0(n478), .A1(n303), .B0(n479), .B1(n295), .Y(n531) );
  OAI22XL U1369 ( .A0(n476), .A1(n319), .B0(n477), .B1(n311), .Y(n532) );
  OAI222XL U1370 ( .A0(n482), .A1(n265), .B0(n483), .B1(n257), .C0(n484), .C1(
        n273), .Y(n472) );
  NOR4X1 U1371 ( .A(n472), .B(n473), .C(n474), .D(n475), .Y(n444) );
  OAI22XL U1372 ( .A0(n480), .A1(n289), .B0(n481), .B1(n281), .Y(n473) );
  OAI22XL U1373 ( .A0(n478), .A1(n305), .B0(n479), .B1(n297), .Y(n474) );
  OAI22XL U1374 ( .A0(n476), .A1(n321), .B0(n477), .B1(n313), .Y(n475) );
  CLKINVX1 U1375 ( .A(n677), .Y(n1288) );
  AOI222XL U1376 ( .A0(match_index[3]), .A1(n674), .B0(n675), .B1(
        string_index[3]), .C0(N508), .C1(n676), .Y(n677) );
  NOR2X1 U1377 ( .A(string_index[3]), .B(string_index[4]), .Y(n656) );
  NAND2X2 U1378 ( .A(string_index[5]), .B(n1354), .Y(n457) );
  CLKINVX1 U1379 ( .A(n678), .Y(n1289) );
  AOI222XL U1380 ( .A0(match_index[2]), .A1(n674), .B0(n675), .B1(
        string_index[2]), .C0(N507), .C1(n676), .Y(n678) );
  CLKINVX1 U1381 ( .A(n679), .Y(n1290) );
  AOI222XL U1382 ( .A0(match_index[1]), .A1(n674), .B0(n675), .B1(
        string_index[1]), .C0(N506), .C1(n676), .Y(n679) );
  CLKINVX1 U1383 ( .A(n680), .Y(n1291) );
  AOI222XL U1384 ( .A0(match_index[0]), .A1(n674), .B0(n675), .B1(
        string_index[0]), .C0(N505), .C1(n676), .Y(n680) );
  CLKINVX1 U1385 ( .A(string_index[5]), .Y(n1360) );
  NAND2X2 U1386 ( .A(string_index[5]), .B(string_index[0]), .Y(n458) );
  NOR2X2 U1387 ( .A(n118), .B(string_curr_state[0]), .Y(n807) );
  OAI22XL U1388 ( .A0(n390), .A1(n1231), .B0(n1294), .B1(n757), .Y(n1170) );
  OAI22XL U1389 ( .A0(n383), .A1(n1231), .B0(n1294), .B1(n756), .Y(n1169) );
  OAI22XL U1390 ( .A0(n384), .A1(n1231), .B0(n1294), .B1(n755), .Y(n1168) );
  OAI22XL U1391 ( .A0(n385), .A1(n1231), .B0(n1294), .B1(n805), .Y(n1167) );
  NOR2BX1 U1392 ( .AN(n1278), .B(n806), .Y(n805) );
  OAI22XL U1393 ( .A0(n386), .A1(n1231), .B0(n1294), .B1(n753), .Y(n1166) );
  OAI22XL U1394 ( .A0(n387), .A1(n1231), .B0(n1294), .B1(n752), .Y(n1165) );
  OAI22XL U1395 ( .A0(n388), .A1(n1231), .B0(n1294), .B1(n751), .Y(n1164) );
  OAI22XL U1396 ( .A0(n389), .A1(n1231), .B0(n1294), .B1(n749), .Y(n1163) );
  OAI22XL U1397 ( .A0(n1324), .A1(n150), .B0(n1271), .B1(n766), .Y(n930) );
  OAI22XL U1398 ( .A0(n1324), .A1(n143), .B0(n1273), .B1(n766), .Y(n929) );
  OAI22XL U1399 ( .A0(n1324), .A1(n144), .B0(n1275), .B1(n766), .Y(n928) );
  OAI22XL U1400 ( .A0(n1324), .A1(n145), .B0(n1277), .B1(n766), .Y(n927) );
  OAI22XL U1401 ( .A0(n1324), .A1(n146), .B0(n1279), .B1(n766), .Y(n926) );
  OAI22XL U1402 ( .A0(n1324), .A1(n147), .B0(n1281), .B1(n766), .Y(n925) );
  OAI22XL U1403 ( .A0(n1324), .A1(n148), .B0(n1283), .B1(n766), .Y(n924) );
  OAI22XL U1404 ( .A0(n1324), .A1(n149), .B0(n1285), .B1(n766), .Y(n923) );
  OAI22XL U1405 ( .A0(n1325), .A1(n142), .B0(n1271), .B1(n763), .Y(n922) );
  OAI22XL U1406 ( .A0(n1325), .A1(n135), .B0(n1273), .B1(n763), .Y(n921) );
  OAI22XL U1407 ( .A0(n1325), .A1(n136), .B0(n1275), .B1(n763), .Y(n920) );
  OAI22XL U1408 ( .A0(n1325), .A1(n137), .B0(n1278), .B1(n763), .Y(n919) );
  OAI22XL U1409 ( .A0(n1325), .A1(n138), .B0(n1279), .B1(n763), .Y(n918) );
  OAI22XL U1410 ( .A0(n1325), .A1(n139), .B0(n1281), .B1(n763), .Y(n917) );
  OAI22XL U1411 ( .A0(n1325), .A1(n140), .B0(n1283), .B1(n763), .Y(n916) );
  OAI22XL U1412 ( .A0(n1325), .A1(n141), .B0(n1285), .B1(n763), .Y(n915) );
  OAI22XL U1413 ( .A0(n1302), .A1(n326), .B0(n1272), .B1(n1239), .Y(n1106) );
  OAI22XL U1414 ( .A0(n1302), .A1(n319), .B0(n1274), .B1(n1239), .Y(n1105) );
  OAI22XL U1415 ( .A0(n1302), .A1(n320), .B0(n1276), .B1(n1239), .Y(n1104) );
  OAI22XL U1416 ( .A0(n1302), .A1(n321), .B0(n1277), .B1(n1239), .Y(n1103) );
  OAI22XL U1417 ( .A0(n1302), .A1(n322), .B0(n1280), .B1(n1239), .Y(n1102) );
  OAI22XL U1418 ( .A0(n1302), .A1(n323), .B0(n1282), .B1(n1239), .Y(n1101) );
  OAI22XL U1419 ( .A0(n1302), .A1(n324), .B0(n1284), .B1(n1239), .Y(n1100) );
  OAI22XL U1420 ( .A0(n1302), .A1(n325), .B0(n1286), .B1(n1239), .Y(n1099) );
  OAI22XL U1421 ( .A0(n1310), .A1(n262), .B0(n1272), .B1(n1247), .Y(n1042) );
  OAI22XL U1422 ( .A0(n1310), .A1(n255), .B0(n1274), .B1(n1247), .Y(n1041) );
  OAI22XL U1423 ( .A0(n1310), .A1(n256), .B0(n1276), .B1(n1247), .Y(n1040) );
  OAI22XL U1424 ( .A0(n1310), .A1(n257), .B0(n1277), .B1(n1247), .Y(n1039) );
  OAI22XL U1425 ( .A0(n1310), .A1(n258), .B0(n1280), .B1(n1247), .Y(n1038) );
  OAI22XL U1426 ( .A0(n1310), .A1(n259), .B0(n1282), .B1(n1247), .Y(n1037) );
  OAI22XL U1427 ( .A0(n1310), .A1(n260), .B0(n1284), .B1(n1247), .Y(n1036) );
  OAI22XL U1428 ( .A0(n1310), .A1(n261), .B0(n1286), .B1(n1247), .Y(n1035) );
  OAI22XL U1429 ( .A0(n1304), .A1(n310), .B0(n1272), .B1(n1241), .Y(n1090) );
  OAI22XL U1430 ( .A0(n1304), .A1(n303), .B0(n1274), .B1(n1241), .Y(n1089) );
  OAI22XL U1431 ( .A0(n1304), .A1(n304), .B0(n1276), .B1(n1241), .Y(n1088) );
  OAI22XL U1432 ( .A0(n1304), .A1(n305), .B0(n1277), .B1(n1241), .Y(n1087) );
  OAI22XL U1433 ( .A0(n1304), .A1(n306), .B0(n1280), .B1(n1241), .Y(n1086) );
  OAI22XL U1434 ( .A0(n1304), .A1(n307), .B0(n1282), .B1(n1241), .Y(n1085) );
  OAI22XL U1435 ( .A0(n1304), .A1(n308), .B0(n1284), .B1(n1241), .Y(n1084) );
  OAI22XL U1436 ( .A0(n1304), .A1(n309), .B0(n1286), .B1(n1241), .Y(n1083) );
  OAI22XL U1437 ( .A0(n1312), .A1(n246), .B0(n1272), .B1(n1249), .Y(n1026) );
  OAI22XL U1438 ( .A0(n1312), .A1(n239), .B0(n1274), .B1(n1249), .Y(n1025) );
  OAI22XL U1439 ( .A0(n1312), .A1(n240), .B0(n1276), .B1(n1249), .Y(n1024) );
  OAI22XL U1440 ( .A0(n1312), .A1(n241), .B0(n1277), .B1(n1249), .Y(n1023) );
  OAI22XL U1441 ( .A0(n1312), .A1(n242), .B0(n1280), .B1(n1249), .Y(n1022) );
  OAI22XL U1442 ( .A0(n1312), .A1(n243), .B0(n1282), .B1(n1249), .Y(n1021) );
  OAI22XL U1443 ( .A0(n1312), .A1(n244), .B0(n1284), .B1(n1249), .Y(n1020) );
  OAI22XL U1444 ( .A0(n1312), .A1(n245), .B0(n1286), .B1(n1249), .Y(n1019) );
  OAI22XL U1445 ( .A0(n1306), .A1(n294), .B0(n1272), .B1(n1243), .Y(n1074) );
  OAI22XL U1446 ( .A0(n1306), .A1(n287), .B0(n1274), .B1(n1243), .Y(n1073) );
  OAI22XL U1447 ( .A0(n1306), .A1(n288), .B0(n1276), .B1(n1243), .Y(n1072) );
  OAI22XL U1448 ( .A0(n1306), .A1(n289), .B0(n1277), .B1(n1243), .Y(n1071) );
  OAI22XL U1449 ( .A0(n1306), .A1(n290), .B0(n1280), .B1(n1243), .Y(n1070) );
  OAI22XL U1450 ( .A0(n1306), .A1(n291), .B0(n1282), .B1(n1243), .Y(n1069) );
  OAI22XL U1451 ( .A0(n1306), .A1(n292), .B0(n1284), .B1(n1243), .Y(n1068) );
  OAI22XL U1452 ( .A0(n1306), .A1(n293), .B0(n1286), .B1(n1243), .Y(n1067) );
  OAI22XL U1453 ( .A0(n1314), .A1(n230), .B0(n1271), .B1(n1251), .Y(n1010) );
  OAI22XL U1454 ( .A0(n1314), .A1(n223), .B0(n1273), .B1(n1251), .Y(n1009) );
  OAI22XL U1455 ( .A0(n1314), .A1(n224), .B0(n1275), .B1(n1251), .Y(n1008) );
  OAI22XL U1456 ( .A0(n1314), .A1(n225), .B0(n1277), .B1(n1251), .Y(n1007) );
  OAI22XL U1457 ( .A0(n1314), .A1(n226), .B0(n1279), .B1(n1251), .Y(n1006) );
  OAI22XL U1458 ( .A0(n1314), .A1(n227), .B0(n1281), .B1(n1251), .Y(n1005) );
  OAI22XL U1459 ( .A0(n1314), .A1(n228), .B0(n1283), .B1(n1251), .Y(n1004) );
  OAI22XL U1460 ( .A0(n1314), .A1(n229), .B0(n1286), .B1(n1251), .Y(n1003) );
  OAI22XL U1461 ( .A0(n1308), .A1(n278), .B0(n1272), .B1(n1245), .Y(n1058) );
  OAI22XL U1462 ( .A0(n1308), .A1(n271), .B0(n1274), .B1(n1245), .Y(n1057) );
  OAI22XL U1463 ( .A0(n1308), .A1(n272), .B0(n1276), .B1(n1245), .Y(n1056) );
  OAI22XL U1464 ( .A0(n1308), .A1(n273), .B0(n1277), .B1(n1245), .Y(n1055) );
  OAI22XL U1465 ( .A0(n1308), .A1(n274), .B0(n1280), .B1(n1245), .Y(n1054) );
  OAI22XL U1466 ( .A0(n1308), .A1(n275), .B0(n1282), .B1(n1245), .Y(n1053) );
  OAI22XL U1467 ( .A0(n1308), .A1(n276), .B0(n1284), .B1(n1245), .Y(n1052) );
  OAI22XL U1468 ( .A0(n1308), .A1(n277), .B0(n1286), .B1(n1245), .Y(n1051) );
  OAI22XL U1469 ( .A0(n1316), .A1(n214), .B0(n1271), .B1(n1253), .Y(n994) );
  OAI22XL U1470 ( .A0(n1316), .A1(n207), .B0(n1273), .B1(n1253), .Y(n993) );
  OAI22XL U1471 ( .A0(n1316), .A1(n208), .B0(n1275), .B1(n1253), .Y(n992) );
  OAI22XL U1472 ( .A0(n1316), .A1(n209), .B0(n1277), .B1(n1253), .Y(n991) );
  OAI22XL U1473 ( .A0(n1316), .A1(n210), .B0(n1279), .B1(n1253), .Y(n990) );
  OAI22XL U1474 ( .A0(n1316), .A1(n211), .B0(n1281), .B1(n1253), .Y(n989) );
  OAI22XL U1475 ( .A0(n1316), .A1(n212), .B0(n1283), .B1(n1253), .Y(n988) );
  OAI22XL U1476 ( .A0(n1316), .A1(n213), .B0(n1285), .B1(n1253), .Y(n987) );
  OAI22XL U1477 ( .A0(n1303), .A1(n318), .B0(n1272), .B1(n1240), .Y(n1098) );
  OAI22XL U1478 ( .A0(n1303), .A1(n311), .B0(n1274), .B1(n1240), .Y(n1097) );
  OAI22XL U1479 ( .A0(n1303), .A1(n312), .B0(n1276), .B1(n1240), .Y(n1096) );
  OAI22XL U1480 ( .A0(n1303), .A1(n313), .B0(n1277), .B1(n1240), .Y(n1095) );
  OAI22XL U1481 ( .A0(n1303), .A1(n314), .B0(n1280), .B1(n1240), .Y(n1094) );
  OAI22XL U1482 ( .A0(n1303), .A1(n315), .B0(n1282), .B1(n1240), .Y(n1093) );
  OAI22XL U1483 ( .A0(n1303), .A1(n316), .B0(n1284), .B1(n1240), .Y(n1092) );
  OAI22XL U1484 ( .A0(n1303), .A1(n317), .B0(n1286), .B1(n1240), .Y(n1091) );
  OAI22XL U1485 ( .A0(n1311), .A1(n254), .B0(n1272), .B1(n1248), .Y(n1034) );
  OAI22XL U1486 ( .A0(n1311), .A1(n247), .B0(n1274), .B1(n1248), .Y(n1033) );
  OAI22XL U1487 ( .A0(n1311), .A1(n248), .B0(n1276), .B1(n1248), .Y(n1032) );
  OAI22XL U1488 ( .A0(n1311), .A1(n249), .B0(n1277), .B1(n1248), .Y(n1031) );
  OAI22XL U1489 ( .A0(n1311), .A1(n250), .B0(n1280), .B1(n1248), .Y(n1030) );
  OAI22XL U1490 ( .A0(n1311), .A1(n251), .B0(n1282), .B1(n1248), .Y(n1029) );
  OAI22XL U1491 ( .A0(n1311), .A1(n252), .B0(n1284), .B1(n1248), .Y(n1028) );
  OAI22XL U1492 ( .A0(n1311), .A1(n253), .B0(n1286), .B1(n1248), .Y(n1027) );
  OAI22XL U1493 ( .A0(n1305), .A1(n302), .B0(n1272), .B1(n1242), .Y(n1082) );
  OAI22XL U1494 ( .A0(n1305), .A1(n295), .B0(n1274), .B1(n1242), .Y(n1081) );
  OAI22XL U1495 ( .A0(n1305), .A1(n296), .B0(n1276), .B1(n1242), .Y(n1080) );
  OAI22XL U1496 ( .A0(n1305), .A1(n297), .B0(n1277), .B1(n1242), .Y(n1079) );
  OAI22XL U1497 ( .A0(n1305), .A1(n298), .B0(n1280), .B1(n1242), .Y(n1078) );
  OAI22XL U1498 ( .A0(n1305), .A1(n299), .B0(n1282), .B1(n1242), .Y(n1077) );
  OAI22XL U1499 ( .A0(n1305), .A1(n300), .B0(n1284), .B1(n1242), .Y(n1076) );
  OAI22XL U1500 ( .A0(n1305), .A1(n301), .B0(n1286), .B1(n1242), .Y(n1075) );
  OAI22XL U1501 ( .A0(n1313), .A1(n238), .B0(n1271), .B1(n1250), .Y(n1018) );
  OAI22XL U1502 ( .A0(n1313), .A1(n231), .B0(n1273), .B1(n1250), .Y(n1017) );
  OAI22XL U1503 ( .A0(n1313), .A1(n232), .B0(n1275), .B1(n1250), .Y(n1016) );
  OAI22XL U1504 ( .A0(n1313), .A1(n233), .B0(n1277), .B1(n1250), .Y(n1015) );
  OAI22XL U1505 ( .A0(n1313), .A1(n234), .B0(n1279), .B1(n1250), .Y(n1014) );
  OAI22XL U1506 ( .A0(n1313), .A1(n235), .B0(n1281), .B1(n1250), .Y(n1013) );
  OAI22XL U1507 ( .A0(n1313), .A1(n236), .B0(n1283), .B1(n1250), .Y(n1012) );
  OAI22XL U1508 ( .A0(n1313), .A1(n237), .B0(n1286), .B1(n1250), .Y(n1011) );
  OAI22XL U1509 ( .A0(n1307), .A1(n286), .B0(n1272), .B1(n1244), .Y(n1066) );
  OAI22XL U1510 ( .A0(n1307), .A1(n279), .B0(n1274), .B1(n1244), .Y(n1065) );
  OAI22XL U1511 ( .A0(n1307), .A1(n280), .B0(n1276), .B1(n1244), .Y(n1064) );
  OAI22XL U1512 ( .A0(n1307), .A1(n281), .B0(n1277), .B1(n1244), .Y(n1063) );
  OAI22XL U1513 ( .A0(n1307), .A1(n282), .B0(n1280), .B1(n1244), .Y(n1062) );
  OAI22XL U1514 ( .A0(n1307), .A1(n283), .B0(n1282), .B1(n1244), .Y(n1061) );
  OAI22XL U1515 ( .A0(n1307), .A1(n284), .B0(n1284), .B1(n1244), .Y(n1060) );
  OAI22XL U1516 ( .A0(n1307), .A1(n285), .B0(n1286), .B1(n1244), .Y(n1059) );
  OAI22XL U1517 ( .A0(n1315), .A1(n222), .B0(n1271), .B1(n1252), .Y(n1002) );
  OAI22XL U1518 ( .A0(n1315), .A1(n215), .B0(n1273), .B1(n1252), .Y(n1001) );
  OAI22XL U1519 ( .A0(n1315), .A1(n216), .B0(n1275), .B1(n1252), .Y(n1000) );
  OAI22XL U1520 ( .A0(n1315), .A1(n217), .B0(n1277), .B1(n1252), .Y(n999) );
  OAI22XL U1521 ( .A0(n1315), .A1(n218), .B0(n1279), .B1(n1252), .Y(n998) );
  OAI22XL U1522 ( .A0(n1315), .A1(n219), .B0(n1281), .B1(n1252), .Y(n997) );
  OAI22XL U1523 ( .A0(n1315), .A1(n220), .B0(n1283), .B1(n1252), .Y(n996) );
  OAI22XL U1524 ( .A0(n1315), .A1(n221), .B0(n1285), .B1(n1252), .Y(n995) );
  OAI22XL U1525 ( .A0(n1309), .A1(n270), .B0(n1272), .B1(n1246), .Y(n1050) );
  OAI22XL U1526 ( .A0(n1309), .A1(n263), .B0(n1274), .B1(n1246), .Y(n1049) );
  OAI22XL U1527 ( .A0(n1309), .A1(n264), .B0(n1276), .B1(n1246), .Y(n1048) );
  OAI22XL U1528 ( .A0(n1309), .A1(n265), .B0(n1277), .B1(n1246), .Y(n1047) );
  OAI22XL U1529 ( .A0(n1309), .A1(n266), .B0(n1280), .B1(n1246), .Y(n1046) );
  OAI22XL U1530 ( .A0(n1309), .A1(n267), .B0(n1282), .B1(n1246), .Y(n1045) );
  OAI22XL U1531 ( .A0(n1309), .A1(n268), .B0(n1284), .B1(n1246), .Y(n1044) );
  OAI22XL U1532 ( .A0(n1309), .A1(n269), .B0(n1286), .B1(n1246), .Y(n1043) );
  OAI22XL U1533 ( .A0(n1317), .A1(n206), .B0(n1271), .B1(n1254), .Y(n986) );
  OAI22XL U1534 ( .A0(n1317), .A1(n199), .B0(n1273), .B1(n1254), .Y(n985) );
  OAI22XL U1535 ( .A0(n1317), .A1(n200), .B0(n1275), .B1(n1254), .Y(n984) );
  OAI22XL U1536 ( .A0(n1317), .A1(n201), .B0(n1278), .B1(n1254), .Y(n983) );
  OAI22XL U1537 ( .A0(n1317), .A1(n202), .B0(n1279), .B1(n1254), .Y(n982) );
  OAI22XL U1538 ( .A0(n1317), .A1(n203), .B0(n1281), .B1(n1254), .Y(n981) );
  OAI22XL U1539 ( .A0(n1317), .A1(n204), .B0(n1283), .B1(n1254), .Y(n980) );
  OAI22XL U1540 ( .A0(n1317), .A1(n205), .B0(n1285), .B1(n1254), .Y(n979) );
  OAI22XL U1541 ( .A0(n1318), .A1(n198), .B0(n1271), .B1(n1255), .Y(n978) );
  OAI22XL U1542 ( .A0(n1318), .A1(n191), .B0(n1273), .B1(n1255), .Y(n977) );
  OAI22XL U1543 ( .A0(n1318), .A1(n192), .B0(n1275), .B1(n1255), .Y(n976) );
  OAI22XL U1544 ( .A0(n1318), .A1(n193), .B0(n1277), .B1(n1255), .Y(n975) );
  OAI22XL U1545 ( .A0(n1318), .A1(n194), .B0(n1279), .B1(n1255), .Y(n974) );
  OAI22XL U1546 ( .A0(n1318), .A1(n195), .B0(n1281), .B1(n1255), .Y(n973) );
  OAI22XL U1547 ( .A0(n1318), .A1(n196), .B0(n1283), .B1(n1255), .Y(n972) );
  OAI22XL U1548 ( .A0(n1318), .A1(n197), .B0(n1285), .B1(n1255), .Y(n971) );
  OAI22XL U1549 ( .A0(n1319), .A1(n190), .B0(n1272), .B1(n1256), .Y(n970) );
  OAI22XL U1550 ( .A0(n1319), .A1(n183), .B0(n1274), .B1(n1256), .Y(n969) );
  OAI22XL U1551 ( .A0(n1319), .A1(n184), .B0(n1276), .B1(n1256), .Y(n968) );
  OAI22XL U1552 ( .A0(n1319), .A1(n185), .B0(n1278), .B1(n1256), .Y(n967) );
  OAI22XL U1553 ( .A0(n1319), .A1(n186), .B0(n1280), .B1(n1256), .Y(n966) );
  OAI22XL U1554 ( .A0(n1319), .A1(n187), .B0(n1282), .B1(n1256), .Y(n965) );
  OAI22XL U1555 ( .A0(n1319), .A1(n188), .B0(n1284), .B1(n1256), .Y(n964) );
  OAI22XL U1556 ( .A0(n1319), .A1(n189), .B0(n1285), .B1(n1256), .Y(n963) );
  OAI22XL U1557 ( .A0(n1320), .A1(n182), .B0(n1271), .B1(n1257), .Y(n962) );
  OAI22XL U1558 ( .A0(n1320), .A1(n175), .B0(n1273), .B1(n1257), .Y(n961) );
  OAI22XL U1559 ( .A0(n1320), .A1(n176), .B0(n1275), .B1(n1257), .Y(n960) );
  OAI22XL U1560 ( .A0(n1320), .A1(n177), .B0(n754), .B1(n1257), .Y(n959) );
  OAI22XL U1561 ( .A0(n1320), .A1(n178), .B0(n1279), .B1(n1257), .Y(n958) );
  OAI22XL U1562 ( .A0(n1320), .A1(n179), .B0(n1281), .B1(n1257), .Y(n957) );
  OAI22XL U1563 ( .A0(n1320), .A1(n180), .B0(n1283), .B1(n1257), .Y(n956) );
  OAI22XL U1564 ( .A0(n1320), .A1(n181), .B0(n1285), .B1(n1257), .Y(n955) );
  OAI22XL U1565 ( .A0(n1322), .A1(n166), .B0(n1271), .B1(n1259), .Y(n946) );
  OAI22XL U1566 ( .A0(n1322), .A1(n159), .B0(n1273), .B1(n1259), .Y(n945) );
  OAI22XL U1567 ( .A0(n1322), .A1(n160), .B0(n1275), .B1(n1259), .Y(n944) );
  OAI22XL U1568 ( .A0(n1322), .A1(n161), .B0(n754), .B1(n1259), .Y(n943) );
  OAI22XL U1569 ( .A0(n1322), .A1(n162), .B0(n1279), .B1(n1259), .Y(n942) );
  OAI22XL U1570 ( .A0(n1322), .A1(n163), .B0(n1281), .B1(n1259), .Y(n941) );
  OAI22XL U1571 ( .A0(n1322), .A1(n164), .B0(n1283), .B1(n1259), .Y(n940) );
  OAI22XL U1572 ( .A0(n1322), .A1(n165), .B0(n1285), .B1(n1259), .Y(n939) );
  OAI22XL U1573 ( .A0(n1321), .A1(n174), .B0(n1271), .B1(n1258), .Y(n954) );
  OAI22XL U1574 ( .A0(n1321), .A1(n167), .B0(n1273), .B1(n1258), .Y(n953) );
  OAI22XL U1575 ( .A0(n1321), .A1(n168), .B0(n1275), .B1(n1258), .Y(n952) );
  OAI22XL U1576 ( .A0(n1321), .A1(n169), .B0(n754), .B1(n1258), .Y(n951) );
  OAI22XL U1577 ( .A0(n1321), .A1(n170), .B0(n1279), .B1(n1258), .Y(n950) );
  OAI22XL U1578 ( .A0(n1321), .A1(n171), .B0(n1281), .B1(n1258), .Y(n949) );
  OAI22XL U1579 ( .A0(n1321), .A1(n172), .B0(n1283), .B1(n1258), .Y(n948) );
  OAI22XL U1580 ( .A0(n1321), .A1(n173), .B0(n1285), .B1(n1258), .Y(n947) );
  OAI22XL U1581 ( .A0(n1323), .A1(n158), .B0(n1271), .B1(n1260), .Y(n938) );
  OAI22XL U1582 ( .A0(n1323), .A1(n151), .B0(n1273), .B1(n1260), .Y(n937) );
  OAI22XL U1583 ( .A0(n1323), .A1(n152), .B0(n1275), .B1(n1260), .Y(n936) );
  OAI22XL U1584 ( .A0(n1323), .A1(n153), .B0(n754), .B1(n1260), .Y(n935) );
  OAI22XL U1585 ( .A0(n1323), .A1(n154), .B0(n1279), .B1(n1260), .Y(n934) );
  OAI22XL U1586 ( .A0(n1323), .A1(n155), .B0(n1281), .B1(n1260), .Y(n933) );
  OAI22XL U1587 ( .A0(n1323), .A1(n156), .B0(n1283), .B1(n1260), .Y(n932) );
  OAI22XL U1588 ( .A0(n1323), .A1(n157), .B0(n1285), .B1(n1260), .Y(n931) );
  OAI21XL U1589 ( .A0(N205), .A1(n1345), .B0(n710), .Y(n725) );
  OAI21XL U1590 ( .A0(n723), .A1(n708), .B0(n724), .Y(n881) );
  XOR2X1 U1591 ( .A(n726), .B(n1363), .Y(n723) );
  AOI32X1 U1592 ( .A0(N205), .A1(n1364), .A2(n719), .B0(N206), .B1(n725), .Y(
        n724) );
  XOR2X1 U1593 ( .A(star_cnt[1]), .B(n1364), .Y(n726) );
  OAI21XL U1594 ( .A0(n717), .A1(n708), .B0(n718), .Y(n880) );
  XNOR2X1 U1595 ( .A(n721), .B(n716), .Y(n717) );
  AOI32X1 U1596 ( .A0(n712), .A1(n1226), .A2(n719), .B0(N207), .B1(n720), .Y(
        n718) );
  XOR2X1 U1597 ( .A(star_cnt[2]), .B(n1226), .Y(n721) );
  OAI22XL U1598 ( .A0(n1296), .A1(n374), .B0(n1271), .B1(n1233), .Y(n1154) );
  OAI22XL U1599 ( .A0(n1296), .A1(n367), .B0(n1273), .B1(n1233), .Y(n1153) );
  OAI22XL U1600 ( .A0(n1296), .A1(n368), .B0(n1275), .B1(n1233), .Y(n1152) );
  OAI22XL U1601 ( .A0(n1296), .A1(n369), .B0(n1278), .B1(n1233), .Y(n1151) );
  OAI22XL U1602 ( .A0(n1296), .A1(n370), .B0(n1279), .B1(n1233), .Y(n1150) );
  OAI22XL U1603 ( .A0(n1296), .A1(n371), .B0(n1281), .B1(n1233), .Y(n1149) );
  OAI22XL U1604 ( .A0(n1296), .A1(n372), .B0(n1283), .B1(n1233), .Y(n1148) );
  OAI22XL U1605 ( .A0(n1296), .A1(n373), .B0(n1285), .B1(n1233), .Y(n1147) );
  OAI22XL U1606 ( .A0(n1298), .A1(n358), .B0(n1272), .B1(n1235), .Y(n1138) );
  OAI22XL U1607 ( .A0(n1298), .A1(n351), .B0(n1274), .B1(n1235), .Y(n1137) );
  OAI22XL U1608 ( .A0(n1298), .A1(n352), .B0(n1276), .B1(n1235), .Y(n1136) );
  OAI22XL U1609 ( .A0(n1298), .A1(n353), .B0(n1278), .B1(n1235), .Y(n1135) );
  OAI22XL U1610 ( .A0(n1298), .A1(n354), .B0(n1280), .B1(n1235), .Y(n1134) );
  OAI22XL U1611 ( .A0(n1298), .A1(n355), .B0(n1282), .B1(n1235), .Y(n1133) );
  OAI22XL U1612 ( .A0(n1298), .A1(n356), .B0(n1284), .B1(n1235), .Y(n1132) );
  OAI22XL U1613 ( .A0(n1298), .A1(n357), .B0(n1286), .B1(n1235), .Y(n1131) );
  OAI22XL U1614 ( .A0(n1300), .A1(n342), .B0(n1271), .B1(n1237), .Y(n1122) );
  OAI22XL U1615 ( .A0(n1300), .A1(n335), .B0(n1273), .B1(n1237), .Y(n1121) );
  OAI22XL U1616 ( .A0(n1300), .A1(n336), .B0(n1275), .B1(n1237), .Y(n1120) );
  OAI22XL U1617 ( .A0(n1300), .A1(n337), .B0(n1278), .B1(n1237), .Y(n1119) );
  OAI22XL U1618 ( .A0(n1300), .A1(n338), .B0(n1279), .B1(n1237), .Y(n1118) );
  OAI22XL U1619 ( .A0(n1300), .A1(n339), .B0(n1281), .B1(n1237), .Y(n1117) );
  OAI22XL U1620 ( .A0(n1300), .A1(n340), .B0(n1283), .B1(n1237), .Y(n1116) );
  OAI22XL U1621 ( .A0(n1300), .A1(n341), .B0(n1285), .B1(n1237), .Y(n1115) );
  OAI22XL U1622 ( .A0(n1295), .A1(n382), .B0(n1272), .B1(n1232), .Y(n1162) );
  OAI22XL U1623 ( .A0(n1295), .A1(n375), .B0(n1274), .B1(n1232), .Y(n1161) );
  OAI22XL U1624 ( .A0(n1295), .A1(n376), .B0(n1276), .B1(n1232), .Y(n1160) );
  OAI22XL U1625 ( .A0(n1295), .A1(n377), .B0(n1278), .B1(n1232), .Y(n1159) );
  OAI22XL U1626 ( .A0(n1295), .A1(n378), .B0(n1280), .B1(n1232), .Y(n1158) );
  OAI22XL U1627 ( .A0(n1295), .A1(n379), .B0(n1282), .B1(n1232), .Y(n1157) );
  OAI22XL U1628 ( .A0(n1295), .A1(n380), .B0(n1284), .B1(n1232), .Y(n1156) );
  OAI22XL U1629 ( .A0(n1295), .A1(n381), .B0(n1286), .B1(n1232), .Y(n1155) );
  OAI22XL U1630 ( .A0(n1297), .A1(n366), .B0(n757), .B1(n1234), .Y(n1146) );
  OAI22XL U1631 ( .A0(n1297), .A1(n359), .B0(n756), .B1(n1234), .Y(n1145) );
  OAI22XL U1632 ( .A0(n1297), .A1(n360), .B0(n755), .B1(n1234), .Y(n1144) );
  OAI22XL U1633 ( .A0(n1297), .A1(n361), .B0(n1278), .B1(n1234), .Y(n1143) );
  OAI22XL U1634 ( .A0(n1297), .A1(n362), .B0(n753), .B1(n1234), .Y(n1142) );
  OAI22XL U1635 ( .A0(n1297), .A1(n363), .B0(n752), .B1(n1234), .Y(n1141) );
  OAI22XL U1636 ( .A0(n1297), .A1(n364), .B0(n751), .B1(n1234), .Y(n1140) );
  OAI22XL U1637 ( .A0(n1297), .A1(n365), .B0(n749), .B1(n1234), .Y(n1139) );
  OAI22XL U1638 ( .A0(n1299), .A1(n350), .B0(n757), .B1(n1236), .Y(n1130) );
  OAI22XL U1639 ( .A0(n1299), .A1(n343), .B0(n756), .B1(n1236), .Y(n1129) );
  OAI22XL U1640 ( .A0(n1299), .A1(n344), .B0(n755), .B1(n1236), .Y(n1128) );
  OAI22XL U1641 ( .A0(n1299), .A1(n345), .B0(n1278), .B1(n1236), .Y(n1127) );
  OAI22XL U1642 ( .A0(n1299), .A1(n346), .B0(n753), .B1(n1236), .Y(n1126) );
  OAI22XL U1643 ( .A0(n1299), .A1(n347), .B0(n752), .B1(n1236), .Y(n1125) );
  OAI22XL U1644 ( .A0(n1299), .A1(n348), .B0(n751), .B1(n1236), .Y(n1124) );
  OAI22XL U1645 ( .A0(n1299), .A1(n349), .B0(n749), .B1(n1236), .Y(n1123) );
  OAI22XL U1646 ( .A0(n1301), .A1(n334), .B0(n1272), .B1(n1238), .Y(n1114) );
  OAI22XL U1647 ( .A0(n1301), .A1(n327), .B0(n1274), .B1(n1238), .Y(n1113) );
  OAI22XL U1648 ( .A0(n1301), .A1(n328), .B0(n1276), .B1(n1238), .Y(n1112) );
  OAI22XL U1649 ( .A0(n1301), .A1(n329), .B0(n1278), .B1(n1238), .Y(n1111) );
  OAI22XL U1650 ( .A0(n1301), .A1(n330), .B0(n1280), .B1(n1238), .Y(n1110) );
  OAI22XL U1651 ( .A0(n1301), .A1(n331), .B0(n1282), .B1(n1238), .Y(n1109) );
  OAI22XL U1652 ( .A0(n1301), .A1(n332), .B0(n1284), .B1(n1238), .Y(n1108) );
  OAI22XL U1653 ( .A0(n1301), .A1(n333), .B0(n749), .B1(n1238), .Y(n1107) );
  NOR2X1 U1654 ( .A(n54), .B(curr_state[3]), .Y(n744) );
  NAND3X1 U1655 ( .A(n53), .B(n52), .C(n744), .Y(n701) );
  OAI222XL U1656 ( .A0(N205), .A1(n1345), .B0(n728), .B1(n1228), .C0(n727), 
        .C1(n708), .Y(n882) );
  OA21XL U1657 ( .A0(n708), .A1(star_cnt[0]), .B0(n710), .Y(n728) );
  AOI211X1 U1658 ( .A0(n69), .A1(n699), .B0(n700), .C0(n1347), .Y(n683) );
  OAI21XL U1659 ( .A0(n701), .A1(n1355), .B0(n702), .Y(n699) );
  NAND3X1 U1660 ( .A(n744), .B(curr_state[1]), .C(curr_state[2]), .Y(n745) );
  NAND3X1 U1661 ( .A(n53), .B(n50), .C(n1348), .Y(n743) );
  NAND2X1 U1662 ( .A(n52), .B(n54), .Y(n409) );
  NAND3X1 U1663 ( .A(n1348), .B(n50), .C(curr_state[1]), .Y(n735) );
  OAI22XL U1664 ( .A0(n1327), .A1(n126), .B0(n750), .B1(n757), .Y(n906) );
  OAI22XL U1665 ( .A0(n1327), .A1(n119), .B0(n750), .B1(n756), .Y(n905) );
  OAI22XL U1666 ( .A0(n1327), .A1(n120), .B0(n750), .B1(n755), .Y(n904) );
  OAI22XL U1667 ( .A0(n1327), .A1(n122), .B0(n750), .B1(n753), .Y(n902) );
  OAI22XL U1668 ( .A0(n1327), .A1(n123), .B0(n750), .B1(n752), .Y(n901) );
  OAI22XL U1669 ( .A0(n1327), .A1(n124), .B0(n750), .B1(n751), .Y(n900) );
  OAI22XL U1670 ( .A0(n1327), .A1(n121), .B0(n1277), .B1(n750), .Y(n903) );
  OAI22XL U1671 ( .A0(n1327), .A1(n125), .B0(n1285), .B1(n750), .Y(n899) );
  AND4X1 U1672 ( .A(string_len[5]), .B(n762), .C(n1335), .D(n1336), .Y(n759)
         );
  NOR3X1 U1673 ( .A(curr_state[0]), .B(curr_state[3]), .C(n52), .Y(n748) );
  NAND2X1 U1674 ( .A(n748), .B(n53), .Y(n733) );
  OAI22XL U1675 ( .A0(n1326), .A1(n134), .B0(n1271), .B1(n760), .Y(n914) );
  OAI22XL U1676 ( .A0(n1326), .A1(n127), .B0(n1273), .B1(n760), .Y(n913) );
  OAI22XL U1677 ( .A0(n1326), .A1(n128), .B0(n1275), .B1(n760), .Y(n912) );
  OAI22XL U1678 ( .A0(n1326), .A1(n129), .B0(n1278), .B1(n760), .Y(n911) );
  OAI22XL U1679 ( .A0(n1326), .A1(n130), .B0(n1279), .B1(n760), .Y(n910) );
  OAI22XL U1680 ( .A0(n1326), .A1(n131), .B0(n1281), .B1(n760), .Y(n909) );
  OAI22XL U1681 ( .A0(n1326), .A1(n132), .B0(n1283), .B1(n760), .Y(n908) );
  OAI22XL U1682 ( .A0(n1326), .A1(n133), .B0(n1285), .B1(n760), .Y(n907) );
  NAND2X1 U1683 ( .A(n700), .B(n56), .Y(n742) );
  OAI2BB2XL U1684 ( .B0(n1354), .B1(n739), .A0N(n1354), .A1N(n1344), .Y(n892)
         );
  OAI2BB2XL U1685 ( .B0(n1360), .B1(n739), .A0N(N407), .A1N(n1344), .Y(n887)
         );
  XOR2X1 U1686 ( .A(n1228), .B(pattern_len[0]), .Y(n687) );
  NAND4X1 U1687 ( .A(n687), .B(n688), .C(n689), .D(n690), .Y(n658) );
  XOR2X1 U1688 ( .A(n1365), .B(pattern_len[3]), .Y(n690) );
  XOR2X1 U1689 ( .A(n1342), .B(N207), .Y(n689) );
  XOR2X1 U1690 ( .A(n1364), .B(n1270), .Y(n688) );
  NAND2X1 U1691 ( .A(pattern_len[0]), .B(n1342), .Y(n667) );
  CLKINVX1 U1692 ( .A(n737), .Y(n1346) );
  OAI31XL U1693 ( .A0(n72), .A1(\star_fg[1] ), .A2(n736), .B0(n738), .Y(n737)
         );
  AO22X1 U1694 ( .A0(n1346), .A1(star_cnt[3]), .B0(N399), .B1(n706), .Y(n883)
         );
  XOR2X1 U1695 ( .A(star_cnt[3]), .B(\r511/carry [3]), .Y(N399) );
  AO22X1 U1696 ( .A0(n1346), .A1(star_cnt[2]), .B0(N398), .B1(n706), .Y(n884)
         );
  AO22X1 U1697 ( .A0(n1346), .A1(star_cnt[1]), .B0(N397), .B1(n706), .Y(n885)
         );
  AO22X1 U1698 ( .A0(n1346), .A1(star_cnt[0]), .B0(N396), .B1(n706), .Y(n886)
         );
  OAI2BB1XL U1699 ( .A0N(valid), .A1N(n743), .B0(n405), .Y(n897) );
  XOR2X1 U1700 ( .A(string_len_comp[0]), .B(n1354), .Y(n693) );
  AND4X1 U1701 ( .A(n692), .B(n693), .C(n694), .D(n695), .Y(n659) );
  XOR2X1 U1702 ( .A(string_len_comp[3]), .B(n1358), .Y(n692) );
  XOR2X1 U1703 ( .A(string_len_comp[2]), .B(n1357), .Y(n694) );
  NOR3X1 U1704 ( .A(n696), .B(n697), .C(n698), .Y(n695) );
  NAND2X1 U1705 ( .A(\star_fg[1] ), .B(n72), .Y(n425) );
  XOR2X1 U1706 ( .A(string_len_comp[4]), .B(string_index[4]), .Y(n698) );
  OAI22XL U1707 ( .A0(n685), .A1(n69), .B0(n682), .B1(n1331), .Y(n873) );
  CLKINVX1 U1708 ( .A(n685), .Y(n1331) );
  NAND2X1 U1709 ( .A(n683), .B(n686), .Y(n685) );
  NAND4BX1 U1710 ( .AN(n660), .B(n659), .C(n1351), .D(n658), .Y(n686) );
  XOR2X1 U1711 ( .A(string_len_comp[1]), .B(string_index[1]), .Y(n696) );
  CLKINVX1 U1712 ( .A(pattern_len[2]), .Y(n1342) );
  NAND2X1 U1713 ( .A(n691), .B(n54), .Y(n407) );
  OAI21X1 U1714 ( .A0(n1363), .A1(n1364), .B0(n722), .Y(n716) );
  AO21X1 U1715 ( .A0(n1364), .A1(n1363), .B0(star_cnt[1]), .Y(n722) );
  NAND2X1 U1716 ( .A(star_cnt[0]), .B(n1228), .Y(n727) );
  OAI2BB2XL U1717 ( .B0(star_cnt[2]), .B1(n715), .A0N(n716), .A1N(N207), .Y(
        n713) );
  NOR2X1 U1718 ( .A(N207), .B(n716), .Y(n715) );
  XOR2X1 U1719 ( .A(string_len_comp[5]), .B(string_index[5]), .Y(n697) );
  CLKBUFX3 U1720 ( .A(pattern_len[1]), .Y(n1270) );
  NAND2X2 U1721 ( .A(pattern_curr_state[0]), .B(n398), .Y(n404) );
  OAI2BB2XL U1722 ( .B0(n80), .B1(n1262), .A0N(\pattern[7][0] ), .A1N(n1262), 
        .Y(n865) );
  OAI2BB2XL U1723 ( .B0(n79), .B1(n1262), .A0N(\pattern[7][1] ), .A1N(n1262), 
        .Y(n866) );
  OAI2BB2XL U1724 ( .B0(n78), .B1(n1262), .A0N(\pattern[7][2] ), .A1N(n1262), 
        .Y(n867) );
  OAI2BB2XL U1725 ( .B0(n77), .B1(n1262), .A0N(\pattern[7][3] ), .A1N(n1262), 
        .Y(n868) );
  OAI2BB2XL U1726 ( .B0(n76), .B1(n1262), .A0N(\pattern[7][4] ), .A1N(n1262), 
        .Y(n869) );
  OAI2BB2XL U1727 ( .B0(n75), .B1(n1262), .A0N(\pattern[7][5] ), .A1N(n1262), 
        .Y(n870) );
  OAI2BB2XL U1728 ( .B0(n74), .B1(n1262), .A0N(\pattern[7][6] ), .A1N(n1262), 
        .Y(n871) );
  OAI2BB2XL U1729 ( .B0(n73), .B1(n1262), .A0N(\pattern[7][7] ), .A1N(n1262), 
        .Y(n872) );
  OAI2BB2XL U1730 ( .B0(n80), .B1(n1264), .A0N(\pattern[5][0] ), .A1N(n1264), 
        .Y(n849) );
  OAI2BB2XL U1731 ( .B0(n79), .B1(n1264), .A0N(\pattern[5][1] ), .A1N(n1264), 
        .Y(n850) );
  OAI2BB2XL U1732 ( .B0(n78), .B1(n1264), .A0N(\pattern[5][2] ), .A1N(n1264), 
        .Y(n851) );
  OAI2BB2XL U1733 ( .B0(n77), .B1(n1264), .A0N(\pattern[5][3] ), .A1N(n1264), 
        .Y(n852) );
  OAI2BB2XL U1734 ( .B0(n76), .B1(n1264), .A0N(\pattern[5][4] ), .A1N(n1264), 
        .Y(n853) );
  OAI2BB2XL U1735 ( .B0(n75), .B1(n1264), .A0N(\pattern[5][5] ), .A1N(n1264), 
        .Y(n854) );
  OAI2BB2XL U1736 ( .B0(n74), .B1(n1264), .A0N(\pattern[5][6] ), .A1N(n1264), 
        .Y(n855) );
  OAI2BB2XL U1737 ( .B0(n73), .B1(n1264), .A0N(\pattern[5][7] ), .A1N(n1264), 
        .Y(n856) );
  OAI2BB2XL U1738 ( .B0(n80), .B1(n1265), .A0N(\pattern[4][0] ), .A1N(n1265), 
        .Y(n841) );
  OAI2BB2XL U1739 ( .B0(n79), .B1(n1265), .A0N(\pattern[4][1] ), .A1N(n1265), 
        .Y(n842) );
  OAI2BB2XL U1740 ( .B0(n78), .B1(n1265), .A0N(\pattern[4][2] ), .A1N(n1265), 
        .Y(n843) );
  OAI2BB2XL U1741 ( .B0(n77), .B1(n1265), .A0N(\pattern[4][3] ), .A1N(n1265), 
        .Y(n844) );
  OAI2BB2XL U1742 ( .B0(n76), .B1(n1265), .A0N(\pattern[4][4] ), .A1N(n1265), 
        .Y(n845) );
  OAI2BB2XL U1743 ( .B0(n75), .B1(n1265), .A0N(\pattern[4][5] ), .A1N(n1265), 
        .Y(n846) );
  OAI2BB2XL U1744 ( .B0(n74), .B1(n1265), .A0N(\pattern[4][6] ), .A1N(n1265), 
        .Y(n847) );
  OAI2BB2XL U1745 ( .B0(n73), .B1(n1265), .A0N(\pattern[4][7] ), .A1N(n1265), 
        .Y(n848) );
  OAI2BB2XL U1746 ( .B0(n80), .B1(n1263), .A0N(\pattern[6][0] ), .A1N(n1263), 
        .Y(n857) );
  OAI2BB2XL U1747 ( .B0(n79), .B1(n1263), .A0N(\pattern[6][1] ), .A1N(n1263), 
        .Y(n858) );
  OAI2BB2XL U1748 ( .B0(n78), .B1(n1263), .A0N(\pattern[6][2] ), .A1N(n1263), 
        .Y(n859) );
  OAI2BB2XL U1749 ( .B0(n77), .B1(n1263), .A0N(\pattern[6][3] ), .A1N(n1263), 
        .Y(n860) );
  OAI2BB2XL U1750 ( .B0(n76), .B1(n1263), .A0N(\pattern[6][4] ), .A1N(n1263), 
        .Y(n861) );
  OAI2BB2XL U1751 ( .B0(n75), .B1(n1263), .A0N(\pattern[6][5] ), .A1N(n1263), 
        .Y(n862) );
  OAI2BB2XL U1752 ( .B0(n74), .B1(n1263), .A0N(\pattern[6][6] ), .A1N(n1263), 
        .Y(n863) );
  OAI2BB2XL U1753 ( .B0(n73), .B1(n1263), .A0N(\pattern[6][7] ), .A1N(n1263), 
        .Y(n864) );
  OAI2BB2XL U1754 ( .B0(n72), .B1(n746), .A0N(n746), .A1N(n1352), .Y(n894) );
  NAND2X1 U1755 ( .A(n744), .B(n53), .Y(n741) );
  NAND2X1 U1756 ( .A(n1362), .B(n72), .Y(n729) );
  OAI2BB1X1 U1757 ( .A0N(pattern_len[3]), .A1N(n703), .B0(n1262), .Y(n874) );
  OAI21XL U1758 ( .A0(pattern_len[2]), .A1(n404), .B0(n704), .Y(n703) );
  CLKINVX1 U1759 ( .A(\pattern_index[3] ), .Y(n1365) );
  CLKINVX1 U1760 ( .A(string_len[4]), .Y(n1336) );
  CLKINVX1 U1761 ( .A(string_len[3]), .Y(n1335) );
  CLKINVX1 U1762 ( .A(\star_fg[1] ), .Y(n1362) );
  OAI2BB2XL U1763 ( .B0(n1269), .B1(n80), .A0N(\pattern[0][0] ), .A1N(n1269), 
        .Y(n809) );
  OAI2BB2XL U1764 ( .B0(n1269), .B1(n79), .A0N(\pattern[0][1] ), .A1N(n1269), 
        .Y(n810) );
  OAI2BB2XL U1765 ( .B0(n1269), .B1(n78), .A0N(\pattern[0][2] ), .A1N(n1269), 
        .Y(n811) );
  OAI2BB2XL U1766 ( .B0(n1269), .B1(n77), .A0N(\pattern[0][3] ), .A1N(n1269), 
        .Y(n812) );
  OAI2BB2XL U1767 ( .B0(n1269), .B1(n76), .A0N(\pattern[0][4] ), .A1N(n1269), 
        .Y(n813) );
  OAI2BB2XL U1768 ( .B0(n1269), .B1(n75), .A0N(\pattern[0][5] ), .A1N(n1269), 
        .Y(n814) );
  OAI2BB2XL U1769 ( .B0(n1269), .B1(n74), .A0N(\pattern[0][6] ), .A1N(n1269), 
        .Y(n815) );
  OAI2BB2XL U1770 ( .B0(n1269), .B1(n73), .A0N(\pattern[0][7] ), .A1N(n1269), 
        .Y(n816) );
  OAI2BB2XL U1771 ( .B0(n80), .B1(n1267), .A0N(\pattern[2][0] ), .A1N(n1267), 
        .Y(n825) );
  OAI2BB2XL U1772 ( .B0(n79), .B1(n1267), .A0N(\pattern[2][1] ), .A1N(n1267), 
        .Y(n826) );
  OAI2BB2XL U1773 ( .B0(n78), .B1(n1267), .A0N(\pattern[2][2] ), .A1N(n1267), 
        .Y(n827) );
  OAI2BB2XL U1774 ( .B0(n77), .B1(n1267), .A0N(\pattern[2][3] ), .A1N(n1267), 
        .Y(n828) );
  OAI2BB2XL U1775 ( .B0(n76), .B1(n1267), .A0N(\pattern[2][4] ), .A1N(n1267), 
        .Y(n829) );
  OAI2BB2XL U1776 ( .B0(n75), .B1(n1267), .A0N(\pattern[2][5] ), .A1N(n1267), 
        .Y(n830) );
  OAI2BB2XL U1777 ( .B0(n74), .B1(n1267), .A0N(\pattern[2][6] ), .A1N(n1267), 
        .Y(n831) );
  OAI2BB2XL U1778 ( .B0(n73), .B1(n1267), .A0N(\pattern[2][7] ), .A1N(n1267), 
        .Y(n832) );
  ADDHXL U1779 ( .A(string_len[1]), .B(string_len[0]), .CO(\r516/carry [2]), 
        .S(N583) );
  ADDHXL U1780 ( .A(string_len[2]), .B(\r516/carry [2]), .CO(\r516/carry [3]), 
        .S(N584) );
  ADDHXL U1781 ( .A(string_len[3]), .B(\r516/carry [3]), .CO(\r516/carry [4]), 
        .S(N585) );
  ADDHXL U1782 ( .A(string_len[4]), .B(\r516/carry [4]), .CO(\r516/carry [5]), 
        .S(N586) );
  AO22X1 U1783 ( .A0(N587), .A1(n807), .B0(n1329), .B1(string_len_comp[5]), 
        .Y(n1176) );
  AOI2BB1X1 U1784 ( .A0N(pattern_len[0]), .A1N(n404), .B0(
        pattern_curr_state[1]), .Y(n705) );
  OAI2BB2XL U1785 ( .B0(n80), .B1(n1268), .A0N(\pattern[1][0] ), .A1N(n1268), 
        .Y(n817) );
  OAI2BB2XL U1786 ( .B0(n79), .B1(n1268), .A0N(\pattern[1][1] ), .A1N(n1268), 
        .Y(n818) );
  OAI2BB2XL U1787 ( .B0(n78), .B1(n1268), .A0N(\pattern[1][2] ), .A1N(n1268), 
        .Y(n819) );
  OAI2BB2XL U1788 ( .B0(n77), .B1(n1268), .A0N(\pattern[1][3] ), .A1N(n1268), 
        .Y(n820) );
  OAI2BB2XL U1789 ( .B0(n76), .B1(n1268), .A0N(\pattern[1][4] ), .A1N(n1268), 
        .Y(n821) );
  OAI2BB2XL U1790 ( .B0(n75), .B1(n1268), .A0N(\pattern[1][5] ), .A1N(n1268), 
        .Y(n822) );
  OAI2BB2XL U1791 ( .B0(n74), .B1(n1268), .A0N(\pattern[1][6] ), .A1N(n1268), 
        .Y(n823) );
  OAI2BB2XL U1792 ( .B0(n73), .B1(n1268), .A0N(\pattern[1][7] ), .A1N(n1268), 
        .Y(n824) );
  NOR2X1 U1793 ( .A(string_curr_state[0]), .B(string_curr_state[1]), .Y(n806)
         );
  OAI2BB2XL U1794 ( .B0(n80), .B1(n1266), .A0N(\pattern[3][0] ), .A1N(n1266), 
        .Y(n833) );
  OAI2BB2XL U1795 ( .B0(n79), .B1(n1266), .A0N(\pattern[3][1] ), .A1N(n1266), 
        .Y(n834) );
  OAI2BB2XL U1796 ( .B0(n78), .B1(n1266), .A0N(\pattern[3][2] ), .A1N(n1266), 
        .Y(n835) );
  OAI2BB2XL U1797 ( .B0(n77), .B1(n1266), .A0N(\pattern[3][3] ), .A1N(n1266), 
        .Y(n836) );
  OAI2BB2XL U1798 ( .B0(n76), .B1(n1266), .A0N(\pattern[3][4] ), .A1N(n1266), 
        .Y(n837) );
  OAI2BB2XL U1799 ( .B0(n75), .B1(n1266), .A0N(\pattern[3][5] ), .A1N(n1266), 
        .Y(n838) );
  OAI2BB2XL U1800 ( .B0(n74), .B1(n1266), .A0N(\pattern[3][6] ), .A1N(n1266), 
        .Y(n839) );
  OAI2BB2XL U1801 ( .B0(n73), .B1(n1266), .A0N(\pattern[3][7] ), .A1N(n1266), 
        .Y(n840) );
  ADDHXL U1802 ( .A(string_index[1]), .B(string_index[0]), .CO(\r512/carry [2]), .S(N403) );
  ADDHXL U1803 ( .A(string_index[2]), .B(\r512/carry [2]), .CO(\r512/carry [3]), .S(N404) );
  ADDHXL U1804 ( .A(string_index[3]), .B(\r512/carry [3]), .CO(\r512/carry [4]), .S(N405) );
  ADDHXL U1805 ( .A(string_index[4]), .B(\r512/carry [4]), .CO(\r512/carry [5]), .S(N406) );
  OAI221XL U1806 ( .A0(n403), .A1(string_len[0]), .B0(n1330), .B1(n808), .C0(
        n1328), .Y(n1182) );
  AO22X1 U1807 ( .A0(n807), .A1(n1330), .B0(n1329), .B1(string_len_comp[0]), 
        .Y(n1181) );
  AO22X1 U1808 ( .A0(N586), .A1(n807), .B0(n1329), .B1(string_len_comp[4]), 
        .Y(n1177) );
  AO22X1 U1809 ( .A0(N585), .A1(n807), .B0(n1329), .B1(string_len_comp[3]), 
        .Y(n1178) );
  AO22X1 U1810 ( .A0(N584), .A1(n807), .B0(n1329), .B1(string_len_comp[2]), 
        .Y(n1179) );
  AO22X1 U1811 ( .A0(N583), .A1(n807), .B0(n1329), .B1(string_len_comp[1]), 
        .Y(n1180) );
  OAI31XL U1812 ( .A0(n56), .A1(n1347), .A2(n700), .B0(n701), .Y(n893) );
  OAI32X1 U1813 ( .A0(n1339), .A1(n1270), .A2(n404), .B0(n705), .B1(n1341), 
        .Y(n876) );
  NAND2X1 U1814 ( .A(n407), .B(n408), .Y(next_state[3]) );
  OAI31XL U1815 ( .A0(n409), .A1(curr_state[1]), .A2(n406), .B0(n50), .Y(n408)
         );
  OAI2BB1X1 U1816 ( .A0N(begin_word_fg), .A1N(n743), .B0(n735), .Y(n896) );
  NAND2X1 U1817 ( .A(curr_state[0]), .B(n691), .Y(n405) );
  OAI22XL U1818 ( .A0(n398), .A1(n1339), .B0(pattern_len[0]), .B1(n404), .Y(
        n898) );
  ADDHXL U1819 ( .A(star_cnt[1]), .B(star_cnt[0]), .CO(\r511/carry [2]), .S(
        N397) );
  ADDHXL U1820 ( .A(star_cnt[2]), .B(\r511/carry [2]), .CO(\r511/carry [3]), 
        .S(N398) );
  NOR2X1 U1821 ( .A(n398), .B(pattern_curr_state[0]), .Y(n406) );
  XOR2X1 U1822 ( .A(star_cnt[3]), .B(\pattern_index[3] ), .Y(n714) );
  INVX3 U1823 ( .A(reset), .Y(n1292) );
  AO22X1 U1824 ( .A0(\pattern[3][0] ), .A1(n1220), .B0(\pattern[1][0] ), .B1(
        n1219), .Y(n1190) );
  AOI221XL U1825 ( .A0(\pattern[5][0] ), .A1(n1229), .B0(\pattern[7][0] ), 
        .B1(n1230), .C0(n1190), .Y(n1193) );
  AO22X1 U1826 ( .A0(\pattern[2][0] ), .A1(n1220), .B0(\pattern[0][0] ), .B1(
        n1219), .Y(n1191) );
  AOI221XL U1827 ( .A0(\pattern[4][0] ), .A1(n1229), .B0(\pattern[6][0] ), 
        .B1(n1230), .C0(n1191), .Y(n1192) );
  AO22X1 U1828 ( .A0(\pattern[3][1] ), .A1(n1220), .B0(\pattern[1][1] ), .B1(
        n1219), .Y(n1194) );
  AOI221XL U1829 ( .A0(\pattern[5][1] ), .A1(n1229), .B0(\pattern[7][1] ), 
        .B1(n1230), .C0(n1194), .Y(n1197) );
  AO22X1 U1830 ( .A0(\pattern[2][1] ), .A1(n1220), .B0(\pattern[0][1] ), .B1(
        n1219), .Y(n1195) );
  AOI221XL U1831 ( .A0(\pattern[4][1] ), .A1(n1229), .B0(\pattern[6][1] ), 
        .B1(n1230), .C0(n1195), .Y(n1196) );
  AO22X1 U1832 ( .A0(\pattern[3][2] ), .A1(n1220), .B0(\pattern[1][2] ), .B1(
        n1219), .Y(n1198) );
  AOI221XL U1833 ( .A0(\pattern[5][2] ), .A1(n1229), .B0(\pattern[7][2] ), 
        .B1(n1230), .C0(n1198), .Y(n1201) );
  AO22X1 U1834 ( .A0(\pattern[2][2] ), .A1(n1220), .B0(\pattern[0][2] ), .B1(
        n1219), .Y(n1199) );
  AOI221XL U1835 ( .A0(\pattern[4][2] ), .A1(n1229), .B0(\pattern[6][2] ), 
        .B1(n1230), .C0(n1199), .Y(n1200) );
  AO22X1 U1836 ( .A0(\pattern[3][3] ), .A1(n1220), .B0(\pattern[1][3] ), .B1(
        n1219), .Y(n1202) );
  AOI221XL U1837 ( .A0(\pattern[5][3] ), .A1(n1229), .B0(\pattern[7][3] ), 
        .B1(n1230), .C0(n1202), .Y(n1205) );
  AO22X1 U1838 ( .A0(\pattern[2][3] ), .A1(n1220), .B0(\pattern[0][3] ), .B1(
        n1219), .Y(n1203) );
  AOI221XL U1839 ( .A0(\pattern[4][3] ), .A1(n1229), .B0(\pattern[6][3] ), 
        .B1(n1230), .C0(n1203), .Y(n1204) );
  AO22X1 U1840 ( .A0(\pattern[3][4] ), .A1(n1220), .B0(\pattern[1][4] ), .B1(
        n1219), .Y(n1206) );
  AOI221XL U1841 ( .A0(\pattern[5][4] ), .A1(n1229), .B0(\pattern[7][4] ), 
        .B1(n1230), .C0(n1206), .Y(n1209) );
  AO22X1 U1842 ( .A0(\pattern[2][4] ), .A1(n1220), .B0(\pattern[0][4] ), .B1(
        n1219), .Y(n1207) );
  AOI221XL U1843 ( .A0(\pattern[4][4] ), .A1(n1229), .B0(\pattern[6][4] ), 
        .B1(n1230), .C0(n1207), .Y(n1208) );
  AO22X1 U1844 ( .A0(\pattern[3][5] ), .A1(n1220), .B0(\pattern[1][5] ), .B1(
        n1219), .Y(n1210) );
  AOI221XL U1845 ( .A0(\pattern[5][5] ), .A1(n1229), .B0(\pattern[7][5] ), 
        .B1(n1230), .C0(n1210), .Y(n1213) );
  AO22X1 U1846 ( .A0(\pattern[2][5] ), .A1(n1220), .B0(\pattern[0][5] ), .B1(
        n1219), .Y(n1211) );
  AOI221XL U1847 ( .A0(\pattern[4][5] ), .A1(n1229), .B0(\pattern[6][5] ), 
        .B1(n1230), .C0(n1211), .Y(n1212) );
  AO22X1 U1848 ( .A0(\pattern[3][6] ), .A1(n1220), .B0(\pattern[1][6] ), .B1(
        n1219), .Y(n1214) );
  AOI221XL U1849 ( .A0(\pattern[5][6] ), .A1(n1229), .B0(\pattern[7][6] ), 
        .B1(n1230), .C0(n1214), .Y(n1217) );
  AO22X1 U1850 ( .A0(\pattern[2][6] ), .A1(n1220), .B0(\pattern[0][6] ), .B1(
        n1219), .Y(n1215) );
  AOI221XL U1851 ( .A0(\pattern[4][6] ), .A1(n1229), .B0(\pattern[6][6] ), 
        .B1(n1230), .C0(n1215), .Y(n1216) );
  AO22X1 U1852 ( .A0(\pattern[3][7] ), .A1(n1220), .B0(\pattern[1][7] ), .B1(
        n1219), .Y(n1218) );
  AOI221XL U1853 ( .A0(\pattern[5][7] ), .A1(n1229), .B0(\pattern[7][7] ), 
        .B1(n1230), .C0(n1218), .Y(n1225) );
  AO22X1 U1854 ( .A0(\pattern[2][7] ), .A1(n1220), .B0(\pattern[0][7] ), .B1(
        n1219), .Y(n1221) );
  AOI221XL U1855 ( .A0(\pattern[4][7] ), .A1(n1229), .B0(\pattern[6][7] ), 
        .B1(n1230), .C0(n1221), .Y(n1224) );
  CLKINVX1 U1856 ( .A(begin_word_fg), .Y(N504) );
  CLKINVX1 U1858 ( .A(star_cnt[0]), .Y(N396) );
  XOR2X1 U1859 ( .A(\r512/carry [5]), .B(string_index[5]), .Y(N407) );
  XOR2X1 U1860 ( .A(\r516/carry [5]), .B(string_len[5]), .Y(N587) );
endmodule

