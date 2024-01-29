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

//kernel 0 paramter declaration str----------------------------------
parameter  signed kernel0_0 = 20'h0A89E;
parameter  signed kernel0_1 = 20'h092D5;
parameter  signed kernel0_2 = 20'h06D43;
parameter  signed kernel0_3 = 20'h01004;
parameter  signed kernel0_4 = 20'hF8F71;
parameter  signed kernel0_5 = 20'hF6E54;
parameter  signed kernel0_6 = 20'hFA6D7;
parameter  signed kernel0_7 = 20'hFC834;
parameter  signed kernel0_8 = 20'hFAC19;
//kernel 0 paramter declaration end----------------------------------

//kernel 1 paramter declaration str----------------------------------
parameter  signed kernel1_0 = 20'hFDB55;
parameter  signed kernel1_1 = 20'h02992;
parameter  signed kernel1_2 = 20'hFC994;
parameter  signed kernel1_3 = 20'h050FD;
parameter  signed kernel1_4 = 20'h02F20;
parameter  signed kernel1_5 = 20'h0202D;
parameter  signed kernel1_6 = 20'h03BD7;
parameter  signed kernel1_7 = 20'hFD369;
parameter  signed kernel1_8 = 20'h05E68;
//kernel 1 paramter declaration end----------------------------------

//bias paramter declaration str--------------------------------------
parameter  signed bias_0 = 40'h00_1310_0000; 
parameter  signed bias_1 = 40'hFF_7295_0000;
//bias paramter declaration end--------------------------------------

//control variable declaration str-----------------------------------
reg [1:0]curr_state_control;
reg [1:0]next_state_control;
//control variable declaration end-----------------------------------

//lyr0 variable declaration str--------------------------------------
//Control layer 0's state//
reg [3:0]curr_state_layer0;
reg [3:0]next_state_layer0;

//Store the nine 20-bit data required for this convolution//
reg signed [19:0]image_temp_row[2:0][2:0]; 

//Control Center, top, bottom, left, right, top left, 
//bottom left, top right, bottom right
reg [1:0]kernel_row;
reg [1:0]kernel_column;

//Control 4096 centers of convolution//
reg [5:0]row_layer0;
reg [5:0]column_layer0;

//Choose kernel//
reg kernel_sel;

//Choose nine sub kernel with case & kernel_row & kernel_column// 
reg signed[19:0]kernel_w;

//Store nine times multiple and the bias in mul & acc//
reg signed[39:0]acc;
reg signed[39:0]mul;

//Choose bias with different kernel//
wire signed[39:0]bias;

//The actual row and column corresponding to the memory//
wire signed [6:0]row_pos_layer0;
wire signed [6:0]column_pos_layer0;

//The ReLU, If the data is greater than 0, the data is transferred to memory; otherwise//
wire [19:0]ReLU;
//lyr0 variable declaration end--------------------------------------

//lyr1 variable declaration str--------------------------------------
//Control layer 1's state//
reg [3:0]curr_state_layer1;
reg [3:0]next_state_layer1;

//Control Center, bottom, right, bottom left//
reg pixel_column;
reg pixel_row;

//Control 1024 centers of convolution//
reg [4:0]row_layer1;
reg [4:0]column_layer1;

//Store the largest of the four data in max pooling//
reg [19:0]max_num;

//Choose matrix//
reg matrix_sel;

//The actual row and column corresponding to the memory//
wire [5:0]row_pos_layer1;
wire [5:0]column_pos_layer1;
//lyr1 variable declaration end--------------------------------------

//lyr2 variable declaration str--------------------------------------
//Control layer 2's state//
reg [2:0]curr_state_layer2;
reg [2:0]next_state_layer2;

//Counting 1024 data//
reg [9:0]pixel_cnt;

//Choose which matrix be flatten//
reg flmm_sel;
//lyr2 variable declaration end--------------------------------------

//local parameter str------------------------------------------------
//choose layer//
localparam [1:0]IDLE = 2'd0,//idle
                LYR0 = 2'd1,//layer 0 work
                LYR1 = 2'd2,//layer 1 work
                LYR2 = 2'd3;//layer 2 work
