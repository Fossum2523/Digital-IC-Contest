module CalCost(
    input [6:0]Cost,
    input start,
    input RST,
    input CLK,
    input [2:0]arrange[7:0],
    output reg [3:0] MatchCount,
    output reg [9:0] MinCost,
    output reg done,
    output reg [2:0] W,
    output reg [2:0] J
);

localparam [3:0]IDLE = 4'd0,
                OVER = 4'd1,
                CAL_COST = 4'd2,
                FOR_I = 4'd3,
                CAL_MIN = 4'd4,
                GET_COST = 4'd5;


//variable definition str----------------------------
reg [3:0]curr_state;
reg [3:0]next_state;

reg [9:0]total_cost;
reg [2:0]i;
//variable definition end----------------------------

//ALU sharing str----------------------------------

//ALU sharing end----------------------------------

//state control str----------------------------------
always @(posedge CLK or posedge RST) begin
    if(RST)curr_state <= IDLE;
    else curr_state <= next_state;
end

always @(*) begin
    case(curr_state)
        IDLE:begin
            if (start) next_state = GET_COST;
            else next_state = IDLE;
        end
        GET_COST:begin
            next_state = CAL_COST;
        end
        CAL_COST:begin
            next_state = FOR_I;
        end
        FOR_I:begin
            if (i == 7) next_state = CAL_MIN;
            else next_state = GET_COST;
        end
        CAL_MIN:begin
            next_state = OVER;
        end
        OVER:begin
            next_state = IDLE;
        end
        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------

//RTL operation str----------------------------------
always @(posedge CLK) begin
    case(curr_state)
        IDLE:begin
            MinCost      <= 10'd100;
            MatchCount   <= 4'd0;
            total_cost   <= 10'd0;
            i            <= 4'd0;
            done         <= 1'd0;
            W            <= 3'd0;
            J            <= 3'd0;
        end
        GET_COST:begin
            W    <=  i;
            J    <=  arrange[i];
        end
        CAL_COST:begin
            total_cost <= total_cost + {3'd0, Cost};
        end
        FOR_I:begin
            if (i == 7) i <= 4'd0;
            else i <= i + 4'd1;
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
        OVER:begin
            done <= 1'd1;
        end
        default:next_state = IDLE;
    endcase
end
//RTL operation end----------------------------------

endmodule