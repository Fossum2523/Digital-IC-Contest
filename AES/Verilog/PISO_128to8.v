`timescale 1ns / 1ps
module PISO_128to8#(
    parameter   in_N = 128,
                set_N = 16,
                out_N = 128 / 16
    )(
        input clk,
        input reset,
        input en,
        input clear,
        input [in_N-1:0]in,
        output valid,
        output [4:0]set_num,
        output [out_N-1:0]out
);


localparam [3:0]IDLE = 4'd0,
                TRANS = 4'd1,
                OVER = 4'd2;

//variable definition str----------------------------
reg [3:0]curr_state;
reg [3:0]next_state;
reg [3:0]cnt;
reg [out_N-1:0]DFF;
//variable definition end----------------------------

assign set_num = cnt;
assign out = (cnt == 0) ? in[(1*8-1) -: 8] :
            (cnt == 1) ? in[(2*8-1) -: 8] :
            (cnt == 2) ? in[(3*8-1) -: 8] :
            (cnt == 3) ? in[(4*8-1) -: 8] :
            (cnt == 4) ? in[(5*8-1) -: 8] :
            (cnt == 5) ? in[(6*8-1) -: 8] :
            (cnt == 6) ? in[(7*8-1) -: 8] :
            (cnt == 7) ? in[(8*8-1) -: 8] :
            (cnt == 8) ? in[(9*8-1) -: 8] :
            (cnt == 9) ? in[(10*8-1) -: 8] :
            (cnt == 10) ? in[(11*8-1) -: 8] :
            (cnt == 11) ? in[(12*8-1) -: 8] :
            (cnt == 12) ? in[(13*8-1) -: 8] :
            (cnt == 13) ? in[(14*8-1) -: 8] :
            (cnt == 14) ? in[(15*8-1) -: 8] :
            (cnt == 15) ? in[(16*8-1) -: 8] : 8'd0;

assign valid = (curr_state == OVER) ? 1'b1 : 1'b0;

//state control str----------------------------------
always @(posedge clk or posedge reset) begin
    if(reset)curr_state <= IDLE;
    else curr_state <= next_state;
end

always @(*) begin
    case(curr_state)
        IDLE:begin
            if(en)
                next_state = TRANS;
            else
                next_state = IDLE;
        end
        TRANS:begin
            if(cnt == 15)
                next_state = OVER;
            else
                next_state = TRANS;
        end
        OVER:begin
            if(clear)
                next_state = IDLE;
            else
                next_state = OVER;
        end
        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------

//RTL operation str----------------------------------
always @(posedge  clk or posedge reset) begin
    if(reset)begin
        cnt <= 4'd0;
    end
    else begin
        case(curr_state)
            IDLE:begin
                cnt <= 4'd0;
            end
            TRANS:begin
                cnt <= cnt + 1'b1;
            end
            OVER:begin
                cnt <= 4'd0;
            end
        endcase
    end
end
//RTL operation end----------------------------------

endmodule
