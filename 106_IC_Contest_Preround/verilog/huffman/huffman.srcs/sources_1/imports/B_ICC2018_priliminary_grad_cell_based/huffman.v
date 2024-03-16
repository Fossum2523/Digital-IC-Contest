module huffman(clk, reset, gray_valid, gray_data, CNT_valid, CNT1, CNT2, CNT3, CNT4, CNT5, CNT6,
    code_valid, HC1, HC2, HC3, HC4, HC5, HC6, M1, M2, M3, M4, M5, M6);

input clk;
input reset;
input gray_valid;
input [7:0] gray_data;
output CNT_valid;
output [7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
output code_valid;
output [7:0] HC1, HC2, HC3, HC4, HC5, HC6;
output [7:0] M1, M2, M3, M4, M5, M6;
  
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
                SET_MASK = 4'd11,
                OVER = 4'd12,
                S11 = 4'd13,
                S12 = 4'd14,
                S13 = 4'd15;


//variable definition str----------------------------
reg [3:0]curr_state;
reg [3:0]next_state;

reg [7:0]huffman_prob[5:0];
reg [4:0]huffman_sym[5:0];
reg [4:0]huffman_weight[5:0];
reg [7:0]huffman_code[5:0];
reg [7:0]huffman_mask[5:0];

reg [4:0]fg1;
reg [4:0]fg2;

reg [9:0]prob_temp;

reg [9:0]combine_cnt;
reg [9:0]prob_cnt;

wire UNEQUAL_W_FG_0;
wire UNEQUAL_W_FG_1;
wire UNEQUAL_W_FG_2;
//variable definition end----------------------------


// assignment str-----------------------------------
assign CNT1 = huffman_prob[0];
assign CNT2 = huffman_prob[1];
assign CNT3 = huffman_prob[2];
assign CNT4 = huffman_prob[3];
assign CNT5 = huffman_prob[4];
assign CNT6 = huffman_prob[5];

assign HC1 = huffman_code[0];
assign HC2 = huffman_code[1];
assign HC3 = huffman_code[2];
assign HC4 = huffman_code[3];
assign HC5 = huffman_code[4];
assign HC6 = huffman_code[5];

assign UNEQUAL_W_FG_1 = (huffman_prob[prob_cnt] != huffman_prob[prob_cnt + 1])
                        && (fg1 == 0) ? 1'b1 : 1'b0;
assign UNEQUAL_W_FG_1 = (huffman_prob[prob_cnt] != huffman_prob[prob_cnt + 1]) 
                        && (fg1 != 0) ? 1'b1 : 1'b0;
assign UNEQUAL_W_FG_2 = (huffman_weight[prob_cnt] != huffman_weight[prob_cnt + 1]) 
                        && (fg1 == 0) ? 1'b1 : 1'b0;

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

        end
        RECIVE_DATA:begin

        end
        INSERT_STEP:begin

        end
        INSERT_FIND_BIG:begin

        end
        INSERT_SWAP:begin

        end
        COMBINE:begin
            if(combine_cnt < 4)
                next_state = FIND_FLAG;
            else
                next_state = SET_MASK;
        end
        FIND_FLAG:begin
            if(prob_cnt == 4 || UNEQUAL_W_FG_1 || UNEQUAL_W_FG_2)
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
            next_state = INSERT_STEP;
        end
        SET_MASK:begin
            next_state = OVER;
        end
        OVER:begin
            next_state = OVER;
        end
        S11:begin

        end
        S12:begin

        end
        S13:begin

        end

        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------

//RTL operation str----------------------------------
always @(posedge clk) begin
    case(curr_state)
        IDLE:begin
            combine_cnt <= 10'd0;
            fg1 <= 5'd0;
            fg2 <= 5'd0;
            prob_temp <= 10'd0;
            prob_cnt <= 10'd0;
        end
        RECIVE_DATA:begin

        end
        INSERT_STEP:begin

        end
        INSERT_FIND_BIG:begin

        end
        INSERT_SWAP:begin

        end
        COMBINE:begin
            combine_cnt <= combine_cnt + 1'b1;
            fg1 <= 5'd0;
            fg2 <= 5'd0;
            prob_temp <= 10'd0;
            prob_cnt <= 10'd0;
        end
        FIND_FLAG:begin
            prob_cnt <= prob_cnt + 1'b1;
            if(UNEQUAL_W_FG_0)
                fg1 <= prob_cnt + 1'b1;
            else if(UNEQUAL_W_FG_1)
                fg2 <= prob_cnt + 1;
            else if(UNEQUAL_W_FG_2)
                fg1 <= prob_cnt + 1;
                fg2 <= prob_cnt + 2;
        end
        FIND_FLAG_FINAL:begin
            if(fg1 != 0 && fg2 == 0 && prob_cnt == 4)
                fg2 <= 6;
        end
        GIVE_HUFFCODE:begin//prob_cnt ?
            for(prob_cnt = 0 ; prob_cnt<fg1 ; prob_cnt = prob_cnt + 1'b1)begin
                huffman_code[prob_cnt] <= huffman_code[prob_cnt] + 1'b1 << huffman_weight[prob_cnt];
            end
            // for(prob_cnt = fg1 ; prob_cnt<fg2 ; prob_cnt = prob_cnt + 1'b1)begin
            //     huffman_code[prob_cnt] <= huffman_code[prob_cnt] + 0 << huffman_weight[prob_cnt];
            // end
        end
        ADD_WEIGHT:begin
            for(prob_cnt = 0 ; prob_cnt<fg2 ; prob_cnt = prob_cnt + 1'b1)begin
                huffman_mask[prob_cnt] <= mask[prob_cnt] + 1'b1 << huffman_weight[prob_cnt];
                huffman_weight[prob_cnt] <= huffman_weight[prob_cnt] + 1'b1;
            end
            prob_temp <= huffman_prob[fg1 - 1] + huffman_prob[fg1];
        end
        ADJUST_PROB:begin
            for(prob_cnt = 0 ; prob_cnt<fg2 ; prob_cnt = prob_cnt + 1'b1)begin
                huffman_weight[prob_cnt] <= huffman_weight[prob_cnt] + 1'b1;
            end
        end 
        SET_MASK:begin
            
        end
        OVER:begin

        end
        S11:begin

        end
        S12:begin

        end
        S13:begin

        end
    endcase
end
//RTL operation end----------------------------------

endmodule

