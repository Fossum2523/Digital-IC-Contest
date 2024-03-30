`timescale 1ns/10ps
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

wire [4:0] SW_n;
wire [4:0] SH_n;
wire [5:0] TW_n;
wire [5:0] TH_n;

wire [9:0]ratio_w;
wire [9:0]ratio_h;

reg [9:0]cnt_row;
reg [9:0]cnt_col;
reg [9:0]cnt_rom;

reg [17:0]ini_pos;
reg [19:0]col_ratio;

reg [19:0]ini_pos_plus_coldis;
reg [19:0]col_dis;

wire[19:0]floor_colratio;

reg [7:0]pattern[3:0];

wire signed  [13:0]a,b,c,d;
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

//define localparam str------------------------------
localparam [5:0]IDLE = 6'd0,
                GET_WORK_DATA = 6'd1,
                PREP_WORK_DATA = 6'd2,
                FOR_ROW_1 = 6'd3,
                FOR_COL_1 = 6'd4,
                INITAL_POS = 6'd6,
                PLUS_COL_DIS = 6'd7,
                TARGET_MIDDLE = 6'd8,
                FOR_ROW_2 = 6'd9,
                FOR_COL_2 = 6'd10,
                INITAL_ROW = 6'd11,
                PIUS_ROW_DIS = 6'd12,
                TARGET_FINAL = 6'd13,
                OVER = 6'd14,
                IMROM_GET = 6'd15,
                IMROM_data = 6'd16;
//define localparam end------------------------------


//variable definition str----------------------------
reg [5:0]curr_state;
reg [5:0]next_state;
//variable definition end----------------------------


//assignment str--------------------------------------
assign SW_n = SW - 1;
assign SH_n = SH - 1;
assign TW_n = TW - 1;
assign TH_n = TH - 1;
assign ratio_h = {1'd0,SH_n,4'd0} / {TH_n,4'd0} ;
assign ratio_w = {1'd0,SW_n,4'd0} / {TW_n,4'd0} ;
assign floor_colratio = cnt_col * ratio_w;

// assign a = (-1*(pattern[0]>>1)) + ((3*pattern[1])>>1) - ((3*pattern)>>1) + (pattern[3]>>1);
// assign b = pattern[0] - ((5*pattern[1])>>1) + (2*pattern) - (pattern[3]>>1);
// assign c = (-1*(pattern[0]>>1)) + ((pattern[2]>>1))
// assign d = pattern[1];
//assignment end--------------------------------------


//ALU sharing str----------------------------------

//ALU sharing end----------------------------------


//state control str----------------------------------
always @(posedge CLK or posedge RST) begin
    if(RST)curr_state <= IDLE;
    else curr_state <= next_state;
end

always @(*) begin
    case(curr_state)
        IDLE:begin
            next_state = GET_WORK_DATA;
        end
        GET_WORK_DATA:begin
            next_state = PREP_WORK_DATA;
        end
        PREP_WORK_DATA:begin
            next_state = INITAL_POS;
        end
        FOR_ROW_1:begin

        end
        FOR_COL_1:begin

        end
        INITAL_POS:begin
            next_state = PLUS_COL_DIS;
        end
        PLUS_COL_DIS:begin
            next_state = TARGET_MIDDLE;
        end
        TARGET_MIDDLE:begin
            next_state = IMROM_GET;
        end
        FOR_ROW_2:begin

        end
        FOR_COL_2:begin

        end
        INITAL_ROW:begin

        end
        PIUS_ROW_DIS:begin

        end
        TARGET_FINAL:begin

        end
        OVER:begin

        end
        IMROM_GET:begin
            if(cnt_rom < 3)
                next_state = IMROM_data;
            else
                next_state = IMROM_GET;
        end
        IMROM_data:begin
            next_state = IMROM_GET;
        end
        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------


//RTL operation str----------------------------------
always @(posedge CLK) begin
    case(curr_state)
        IDLE:begin
            cnt_row <= 10'd0;
            cnt_rom <= 10'd0;
        end
        GET_WORK_DATA:begin

        end
        PREP_WORK_DATA:begin

        end
        FOR_ROW_1:begin

        end
        FOR_COL_1:begin

        end
        INITAL_POS:begin
            ini_pos <= (V0 + cnt_row - 1'b1) * 100 + H0;
            col_ratio <= floor_colratio >> 4;
        end
        PLUS_COL_DIS:begin
            ini_pos_plus_coldis <= ini_pos + col_ratio;
            col_dis <= cnt_col * ratio_w - col_ratio;
        end
        TARGET_MIDDLE:begin

        end
        FOR_ROW_2:begin

        end
        FOR_COL_2:begin

        end
        INITAL_ROW:begin

        end
        PIUS_ROW_DIS:begin

        end
        TARGET_FINAL:begin

        end
        OVER:begin

        end
        IMROM_GET:begin
            ImgROM_CEN <= 1'b1;
            ImgROM_A <= ini_pos_plus_coldis - 1 + cnt_rom;
            
        end
        IMROM_data:begin
            pattern[cnt_rom] <= ImgROM_Q;
            cnt_rom <= cnt_rom + 1'b1;
        end
    endcase
end
//RTL operation end----------------------------------

endmodule