//layer 0 FSM//
localparam [3:0]IDL0 = 4'd0,//idle layer 0
                FRRC = 4'd1,//for with row & column
                FRKN = 4'd2,//for with kernel
                CNV1 = 4'd3,//convolution work 1
				CNV2 = 4'd4,//convolution work 2
				CNV3 = 4'd5,//convolution work 3
                BIAS = 4'd6,//add bias
			    WBDT = 4'd7,//write back data(result) to memory
                KNCG = 4'd8,//kernel change
				OVR0 = 4'd9;//over layer 0

//layer 1 FSM//
localparam [3:0]IDL1 = 4'd0,//idle layer 1
                FRMP = 4'd1,//for with matrix pixle 
                FR2P = 4'd2,//for to pixle
                MAXP = 4'd3,//max pooling
				WBD1 = 4'd4,//write back data layer 1
				MTCG = 4'd5,//
                OVR1 = 4'd6;//over layer 1

//layer 2 FSM//
localparam [2:0]IDL2 = 3'd0,//idle layer 2
				FRFL = 3'd1,//for with flatten
				READ = 3'd2,//read layer 1 memory 
				WBD2 = 3'd3,//write to layer 2 memory
				FLCG = 3'd4,//flatten change
				OVR2 = 3'd5;//over layer 2
//local parameter end------------------------------------------------

//control assign declaration str-------------------------------------
assign csel = 	curr_state_layer0 == WBDT && kernel_sel == 1'b0 ? 3'd1 : //layer0 kernel0 write
				curr_state_layer0 == WBDT && kernel_sel == 1'b1 ? 3'd2 : //layer0 kernel1 write

				curr_state_layer1 == MAXP && matrix_sel == 1'b0 ? 3'd1 : //layer1 kernel0 read layer0 memory
				curr_state_layer1 == WBD1 && matrix_sel == 1'b0 ? 3'd3 : //layer1 kernel0 write
				curr_state_layer1 == MAXP && matrix_sel == 1'b1 ? 3'd2 : //layer1 kernel1 read layer0 memory
				curr_state_layer1 == WBD1 && matrix_sel == 1'b1 ? 3'd4 : //layer1 kernel1 writes
				
				curr_state_layer2 == READ && flmm_sel 	== 1'b0 ? 3'd3 : //layer2 kernel0 read layer1 memory
				curr_state_layer2 == WBD2 && flmm_sel 	== 1'b0 ? 3'd5 : //layer2 kernel0 write
				curr_state_layer2 == READ && flmm_sel 	== 1'b1 ? 3'd4 : //layer2 kernel1 read layer1 memory
				curr_state_layer2 == WBD2 && flmm_sel 	== 1'b1 ? 3'd5 : //layer2 kernel1 write
				3'd0;

assign cwr = curr_state_layer0 == WBDT ? 1'b1 : 
			 curr_state_layer1 == WBD1 ? 1'b1 : 
			 curr_state_layer2 == WBD2 ? 1'b1 :1'b0; 

assign caddr_wr = 	(curr_state_control == LYR0) ? {row_layer0,column_layer0} : // row_layer0 * 16 + column_layer0
					(curr_state_control == LYR1) ? {row_layer1,column_layer1} : // row_layer1 * 16 + column_layer1
					(curr_state_control == LYR2) ? {pixel_cnt,flmm_sel} : 		// pixel_cnt * 2 + flmm_sel
					12'd0;

assign cdata_wr =	(curr_state_control == LYR0) ? ReLU 	: //write back the result after ReLU
					(curr_state_layer1 	== WBD1) ? max_num 	: //write back the result after Max Pooling
					(curr_state_layer2 	== WBD2) ? cdata_rd : //write back the data from "matrix0" to "odd" memory addresses & the data from "matrix1" to "even" memory addresses
					12'd0;

assign iaddr = 	{row_pos_layer0[5:0],column_pos_layer0[5:0]}; //row_pos_layer0[5:0] * 16 + column_pos_layer0[5:0]

assign crd = 	curr_state_layer1 == MAXP ? 1'b1 : 
				curr_state_layer2 == READ ? 1'b1 :1'b0;

