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

reg [3:0]object_x[39:0];
reg [3:0]object_y[39:0];

reg [5:0]Point_CNT_1;
reg [5:0]Point_CNT_2;

reg INXY_fg;

reg [5:0]Fir_Circle_Max;
reg [3:0]C1X_Old;
reg [3:0]C1Y_Old;

reg [3:0]RX;
reg [3:0]RY;
reg [5:0]CI;

wire signed[3:0]a1;
wire signed[3:0]b1;
wire signed[3:0]minus_1;
//variable definition end----------------------------

//adder sharing str----------------------------------

assign a1 = (curr_state == INXY and Cmp) ? object_x[CI]: RX;

assign b1 = (curr_state == INXY and Cmp) ? RX : object_x[CI];

assign minus_1 = a1 - b1;

assign a2 = 

assign b2 =
//adder sharing end----------------------------------

//Comparators for parallel rx & rx+1 str-------------
assign Cmp = object_x[CI] >= RX ? 1'b1 : 1'b0;
//Comparators for parallel rx & rx+1 end-------------

//state control str----------------------------------
always @(posedge CLK or posedge RST) begin
    if(RST)curr_state <= IDLE;
    else curr_state <= next_state;
end

always @(*) begin
    case(curr_state)
        IDLE:begin
            next_state = INXY;
        end
        INXY:begin
            if(CI == 40)next_state = FRCI;
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
            if(RX==14)next_state = FRRY;
            else next_state = FRCI;
        end
        FRCI:begin
            if(CI==40)next_state = PCLM;
            else next_state = FRCI;
        end
        PCLM:begin
            next_state = FRRX;
        end
        C2RC:begin
            if(CI==48)next_state = C1MK;
            else next_state = C2RC;
        end
        C1MK:begin
            if(CI==48)next_state = WHLP;
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
            Point_Map_0 <= 256'd0;
            Point_Map_1 <= 256'd0;
            INXY_fg <= 1'b0;
            DONE <= 1'b1;
            CI <= 6'd0;
            RY <= 4'd0;
            RX <= 4'd0;
            Point_CNT_1 <= 6'd0;
            Point_CNT_2 <= 6'd0;
            C1X <= 4'd0;
            C1Y <= 4'd0;
            C2X <= 4'd0;
            C2Y <= 4'd0;
            Fir_Circle_Max <= 6'd0;
            C1X_Old <= 4'd0;
            C1Y_Old <= 4'd0;

        end
        INXY:begin
            DONE <= 1'b0;
            if(CI == 40)begin
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
            if(adder_2 < 16 && adder_2 >= 0 && adder_3 < 16 && adder_3 >= 0 
            && Point_Map_0[adder_1]==1 && Point_Map_1[adder_1]==1)
                Point_CNT_1 <= Point_CNT_1 + 1'b1;

            if(adder_4 < 16 && adder_4 >= 0 && adder_3 < 16 && adder_3 >= 0 
            && Point_Map_0[adder_5]==1 && Point_Map_1[adder_5]==1)
                Point_CNT_2 <= Point_CNT_2 + 1'b1;

            if(CI==40)CI <= 4'd0;
            else CI <= CI + 1'b1;
        end
        PCLM:begin
            Point_CNT_1 <= 6'd0;
            Point_CNT_2 <= 6'd0;
            if(Point_CNT_1 >= Fir_Circle_Max && ~Cmp)begin //can be good
                Fir_Circle_Max <= Point_CNT_1;
                C1X <= RX;
                C1Y <= RY;
            end       
            if(Point_CNT_2 >= Fir_Circle_Max && Cmp)begin
                Fir_Circle_Max <= Point_CNT_2;
                C1X <= {RX[3:1],1'b1};
                C1Y <= RY;
            end
        end
        C2RC:begin
            if(adder_2 < 16 && adder_2 >= 0 && adder_3 < 16 && adder_3 >= 0 
            && Point_Map_0[adder_1]==1 && Point_Map_1[adder_1]==0)begin
                Point_Map_1[adder_1] <= 1'b1;
                Point_Map_0[adder_1] <= 1'b1;
            end
            if(CI==10'd48)CI <= 4'd0;
            else CI <= CI + 1'b1;
        end
        C1MK:begin
            if(adder_2 < 16 && adder_2 >= 0 && adder_3 < 16 && adder_3 >= 0 
            && Point_Map_0[adder_1]==1 && Point_Map_1[adder_1]==1)begin
                Point_Map_1[adder_1] <= 1'b0;
                Point_Map_0[adder_1] <= 1'b1;
            end
            if(CI==48)CI <= 4'd0;
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
