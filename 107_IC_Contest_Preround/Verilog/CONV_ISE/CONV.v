assign row_pos_layer1 = row_layer1 + pixel_row;
assign column_pos_layer1 = column_layer1 + pixel_column;

assign iaddr = row_pos_layer1 * 64 + column_pos_layer1;

//layer1 state str-----------------------------------
always @(posedge clk or posedge reset) begin
    if(reset)curr_state_layer1 <= IDL1;
    else curr_state_layer1 <= next_state_layer1;
end

always @(*) begin
    case(curr_state_layer1 )
        IDL1:begin
			if(curr_state_control == LYR1)next_state_layer1 = MAXP;
			else next_state_layer1 = IDL1;
        end
        FRRC1:begin
			if(row == 6'd62 && column == 6'd62)begin
				next_state_layer1 = KNCG;
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
			next_state_layer1 = FRRC1;	
		end
		KNCG:begin
			if(kernel_sel) next_state_layer1 = OVR0;
			else next_state_layer1 = CNV1;
		end
        OVR0:begin
			next_state_layer1 = IDL0;
        end
		default:next_state_layer1 = IDL1;
    endcase
end
//layer1 state str-----------------------------------

//layer1 RTL operation str---------------------------
always @(posedge clk) begin
    case(curr_state_layer1 )
        IDL0:begin
			max_num <= 20'd0;
			row_layer1 <= 6'd0;
			column_layer1 <= 6'd0;
			pixel_row <= 1'd0;
			pixel_column <= 1'd1;
        end
        FRRC1:begin
			if(row_layer1 == 6'd62 && column_layer1 == 6'd62)begin
				row_layer1 <= 6'd0;
			end
			else if(column_layer1 == 6'd62)row_layer1 <= row_layer1 + 2'd2;

			if(column_layer1 == 6'd62)begin
				column_layer1 <= 6'd0;
			end
			else column_layer1 <= column_layer1 + 2'd2;
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

			//iaddr <= (row + pixel_row - 1)*16 + (column + pixel_column - 1);
        end
        MAXP:begin
			if(idata > max_num)
				max_num <= idata;
        end
		WBDT:begin
			max_num <= 20'd0;
		end
		KNCG:begin
			if(~kernel_sel) kernel_sel <= 1'b1;
			
			acc <= 20'd0;
		end
        OVR0:begin

        end
        default:begin

		end
    endcase
end
//layer1 RTL operation end---------------------------