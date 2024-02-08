// example: instantiation of 4-input minimum/maximum component
module DW_minmax_inst (a0, a1, a2, a3, tc, max, val, idx);

  parameter wordlength = 8;

  input  [wordlength-1 : 0] a0, a1, a2, a3;
  input  tc, max;
  output [wordlength-1 : 0] val;
  output [1 : 0] idx;

  localparam item_count = 4; // the number of items (a0 through a3)

  wire [(wordlength * item_count)-1:0] item_list;

  assign item_list = {a3, a2, a1, a0}; // DW_minmax takes an input
                                       // value that's a concatenation
                                       // of the input values.  Index
                                       // 0 corresponds to the last
                                       // value in the concatenation
                                       // which is in the least signi-
                                       // ficant position of the full
                                       // input value

  // instantiation of DW_minmax
  // inputs are concatenated into the input vector
  DW_minmax #(.width(wordlength), .num_inputs(item_count)) 
    U1 (.a(item_list), .tc(tc), .min_max(max), 
        .value(val), .index(idx));

endmodule
