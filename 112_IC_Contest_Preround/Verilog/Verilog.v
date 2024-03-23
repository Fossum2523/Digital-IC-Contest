//define localparam str------------------------------
localparam [3:0]IDLE = 4'd0,
                OVER = 4'd1,
                S0 = 4'd2,
                S1 = 4'd3,
                S2 = 4'd4,
                S3 = 4'd5,
                S4 = 4'd6,
                S5 = 4'd7,
                S6 = 4'd8,
                S7 = 4'd9,
                S8 = 4'd10,
                S9 = 4'd11,
                S10 = 4'd12,
                S11 = 4'd13,
                S12 = 4'd14,
                S13 = 4'd15;
//define localparam end------------------------------


//variable definition str----------------------------
reg [3:0]curr_state;
reg [3:0]next_state;
//variable definition end----------------------------


//assignment str--------------------------------------

//assignment end--------------------------------------


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

        end
        OVER:begin

        end
        S0:begin

        end
        S1:begin

        end
        S2:begin

        end
        S3:begin

        end
        S4:begin

        end
        S5:begin

        end
        S6:begin

        end
        S7:begin

        end
        S8:begin

        end
        S9:begin

        end
        S10:begin

        end
        S11:begin

        end
        S12:begin

        end
        S13:begin

        end

        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------


//RTL operation str----------------------------------
always @(posedge CLK) begin
    case(curr_state)
        IDLE:begin

        end
        OVER:begin

        end
        S0:begin

        end
        S1:begin

        end
        S2:begin

        end
        S3:begin

        end
        S4:begin

        end
        S5:begin

        end
        S6:begin

        end
        S7:begin

        end
        S8:begin

        end
        S9:begin

        end
        S10:begin

        end
        S11:begin

        end
        S12:begin

        end
        S13:begin

        end
    endcase
end
//RTL operation end----------------------------------
