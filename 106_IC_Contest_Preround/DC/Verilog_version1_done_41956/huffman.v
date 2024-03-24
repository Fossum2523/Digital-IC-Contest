module huffman(clk, reset, gray_valid, gray_data, CNT_valid, CNT1, CNT2, CNT3, CNT4, CNT5, CNT6,
    code_valid, HC1, HC2, HC3, HC4, HC5, HC6, M1, M2, M3, M4, M5, M6);

input clk;
input reset;
input gray_valid;
input [7:0] gray_data;
output CNT_valid;
output [7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
output code_valid;
output reg [7:0] HC1, HC2, HC3, HC4, HC5, HC6;
output reg [7:0] M1, M2, M3, M4, M5, M6;
  

  
localparam [3:0]IDLE = 4'd0,
                RECIVE_DATA = 4'd1,
                INSERT_STEP = 4'd2,
                INSERT_FIND_BIG = 4'd3,
                INSERT_SWAP = 4'd4,
                COMBINE = 4'd5,
                FIND_FLAG = 4'd6,                           
                FIND_FLAG_FINAL = 4'd7,
                GIVE_HUFFCODE = 4'd8,
                ADD_WEIGHT = 4'd9,
                ADJUST_PROB = 4'd10,
                SET_FLAG = 4'd11,
                OVER = 4'd12,
                S11 = 4'd13,
                S12 = 4'd14,
                S13 = 4'd15;


//variable definition str----------------------------
reg [3:0]curr_state;
reg [3:0]next_state;

reg [7:0]huffman_index[5:0];
reg [7:0]array_index_orig;
reg [7:0]huffman_mask[5:0];
reg [4:0]array_mask_orig;
reg [7:0]huffman_prob[5:0];
reg [7:0]key;
reg [4:0]huffman_sym[5:0];
reg [4:0]array_sym_orig;
reg [4:0]huffman_weight[5:0];
reg [4:0]array_weight_orig;
reg [7:0]huffman_code[5:0];
reg [7:0]array_code_orig;

reg recieve_fg;
reg [4:0]fg1;
reg [4:0]fg2;
wire [4:0]fg1_minus_one;

reg [9:0]prob_temp;

reg [9:0]combine_cnt;
reg [9:0]prob_cnt;
reg [9:0]step_cnt;
reg [9:0]j;

wire CH_INSERT_FIND_BIG;
wire [9:0]step_plus_onel;
wire [9:0]j_minus_one;
wire j_is_zero;

wire [9:0]prob_cnt_plus_one;

wire UNEQUAL_W_FG_0;
wire UNEQUAL_W_FG_1;
wire UNEQUAL_W_FG_2;

wire [4:0]sym_1;
wire [4:0]sym_2;
wire [4:0]sym_3;
wire [4:0]sym_4;
wire [4:0]sym_5;
wire [4:0]sym_6;

integer i;
//variable definition end----------------------------


// assignment str-----------------------------------
assign CNT1 = huffman_prob[0];
assign CNT2 = huffman_prob[1];
assign CNT3 = huffman_prob[2];
assign CNT4 = huffman_prob[3];
assign CNT5 = huffman_prob[4];
assign CNT6 = huffman_prob[5];

assign sym_1 = huffman_sym[0];
assign sym_2 = huffman_sym[1];
assign sym_3 = huffman_sym[2];
assign sym_4 = huffman_sym[3];
assign sym_5 = huffman_sym[4];
assign sym_6 = huffman_sym[5];

// assign HC1 = huffman_code[2][7:0];
// assign HC2 = huffman_code[0][7:0];
// assign HC3 = huffman_code[1][7:0];
// assign HC4 = huffman_code[4][7:0];
// assign HC5 = huffman_code[5][7:0];
// assign HC6 = huffman_code[3][7:0];

// assign M1 = huffman_mask[2][7:0];
// assign M2 = huffman_mask[0][7:0];
// assign M3 = huffman_mask[1][7:0];
// assign M4 = huffman_mask[4][7:0];
// assign M5 = huffman_mask[5][7:0];
// assign M6 = huffman_mask[3][7:0];

// assign HC1 =curr_state == OVER ? huffman_code[sym_1] : 8'd0;
// assign HC2 =curr_state == OVER ? huffman_code[sym_2] : 8'd0;
// assign HC3 =curr_state == OVER ? huffman_code[sym_3] : 8'd0;
// assign HC4 =curr_state == OVER ? huffman_code[sym_4] : 8'd0;
// assign HC5 =curr_state == OVER ? huffman_code[sym_5] : 8'd0;
// assign HC6 =curr_state == OVER ? huffman_code[sym_6] : 8'd0;

// assign M1 = curr_state == OVER ? huffman_mask[sym_1] : 8'd0;
// assign M2 = curr_state == OVER ? huffman_mask[sym_2] : 8'd0;
// assign M3 = curr_state == OVER ? huffman_mask[sym_3] : 8'd0;
// assign M4 = curr_state == OVER ? huffman_mask[sym_4] : 8'd0;
// assign M5 = curr_state == OVER ? huffman_mask[sym_5] : 8'd0;
// assign M6 = curr_state == OVER ? huffman_mask[sym_6] : 8'd0;

assign code_valid = curr_state == OVER ? 1'b1 : 1'b0;

assign CNT_valid = curr_state == SET_FLAG ? 1'b1 : 1'b0;


assign j_minus_one = j - 10'd1;

assign j_is_zero = (j==0) ? 1'b0 :
                    ((key == huffman_prob[j_minus_one]) && !array_weight_orig && !huffman_weight[j_minus_one]) 
                    && (huffman_sym[j_minus_one] < array_sym_orig) 
                    ? 1'b1 : 1'b0;
assign CH_INSERT_FIND_BIG = ((j > 0 && key < huffman_prob[j_minus_one]) || j_is_zero)
                            ? 1'd1 : 1'd0;

assign prob_cnt_plus_one = prob_cnt + 1'b1;

assign UNEQUAL_W_FG_0 = ((huffman_prob[prob_cnt] != huffman_prob[prob_cnt_plus_one])
                        && (fg1 == 0)) ? 1'b1 : 1'b0;
assign UNEQUAL_W_FG_1 = ((huffman_prob[prob_cnt] != huffman_prob[prob_cnt_plus_one]) 
                        && (fg1 != 0)) ? 1'b1 : 1'b0;
assign UNEQUAL_W_FG_2 = ((huffman_weight[prob_cnt] != huffman_weight[prob_cnt_plus_one]) 
                        && (fg1 == 0) && huffman_weight[prob_cnt_plus_one] == 0) ? 1'b1 : 1'b0;

assign fg1_minus_one = fg1 - 5'd1;
// assignment end-----------------------------------


//ALU sharing str----------------------------------
//ALU sharing end----------------------------------


//state control str----------------------------------
always @(posedge clk or posedge reset) begin
    if(reset)curr_state <= IDLE;
    else curr_state <= next_state;
end

always @(*) begin
    case(curr_state)
        IDLE:begin
            next_state = RECIVE_DATA;
        end
        RECIVE_DATA:begin
            if (!gray_valid && recieve_fg) 
                next_state = SET_FLAG;
            else
                next_state = RECIVE_DATA;
        end
        INSERT_STEP:begin
            next_state = INSERT_FIND_BIG;
        end
        INSERT_FIND_BIG:begin
            if (CH_INSERT_FIND_BIG)
                next_state = INSERT_FIND_BIG;
            else
                next_state = INSERT_SWAP;
        end
        INSERT_SWAP:begin
            if (step_cnt == 5)
                next_state = COMBINE;
            else 
                next_state = INSERT_STEP;
        end
        COMBINE:begin
                next_state = FIND_FLAG;
        end
        FIND_FLAG:begin
            if (prob_cnt == 4)
                next_state = FIND_FLAG_FINAL;
            else if(UNEQUAL_W_FG_0)
                next_state = FIND_FLAG;
            else if(UNEQUAL_W_FG_1 || UNEQUAL_W_FG_2)
                next_state = FIND_FLAG_FINAL;
            else
                next_state = FIND_FLAG;
        end
        FIND_FLAG_FINAL:begin
            next_state = GIVE_HUFFCODE;
        end
        GIVE_HUFFCODE:begin
            next_state = ADD_WEIGHT;
        end
        ADD_WEIGHT:begin
            next_state = ADJUST_PROB;
        end
        ADJUST_PROB:begin
            if(combine_cnt < 5)
                next_state = INSERT_STEP;
            else
                next_state = OVER;
        end
        SET_FLAG:begin
            next_state = INSERT_STEP;
        end
        OVER:begin
            next_state = OVER;
        end
        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------

//RTL operation str----------------------------------
always @(posedge clk) begin
    case(curr_state)
        IDLE:begin
            HC1  <= 8'd0;
            HC2  <= 8'd0;
            HC3  <= 8'd0;
            HC4  <= 8'd0;
            HC5  <= 8'd0;
            HC6  <= 8'd0;
            M1   <= 8'd0;
            M2   <= 8'd0;
            M3   <= 8'd0;
            M4   <= 8'd0;
            M5   <= 8'd0;
            M6   <= 8'd0;
            huffman_prob[0] <= 8'd0;
            huffman_prob[1] <= 8'd0;
            huffman_prob[2] <= 8'd0;
            huffman_prob[3] <= 8'd0;
            huffman_prob[4] <= 8'd0;
            huffman_prob[5] <= 8'd0;
            huffman_weight[0] <= 5'd0;
            huffman_weight[1] <= 5'd0;
            huffman_weight[2] <= 5'd0;
            huffman_weight[3] <= 5'd0;
            huffman_weight[4] <= 5'd0;
            huffman_weight[5] <= 5'd0;
            huffman_sym[0] <= 5'd0;
            huffman_sym[1] <= 5'd1;
            huffman_sym[2] <= 5'd2;
            huffman_sym[3] <= 5'd3;
            huffman_sym[4] <= 5'd4;
            huffman_sym[5] <= 5'd5;
            huffman_code[0] <= 8'd0;
            huffman_code[1] <= 8'd0;
            huffman_code[2] <= 8'd0;
            huffman_code[3] <= 8'd0;
            huffman_code[4] <= 8'd0;
            huffman_code[5] <= 8'd0;
            for(i=0 ; i< 6 ;i = i + 1)begin
               huffman_mask[i] <= 8'd0; 
            end
            for(i=0 ; i< 6 ;i = i + 1)begin
               huffman_index[i] <= i; 
            end
            recieve_fg <= 1'd0;
            array_weight_orig <= 5'd0;
            array_sym_orig <= 5'd0;
            array_code_orig <= 8'd0;
            array_mask_orig <= 8'd0;
            array_index_orig <= 8'd0;
            key <= 8'd0;
            j <= 10'd1;
            combine_cnt <= 10'd0;
            prob_cnt <= 10'd0;
            step_cnt <= 10'd1;
            fg1 <= 5'd0;
            fg2 <= 5'd0;
            prob_temp <= 10'd0;
        end
        RECIVE_DATA:begin
            if (gray_valid) begin
                recieve_fg <= 1'd1;
                if(gray_data == 1)
                    huffman_prob[0] <= huffman_prob[0] + 8'd1;
                else if (gray_data == 2)
                    huffman_prob[1] <= huffman_prob[1] + 8'd1;
                else if(gray_data == 3)
                    huffman_prob[2] <= huffman_prob[2] + 8'd1;
                else if(gray_data == 4)
                    huffman_prob[3] <= huffman_prob[3] + 8'd1;
                else if(gray_data == 5)
                    huffman_prob[4] <= huffman_prob[4] + 8'd1;
                else if(gray_data == 6)
                    huffman_prob[5] <= huffman_prob[5] + 8'd1;
            end
        end
        INSERT_STEP:begin
            array_weight_orig <= huffman_weight[step_cnt];
            array_sym_orig <= huffman_sym[step_cnt];
            array_code_orig <= huffman_code[step_cnt];
            array_mask_orig <= huffman_mask[step_cnt];
            array_index_orig <= huffman_index[step_cnt];
            key <= huffman_prob[step_cnt];
            j <= step_cnt;
        end
        INSERT_FIND_BIG:begin
            if (CH_INSERT_FIND_BIG)begin
                huffman_sym[j] <= huffman_sym[j_minus_one];
                huffman_prob[j] <= huffman_prob[j_minus_one];
                huffman_code[j] <= huffman_code[j_minus_one];
                huffman_mask[j] <= huffman_mask[j_minus_one];
                huffman_index[j] <= huffman_index[j_minus_one];
                huffman_weight[j] <= huffman_weight[j_minus_one];
                j <= j - 10'd1;
            end
        end
        INSERT_SWAP:begin
            huffman_weight[j ] <= array_weight_orig;
            huffman_sym[j ] <= array_sym_orig;
            huffman_code[j ] <= array_code_orig;
            huffman_mask[j ] <= array_mask_orig;
            huffman_index[j ] <= array_index_orig;
            huffman_prob[j] <= key;
            step_cnt <= step_cnt + 10'd1;
        end
        COMBINE:begin
            fg1 <= 5'd0;
            fg2 <= 5'd0;
            prob_temp <= 10'd0;
            prob_cnt <= 10'd0;
        end
        FIND_FLAG:begin
            if(prob_cnt < 4)
                prob_cnt <= prob_cnt + 1'b1;
            
            if(UNEQUAL_W_FG_0)begin
                fg1 <= prob_cnt + 1'b1;
            end
            else if(UNEQUAL_W_FG_1)begin
                fg2 <= prob_cnt + 1;
            end
            else if(UNEQUAL_W_FG_2)begin
                fg1 <= prob_cnt + 1;
                fg2 <= prob_cnt + 2;
            end
            
        end
        FIND_FLAG_FINAL:begin
            if(fg1 != 0 && fg2 == 0 && prob_cnt == 4) fg2 <= 6;
        end
        GIVE_HUFFCODE:begin//prob_cnt ?
            for(i = 0 ; i<fg1 ; i = i + 1)begin
                huffman_code[i] <= huffman_code[i] + (1'b1 << huffman_weight[i]);
            end
        end
        ADD_WEIGHT:begin
            for(i = 0 ; i<fg2 ; i = i + 1'b1)begin
                huffman_mask[i] <= huffman_mask[i] + (8'b0000_0001 << huffman_weight[i]);
                huffman_weight[i] <= huffman_weight[i] + 1'b1;
            end
            prob_temp <= huffman_prob[fg1_minus_one] + huffman_prob[fg1];
        end
        ADJUST_PROB:begin
            for(i = 0 ; i<fg2 ; i = i + 1'b1)begin
                huffman_prob[i] <= prob_temp;
            end
            for(i = 0 ; i<6 ; i = i + 1'b1)begin
                case(huffman_sym[i])
                    0:begin
                        M1 <= huffman_mask[i];
                        HC1 <= huffman_code[i];
                    end
                    1:begin
                        M2 <= huffman_mask[i];
                        HC2 <= huffman_code[i];
                    end
                    2:begin
                        M3 <= huffman_mask[i];
                        HC3 <= huffman_code[i];
                    end
                    3:begin
                        M4 <= huffman_mask[i];
                        HC4 <= huffman_code[i];
                    end
                    4:begin
                        M5 <= huffman_mask[i];
                        HC5 <= huffman_code[i];
                    end
                    5:begin
                        M6 <= huffman_mask[i];
                        HC6 <= huffman_code[i];
                    end
                endcase
            end


            j <= 10'd1;
            prob_cnt <= 10'd0;
            step_cnt <= 10'd1;
            fg1 <= 5'd0;
            fg2 <= 5'd0;
            prob_temp <= 10'd0;
            combine_cnt <= combine_cnt + 1'b1;
            
        

        end 
    endcase
end
//RTL operation end----------------------------------

endmodule
