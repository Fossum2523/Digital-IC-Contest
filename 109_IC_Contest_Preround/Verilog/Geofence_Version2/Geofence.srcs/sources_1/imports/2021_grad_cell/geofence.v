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
                RECIEVE_DATA = 4'd1,
                BUILD_VECTORS = 4'd2,
                CROSS_POS = 4'd3,
                NEG_NUM = 4'd4,
                CHANGE_VECTOR = 4'd5,
                SWAP = 4'd6,
                CAL_POLYGON_AREA1 = 4'd7,
                CAL_POLYGON_AREA2 = 4'd8,
                CAL_TRI_AREA1 = 4'd9,
                CAL_TRI_AREA2 = 4'd10,
                CAL_TRI_AREA3 = 4'd14,
                CAL_TRI_AREA4 = 4'd11,
                IS_INSIDE = 4'd12,
                OVER = 4'd13;

//variable definition str----------------------------
reg [3:0]curr_state;
reg [3:0]next_state;

reg [2:0]cnt;
reg [2:0]vector_cnt;
reg [9:0] x_pos [5:0];
reg [9:0] y_pos [5:0];
reg [10:0] r_dis [5:0];
reg signed [10:0] vectorX [4:0];
reg signed [10:0] vectorY [4:0];
reg signed [20:0] cross_result;
reg [2:0] negtive_num;
reg [2:0] arrange [5:1];
reg [19:0] polygon_area;
reg [39:0] tri_area;
reg [10:0] a;
reg [10:0] b;
reg [9:0] c;
reg [11:0] s;
wire signed [11:0] s_a;
wire signed [11:0] s_b;
wire signed [11:0] s_c;
wire signed [19:0] pre_c1;
wire signed [19:0] pre_c2;
reg [15:0] sa;
reg [15:0] bc;
reg [23:0] sqrt1_in, sqrt2_in;
wire [11:0] sqrt1_out, sqrt2_out;

reg [23:0] root_test_in;
reg [11:0] root_test_out;

//variable definition end----------------------------

//ALU sharing str----------------------------------
// sqrt sqrt2 (.in(sqrt2_in), .out(sqrt2_out));
// defparam sqrt2.in_width = 20, sqrt2.bias = 12;

DW_sqrt_inst sqrt1 (.radicand(sqrt1_in), .square_root(sqrt1_out));
// DW_sqrt_inst sqrt2 (.radicand(sqrt2_in), .square_root(sqrt2_out));
defparam sqrt1.radicand_width = 24;
// defparam sqrt2.radicand_width = 24;

