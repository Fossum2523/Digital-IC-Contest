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

reg [255:0]Point_Map_0; //{Point_Map_1,Point_Map_0} = "00" for no the point/
reg [255:0]Point_Map_1; //"11" for have the point/"01" for have the point but include in circle

reg [4:0]Cir_Point_X[48:0];
reg [4:0]Cir_Point_Y[48:0];

reg [9:0]counter;
reg INXY_fg;

reg [5:0]Fir_Circle_Max;
reg [5:0]Fir_Circle_Max_Old; 
reg [5:0]Sec_Circle_Max_Old;

reg [5:0]RX;
reg [5:0]RY;
reg [5:0]CI;

wire [7:0]a1;
wire [7:0]b1;
wire [7:0]adder_1;
wire [7:0]a2;
wire [7:0]b2;
wire [7:0]adder_2;
wire [7:0]a3;
wire [7:0]b3;
wire [7:0]adder_3;
wire [3:0]sf_object;
wire [7:0]shifter;
//variable definition end----------------------------

//adder sharing str----------------------------------
assign a1 = (curr_state == INXY) ? shifter : 
            (curr_state == FRCI) ? shifter :8'd0;
assign b1 = (curr_state == INXY) ? X : 
            (curr_state == FRCI) ? adder_2 :8'd0;
assign adder_1 = a1 + b1;

assign a2 = (curr_state == FRCI) ? RX: 8'd0;
assign b2 = (curr_state == FRCI) ? Cir_Point_X[CI] : 8'd0;
assign adder_2 = a2 + b2;

assign a3 = (curr_state == FRCI) ? RY: 8'd0;
assign b3 = (curr_state == FRCI) ? Cir_Point_Y[CI] : 8'd0;
assign adder_3 = a3 + b3;
//adder sharing end----------------------------------

//left shifter sharing str--------------------------
assign sf_object =  (curr_state == INXY) ? Y :
                    (curr_state == FRCI) ? adder_3 : 4'd0; 
