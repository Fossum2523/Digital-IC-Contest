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
                GET_STRING_1 = 2'd1,
                GET_STRING_DONE = 2'd2;

localparam [1:0]IDLE_PATTERN = 2'd0,
                GET_PATTERN_1 = 2'd1,
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
                WHAT_WORD = 4'd10,
                S9 = 4'd11,
                S10 = 4'd12,
                S11 = 4'd13,
                S12 = 4'd14,
                S13 = 4'd15;

//variable definition str----------------------------
reg [1:0]string_curr_state;
reg [1:0]string_next_state;

reg [5:0]string_len_comp;

reg string_fg;
reg [5:0]string_len;
reg [7:0]string_v[33:0];

reg [1:0]pattern_curr_state;
reg [1:0]pattern_next_state;

reg pattern_fg;
reg [3:0]pattern_len;
reg [7:0]pattern[7:0];

reg [3:0]curr_state;
reg [3:0]next_state;

reg valid;
reg match;
reg [4:0] match_index;
reg [5:0] string_index;
reg [3:0] pattern_index;

reg dot_fg;
reg begin_word_fg;
reg [1:0]star_fg;
reg [5:0]star_cnt;

reg [7:0]latch_chardata;
//variable definition end----------------------------

//ALU sharing str----------------------------------
// assign valid = (curr_state == OVER)? 1'd1:1'd0;
//ALU sharing end----------------------------------

//state control str----------------------------------
always @(posedge clk or posedge reset) begin
    if(reset)curr_state <= IDLE;
    else curr_state <= next_state;
end

always @(*) begin
    case(curr_state)
        IDLE:begin
            if(pattern_curr_state == GET_PATTERN_DONE)
                next_state = WHAT_WORD;
            else
                next_state = IDLE;
        end
        WHAT_WORD:begin
            if(pattern[pattern_index] == 46)
                next_state = DOT_WORD;

            else if(pattern[pattern_index] == 94 && string_v[string_index] == 32)
                next_state = BEGIN_WORD;

            else if(pattern[pattern_index] == 36 && string_v[string_index] == 32)
                next_state = DOLLAR_WORD;

            else if(pattern[pattern_index] == string_v[string_index])
                next_state = CHAR;

            else if (star_fg == 2)
                next_state = STAR_CONI;

            else if (pattern[pattern_index] == 42) 
                next_state = STAR_WORD;

            else 
                next_state = MISS_MATCH;
        end
        DOT_WORD:begin
            next_state = IS_OVER;
        end
        BEGIN_WORD:begin
            next_state = IS_OVER;
        end
        DOLLAR_WORD:begin
            next_state = IS_OVER;
        end
        CHAR:begin
            next_state = IS_OVER;
        end
        STAR_CONI:begin
            next_state = IS_OVER;
        end
        STAR_WORD:begin
            next_state = IS_OVER;
        end
        MISS_MATCH:begin
            next_state = IS_OVER;
        end
        IS_OVER:begin
            if (pattern_len == 1 && star_fg == 2) next_state = OVER;
            else if (pattern_index == pattern_len) next_state = OVER;
            else if (string_index == string_len_comp) next_state = OVER;
            else next_state = WHAT_WORD;
        end
        OVER:begin
            next_state = IDLE;
        end
        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------