assign pre_c1 = (x_pos[cnt] - x_pos[cnt + 3'd1]) ** 2 + (y_pos[cnt] - y_pos[cnt + 3'd1]) ** 2;
assign pre_c2 = (x_pos[cnt] - x_pos[0]) ** 2 + (y_pos[cnt] - y_pos[0]) ** 2;
assign s_a = $signed(s) - $signed({1'd0, a});
assign s_b = $signed(s) - $signed({1'd0, b});
assign s_c = $signed(s) - $signed({1'b0, c});
//ALU sharing end----------------------------------

//state control str----------------------------------
always @(posedge clk or posedge reset) begin
    if(reset)curr_state <= IDLE;
    else curr_state <= next_state;
end

always @(*) begin
    case(curr_state)
        IDLE:begin
            next_state = RECIEVE_DATA;
        end
        RECIEVE_DATA:begin
            if (cnt == 5) next_state = BUILD_VECTORS;
            else next_state = RECIEVE_DATA;
        end
        BUILD_VECTORS:begin
            if (cnt == 4) next_state = CROSS_POS;
            else next_state = BUILD_VECTORS;
        end
        CROSS_POS:begin
            if (cnt != vector_cnt && cnt != 5) next_state = NEG_NUM;
            else if (cnt == 5) next_state = CHANGE_VECTOR;
            else next_state = CROSS_POS;
        end
        NEG_NUM:begin
            next_state = CROSS_POS;
        end
        CHANGE_VECTOR:begin
            if (vector_cnt == 4) next_state = SWAP;
            else next_state = CROSS_POS;
        end
        SWAP:begin
            next_state = CAL_POLYGON_AREA1;
        end
        CAL_POLYGON_AREA1:begin
            if (cnt == 5) next_state = CAL_POLYGON_AREA2;
            else next_state = CAL_POLYGON_AREA1;
        end
        CAL_POLYGON_AREA2:begin
            next_state = CAL_TRI_AREA1;
        end
        CAL_TRI_AREA1:begin
            next_state = CAL_TRI_AREA2;
        end
        CAL_TRI_AREA2:begin
            next_state = CAL_TRI_AREA3;
        end
        CAL_TRI_AREA3:begin
            next_state = CAL_TRI_AREA4;
        end
        CAL_TRI_AREA4:begin
            if (cnt == 5) next_state = IS_INSIDE;
            else next_state = CAL_TRI_AREA1;
        end
        IS_INSIDE: begin
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
always @(posedge clk) begin
    case(curr_state)
        IDLE:begin
            cnt   <= 3'd1;
            vector_cnt <= 3'd0;
            valid      <= 1'd0;
            is_inside  <= 1'd0;
            negtive_num     <= 3'd0;
            polygon_area    <= 22'd0;
            tri_area        <= 20'd0;
            x_pos [0]  <=  X;
            y_pos [0]  <=  Y;
            r_dis [0]  <=  R;
        end
        RECIEVE_DATA:begin
            x_pos [cnt]  <=  X;
            y_pos [cnt]  <=  Y;
            r_dis [cnt]  <=  R;
            
            if (cnt == 5) cnt <= 3'd0;
            else cnt <= cnt + 3'd1;
        end
        BUILD_VECTORS:begin
            vectorX[cnt] <= $signed({1'b0, x_pos[cnt + 3'd1]}) - $signed ({1'b0, x_pos[0]});
            vectorY[cnt] <= $signed({1'b0, y_pos[cnt + 3'd1]}) - $signed ({1'b0, y_pos[0]});
            
            if (cnt == 4) cnt <= 3'd0;
            else cnt <= cnt + 3'd1;
        end
        CHANGE_VECTOR:begin 
            negtive_num <= 3'd0;
            arrange[vector_cnt + 3'd1] <= negtive_num + 3'd1;

            if (vector_cnt == 4) vector_cnt <= 3'd0;
            else vector_cnt <= vector_cnt + 3'd1;
        end
        CROSS_POS:begin
            cross_result <= vectorX[vector_cnt] * vectorY[cnt] - vectorY[vector_cnt] * vectorX[cnt];
            
            if (cnt == 5) cnt <= 3'd0;
            else cnt <= cnt + 3'd1;
        end
        NEG_NUM:begin
            if (cross_result < 0)  negtive_num <= negtive_num + 3'd1;
        end
        SWAP:begin
            x_pos[arrange[1]] <= x_pos [1];
            x_pos[arrange[2]] <= x_pos [2];
            x_pos[arrange[3]] <= x_pos [3];
            x_pos[arrange[4]] <= x_pos [4];
            x_pos[arrange[5]] <= x_pos [5];
            y_pos[arrange[1]] <= y_pos [1];
            y_pos[arrange[2]] <= y_pos [2];
            y_pos[arrange[3]] <= y_pos [3];
            y_pos[arrange[4]] <= y_pos [4];
            y_pos[arrange[5]] <= y_pos [5];
            r_dis[arrange[1]] <= r_dis [1];
            r_dis[arrange[2]] <= r_dis [2];
            r_dis[arrange[3]] <= r_dis [3];
            r_dis[arrange[4]] <= r_dis [4];
            r_dis[arrange[5]] <= r_dis [5];
        end
        CAL_POLYGON_AREA1:begin
            if (cnt + 3'd1 != 6) 
                polygon_area <= polygon_area + x_pos[cnt] * y_pos[cnt + 3'd1] - y_pos[cnt] * x_pos[cnt + 3'd1];
            else 
                polygon_area <= polygon_area + x_pos[cnt] * y_pos[0] - y_pos[cnt] * x_pos[0];

            if (cnt == 5) cnt <= 3'd0;
            else cnt <= cnt + 3'd1;
        end
        CAL_POLYGON_AREA2:begin
            polygon_area <= polygon_area >> 1;
        end
        CAL_TRI_AREA1:begin

        end
        CAL_TRI_AREA2:begin
            sa <= sqrt1_out;
        end
        CAL_TRI_AREA3:begin

        end
        CAL_TRI_AREA4:begin
            tri_area <= tri_area + sa * bc;

            if (cnt == 5) cnt <= 3'd0;
            else cnt <= cnt + 3'd1;
        end
        IS_INSIDE:begin
            valid <= 1'd1;
            if (tri_area[39:4] > polygon_area) is_inside <= 1'd0;
            else is_inside <= 1'd1;
        end
        OVER:begin
            valid <= 1'b0;
            is_inside <= 1'b0;
        end
    endcase
end
always @(*) begin
    case (curr_state)
        CAL_TRI_AREA1: begin
            if (cnt + 3'd1 != 6)begin
                a = r_dis[cnt];
                b = r_dis[cnt + 3'd1];
                sqrt1_in = pre_c1 << 4;
                root_test_out = sqrt1_in ** 0.5;
            end
            else begin
                a = r_dis[cnt];
                b = r_dis[0];
                sqrt1_in = pre_c2 << 4;
            end
            c = sqrt1_out >> 2;
            s = (a + b + c) >> 1;
        end
        CAL_TRI_AREA2: begin
            if ((s_a) < 0)
                sqrt1_in = 24'd0;//
            else 
                sqrt1_in = (s * (s_a)) << 4;//

        end
        CAL_TRI_AREA3: begin
            if ((s_b) < 0 || (s_c) < 0)
                sqrt1_in = 24'd0;//
            else 
                sqrt1_in = ((s_b) * (s_c)) << 4;//
            
            bc = sqrt1_out;
        end
        default:begin
        end 
    endcase
end
//RTL operation end----------------------------------


endmodule