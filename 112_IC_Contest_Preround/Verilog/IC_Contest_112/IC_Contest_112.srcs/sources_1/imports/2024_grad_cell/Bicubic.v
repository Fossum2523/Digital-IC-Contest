`timescale 1 ns/1 ps
`celldefine
module Bicubic (
input CLK,
input RST,
input [6:0] V0,
input [6:0] H0,
input [4:0] SW,
input [4:0] SH,
input [5:0] TW,
input [5:0] TH,
output reg DONE);

// ImgROM define str--------------------------------------------
wire [7:0] ImgROM_Q;
reg  ImgROM_CEN;
reg  [13:0] ImgROM_A;

// ResultSRA define str--------------------------------------------
wire [7:0] ResultSRAM_Q;
reg ResultSRAM_CEN;
reg ResultSRAM_WEN;
reg [13:0] ResultSRAM_A;
reg [7:0] ResultSRAM_D;

ImgROM u_ImgROM (.Q(ImgROM_Q), .CLK(CLK), .CEN(ImgROM_CEN), .A(ImgROM_A));
ResultSRAM u_ResultSRAM (.Q(ResultSRAM_Q), .CLK(CLK), .CEN(ResultSRAM_CEN), .WEN(ResultSRAM_WEN), .A(ResultSRAM_A), .D(ResultSRAM_D));


endmodule


