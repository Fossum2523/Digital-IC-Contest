module JAM (
input CLK,
input RST,
output [2:0] W,
output [2:0] J,
input [6:0] Cost,
output reg [3:0] MatchCount,
output reg [9:0] MinCost,
output reg Valid );

localparam [3:0]IDLE        = 4'd0,
                FOR_I       = 4'd1,
                CAL_COST    = 4'd2,
                CAL_MIN     = 4'd3,
                CHP1        = 4'd4,
                LCG1        = 4'd5,
                LCG2        = 4'd6,
                LCG3        = 4'd7,
                CHMT        = 4'd8,
                FRAL        = 4'd9,
                OVER        = 4'd10,
                DONE        = 4'd11;


//CalCost variable definition str----------------------------
reg [3:0]CalCost_curr_state;
reg [3:0]CalCost_next_state;

reg [9:0]total_cost;
reg [3:0]i;
//CalCost variable definition end----------------------------

//LX_Sort variable definition str----------------------------
reg [3:0]LX_Sort_curr_state;
reg [3:0]LX_Sort_next_state;

reg [15:0]cnt_40320;

reg [2:0]arrange_1[7:0];
reg [2:0]arrange_2[7:0];

reg [2:0]p;
wire [2:0]p_plus_1;

reg [2:0]LCG_cnt;
reg [3:0]min;
reg [2:0]min_pos;
wire [1:0]change_time;

reg [1:0]CHMT_cnt;
wire [2:0]CHMT_a;
wire [2:0]CHMT_b;
//LX_Sort variable definition end----------------------------

//ALU sharing str----------------------------------
assign p_plus_1 = p + 1;
assign CHMT_a = p_plus_1 + CHMT_cnt;
assign CHMT_b = ~CHMT_cnt;

assign change_time = ~p >> 1;

assign  W   =  i;
assign  J   =  arrange_1[i];
//ALU sharing end----------------------------------

//CalCost state control str----------------------------------
always @(posedge CLK or posedge RST) begin
    if(RST)CalCost_curr_state <= IDLE;
    else CalCost_curr_state <= CalCost_next_state;
end