//RTL operation str----------------------------------
always @(posedge clk) begin
    case(curr_state)
        IDLE:begin
            valid <= 1'b0;

            match           <= 1'b0;
            match_index     <= 5'd0;
            string_index    <= 6'd0;
            pattern_index   <= 3'd0;

            dot_fg          <= 1'b0;
            begin_word_fg   <= 1'b0;
            star_fg         <= 1'b0;
            star_cnt        <= 6'd0;
        end
        DOT_WORD:begin
            if (match == 0 && string_index != 0)begin
                match <= 1'b1;
                match_index <= string_index;
            end

            if (string_index != 0)
                pattern_index <= pattern_index + 1'b1;
            
            if (star_fg == 1)
                star_cnt <= star_cnt + 1'b1;

            string_index <= string_index + 1'b1;
            dot_fg <= 1;
        end
        BEGIN_WORD:begin
            if (match == 0)begin
                match <= 1'b1;
                match_index <= string_index;
            end

            pattern_index <= pattern_index + 1'b1;
            string_index <= string_index + 1'b1;
            begin_word_fg <= 1'b1;
        end
        DOLLAR_WORD:begin
            if (match == 0)begin
                match <= 1'b1;
                match_index <= string_index;
            end
            
            pattern_index <= pattern_index + 1'b1;
            string_index <= string_index + 1'b1;
        end
        CHAR:begin
            if (match == 0)begin
                match <= 1'b1;
                match_index <= string_index;
            end

            if (star_fg == 2)begin
                star_fg <= 1'b1;
                star_cnt <= star_cnt + 1'b1;
            end
            else if (star_fg == 1)begin
                star_cnt <= star_cnt + 1'b1;
            end

            pattern_index <= pattern_index + 1'b1;
            string_index <= string_index + 1'b1;
        end
        STAR_CONI:begin
            string_index <= string_index + 6'd1;
        end
        STAR_WORD:begin
            if (!match)begin
                match <= 1'd1;
                match_index <= string_index;
            end
            pattern_index <= pattern_index + 3'd1;
            star_fg <= 2'd2;
        end
        MISS_MATCH:begin
            if (star_fg)begin
                pattern_index <= pattern_index - star_cnt;
                star_cnt <= 6'd0;
                star_fg <= 2'd2;
            end
            else if (dot_fg)begin
                pattern_index <= 3'd0;
                match <= 1'd0;
                match_index <= 5'd0;
                dot_fg <= 2'd0;
            end
            else begin
                string_index <= string_index + 6'd1;
                pattern_index <= 3'd0;
                match <= 1'd0;
                match_index <= 5'd0;
            end
        end
        IS_OVER:begin
            if (pattern_len == 1 && star_fg == 2)begin
                match_index <= 5'd0;
            end
            else if (pattern_index == pattern_len)begin
                match_index <= match_index - 5'd1 + begin_word_fg;
            end
            else if (string_index == string_len_comp)begin
                match <= 1'd0;
                match_index <= 5'd0;
            end
        end
        OVER:begin
            valid <= 1'b1;
        end
    endcase
end
//RTL operation end----------------------------------

// latch chardata 1 cycle str---------------------------
always @(posedge clk or posedge reset) begin
    if (reset) latch_chardata <= 8'd0;
    else latch_chardata <= chardata;
end
// latch chardata 1 cycle end---------------------------

//string_v state control str----------------------------------
always @(posedge clk or posedge reset) begin
    if (reset) string_curr_state <= IDLE_STRING;
    else string_curr_state <= string_next_state;
end

always @(*) begin
    case(string_curr_state)
        IDLE_STRING:begin
            if(isstring)
                string_next_state = GET_STRING_1;
            else
                string_next_state = IDLE_STRING;
        end
        GET_STRING_1:begin
            if(isstring)
                string_next_state = GET_STRING_1;
            else
                string_next_state = GET_STRING_DONE;
        end
        GET_STRING_DONE:begin
            string_next_state = IDLE_STRING;
        end
        default: string_next_state = IDLE_STRING;
    endcase
end
//string_v state control end----------------------------------

//string_v RTL operation str----------------------------------
always @(posedge clk) begin
    case(string_curr_state)
        IDLE_STRING:begin
            string_len <= 6'd1;
            string_v[0] <= 8'd32;
        end
        GET_STRING_1:begin
            string_len <= string_len + 1'b1;
            string_v[string_len] <= latch_chardata;
        end
        GET_STRING_DONE:begin
            string_len_comp <= string_len + 6'b1;
            string_v[string_len] <= 8'd32;
        end
    endcase
end
//string_v RTL operation end----------------------------------

//pattern state control str----------------------------------
always @(posedge clk or posedge reset) begin
    if(reset)
        pattern_curr_state <= IDLE_PATTERN;
    else
        pattern_curr_state <= pattern_next_state;
end

always @(*) begin
    case(pattern_curr_state)
        IDLE_PATTERN:begin
            if(ispattern)
                pattern_next_state = GET_PATTERN_1;
            else
                pattern_next_state = IDLE_PATTERN;
        end
        GET_PATTERN_1:begin
            if(ispattern)
                pattern_next_state = GET_PATTERN_1;
            else
                pattern_next_state = GET_PATTERN_DONE;
        end
        GET_PATTERN_DONE:begin
            if(curr_state == OVER)
                pattern_next_state = IDLE_PATTERN;
            else
                pattern_next_state = GET_PATTERN_DONE;
        end
        default: pattern_next_state = IDLE_PATTERN;
    endcase
end
//pattern state control end----------------------------------

//pattern RTL operation str----------------------------------
always @(posedge clk) begin
    case(pattern_curr_state)
        IDLE_PATTERN:begin
            pattern_len <= 6'd0;
        end
        GET_PATTERN_1:begin
            pattern_len <= pattern_len + 1'b1;
            pattern[pattern_len] <= latch_chardata;
        end
        GET_PATTERN_DONE:begin

        end
    endcase
end
//pattern RTL operation end----------------------------------
endmodule
