module SME(clk,reset,chardata,isstring,ispattern,valid,match,match_index);
input clk;
input reset;
input [7:0] chardata;
input isstring;
input ispattern;
output match;
output [4:0] match_index;
output valid;


// reg valid;

localparam [1:0]IDLE_STRING = 2'd0,
                GET_STRING = 2'd1,
                GET_STRING_DONE = 2'd2;

localparam [1:0]IDLE_PATTERN = 2'd0,
                GET_PATTERN = 2'd1,
                GET_PATTERN_DONE = 2'd2;

localparam [3:0]IDLE = 4'd0,
                DOT_WORD = 4'd1,
                BEGIN_WORD = 4'd2,
                DOLLAR_WORD = 4'd3,
                CHAR = 4'd4,
                STAR_CONI = 4'd5,
                STAR_WORD = 4'd6,
                MISS_MATCH = 4'd7,
                IS_OVER = 4'd8,
                OVER = 4'd9,
                S8 = 4'd10,
                S9 = 4'd11,
                S10 = 4'd12,
                S11 = 4'd13,
                S12 = 4'd14,
                S13 = 4'd15;

//variable definition str----------------------------
reg [1:0]string_curr_state;
reg [1:0]string_next_state;

reg string_fg;
reg [5:0]string_len;
reg [7:0]string[33:0];

reg [1:0]pattern_curr_state;
reg [1:0]pattern_next_state;

reg pattern_fg;
reg [2:0]pattern_len;
reg [7:0]pattern[7:0];

reg [3:0]curr_state;
reg [3:0]next_state;

reg match;
reg [4:0] match_index;
reg [5:0] string_index;
reg [2:0] pattern_index;

reg dot_fg;
reg begin_word_fg;
reg [1:0]star_fg;
reg stat_cnt;
//variable definition end----------------------------

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
        DOT_WORD:begin

        end
        BEGIN_WORD:begin

        end
        DOLLAR_WORD:begin

        end
        CHAR:begin

        end
        STAR_CONI:begin

        end
        STAR_WORD:begin

        end
        MISS_MATCH:begin

        end
        IS_OVER:begin

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
        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------

//RTL operation str----------------------------------
always @(posedge clk) begin
    case(curr_state)
        IDLE:begin

        end
        DOT_WORD:begin

        end
        BEGIN_WORD:begin

        end
        DOLLAR_WORD:begin

        end
        CHAR:begin

        end
        STAR_CONI:begin

        end
        STAR_WORD:begin

        end
        MISS_MATCH:begin

        end
        IS_OVER:begin

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
    endcase
end
//RTL operation end----------------------------------

//string state control str----------------------------------
always @(posedge clk) begin
    string_curr_state <= string_next_state;
end

always @(*) begin
    case(string_curr_state)
        IDLE_STRING:begin
            string_next_state = GET_STRING;
        end
        GET_STRING:begin
            if(isstring || ~string_fg)
                string_next_state = GET_STRING;
            else
                string_next_state = GET_STRING_DONE;
        end
        GET_STRING_DONE:begin

        end
        default: string_next_state = IDLE_STRING;
    endcase
end
//string state control end----------------------------------

//string RTL operation str----------------------------------
always @(posedge clk) begin
    case(string_curr_state)
        IDLE_STRING:begin
            string_fg <= 1'b0;
            string_len <= 6'd1;
            string[0] <= 8'd0;
        end
        GET_STRING:begin
            if(isstring)begin
                string_fg <= 1'b1;
                string_len <= string_len + 1'b1;
                string[string_len] <= chardata;
            end
        end
        GET_STRING_DONE:begin
           string[string_len] <= 8'd0;  
        end
    endcase
end
//string RTL operation end----------------------------------

//pattern state control str----------------------------------
always @(posedge clk) begin
    pattern_curr_state <= pattern_next_state;
end

always @(*) begin
    case(pattern_curr_state)
        IDLE_PATTERN:begin
            pattern_next_state = GET_PATTERN;
        end
        GET_PATTERN:begin
            if(ispattern || ~pattern_fg)
                pattern_next_state = GET_PATTERN;
            else
                pattern_next_state = GET_PATTERN_DONE;
        end
        GET_PATTERN_DONE:begin

        end
        default: pattern_next_state = IDLE_PATTERN;
    endcase
end
//pattern state control end----------------------------------

//pattern RTL operation str----------------------------------
always @(posedge clk) begin
    case(pattern_curr_state)
        IDLE_PATTERN:begin
            pattern_fg <= 1'b0;
            pattern_len <= 6'd0;
        end
        GET_PATTERN:begin
            if(ispattern)begin
                pattern_fg <= 1'b1;
                pattern_len <= pattern_len + 1'b1;
                pattern[pattern_len] <= chardata;
            end
        end
        GET_PATTERN_DONE:begin

        end
    endcase
end
//pattern RTL operation end----------------------------------
endmodule
