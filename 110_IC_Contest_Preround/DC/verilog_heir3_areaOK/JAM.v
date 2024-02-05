//`include "CalCost.v"
//`include "LX_Sort.v"

module JAM (
input CLK,
input RST,
output [2:0] W,
output [2:0] J,
input [6:0] Cost,
output [3:0] MatchCount,
output [9:0] MinCost,
output reg Valid );

localparam [1:0]IDLE = 2'd0,
                OVER = 2'd1,
                CAL = 2'd2,
                CHECK = 2'd3;

//variable definition str----------------------------
reg [1:0]curr_state;
reg [1:0]next_state;

reg [2:0] arrange[7:0];
wire [2:0] arrange_out[7:0];
reg [15:0] cnt;
wire start_calcost;
wire done_calcost;
wire start_LX_sort;
wire done_LX_sort;
//variable definition end----------------------------

//ALU sharing str----------------------------------
assign start_calcost = (curr_state == CAL && done_calcost && done_LX_sort) ? 1'b1:1'b0;
assign start_LX_sort = (curr_state == CAL && done_calcost && done_LX_sort) ? 1'b1:1'b0;

    CalCost inst0(
        .Cost(Cost),
        .start(start_calcost),
        .RST(RST),
        .CLK(CLK),
        .arrange0(arrange_out[0]),
        .arrange1(arrange_out[1]),
        .arrange2(arrange_out[2]),
        .arrange3(arrange_out[3]),
        .arrange4(arrange_out[4]),
        .arrange5(arrange_out[5]),
        .arrange6(arrange_out[6]),
        .arrange7(arrange_out[7]),
        .MatchCount(MatchCount),
        .MinCost(MinCost),
        .done(done_calcost),
        .W(W),
        .J(J)
    );

    LX_Sort inst1 (
        .CLK(CLK),
        .RST(RST),
        .start(start_LX_sort),
        .arrange0(arrange[0]),
        .arrange1(arrange[1]),
        .arrange2(arrange[2]),
        .arrange3(arrange[3]),
        .arrange4(arrange[4]),
        .arrange5(arrange[5]),
        .arrange6(arrange[6]),
        .arrange7(arrange[7]),
        .arrange_out0(arrange_out[0]),
        .arrange_out1(arrange_out[1]),
        .arrange_out2(arrange_out[2]),
        .arrange_out3(arrange_out[3]),
        .arrange_out4(arrange_out[4]),
        .arrange_out5(arrange_out[5]),
        .arrange_out6(arrange_out[6]),
        .arrange_out7(arrange_out[7]),
        .done(done_LX_sort)
    );
//ALU sharing end----------------------------------

//state control str----------------------------------
always @(posedge CLK or posedge RST) begin
    if(RST)curr_state <= IDLE;
    else curr_state <= next_state;
end

always @(*) begin
    case(curr_state)
        IDLE:begin
            next_state = CAL;  
        end
        CAL:begin
            if (cnt == 40319) next_state = OVER;
            else next_state = CAL;
        end
        // CHECK:begin
        //     if (cnt == 40319) next_state = OVER;
        //     else if (done_calcost && done_LX_sort) next_state = CAL;
        //     else next_state = CHECK;
        // end
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
            cnt <= 16'd0;
            Valid <= 1'b0;
            arrange[0] <= 3'd0;
            arrange[1] <= 3'd1;
            arrange[2] <= 3'd2;
            arrange[3] <= 3'd3;
            arrange[4] <= 3'd4;
            arrange[5] <= 3'd5;
            arrange[6] <= 3'd6;
            arrange[7] <= 3'd7;
        end
        CAL:begin
            arrange[0] <= arrange_out[0];
            arrange[1] <= arrange_out[1];
            arrange[2] <= arrange_out[2];
            arrange[3] <= arrange_out[3];
            arrange[4] <= arrange_out[4];
            arrange[5] <= arrange_out[5];
            arrange[6] <= arrange_out[6];
            arrange[7] <= arrange_out[7];

            if (cnt == 40319) cnt <= 16'd0;
            else if (done_calcost && done_LX_sort) cnt <= cnt + 16'd1;
        end
        // CHECK:begin
        //    arrange[0] <= arrange_out[0];
        //    arrange[1] <= arrange_out[1];
        //    arrange[2] <= arrange_out[2];
        //    arrange[3] <= arrange_out[3];
        //    arrange[4] <= arrange_out[4];
        //    arrange[5] <= arrange_out[5];
        //    arrange[6] <= arrange_out[6];
        //    arrange[7] <= arrange_out[7];

        //     if (cnt == 40319) cnt <= 16'd0;
        //     else if (done_calcost && done_LX_sort) cnt <= cnt + 16'd1;
        // end
        OVER:begin
            Valid <= 1'b1;
        end
    endcase
end
//RTL operation end----------------------------------


endmodule


