`timescale 1ns/10ps

module LAYER1(
    input clk,
    input reset,
    input ready,
    input           [19:0]image_in,
    output		reg [11:0]iaddr,
	input		    [19:0]idata,	
);

localparam [3:0]IDLE = 4'd0,
                OVER = 4'd1,
                FOR_ROW = 4'd2,
                FOR_COLUMN = 4'd3,
                FR_KERNEL_ROW = 4'd4,
                FR_KERNEL_COLUMN = 4'd5,
                ZERO_PADDING = 4'd6,
                MUL = 4'd7,
                ACC = 4'd8,
                BIAS = 4'd9,
                S8 = 4'd10,
                S9 = 4'd11,
                FOR_COLUMN0 = 4'd12,
                FOR_COLUMN1 = 4'd13,
                FOR_COLUMN2 = 4'd14,
                FOR_COLUMN3 = 4'd15;

//variable definition str----------------------------
reg [3:0]curr_state;
reg [3:0]next_state;

reg signed [19:0]image_temp_row[2:0][2:0];

reg [1:0]kernel_column;
reg [1:0]kernel_row;
reg [5:0]row;
reg [5:0]column;
reg kernel_sel;
reg [19:0]kernel_w;

reg [3:0]curr_state;
reg [3:0]next_state;

reg [39:0]acc;
reg [39:0]mul;
wire [19:0]bias;
//variable definition end----------------------------

//kernel 0 paramter declaration str----------------
parameter  signed kernel0_0 = 20'h0A89E;
parameter  signed kernel0_1 = 20'h092D5;
parameter  signed kernel0_2 = 20'h06D43;
parameter  signed kernel0_3 = 20'h01004;
parameter  signed kernel0_4 = 20'hF8F71;
parameter  signed kernel0_5 = 20'hF6E54;
parameter  signed kernel0_6 = 20'hFA6D7;
parameter  signed kernel0_7 = 20'hFC834;
parameter  signed kernel0_8 = 20'hFAC19;
//kernel 0 paramter declaration end----------------

//kernel 0 paramter declaration str----------------
parameter  signed kernel1_0 = 20'hFDB55;
parameter  signed kernel1_1 = 20'h02992;
parameter  signed kernel1_2 = 20'hFC994;
parameter  signed kernel1_3 = 20'h050FD;
parameter  signed kernel1_4 = 20'h02F20;
parameter  signed kernel1_5 = 20'h0202D;
parameter  signed kernel1_6 = 20'h03BD7;
parameter  signed kernel1_7 = 20'hFD369;
parameter  signed kernel1_8 = 20'h05E68;

parameter  signed bias_0 = 20'h01310; 
parameter  signed bias_1 = 20'hF7295; 
//kernel 0 paramter declaration end----------------

//ALU sharing str----------------------------------
assign bias = ~kernel_sel ? bias_0 : bias_1;

always @(*) begin
	if(~kernel_sel)begin
		case ({kernel_column,kernel_row})
			4'b00_00:kernel_w = kernel0_0; 
			4'b01_00:kernel_w = kernel0_1; 
			4'b10_00:kernel_w = kernel0_2; 
			4'b00_01:kernel_w = kernel0_3; 
			4'b01_01:kernel_w = kernel0_4; 
			4'b10_01:kernel_w = kernel0_5; 
			4'b00_10:kernel_w = kernel0_6; 
			4'b01_10:kernel_w = kernel0_7; 
			4'b10_10:kernel_w = kernel0_8; 
			default: kernel_w = 20'd0;
		endcase
	end
	else begin
		case ({kernel_column,kernel_row})
			4'b00_00:kernel_w = kernel1_0; 
			4'b01_00:kernel_w = kernel1_1; 
			4'b10_00:kernel_w = kernel1_2; 
			4'b00_01:kernel_w = kernel1_3; 
			4'b01_01:kernel_w = kernel1_4; 
			4'b10_01:kernel_w = kernel1_5; 
			4'b00_10:kernel_w = kernel1_6; 
			4'b01_10:kernel_w = kernel1_7; 
			4'b10_10:kernel_w = kernel1_8; 
			default: kernel_w = 20'd0;
		endcase
	end
end
//ALU sharing end----------------------------------

//state control str----------------------------------
always @(posedge clk or posedge reset) begin
    if(reset)curr_state <= IDLE;
    else curr_state <= next_state;
end

always @(*) begin
    case(curr_state)
        IDLE:begin
            next_state = ZERO_PADDING;
        end
        FOR_ROW:begin
            if (row == 63) next_state = OVER;
            else next_state = FOR_ROW;
        end
        FOR_COLUMN:begin
            if (column == 63) next_state = FOR_ROW;
            else next_state = FOR_COLUMN;
        end
        FR_KERNEL_ROW:begin
            if (kernel_row == 2) next_state = MUL;
            else next_state = FR_KERNEL_ROW;
        end
        FR_KERNEL_COLUMN:begin
            if (kernel_column == 2) next_state = FR_KERNEL_ROW;
            else next_state = FR_KERNEL_COLUMN;
        end
        ZERO_PADDING:begin
            next_state = FR_KERNEL_COLUMN;
        end
        MUL:begin
            next_state = ACC;
        end
        ACC:begin
            next_state = BIAS;
        end
        BIAS:begin
            next_state = FOR_COLUMN;
        end
        S8:begin

        end
        S9:begin

        end
        FOR_COLUMN0:begin

        end
        FOR_COLUMN1:begin

        end
        FOR_COLUMN2:begin

        end
        FOR_COLUMN3:begin

        end
        OVER:begin

        end
        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------

//Counter str----------------------------------
always @(posedge clk) begin
    case(curr_state)
        IDLE:begin
            row <=  6'd0;
            column <= 6'd0;
            kernel_row <= 2'd0;
            kernel_column <= 2'd0;
        end
        FOR_ROW:begin  
            if (row == 63) row <= 6'd0;
            else row <= row + 6'd1;
        end
        FOR_COLUMN:begin
            if (column == 63) column <= 6'd0;
            else column <= column + 6'd1; 
        end
        FR_KERNEL_ROW:begin
            if (kernel_row == 2) kernel_row <= 2'd0;
            else kernel_row <= kernel_row + 2'd1;
        end
        FR_KERNEL_COLUMN:begin
            if (kernel_column == 2) kernel_column <= 2'd0;
            else kernel_column <= kernel_column + 2'd1;
        end
        OVER:begin
            
        end
        default: next_state = IDLE;
    endcase
end
//Counter end----------------------------------

//RTL operation str----------------------------------
always @(posedge clk) begin
    case(curr_state)
        IDLE:begin
            
        end
        ZERO_PADDING:begin
            if (row + kernel_row) < 0 & (row + kernel_row) > 63 & (column + kernel_column) < 0 & (column + kernel_column > 63) 
                image_temp_row[row + kernel_row - 1 ][column + kernel_column-1] <= 0;
            else 
                image_temp_row[row + kernel_row - 1 ][column + kernel_column-1] <= idata[(row + kernel_row-1)*64+(column + kernel_column-1)];
        end
        MUL:begin
            mul 
        end
        ACC:begin

        end
        BIAS:begin

        end
        OVER:begin

        end
        default: next_state = IDLE;
    endcase
end
//RTL operation end----------------------------------

endmodule