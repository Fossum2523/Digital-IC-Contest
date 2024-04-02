module AES(
    input clk,
    input reset,
    input start,
    input [127:0] plaintext,
    input [127:0] key,
    output reg [127:0] ciphertext,
    output reg done
);

// define reg & wire str-------------------------------------
reg [3:0] round;

wire [127:0]KE_in;
wire [127:0]KE_out;

wire [127:0]SB_out;
wire [127:0]SR_out;
wire [127:0]MC_out;
wire [127:0]ARK_in;
wire [127:0]ARK_out;
wire [127:0]ARK_key_in;

reg [127:0]sub_key;
reg [127:0]cipher_data;
// define reg & wire -------------------------------------

// assignment str--------------------------------------
assign ARK_in = (round == 0) ? plaintext :
                (round == 10) ? SR_out : MC_out;

assign KE_in = (round == 0) ? key : sub_key;

assign ARK_key_in = (round == 0) ? key : sub_key;
// assignment end--------------------------------------

// module use str--------------------------------------
Key_Expansion KE1(.key_in(KE_in), .key_round(round + 1), .key_out(KE_out));

Sub_Bytes SB1(.in(ciphertext), .out(SB_out));
Shift_Row SR1(.in(SB_out), .out(SR_out));
Mix_Column MC1(.in(SR_out), .out(MC_out));
Add_Round_Key ARK1(.in(ARK_in), .key(ARK_key_in), .out(ARK_out));
// module use end--------------------------------------

//define localparam str------------------------------
localparam [3:0]IDLE    = 4'd0,
                ENCRY   = 4'd1,
                OVER    = 4'd2;
//define localparam end------------------------------

//variable definition str----------------------------
reg [3:0]curr_state;
reg [3:0]next_state;
//variable definition end----------------------------

//state control str----------------------------------
always @(posedge clk or posedge reset) begin
    if(reset)curr_state <= IDLE;
    else curr_state <= next_state;
end

always @(*) begin
    case(curr_state)
        IDLE:begin
            if(start)
                next_state = ENCRY;
            else
                next_state = IDLE;
        end
        ENCRY:begin
            if(round==10)
                next_state = OVER;
            else
                next_state = ENCRY;
        end
        OVER:begin
            next_state = OVER;
        end
        default: next_state = IDLE;
    endcase
end
//state control end----------------------------------


//RTL operation str----------------------------------
always @(posedge clk or posedge reset) begin
    if(reset)begin
            sub_key <= 128'd0;
            ciphertext <= 128'd0;
            round <= 4'd0;
            done <= 1'b0;
    end
    else begin
        case(curr_state)
            IDLE:begin
                sub_key <= 128'd0;
                ciphertext <= 128'd0;
                round <= 4'd0;
                done <= 1'b0;
            end
            ENCRY:begin
                ciphertext <= ARK_out;
                sub_key <= KE_out;
                round <= round + 1'b1; 
            end
            OVER:begin
                // ciphertext <= ARK_out;
                round <= 4'd0;
                done <= 1'b1;
            end
        endcase
    end
end
//RTL operation end----------------------------------
endmodule