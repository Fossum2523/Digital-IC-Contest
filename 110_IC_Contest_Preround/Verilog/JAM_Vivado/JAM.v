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
                OVER        = 4'd10;


//variable definition str----------------------------
reg [3:0]curr_state;
reg [3:0]next_state;

reg [15:0]cnt_40320;

reg [2:0]arrange[7:0];
reg [2:0]p;
wire [2:0]p_plus_1;

reg [2:0]LCG_cnt;
reg [3:0]min;
reg [2:0]min_pos;
wire [1:0]change_time;

reg [1:0]CHMT_cnt;
wire [2:0]CHMT_a;
wire [2:0]CHMT_b;


reg [9:0]total_cost;
reg [3:0]i;
//variable definition end----------------------------

//ALU sharing str----------------------------------
assign p_plus_1 = p + 1;
assign CHMT_a = p_plus_1 + CHMT_cnt;
assign CHMT_b = ~CHMT_cnt;
// assign change_time = (3'b111^p) >> 1;
assign change_time = ~p >> 1;

assign  W   =  i;
assign  J   =  arrange[i];
//ALU sharing end----------------------------------

//state control str----------------------------------
always @(posedge CLK or posedge RST) begin
    if(RST)curr_state <= IDLE;
    else curr_state <= next_state;
end

always @(*) begin
    case(curr_state)
        IDLE:begin
            next_state = FOR_I;
        end
        FOR_I:begin
            if (i == 7) next_state = CAL_COST;
            else next_state = FOR_I;
        end
        CAL_COST:begin
            next_state = CAL_MIN;
        end
        CAL_MIN:begin
            next_state = CHP1;
        end
        /////////////////////////////////////////////////////////////
        CHP1:begin
            if(arrange[p_plus_1] > arrange[p]) next_state = LCG1;
            else next_state = CHP1;
        end
        LCG1:begin
            next_state = LCG2;
        end
        LCG2:begin
            if(LCG_cnt == 3'd7) next_state = LCG3;
            else next_state = LCG2;
        end
        LCG3:begin
            next_state = CHMT;
        end
        CHMT:begin
            if(CHMT_cnt == change_time) next_state = FRAL;
            else next_state = CHMT;
        end
        FRAL:begin
            if(cnt_40320 == 16'd40319) next_state = OVER;
            else next_state = FOR_I;
        end
        OVER:begin
            next_state = OVER;
        end
        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------

//RTL operation str----------------------------------
always @(posedge CLK) begin
    case(curr_state)
        IDLE:begin
            arrange[0] <= 0;
            arrange[1] <= 1;
            arrange[2] <= 2;
            arrange[3] <= 3;
            arrange[4] <= 4;
            arrange[5] <= 5;
            arrange[6] <= 6;
            arrange[7] <= 7;
            p <= 3'd6;
            min <= 4'd9;
            min_pos <= 3'd0;
            LCG_cnt <= 3'd0;
            CHMT_cnt <= 3'd0;

            cnt_40320 <= 16'd0;
            ///////////////////////////////
            MinCost      <= 10'd1023;
            MatchCount   <= 4'd0;
            total_cost   <= 10'd0;
            i            <= 4'd0;

            Valid <= 1'b0;
        end
        FOR_I:begin
            if(i != 0)total_cost <= total_cost + {3'd0, Cost};

            if (i == 7) i <= 4'd0;
            else i <= i + 4'd1;
        end
        CAL_COST:begin
            total_cost <= total_cost + {3'd0, Cost};
        end
        CAL_MIN:begin
            if (total_cost < MinCost) begin
                MatchCount <= 4'd1;
                MinCost    <= total_cost;
            end
            else if (total_cost == MinCost)begin
                MatchCount <= MatchCount + 4'd1;
            end
        end
        //////////////////////////////////////////////////
        CHP1:begin
            if(arrange[p_plus_1] > arrange[p]);
            else p <= p - 1'b1;
        end
        LCG1:begin
            LCG_cnt <= p_plus_1;
        end
        LCG2:begin
            if(min > arrange[LCG_cnt] && arrange[LCG_cnt] > arrange[p])begin
                min <= arrange[LCG_cnt];
                min_pos <= LCG_cnt;
            end
            if(LCG_cnt == 3'd7);
            else LCG_cnt <= LCG_cnt + 1'b1;
        end
        LCG3:begin
            arrange[min_pos] <= arrange[p];
            arrange[p] <= arrange[min_pos];
        end
        CHMT:begin
            if(CHMT_cnt == change_time);
            else begin
                arrange[CHMT_a] <= arrange[CHMT_b];
                arrange[CHMT_b] <= arrange[CHMT_a];
                CHMT_cnt <= CHMT_cnt + 1'b1;
            end
        end
        FRAL:begin
            p <= 3'd6;
            min <= 4'd9;
            min_pos <= 3'd0;
            LCG_cnt <= 3'd0;
            CHMT_cnt <= 3'd0;

            total_cost   <= 10'd0;
            i            <= 4'd0;

            if(cnt_40320 == 16'd40319);
            else cnt_40320 <= cnt_40320 + 1'b1;
        end
        OVER:begin
            Valid <= 1'b1;
        end
        default:next_state = IDLE;
    endcase
end
//RTL operation end----------------------------------


endmodule


