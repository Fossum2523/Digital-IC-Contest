`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/14 21:20:41
// Design Name: 
// Module Name: Laser
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LASER (
input CLK,
input RST,
input [3:0] X,
input [3:0] Y,
output reg [3:0] C1X,
output reg [3:0] C1Y,
output reg [3:0] C2X,
output reg [3:0] C2Y,
output reg DONE);

localparam [3:0]IDLE = 4'd0,
                STAR = 4'd11,
                INXY = 4'd1,
                WHLP = 4'd2,
                FRRX = 4'd3,
                FRRY = 4'd4,
                FRCI = 4'd5,
                PCLM = 4'd6,
                C2RC = 4'd7,
                C1MK = 4'd8,
                WHED = 4'd9,
                OVER = 4'd10;

//variable definition str----------------------------
reg [3:0]curr_state;
reg [3:0]next_state;

reg signed[3:0]object_x[39:0];
reg signed[3:0]object_y[39:0];
reg [39:0]ol_object;

reg [5:0]Point_CNT_1;

reg INXY_fg;

reg [5:0]Fir_Circle_Max;
reg [3:0]C1X_Old;
reg [3:0]C1Y_Old;

reg [3:0]RX;
reg [3:0]RY;
reg [5:0]CI;

wire Cmp_x_1;
wire Cmp_2;

wire [3:0]a1;
wire [3:0]b1;
wire [3:0]x_dist;
wire [3:0]a2;
wire [3:0]b2;
wire [3:0]y_dist;
wire [4:0]t_dist;
wire [3:0]cmp_x;
wire [3:0]cmp_y;
//variable definition end----------------------------

//adder sharing str----------------------------------
assign cmp_x =  (curr_state == FRCI) ? RX :
                (curr_state == C2RC) ? C2X :
                (curr_state == C1MK) ? C1X : 4'd0;

assign cmp_y =  (curr_state == FRCI) ? RY :
                (curr_state == C2RC) ? C2Y :
                (curr_state == C1MK) ? C1Y : 4'd0;


assign a1 = Cmp_x_1 ? object_x[CI]: cmp_x;

assign b1 = Cmp_x_1 ? cmp_x : object_x[CI];

assign x_dist = a1 - b1;

assign a2 = Cmp_2 ? object_y[CI]: cmp_y;

assign b2 = Cmp_2 ? cmp_y : object_y[CI];

assign y_dist = a2 - b2;

assign t_dist = x_dist + y_dist;
//adder sharing end----------------------------------

//Comparators for parallel rx & rx+1 str-------------
assign Cmp_x_1 = object_x[CI] >= cmp_x ? 1'b1 : 1'b0;
assign Cmp_x_2 = object_x[CI] >= (cmp_x + 4'd1) ? 1'b1 : 1'b0;
assign Cmp_x_3 = object_x[CI] >= (cmp_x + 4'd2) ? 1'b1 : 1'b0;
assign Cmp_x_4 = object_x[CI] >= (cmp_x + 4'd3) ? 1'b1 : 1'b0;

assign Cmp_2 = object_y[CI] >= cmp_y ? 1'b1 : 1'b0;
//Comparators for parallel rx & rx+1 end-------------

//state control str----------------------------------
always @(posedge CLK or posedge RST) begin
    if(RST)curr_state <= IDLE;
    else curr_state <= next_state;
end

always @(*) begin
    case(curr_state)
        IDLE:begin
            next_state = STAR;
        end
        STAR:next_state = INXY;
        INXY:begin
            if(CI == 39)next_state = FRCI;
            else next_state = INXY;
        end
        WHLP:begin
            if(C1X == C1X_Old && C1Y == C1Y_Old)next_state = OVER;
            else next_state = FRCI;

        end
        FRRY:begin
            if(RY==15)next_state = C2RC;
            else next_state = FRCI;
        end
        FRRX:begin
            if(RX==15)next_state = FRRY;
            else next_state = FRCI;
        end
        FRCI:begin
            if(CI==39)next_state = PCLM;
            else next_state = FRCI;
        end
        PCLM:begin
            next_state = FRRX;
        end
        C2RC:begin
            if(CI==39)next_state = C1MK;
            else next_state = C2RC;
        end
        C1MK:begin
            if(CI==39)next_state = WHLP;
            else next_state = C1MK;
        end
        OVER:begin
            next_state = IDLE;
        end
        default:begin
            next_state = IDLE;
        end
    endcase
end
//state control end----------------------------------

//RTL operation str----------------------------------
always @(posedge CLK) begin
    case(curr_state)
        IDLE:begin
            INXY_fg <= 1'b0;
            DONE <= 1'b1;
            CI <= 6'd0;
            RY <= 4'd0;
            RX <= 4'd0;
            C1X <= 4'd0;
            C1Y <= 4'd0;
            C2X <= 4'd0;
            C2Y <= 4'd0;
            Point_CNT_1 <= 6'd0;
            Fir_Circle_Max <= 6'd0;
            C1X_Old <= 4'd0;
            C1Y_Old <= 4'd0;
            ol_object <= 40'd0;

        end
        STAR:DONE <= 1'b0;
        INXY:begin
            if(CI == 39)begin
                object_x[CI] <= X;
                object_y[CI] <= Y;    
                CI <= 6'b000_000;
            end
            else begin
                object_x[CI] <= X;
                object_y[CI] <= Y;
                CI <= CI + 1;
            end
        end
        WHLP:begin
            if(C1X == C1X_Old && C1Y == C1Y_Old)begin
            end
            else begin
                C1X <= C2X;
                C1Y <= C2Y;
                C2X <= C1X;
                C2Y <= C1Y;
                Fir_Circle_Max <= 6'd0;
                C1X_Old <= C2X;
                C1Y_Old <= C2Y;
            end
        end
        FRRY:begin
            if(RY == 15)RY <= 4'd0;
            else RY <= RY + 1'b1;
        end
        FRRX:begin
            if(RX == 15)RX <= 4'd0;
            else RX <= RX + 1'b1;
        end
        FRCI:begin
            if((t_dist < 3'd5 || (t_dist == 3'd5 && x_dist < 3'd4 && y_dist < 3'd4)) 
            && ol_object[CI] == 0)
                Point_CNT_1 <= Point_CNT_1 + 1'b1;

            if(CI==39)CI <= 4'd0;
            else CI <= CI + 1'b1;
        end
        PCLM:begin
            Point_CNT_1 <= 6'd0;
            if(Point_CNT_1 >= Fir_Circle_Max)begin //can be good
                Fir_Circle_Max <= Point_CNT_1;
                C1X <= RX;
                C1Y <= RY;
            end       
        end
        C2RC:begin
            if((t_dist < 3'd5 || (t_dist == 3'd5 && x_dist < 3'd4 && y_dist < 3'd4)) 
            && ol_object[CI] == 1)
                ol_object[CI] <= 0;

            if(CI==39)CI <= 4'd0;
            else CI <= CI + 1'b1;
        end
        C1MK:begin
            if((t_dist < 3'd5 || (t_dist == 3'd5 && x_dist < 3'd4 && y_dist < 3'd4)) 
            && ol_object[CI] == 0)
                ol_object[CI] <= 1;

            if(CI==39)CI <= 4'd0;
            else CI <= CI + 1'b1;
        end
        OVER:begin
            DONE <= 1'b1;
        end
        default:begin
            
        end
    endcase
end
//RTL operation end----------------------------------
endmodule
