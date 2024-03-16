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
                INSERTION_SORT = 4'd2,
                COMBINE = 4'd3,
                FIND_FLAG = 4'd4,
                FIND_FLAG_FINAL = 4'd5,
                GIVE_HUFFCODE = 4'd6,
                ADD_WEIGHT = 4'd7,
                ADJUST_PROB = 4'd8,
                OVER = 4'd9,
                S8 = 4'd10,
                S9 = 4'd11,
                S10 = 4'd12,
                S11 = 4'd13,
                S12 = 4'd14,
                S13 = 4'd15;


//variable definition str----------------------------
reg [3:0]curr_state;
reg [3:0]next_state;

reg [9:0]huffman_prob[5:0];
reg [4:0]huffman_sym[5:0];
reg [4:0]huffman_weight[5:0];
reg [7:0]huffman_code[5:0];

reg [4:0]fg1;
reg [4:0]fg2;

reg [9:0]prob_temp;

reg [9:0]combine_cnt;
reg [9:0]prob_cnt;

//variable definition end----------------------------


// assignment str-----------------------------------
assign CNT1 = huffman_prob[0];
assign CNT2 = huffman_prob[1];
assign CNT3 = huffman_prob[2];
assign CNT4 = huffman_prob[3];
assign CNT5 = huffman_prob[4];
assign CNT6 = huffman_prob[5];

assign CNT1 = huffman_prob[0];
assign CNT2 = huffman_prob[1];
assign CNT3 = huffman_prob[2];
assign CNT4 = huffman_prob[3];
assign CNT5 = huffman_prob[4];
assign CNT6 = huffman_prob[5];
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
        INSERTION_SORT:begin

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
        OVER:begin

        end
        S8:begin

        end
        S9:begin

        end
        S10:begin

        end
        S11:begin

        end
        S12:begin

        end
        S13:begin

        end
        RECIVE_DATA:begin

        end
        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------

//RTL operation str----------------------------------
always @(posedge clk) begin
    case(curr_state)
        IDLE:begin

        end
        INSERTION_SORT:begin

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
        OVER:begin

        end
        S8:begin

        end
        S9:begin

        end
        S10:begin

        end
        S11:begin

        end
        S12:begin

        end
        S13:begin

        end
        RECIVE_DATA:begin

        end
    endcase
end
//RTL operation end----------------------------------

endmodule

