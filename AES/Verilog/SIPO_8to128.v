`timescale 1ns / 1ps
module SIPO_8to128#(
    parameter   in_N = 8,
                set_N = 16,
                out_N = in_N * set_N
    )(
        input clk,
        input reset,
        input en,
        input clear,
        input [in_N-1:0]in,
        output valid,
        output [out_N-1:0]out
);

localparam [3:0]IDLE = 4'd0,
                TRANS = 4'd1,
                OVER = 4'd2;

//variable definition str----------------------------
reg [3:0]curr_state;
reg [3:0]next_state;
reg [4:0]cnt;
reg [out_N-1:0]DFF;
//variable definition end----------------------------

genvar i;
generate
    for ( i= 1; i <= 16; i= i + 1) begin:SIPO 
        always @(posedge clk or posedge reset) begin
            if(reset)begin
                DFF[(i*in_N-1)-:in_N] <= 8'd0;
            end
            else begin
                if(en && cnt == (i-1))begin
                    DFF[(i*in_N-1)-:in_N] <= in;
                end 
            end
        end
    end
endgenerate

assign valid = (curr_state == OVER) ? 1'b1 : 1'b0;
assign out = DFF;
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
            if(cnt == set_N-1)
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