always @(*) begin
    case(CalCost_curr_state)
        IDLE:begin
            CalCost_next_state = FOR_I;
        end
        // FRAL:begin
        //     if(cnt_40320 == 16'd40319) CalCost_next_state = DONE;
        //     else CalCost_next_state = FOR_I;
        // end
        FOR_I:begin
            if (i == 7) CalCost_next_state = CAL_COST;
            else CalCost_next_state = FOR_I;
        end
        CAL_COST:begin
            CalCost_next_state = CAL_MIN;
        end
        CAL_MIN:begin
            if(cnt_40320 == 16'd40319) CalCost_next_state = DONE;
            else CalCost_next_state = OVER;
        end
        OVER:begin
            if (LX_Sort_curr_state == OVER) CalCost_next_state = FOR_I;
            else CalCost_next_state = OVER;
        end
        DONE:begin
            CalCost_next_state = DONE;
        end
        default: CalCost_next_state = IDLE;
    endcase
end
//CalCost state control end----------------------------------

//CalCost RTL operation str----------------------------------
always @(posedge CLK) begin
    case(CalCost_curr_state)
        IDLE:begin
            MinCost      <= 10'd1023;
            MatchCount   <= 4'd0;
            total_cost   <= 10'd0;
            i            <= 4'd0;
            Valid <= 1'b0;
        end
        // FRAL:begin
        //     if(cnt_40320 == 16'd40319);
        //     else cnt_40320 <= cnt_40320 + 1'b1;
        // end
        FOR_I:begin
            if(i != 0)total_cost <= total_cost + {3'd0, Cost};

            if (i == 7) i <= 4'd0;
            else i <= i + 4'd1;
        end
        CAL_COST:begin
            total_cost <= total_cost + {3'd0, Cost};
        end
        CAL_MIN:begin
            total_cost   <= 10'd0;
            i            <= 4'd0;
            if (total_cost < MinCost) begin
                MatchCount <= 4'd1;
                MinCost    <= total_cost;
            end
            else if (total_cost == MinCost)begin
                MatchCount <= MatchCount + 4'd1;
            end
        end
        OVER:begin

        end
        DONE:begin
            Valid <= 1'b1;
        end
    endcase
end
//CalCost RTL operation end----------------------------------

//LX_Sort state control str----------------------------------
always @(posedge CLK or posedge RST) begin
    if(RST)LX_Sort_curr_state <= IDLE;
    else LX_Sort_curr_state <= LX_Sort_next_state;
end

always @(*) begin
    case(LX_Sort_curr_state)
        IDLE:begin
            LX_Sort_next_state = CHP1;
        end
        FRAL:begin
            if(cnt_40320 == 16'd40319) LX_Sort_next_state = FRAL;
            else LX_Sort_next_state = CHP1;
        end
        CHP1:begin
            LX_Sort_next_state = LCG2;
        end
        LCG2:begin
            if(LCG_cnt == 3'd7) LX_Sort_next_state = LCG3;
            else LX_Sort_next_state = LCG2;
        end
        LCG3:begin
            LX_Sort_next_state = CHMT;
        end
        CHMT:begin
            if(CHMT_cnt == change_time) LX_Sort_next_state = OVER;
            else LX_Sort_next_state = CHMT;
        end
        OVER:begin
            if(CalCost_curr_state == OVER) LX_Sort_next_state = FRAL;
            else LX_Sort_next_state = OVER;
        end
        default: LX_Sort_next_state = IDLE;
    endcase
end
//LX_Sort state control end----------------------------------

//LX_Sort RTL operation str----------------------------------
always @(posedge CLK) begin
    case(LX_Sort_curr_state)
        IDLE:begin
            arrange_1[0] <= 0;
            arrange_1[1] <= 1;
            arrange_1[2] <= 2;
            arrange_1[3] <= 3;
            arrange_1[4] <= 4;
            arrange_1[5] <= 5;
            arrange_1[6] <= 6;
            arrange_1[7] <= 7;
            arrange_2[0] <= 0;
            arrange_2[1] <= 1;
            arrange_2[2] <= 2;
            arrange_2[3] <= 3;
            arrange_2[4] <= 4;
            arrange_2[5] <= 5;
            arrange_2[6] <= 6;
            arrange_2[7] <= 7;
            p <= 3'd6;
            min <= 4'd9;
            min_pos <= 3'd0;
            LCG_cnt <= 3'd0;
            CHMT_cnt <= 3'd0;

            cnt_40320 <= 16'd0;
        end
        FRAL:begin
            arrange_1[0] <= arrange_2[0];
            arrange_1[1] <= arrange_2[1];
            arrange_1[2] <= arrange_2[2];
            arrange_1[3] <= arrange_2[3];
            arrange_1[4] <= arrange_2[4];
            arrange_1[5] <= arrange_2[5];
            arrange_1[6] <= arrange_2[6];
            arrange_1[7] <= arrange_2[7];

            if(cnt_40320 == 16'd40319);
            else cnt_40320 <= cnt_40320 + 1'b1;
        end
        CHP1:begin
            if(arrange_2[7] > arrange_2[6]) begin
                LCG_cnt <= 3'd7;
                p <= 3'd6;
            end
            else if (arrange_2[6] > arrange_2[5])begin 
                LCG_cnt <= 3'd6;
                p <= 3'd5;
            end
            else if (arrange_2[5] > arrange_2[4])begin 
                LCG_cnt <= 3'd5;
                p <= 3'd4;
            end
            else if (arrange_2[4] > arrange_2[3])begin 
                LCG_cnt <= 3'd4;
                p <= 3'd3;
            end
            else if (arrange_2[3] > arrange_2[2])begin 
                LCG_cnt <= 3'd3;
                p <= 3'd2;
            end
            else if (arrange_2[2] > arrange_2[1])begin 
                LCG_cnt <= 3'd2;
                p <= 3'd1;
            end
            else begin
                LCG_cnt <= 3'd1;
                p <= 3'd0;
            end
        end
        LCG2:begin
            if(min > arrange_2[LCG_cnt] && arrange_2[LCG_cnt] > arrange_2[p])begin
                min <= arrange_2[LCG_cnt];
                min_pos <= LCG_cnt;
            end
            if(LCG_cnt == 3'd7);
            else LCG_cnt <= LCG_cnt + 1'b1;
        end
        LCG3:begin
            arrange_2[min_pos] <= arrange_2[p];
            arrange_2[p] <= arrange_2[min_pos];
        end
        CHMT:begin
            if(CHMT_cnt == change_time);
            else begin
                arrange_2[CHMT_a] <= arrange_2[CHMT_b];
                arrange_2[CHMT_b] <= arrange_2[CHMT_a];
                CHMT_cnt <= CHMT_cnt + 1'b1;
            end
        end
        OVER:begin
            p       <= 3'd6;
            min     <= 4'd9;
            min_pos <= 3'd0;
            LCG_cnt <= 3'd0;
            CHMT_cnt<= 3'd0;
        end
    endcase
end
//LX_Sort RTL operation end----------------------------------

endmodule


