module geofence ( clk,reset,X,Y,R,valid,is_inside);
input clk;
input reset;
input [9:0] X;
input [9:0] Y;
input [10:0] R;
output valid;
output is_inside;
reg valid;
reg is_inside;

localparam [3:0]IDLE = 4'd0,
                O_NUMVER = 4'd1,
                RECIEVE_DATA = 4'd2,
                BUILD_FENCE = 4'd3,
                CAL_AREA = 4'd4,
                IS_INSIDE = 4'd5,
                CHANGE_VECTOR = 4'd6,
                CROSS_POS = 4'd7,
                BUILD_VECTOR = 4'd8,
                NEG_NUM = 4'd9,
                SWAP = 4'd10,
                S9 = 4'd11,
                BUILD_FENCE0 = 4'd12,
                BUILD_FENCE1 = 4'd13,
                BUILD_FENCE2 = 4'd14,
                BUILD_FENCE3 = 4'd15;

//variable definition str----------------------------
reg [3:0]curr_state;
reg [3:0]next_state;

reg [2:0]cnt;
reg [2:0]vector_cnt;
reg signed [9:0] x_pos [5:0];
reg signed [9:0] y_pos [5:0];
reg signed [10:0] r_dis [5:0];
reg signed [10:0] vectorX [5:0];
reg signed [10:0] vectorY [5:0];
reg signed [21:0] cross_result;
reg [2:0] negtive_num;
reg [2:0] arrange [5:0];
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
            next_state = RECIEVE_DATA;
        end
        RECIEVE_DATA:begin
            if (cnt == 5) next_state = BUILD_VECTOR;
            else next_state = RECIEVE_DATA;
        end
        BUILD_FENCE:begin
            next_state = CAL_AREA;
        end
        CAL_AREA:begin
            next_state = IS_INSIDE;
        end
        IS_INSIDE:begin
            next_state = RECIEVE_DATA;
        end
        CHANGE_VECTOR:begin
            if (vector_cnt == 5) next_state = SWAP;
            else next_state = CROSS_POS;
        end
        CROSS_POS:begin
            next_state = NEG_NUM;
        end
        BUILD_VECTOR:begin
            if (cnt == 5) next_state = CROSS_POS;
            else next_state = BUILD_VECTOR;
        end
        NEG_NUM:begin
            if (cnt == 5) next_state = CHANGE_VECTOR;
            else next_state = CROSS_POS;
        end
        SWAP:begin

        end
        S9:begin

        end
        BUILD_FENCE0:begin

        end
        BUILD_FENCE1:begin

        end
        BUILD_FENCE2:begin

        end
        BUILD_FENCE3:begin

        end
        OVER:begin

        end
        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------

//RTL operation str----------------------------------
always @(posedge CLK) begin
    case(curr_state)
        IDLE:begin
            cnt   <= 3'd0;
            vector_cnt <= 3'd0;
            valid      <= 1'd0;
            is_inside  <= 1'd0;
            x_pos          <= 10'd0;
            y_pos          <= 10'd0;
            r_dis          <= 11'd0;
            vectorX         <= 11'd0;
            vectorY         <= 11'd0;
            negtive_num     <= 3'd0;
        end
        RECIEVE_DATA:begin
            x_pos [data_cnt]  <=  X;
            y_pos [data_cnt]  <=  Y;
            r_dis [data_cnt]  <=  R;
            
            if (cnt == 5) cnt <= 3'd0;
            else cnt <= cnt + 3'd1;
        end
        BUILD_FENCE:begin
            
        end
        CAL_AREA:begin
            
        end
        IS_INSIDE:begin

        end
        CHANGE_VECTOR:begin 
            arrange[vector_cnt + 3'd1] <= negtive_num + 3'd1;

            if (vector_cnt == 5) vector_cnt <= 3'd0;
            else vector_cnt <= vector_cnt + 3'd1;
        end
        CROSS_POS:begin
            if (cnt != vector_cnt) begin
                cross_result <= vectorX[vector_cnt] * vectorY[cnt] - vectorY[vector_cnt] + vectorX[cnt];
            end
        end
        BUILD_VECTOR:begin
            vectorX[cnt] <= x_pos[cnt + 3'd1] - x_pos[0];
            vectorY[cnt] <= y_pos[cnt + 3'd1] - y_pos[0];
            
            if (cnt == 5) cnt <= 3'd0;
            else cnt <= cnt + 3'd1;
        end
        NEG_NUM:begin
            if (cross_result < 0)
                negtive_num <= negtive_num + 3'd1;
                
            if (cnt == 5) cnt <= 3'd0;
            else cnt <= cnt + 3'd1;
        end
        SWAP:begin

        end
        S9:begin

        end
        BUILD_FENCE0:begin

        end
        BUILD_FENCE1:begin

        end
        BUILD_FENCE2:begin

        end
        BUILD_FENCE3:begin

        end
        OVER:begin

        end
    endcase
end
//RTL operation end----------------------------------

endmodule

