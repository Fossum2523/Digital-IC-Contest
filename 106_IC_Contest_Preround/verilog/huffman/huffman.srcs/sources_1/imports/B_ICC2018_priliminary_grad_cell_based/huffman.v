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

reg [9:0]prob_temp;

reg [9:0]combine_cnt;
reg [9:0]prob_cnt;
reg [9:0]step_cnt;
reg [9:0]j;

wire CH_INSERT_FIND_BIG;
wire [9:0]step_plus_onel;
wire [9:0]j_minus_one;
wire j_is_zero;
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
// assignment end-----------------------------------


//ALU sharing str----------------------------------
assign j_minus_one = j - 10'd1;

assign j_is_zero = (j==0) ? 1'b0 :
                    ((key == huffman_prob[j_minus_one]) && !array_weight_orig && !huffman_weight[j_minus_one]) 
                    && (huffman_sym[j_minus_one] < array_sym_orig) 
                    ? 1'b1 : 1'b0;
assign CH_INSERT_FIND_BIG = ((j > 0 && key < huffman_prob[j_minus_one]) || j_is_zero)
                            ? 1'd1 : 1'd0;



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
                next_state = INSERT_STEP;
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

        end
        FIND_FLAG:begin

        end
        FIND_FLAG_FINAL:begin

        end
        GIVE_HUFFCODE:begin

        end
        ADD_WEIGHT:begin

        end
        ADJUST_PROB:begin

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

        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------

//RTL operation str----------------------------------
always @(posedge clk) begin
    case(curr_state)
        IDLE:begin
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
            recieve_fg <= 1'd0;
            array_weight_orig <= 5'd0;
            array_sym_orig <= 5'd0;
            array_code_orig <= 8'd0;
            key <= 8'd0;
            j <= 10'd1;
            combine_cnt <= 10'd0;
            prob_cnt <= 10'd0;
            step_cnt <= 10'd1;
        end
        RECIVE_DATA:begin
            if (gray_valid) begin
                recieve_fg <= 1'd1;
                if(gray_data == 1)
                    huffman_prob[0] = huffman_prob[0] + 8'd1;
                else if (gray_data == 2)
                    huffman_prob[1] = huffman_prob[1] + 8'd1;
                else if(gray_data == 3)
                    huffman_prob[2] = huffman_prob[2] + 8'd1;
                else if(gray_data == 4)
                    huffman_prob[3] = huffman_prob[3] + 8'd1;
                else if(gray_data == 5)
                    huffman_prob[4] = huffman_prob[4] + 8'd1;
                else if(gray_data == 6)
                    huffman_prob[5] = huffman_prob[5] + 8'd1;
            end
        end
        INSERT_STEP:begin
            array_weight_orig <= huffman_weight[step_cnt];
            array_sym_orig <= huffman_sym[step_cnt];
            array_code_orig <= huffman_code[step_cnt];
            key <= huffman_prob[step_cnt];
            j <= step_cnt;
        end
        INSERT_FIND_BIG:begin
            if (CH_INSERT_FIND_BIG)begin
                huffman_sym[j] <= huffman_sym[j_minus_one];
                huffman_prob[j] <= huffman_prob[j_minus_one];
                huffman_code[j] <= huffman_code[j_minus_one];
                huffman_weight[j] <= huffman_weight[j_minus_one];
                j <= j - 10'd1;
            end
        end
        INSERT_SWAP:begin
            huffman_weight[j ] <= array_weight_orig;
            huffman_sym[j ] <= array_sym_orig;
            huffman_code[j ] <= array_code_orig;
            huffman_prob[j] <= key;
            step_cnt <= step_cnt + 10'd1;
        end
        COMBINE:begin

        end
        FIND_FLAG:begin

        end
        FIND_FLAG_FINAL:begin

        end
        GIVE_HUFFCODE:begin

        end
        ADD_WEIGHT:begin

        end
        ADJUST_PROB:begin

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