assign caddr_rd = 	(curr_state_control == LYR1) ? {row_pos_layer1,column_pos_layer1} : //row_pos_layer1 * 16 + column_pos_layer1
					(curr_state_control == LYR2) ? pixel_cnt : 12'd0; 
//control assign declaration end-------------------------------------

//lyr0 assign declaration str----------------------------------------
assign bias = ~kernel_sel ? bias_0 : bias_1; //choose bias

assign row_pos_layer0 = row_layer0 + kernel_row - 1;
assign column_pos_layer0 = column_layer0 + kernel_column - 1;

assign ReLU = acc[39] ? 20'd0 : acc[15] ? acc[35:16] + 1'b1 : acc[35:16]; //acc[39:32] is integer and acc[31:0] is decimal
//lyr0 assign declaration end----------------------------------------

//lyr1 assign declaration str----------------------------------------
assign row_pos_layer1 = {row_layer1,pixel_row}; //row_layer1 * 2 + ixel_row
assign column_pos_layer1 = {column_layer1,pixel_column}; //column_layer1 * 2 + pixel_column
//lyr1 assign declaration end----------------------------------------

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

//layer control str--------------------------------------------------
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
			if(curr_state_layer0 == OVR0)next_state_control = LYR1;
			else next_state_control = LYR0;
		end
		LYR1:begin
			if(curr_state_layer1 == OVR1)next_state_control = LYR2;
			else next_state_control = LYR1;
		end
		LYR2:begin
			if(curr_state_layer2 == OVR2)next_state_control = IDLE;
			else next_state_control = LYR2;
		end
		default:next_state_control = IDLE;
    endcase
end
//layer control end--------------------------------------------------

//layer control str--------------------------------------------------
always @(posedge clk) begin
    case(curr_state_control)
        IDLE:begin
			busy <= 1'b0;
        end
		LYR0:begin
			busy <= 1'b1;
		end
		LYR1:begin
			busy <= 1'b1;
		end
		default:busy <= 1'b0;
    endcase
end
//layer control end--------------------------------------------------

//layer0 state str---------------------------------------------------
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
			if(row_layer0 == 6'd63 && column_layer0 == 6'd63)begin
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
//layer0 state str---------------------------------------------------

