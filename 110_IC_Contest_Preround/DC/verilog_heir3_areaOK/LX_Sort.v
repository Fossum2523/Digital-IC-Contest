module LX_Sort(
    input CLK,
    input RST,
    input start,
    input [2:0]arrange0,
    input [2:0]arrange1,
    input [2:0]arrange2,
    input [2:0]arrange3,
    input [2:0]arrange4,
    input [2:0]arrange5,
    input [2:0]arrange6,
    input [2:0]arrange7,
    output [2:0]arrange_out0,
    output [2:0]arrange_out1,
    output [2:0]arrange_out2,
    output [2:0]arrange_out3,
    output [2:0]arrange_out4,
    output [2:0]arrange_out5,
    output [2:0]arrange_out6,
    output [2:0]arrange_out7,
    output reg done
);

localparam [2:0]IDLE = 3'd0,
                OVER = 3'd1,
                SET_PIVOT_POS = 3'd2,
                SET_CHANGE_POS = 3'd3,
                SWAP_PIVOT_CHANGE = 3'd4,
                SWAP_LAST = 3'd5,
                WAIT = 3'd6;

//variable definition str----------------------------
reg [2:0]curr_state;
reg [2:0]next_state;

reg [3:0] arrange[7:0];
// reg [3:0] arrange_out[7:0];
reg [2:0] p;
reg [2:0] change_pos;
reg [2:0] min_pos;
reg [3:0] min;
wire [1:0] change_time;
reg [1:0] change_i;
wire [2:0]SWAP_A;
wire [2:0]SWAP_B;
//variable definition end----------------------------

//ALU sharing str----------------------------------
assign arrange_out0 = arrange[0];
assign arrange_out1 = arrange[1];
assign arrange_out2 = arrange[2];
assign arrange_out3 = arrange[3];
assign arrange_out4 = arrange[4];
assign arrange_out5 = arrange[5];
assign arrange_out6 = arrange[6];
assign arrange_out7 = arrange[7];

assign SWAP_A = p+3'd1+change_i;
assign SWAP_B = 3'd7-change_i;
assign change_time = ~p >> 1;
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
            if (start) next_state = SET_PIVOT_POS;
            else next_state = WAIT;
        end
        SET_PIVOT_POS:begin
            next_state = SET_CHANGE_POS;
        end
        SET_CHANGE_POS:begin
            if (change_pos == 7) next_state = SWAP_PIVOT_CHANGE;
            else next_state = SET_CHANGE_POS;
        end
        SWAP_PIVOT_CHANGE:begin
            next_state = SWAP_LAST;
        end
        SWAP_LAST:begin
            if (change_i == change_time) next_state = WAIT;
            else next_state = SWAP_LAST;
        end
        // OVER:begin
        //     next_state = WAIT;
        // end
        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------

//RTL operation str----------------------------------
always @(posedge CLK) begin
    case(curr_state)
        IDLE:begin
            arrange[0] <= 3'd0;
            arrange[1] <= 3'd1;
            arrange[2] <= 3'd2;
            arrange[3] <= 3'd3;
            arrange[4] <= 3'd4;
            arrange[5] <= 3'd5;
            arrange[6] <= 3'd6;
            arrange[7] <= 3'd7;
            min <= 4'd8;
            min_pos <= 3'd0;
            p <= 3'd0;
            change_pos <= 3'd0;
            change_i <= 2'd0;
            done <= 1'd1;
        end
        WAIT:begin
            if (start) done <= 1'b0;
            arrange[0] <= arrange0;
            arrange[1] <= arrange1;
            arrange[2] <= arrange2;
            arrange[3] <= arrange3;
            arrange[4] <= arrange4;
            arrange[5] <= arrange5;
            arrange[6] <= arrange6;
            arrange[7] <= arrange7;
            min <= 4'd8;
            min_pos <= 3'd0;
            p <= 3'd0;
            change_pos <= 3'd0;
            change_i <= 2'd0;
        end
        SET_PIVOT_POS:begin
            if (arrange[6] < arrange[7]) begin
                p <= 3'd6;
                change_pos <= 3'd7;
            end
            else if (arrange[5] < arrange[6]) begin
                p <= 3'd5;
                change_pos <= 3'd6;
            end
            else if (arrange[4] < arrange[5]) begin
                p <= 3'd4;
                change_pos <= 3'd5;
            end 
            else if (arrange[3] < arrange[4]) begin
                p <= 3'd3;
                change_pos <= 3'd4;
            end
            else if (arrange[2] < arrange[3]) begin
                p <= 3'd2;
                change_pos <= 3'd3;
            end
            else if (arrange[1] < arrange[2]) begin
                p <= 3'd1;
                change_pos <= 3'd2;
            end
            else begin
                p <= 3'd0;
                change_pos <= 3'd1;
            end
            done         <= 1'b0;
        end
        SET_CHANGE_POS:begin
            if (arrange[change_pos] > arrange[p] & arrange[change_pos] < min)begin
                min <= arrange[change_pos];
                min_pos <= change_pos;
            end

            if (change_pos == 7)begin
                change_pos <= 3'd7;
            end
            else begin
                change_pos <= change_pos + 3'd1;
            end
        end
        SWAP_PIVOT_CHANGE:begin
            arrange [p] <= arrange [min_pos];
            arrange [min_pos] <= arrange [p];
        end
        SWAP_LAST:begin
            if (change_i == change_time) begin
                done <= 1'd1;
                change_i <= 2'd0;
            end
            else begin
                change_i <= change_i + 2'd1;
                arrange [SWAP_A] <= arrange[SWAP_B];
                arrange [SWAP_B] <= arrange [SWAP_A];
            end
        end
        // OVER:begin
        //     done <= 1'd1;
        // end
    endcase
end
//RTL operation end----------------------------------



endmodule
