`timescale 1ns/10ps

module  CONV(
	input		clk,
	input		reset,
	output		reg busy,	
	input		ready,	
			
	output		[11:0]iaddr,
	input		[19:0]idata,	
	
	output	 	cwr,
	output	 	[11:0]caddr_wr,
	output	 	[19:0]cdata_wr,
	
	output	 	crd,
	output	 	[11:0]caddr_rd,
	input	 	[19:0]cdata_rd,
	
	output	 	[2:0]csel
	);

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

parameter  signed bias_0 = 40'h00_1310_0000; 
parameter  signed bias_1 = 40'hFF_7295_0000; 
//kernel 0 paramter declaration end----------------

//variable declaration str-------------------------
reg signed [19:0]image_temp_row[2:0][2:0];

reg [1:0]kernel_column;
reg [1:0]kernel_row;
reg [5:0]row;
reg [5:0]column;
reg kernel_sel;

reg signed[19:0]kernel_w;
reg [3:0]curr_state_layer0;
reg [3:0]next_state_layer0;

reg [1:0]curr_state_control;
reg [1:0]next_state_control;

reg signed[39:0]acc;
reg signed[39:0]mul;
wire signed[39:0]bias;

wire signed [6:0]row_pos;
wire signed [6:0]column_pos;

wire signed [19:0]matrix_num;
assign matrix_num = image_temp_row[kernel_row][kernel_column];

//variable declaration end-------------------------
assign csel = 3'd1+ kernel_sel; 

assign cwr = curr_state_layer0 == WBDT ? 1'b1 : 1'b0; //35(100011) / 2^6 =
assign caddr_wr = row * 64 + column;
assign cdata_wr = acc[39] ? 20'd0 : acc[15] ? acc[35:16] + 1'b1 : acc[35:16] ; 

assign bias = ~kernel_sel ? bias_0 : bias_1;

wire signed[6:0]object_row;
wire signed[6:0]object_column;

assign object_row = row + kernel_row;
assign object_column = column + kernel_column;

assign row_pos = object_row - 1;
assign column_pos = object_column - 1;

assign iaddr = row_pos * 64 + column_pos;

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

localparam [3:0]IDL0 = 4'd0,
                STAR = 4'd1,
                FRRC = 4'd2,
                FRKN = 4'd3,
                CNV1 = 4'd4,
				CNV2 = 4'd5,
				CNV3 = 4'd6,
                BIAS = 4'd7,
			    WBDT = 4'd8,
                KNCG = 4'd9,
				OVR0 = 4'd10;

localparam [1:0]IDLE = 2'd0,
                LYR0 = 2'd1,
                LYR1 = 2'd2,
                LYR2 = 2'd3;

//layer control str----------------------------------
always @(posedge clk or posedge reset) begin
    if(reset)curr_state_control <= IDLE;
    else curr_state_control <= next_state_control ;
end

always @(*) begin
    case(curr_state_control)
        IDLE:begin
			if(ready)next_state_control = LYR0;
			else next_state_control = IDLE;
        end
		LYR0:begin
			if(curr_state_layer0 == OVR0)next_state_control = IDLE;
			else next_state_control = LYR0;
		end
		LYR1:begin

		end
		LYR2:begin

		end
    endcase
end
//layer control end----------------------------------

//layer control str----------------------------------
always @(posedge clk) begin
    case(curr_state_control)
        IDLE:begin
			busy <= 1'b0;
        end
		LYR0:begin
			busy <= 1'b1;
		end
		LYR1:begin
			busy <= 1'b0;
		end
		LYR2:begin

		end
    endcase
end
//layer control end----------------------------------

//layer0 state str-----------------------------------
always @(posedge clk or posedge reset) begin
    if(reset)curr_state_layer0 <= IDL0;
    else curr_state_layer0 <= next_state_layer0;
end

always @(*) begin
    case(curr_state_layer0)
        IDL0:begin
			if(curr_state_control == LYR0)next_state_layer0 = CNV1;
			else next_state_layer0 = IDLE;
        end
        FRRC:begin
			if(row == 6'd63 && column == 6'd63)begin
				next_state_layer0 = KNCG;
			end
			else next_state_layer0 = CNV1;
        end
        FRKN:begin
			if(kernel_row == 2'd2 && kernel_column == 2'd2)begin
				next_state_layer0 = BIAS;
			end
			else next_state_layer0 = CNV1;
        end
        CNV1:begin
			next_state_layer0 = CNV2;
        end
		CNV2:begin      
			next_state_layer0 = CNV3;
        end
		CNV3:begin
			next_state_layer0 = FRKN;
        end
        BIAS:begin
			next_state_layer0 = WBDT;
        end
		WBDT:begin
			next_state_layer0 = FRRC;	
		end
		KNCG:begin
			if(kernel_sel) next_state_layer0 = OVR0;
			else next_state_layer0 = CNV1;
		end
        OVR0:begin
			next_state_layer0 = IDL0;
        end
		default:next_state_layer0 = IDL0;
    endcase
end
//layer0 state str-----------------------------------

//layer0 RTL operation str---------------------------
always @(posedge clk) begin
    case(curr_state_layer0)
        IDL0:begin
			acc 			<= 20'd0;
			busy 			<= 1'b0;
			row 			<= 6'd0;
			column 			<= 6'd0;
			kernel_row 		<= 2'd0;
			kernel_column 	<= 2'd0;
			kernel_sel 		<= 1'd0;
        end
        FRRC:begin
			if(row == 6'd63 && column == 6'd63)begin
				row <= 6'd0;
			end
			else if(column == 6'd63)row <= row + 1'd1;

			if(column == 6'd63)begin
				column <= 6'd0;
			end
			else column <= column + 1'd1;
        end
        FRKN:begin
			if(kernel_row == 2'd2 && kernel_column == 2'd2)begin
				kernel_row <= 2'd0;
			end
			else if(kernel_column == 2'd2)kernel_row <= kernel_row + 1'd1;

			if(kernel_column == 2'd2)begin
				kernel_column <= 2'd0;
			end
			else kernel_column <= kernel_column + 1'd1;

			//iaddr <= (row + kernel_row - 1)*16 + (column + kernel_column - 1);
        end
        CNV1:begin
			if (row_pos < 0 || row_pos  > 63 || column_pos  < 0 || column_pos > 63)
                image_temp_row[kernel_row][kernel_column] <= 20'd0;

            else
                image_temp_row[kernel_row][kernel_column] <= idata;
        end
		CNV2:begin      
			mul <= image_temp_row[kernel_row][kernel_column] * kernel_w;
        end
		CNV3:begin
			acc <= acc + mul;
        end
        BIAS:begin
			acc <= acc + bias;
        end
		WBDT:begin
			acc <= 20'd0;
		end
		KNCG:begin
			if(~kernel_sel) kernel_sel <= 1'b1;
			
			acc <= 20'd0;
		end
        default:begin
			acc 			<= 20'd0;
			busy 			<= 1'b0;
			row 			<= 6'd0;
			column 			<= 6'd0;
			kernel_row 		<= 2'd0;
			kernel_column 	<= 2'd0;
			kernel_sel 		<= 1'd0;
		end
    endcase
end
//layer0 RTL operation end---------------------------


endmodule