//layer0 RTL operation str-------------------------------------------
always @(posedge clk) begin
    case(curr_state_layer0)
        IDL0:begin
			acc 			<= 20'd0;
			row_layer0 		<= 6'd0;
			column_layer0 	<= 6'd0;
			kernel_row 		<= 2'd0;
			kernel_column 	<= 2'd0;
			kernel_sel 		<= 1'd0;
        end
        FRRC:begin
			if(row_layer0 == 6'd63 && column_layer0 == 6'd63)begin
				row_layer0 <= 6'd0;
			end
			else if(column_layer0 == 6'd63)row_layer0 <= row_layer0 + 1'd1;

			if(column_layer0 == 6'd63)begin
				column_layer0 <= 6'd0;
			end
			else column_layer0 <= column_layer0 + 1'd1;
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
        end
        CNV1:begin
			if (row_pos_layer0 < 0 || row_pos_layer0  > 63 || column_pos_layer0  < 0 || column_pos_layer0 > 63)
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
			row_layer0 		<= 6'd0;
			column_layer0 	<= 6'd0;
			kernel_row 		<= 2'd0;
			kernel_column 	<= 2'd0;
			kernel_sel 		<= 1'd0;
		end
    endcase
end
//layer0 RTL operation end-------------------------------------------

//layer1 state str---------------------------------------------------
always @(posedge clk or posedge reset) begin
    if(reset)curr_state_layer1 <= IDL1;
    else curr_state_layer1 <= next_state_layer1;
end

always @(*) begin
    case(curr_state_layer1)
        IDL1:begin
			if(curr_state_control == LYR1)next_state_layer1 = MAXP;
			else next_state_layer1 = IDL1;
        end
        FRMP:begin
			if(row_layer1 == 6'd31 && column_layer1 == 6'd31)begin
				next_state_layer1 = MTCG;
			end
			else next_state_layer1 = MAXP;
        end
        FR2P:begin
			if(pixel_row == 1'd1 && pixel_column == 1'd1)begin
				next_state_layer1 = WBD1;
			end
			else next_state_layer1 = MAXP;
        end
        MAXP:begin
			next_state_layer1 = FR2P;
        end
		WBD1:begin
			next_state_layer1 = FRMP;	
		end
		MTCG:begin
			if(matrix_sel) next_state_layer1 = OVR1;
			else next_state_layer1 = MAXP;
		end
        OVR1:begin
			next_state_layer1 = IDL1;
        end
		default:next_state_layer1 = IDL1;
    endcase
end
//layer1 state str---------------------------------------------------

//layer1 RTL operation str-------------------------------------------
always @(posedge clk) begin
    case(curr_state_layer1 )
        IDL1:begin
			max_num 		<= 20'd0;
			row_layer1 		<= 5'd0;
			column_layer1 	<= 5'd0;
			pixel_row 		<= 1'd0;
			pixel_column 	<= 1'd0;
			matrix_sel 		<= 1'b0;
        end
        FRMP:begin
			if(row_layer1 == 5'd31 && column_layer1 == 5'd31)begin
				row_layer1 <= 5'd0;
			end
			else if(column_layer1 == 5'd31)row_layer1 <= row_layer1 + 1'd1;

			if(column_layer1 == 5'd31)begin
				column_layer1 <= 5'd0;
			end
			else column_layer1 <= column_layer1 + 1'd1;
        end
        FR2P:begin
			if(pixel_row == 1'd1 && pixel_column == 1'd1)begin
				pixel_row <= 1'd0;
			end
			else if(pixel_column == 1'd1)pixel_row <= 1'd1;

			if(pixel_column == 1'd1)begin
				pixel_column <= 1'd0;
			end
			else pixel_column <= 1'd1;
        end
        MAXP:begin
			if(cdata_rd > max_num)
				max_num <= cdata_rd;
        end
		WBD1:begin
			max_num <= 20'd0;
		end
		MTCG:begin
			if(~matrix_sel) matrix_sel <= 1'b1;
		end
        default:begin
			max_num 		<= 20'd0;
			row_layer1 		<= 5'd0;
			column_layer1 	<= 5'd0;
			pixel_row 		<= 1'd0;
			pixel_column 	<= 1'd0;
			matrix_sel 		<= 1'b0;
		end
    endcase
end
//layer1 RTL operation end-------------------------------------------

//layer2 state str---------------------------------------------------
always @(posedge clk or posedge reset) begin
    if(reset)curr_state_layer2 <= IDL2;
    else curr_state_layer2 <= next_state_layer2;
end

always @(*) begin
    case(curr_state_layer2)
        IDL2:begin
			if(curr_state_control == LYR2)next_state_layer2 = READ;
			else next_state_layer2 = IDL2;
        end
		FRFL:begin
			if(pixel_cnt == 10'd1023) next_state_layer2 = FLCG;
			else next_state_layer2 = READ;
		end
		READ:begin
			next_state_layer2 = WBD2;
		end
		WBD2:begin
			next_state_layer2 = FRFL;
		end
		FLCG:begin
			if(~flmm_sel)next_state_layer2 = READ;
			else next_state_layer2 = OVR2;
		end
		OVR2:begin
			next_state_layer2 = IDL2;
		end
		default: next_state_layer2 = IDL2;
	
    endcase
end
//layer1 state str---------------------------------------------------

//layer1 RTL operation str-------------------------------------------
always @(posedge clk) begin
    case(curr_state_layer2 )
        IDL2:begin
			pixel_cnt 	<= 10'd0;
			flmm_sel 	<= 1'b0;
        end
		FRFL:begin
			if(pixel_cnt == 10'd1023) pixel_cnt <= 10'd0;
			else pixel_cnt <= pixel_cnt + 1'b1;
		end
		FLCG:begin
			if(~flmm_sel)flmm_sel <= 1'b1;
		end
        default:begin
			pixel_cnt 	<= 10'd0;
			flmm_sel 	<= 1'b0;
		end
    endcase
end
//layer1 RTL operation end-------------------------------------------
endmodule