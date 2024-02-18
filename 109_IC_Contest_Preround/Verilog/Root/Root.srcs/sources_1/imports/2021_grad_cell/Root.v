module Root (in,out);

parameter in_width = 16;
parameter bias = 16;

input in;
output out;

wire [in_width - 1:0] in;
wire [((in_width + bias) >> 1) - 1:0]out;

wire [in_width + bias -1:0]root_in;

assign root_in = {in,{bias{1'd0}}};

DW_sqrt_inst sqrt1 (.radicand(root_in), .square_root(out));

defparam sqrt1.radicand_width = in_width + bias;

endmodule