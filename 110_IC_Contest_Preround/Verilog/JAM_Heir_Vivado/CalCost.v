module CalCost(
    input [6:0]Cost,
    input start,
    input RST,
    input CLK,
    input [2:0]arrange0,
    input [2:0]arrange1,
    input [2:0]arrange2,
    input [2:0]arrange3,
    input [2:0]arrange4,
    input [2:0]arrange5,
    input [2:0]arrange6,
    input [2:0]arrange7,
    output reg [3:0] MatchCount,
    output reg [9:0] MinCost,
    output reg done,
    output [2:0] W,
    output [2:0] J
);

localparam [2:0]IDLE = 3'd0,
                OVER = 3'd1,
                CAL_COST = 3'd2,
                CAL_MIN = 3'd3,
                WAIT = 3'd4,
                CAL_LAST = 3'd5;


//variable definition str----------------------------
reg [2:0]curr_state;
reg [2:0]next_state;
reg [2:0]arrange[7:0];

reg [9:0]total_cost;
reg [3:0]i;
//variable definition end----------------------------

//ALU sharing str----------------------------------
assign W = i;
assign J = arrange[i];
//ALU sharing end----------------------------------

//state control str----------------------------------
always @(posedge CLK or posedge RST) begin
    if(RST)curr_state <= IDLE;
    else curr_state <= next_state;
end

always @(*) begin
    case(curr_state)
        IDLE:begin
            next_state = WAIT;
        end
        WAIT:begin
            if (start) next_state = CAL_COST;
            else next_state = WAIT;
        end
        CAL_COST:begin
            if (i == 7) next_state = CAL_LAST;
            else next_state = CAL_COST;
        end
        CAL_LAST:begin
            next_state = CAL_MIN;
        end
        CAL_MIN:begin
            next_state = WAIT;
        end
        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------

//RTL operation str----------------------------------
always @(posedge CLK) begin
    case(curr_state)
        IDLE:begin
            i <= 4'd0;
            MinCost      <= 10'd1023;
            MatchCount   <= 4'd0;
            total_cost   <= 10'd0;
            arrange[0]   <= 3'd0;
            arrange[1]   <= 3'd1;
            arrange[2]   <= 3'd2;
            arrange[3]   <= 3'd3;
            arrange[4]   <= 3'd4;
            arrange[5]   <= 3'd5;
            arrange[6]   <= 3'd6;
            arrange[7]   <= 3'd7;
            done         <= 1'b1;
        end
        WAIT:begin
            if (start) begin
                done <= 1'b0;
                i <= 4'd1;
            end
            else begin
                i <= 4'd0;
            end
            total_cost   <= 10'd0;
            arrange[0]   <= arrange0;
            arrange[1]   <= arrange1;
            arrange[2]   <= arrange2;
            arrange[3]   <= arrange3;
            arrange[4]   <= arrange4;
            arrange[5]   <= arrange5;
            arrange[6]   <= arrange6;
            arrange[7]   <= arrange7;
        end
        CAL_COST:begin
            if (i != 0) total_cost <= total_cost + {3'd0, Cost};

            if (i == 7) i <= 4'd7;
            else  i <= i + 4'd1;

            done         <= 1'b0;
        end
        CAL_LAST:begin
            total_cost <= total_cost + {3'd0, Cost};
            i <= 4'd0;
        end
        CAL_MIN:begin
            if (total_cost < MinCost) begin
                MatchCount <= 4'd1;
                MinCost    <= total_cost;
            end
            else if (total_cost == MinCost)begin
                MatchCount <= MatchCount + 4'd1;
            end
            done <= 1'd1;
        end
    endcase
end
//RTL operation end----------------------------------

endmodule