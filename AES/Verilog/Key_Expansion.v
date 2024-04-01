module Key_Expansion(
	input [127:0] key_in,
    input [3:0] key_round,
	output [127:0] key_out
);

    wire [31:0]RW_out;
    wire [31:0]SW_out;
    wire [31:0]RC_out;

    Rot_Word RW1(.in(key_in[31-:32]), .out(RW_out));
    Sub_Word SW1(.in(RW_out), .out(SW_out));
    Rcon RC1(.in(SW_out), .round(key_round), .out(RC_out));

    assign key_out[127-:32] = key_in[127-:32] ^ RC_out;
    assign key_out[95-:32]  = key_in[95-:32] ^ key_out[127-:32];
    assign key_out[63-:32]  = key_in[63-:32] ^ key_out[95-:32];
    assign key_out[31-:32]  = key_in[31-:32] ^ key_out[63-:32];

endmodule



module Rot_Word(
	input [31:0] in,
	output [31:0] out
);
    assign out = {in[23:0],in[31:24]};
endmodule



module Sub_Word(
	input [31:0] in,
	output [31:0] out
);

    genvar i;
    generate
        for (i = 0 ; i<4 ; i = i+1) begin:SubWord
            S_Box SB(.in(in[i*8 +: 8]), .out(out[i*8 +: 8]));
        end
    endgenerate
endmodule



module Rcon(
	input [31:0] in,
    input [3:0] round,
	output [31:0] out
);

    wire [7:0]rc;

    assign rc = (round == 1) ? 8'h01 :
                (round == 2) ? 8'h02 :
                (round == 3) ? 8'h04 :
                (round == 4) ? 8'h08 :
                (round == 5) ? 8'h10 :
                (round == 6) ? 8'h20 :
                (round == 7) ? 8'h40 :
                (round == 8) ? 8'h80 :
                (round == 9) ? 8'h1b :
                (round == 10)? 8'h36 : 8'd0;

    assign out[31:24] = in[31:24] ^ rc;
    assign out[23:0] = in[23:0];

endmodule