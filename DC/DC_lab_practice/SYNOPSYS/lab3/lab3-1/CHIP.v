module  CHIP (Y, X, reset, clk);
input         clk, reset;
input  [7:0]  X;
output [9:0]  Y;
wire   i_clk, i_reset;
wire   [7:0]  i_X;
wire   [9:0]  i_Y;

 CS top(.Y(i_Y), .X(i_X), .reset(i_reset), .clk(i_clk));

PDIDGZ_33  ipad_clk  ( .PAD(clk)  , .C(i_clk));
PDIDGZ_33  ipad_reset( .PAD(reset), .C(i_reset));
PDIDGZ_33  ipad_X7( .PAD(X[7]), .C(i_X[7]) );
PDIDGZ_33  ipad_X6( .PAD(X[6]), .C(i_X[6]) );
PDIDGZ_33  ipad_X5( .PAD(X[5]), .C(i_X[5]) );
PDIDGZ_33  ipad_X4( .PAD(X[4]), .C(i_X[4]) );
PDIDGZ_33  ipad_X3( .PAD(X[3]), .C(i_X[3]) );
PDIDGZ_33  ipad_X2( .PAD(X[2]), .C(i_X[2]) );
PDIDGZ_33  ipad_X1( .PAD(X[1]), .C(i_X[1]) );
PDIDGZ_33  ipad_X0( .PAD(X[0]), .C(i_X[0]) );        

PDO16CDG_33 opad_Y9( .I(i_Y[9]), .PAD(Y[9]) );
PDO16CDG_33 opad_Y8( .I(i_Y[8]), .PAD(Y[8]) );
PDO16CDG_33 opad_Y7( .I(i_Y[7]), .PAD(Y[7]) );
PDO16CDG_33 opad_Y6( .I(i_Y[6]), .PAD(Y[6]) );
PDO16CDG_33 opad_Y5( .I(i_Y[5]), .PAD(Y[5]) );
PDO16CDG_33 opad_Y4( .I(i_Y[4]), .PAD(Y[4]) );
PDO16CDG_33 opad_Y3( .I(i_Y[3]), .PAD(Y[3]) );
PDO16CDG_33 opad_Y2( .I(i_Y[2]), .PAD(Y[2]) );
PDO16CDG_33 opad_Y1( .I(i_Y[1]), .PAD(Y[1]) );
PDO16CDG_33 opad_Y0( .I(i_Y[0]), .PAD(Y[0]) );


endmodule