assign shifter = sf_object <<< 4;
//left shifter sharing end--------------------------

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
            if(counter == 10'd40)next_state = FRCI;
            else next_state = INXY;
        end
        WHLP:begin
            next_state = FRCI;
        end
        FRRY:begin
            if(RY==16)next_state = C2RC;
            else next_state = FRRY;
        end
        FRRX:begin
            if(RX==16)next_state = FRRY;
            else next_state = WHLP;
        end
        FRCI:begin
            if(CI==10'd49)next_state = OVER;
            else next_state = FRCI;
        end
        PCLM:begin
            next_state = FRRX;
        end
        C2RC:begin
            if(CI==10'd49)next_state = C1MK;
            else next_state = C2RC;
        end
        C1MK:begin
            if(CI==10'd49)next_state = OVER;
            else next_state = C1MK;
        end
        OVER:begin

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
            counter <= 10'd0;
            Point_Map_0 <= 256'd0;
            Point_Map_1 <= 256'd0;
            INXY_fg <= 1'b0;
            DONE <= 1'b1;
            CI <= 6'd0;
            RY <= 6'd0;
            RX <= 6'd0;
        end
        INXY:begin
            DONE <= 1'b0;
            if(counter == 10'd40)begin
                Point_Map_1[adder_1] <= 1'b1;
                Point_Map_0[adder_1] <= 1'b1;    
                counter <= 10'd0;
            end
            else begin
                Point_Map_1[adder_1] <= 1'b1;
                Point_Map_0[adder_1] <= 1'b1;
                counter <= counter + 1;
            end
        end
        WHLP:begin
            C1X <= C2X;
            C1Y <= C2Y;
            C2X <= C1X;
            C2Y <= C1Y;
            Fir_Circle_Max <= 6'd0;
            Fir_Circle_Max_Old <= Sec_Circle_Max_Old; 
            Sec_Circle_Max_Old <= Fir_Circle_Max;
        end
        FRRY:begin

        end
        FRRX:begin

        end
        FRCI:begin
            if(adder_2 < 6'd16 && adder_2 >= 6'd0 && adder_3 < 6'd16 && adder_3 >= 6'd0 
            && Point_Map_0[adder_1]==1'b1 && Point_Map_1[adder_1]==1'b1)
                CI <= CI + 1'b1;
        end
        PCLM:begin

        end
        C2RC:begin

        end
        C1MK:begin

        end
        OVER:begin

        end
        default:begin
            
        end
    endcase
end
//RTL operation end----------------------------------

always @(posedge CLK) begin
    if(curr_state == IDLE)begin
        Cir_Point_X[ 0 ] <= 5'd 0 ;
        Cir_Point_X[ 1 ] <= -5'd 2 ;
        Cir_Point_X[ 2 ] <= -5'd 1 ;
        Cir_Point_X[ 3 ] <= 5'd 0 ;
        Cir_Point_X[ 4 ] <= 5'd 1 ;
        Cir_Point_X[ 5 ] <= 5'd 2 ;
        Cir_Point_X[ 6 ] <= -5'd 3 ;
        Cir_Point_X[ 7 ] <= -5'd 2 ;
        Cir_Point_X[ 8 ] <= -5'd 1 ;
        Cir_Point_X[ 9 ] <= 5'd 0 ;
        Cir_Point_X[ 10 ] <= 5'd 1 ;
        Cir_Point_X[ 11 ] <= 5'd 2 ;
        Cir_Point_X[ 12 ] <= 5'd 3 ;
        Cir_Point_X[ 13 ] <= -5'd 3 ;
        Cir_Point_X[ 14 ] <= -5'd 2 ;
        Cir_Point_X[ 15 ] <= -5'd 1 ;
        Cir_Point_X[ 16 ] <= 5'd 0 ;
        Cir_Point_X[ 17 ] <= 5'd 1 ;
        Cir_Point_X[ 18 ] <= 5'd 2 ;
        Cir_Point_X[ 19 ] <= 5'd 3 ;
        Cir_Point_X[ 20 ] <= -5'd 4 ;
        Cir_Point_X[ 21 ] <= -5'd 3 ;
        Cir_Point_X[ 22 ] <= -5'd 2 ;
        Cir_Point_X[ 23 ] <= -5'd 1 ;
        Cir_Point_X[ 24 ] <= 5'd 0 ;
        Cir_Point_X[ 25 ] <= 5'd 1 ;
        Cir_Point_X[ 26 ] <= 5'd 2 ;
        Cir_Point_X[ 27 ] <= 5'd 3 ;
        Cir_Point_X[ 28 ] <= 5'd 4 ;
        Cir_Point_X[ 29 ] <= -5'd 3 ;
        Cir_Point_X[ 30 ] <= -5'd 2 ;
        Cir_Point_X[ 31 ] <= -5'd 1 ;
        Cir_Point_X[ 32 ] <= 5'd 0 ;
        Cir_Point_X[ 33 ] <= 5'd 1 ;
        Cir_Point_X[ 34 ] <= 5'd 2 ;
        Cir_Point_X[ 35 ] <= 5'd 3 ;
        Cir_Point_X[ 36 ] <= -5'd 3 ;
        Cir_Point_X[ 37 ] <= -5'd 2 ;
        Cir_Point_X[ 38 ] <= -5'd 1 ;
        Cir_Point_X[ 39 ] <= 5'd 0 ;
        Cir_Point_X[ 40 ] <= 5'd 1 ;
        Cir_Point_X[ 41 ] <= 5'd 2 ;
        Cir_Point_X[ 42 ] <= 5'd 3 ;
        Cir_Point_X[ 43 ] <= -5'd 2 ;
        Cir_Point_X[ 44 ] <= -5'd 1 ;
        Cir_Point_X[ 45 ] <= 5'd 0 ;
        Cir_Point_X[ 46 ] <= 5'd 1 ;
        Cir_Point_X[ 47 ] <= 5'd 2 ;
        Cir_Point_X[ 48 ] <= 5'd 0 ;
        Cir_Point_Y[ 0 ] <= -5'd 4 ;
        Cir_Point_Y[ 1 ] <= -5'd 3 ;
        Cir_Point_Y[ 2 ] <= -5'd 3 ;
        Cir_Point_Y[ 3 ] <= -5'd 3 ;
        Cir_Point_Y[ 4 ] <= -5'd 3 ;
        Cir_Point_Y[ 5 ] <= -5'd 3 ;
        Cir_Point_Y[ 6 ] <= -5'd 2 ;
        Cir_Point_Y[ 7 ] <= -5'd 2 ;
        Cir_Point_Y[ 8 ] <= -5'd 2 ;
        Cir_Point_Y[ 9 ] <= -5'd 2 ;
        Cir_Point_Y[ 10 ] <= -5'd 2 ;
        Cir_Point_Y[ 11 ] <= -5'd 2 ;
        Cir_Point_Y[ 12 ] <= -5'd 2 ;
        Cir_Point_Y[ 13 ] <= -5'd 1 ;
        Cir_Point_Y[ 14 ] <= -5'd 1 ;
        Cir_Point_Y[ 15 ] <= -5'd 1 ;
        Cir_Point_Y[ 16 ] <= -5'd 1 ;
        Cir_Point_Y[ 17 ] <= -5'd 1 ;
        Cir_Point_Y[ 18 ] <= -5'd 1 ;
        Cir_Point_Y[ 19 ] <= -5'd 1 ;
        Cir_Point_Y[ 20 ] <= 5'd 0 ;
        Cir_Point_Y[ 21 ] <= 5'd 0 ;
        Cir_Point_Y[ 22 ] <= 5'd 0 ;
        Cir_Point_Y[ 23 ] <= 5'd 0 ;
        Cir_Point_Y[ 24 ] <= 5'd 0 ;
        Cir_Point_Y[ 25 ] <= 5'd 0 ;
        Cir_Point_Y[ 26 ] <= 5'd 0 ;
        Cir_Point_Y[ 27 ] <= 5'd 0 ;
        Cir_Point_Y[ 28 ] <= 5'd 0 ;
        Cir_Point_Y[ 29 ] <= 5'd 1 ;
        Cir_Point_Y[ 30 ] <= 5'd 1 ;
        Cir_Point_Y[ 31 ] <= 5'd 1 ;
        Cir_Point_Y[ 32 ] <= 5'd 1 ;
        Cir_Point_Y[ 33 ] <= 5'd 1 ;
        Cir_Point_Y[ 34 ] <= 5'd 1 ;
        Cir_Point_Y[ 35 ] <= 5'd 1 ;
        Cir_Point_Y[ 36 ] <= 5'd 2 ;
        Cir_Point_Y[ 37 ] <= 5'd 2 ;
        Cir_Point_Y[ 38 ] <= 5'd 2 ;
        Cir_Point_Y[ 39 ] <= 5'd 2 ;
        Cir_Point_Y[ 40 ] <= 5'd 2 ;
        Cir_Point_Y[ 41 ] <= 5'd 2 ;
        Cir_Point_Y[ 42 ] <= 5'd 2 ;
        Cir_Point_Y[ 43 ] <= 5'd 3 ;
        Cir_Point_Y[ 44 ] <= 5'd 3 ;
        Cir_Point_Y[ 45 ] <= 5'd 3 ;
        Cir_Point_Y[ 46 ] <= 5'd 3 ;
        Cir_Point_Y[ 47 ] <= 5'd 3 ;
        Cir_Point_Y[ 48 ] <= 5'd 4 ;      
    end
end
endmodule

// [0, -2, -1, 0, 1, 2, -3, -2, -1, 0, 1, 2, 3, -3, -2, -1, 0, 1, 2, 3, -4, -3, -2, -1, 0, 1, 2, 3, 4, -3, -2, -1, 0, 1, 2, 3, -3, -2, -1, 0, 1, 2, 3, -2, -1, 0, 1, 2, 0]
// [-4, -3, -3, -3, -3, -3, -2, -2, -2, -2, -2, -2, -2, -1, -1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4]