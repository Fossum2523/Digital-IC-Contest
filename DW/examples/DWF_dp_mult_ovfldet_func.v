module DWF_dp_mult_ovfldet_test (a, b, c, z);

  input  [7:0] a, b, c;
  output [7:0] z;

  reg    [7:0] p;
  reg          overflow;

  // Passes the parameters to the function
  parameter a_width = 8;
  parameter b_width = 8;
  parameter p_width = 8;

  // add "$SYNOPSYS/dw/sim_ver" to the search path for simulation
  `include "DW_dp_mult_ovfldet_function.inc"

  always @* begin
    DWF_dp_mult_ovfldet_uns (a, b, p, overflow);
  end
  assign z = (overflow == 1'b0) ? p + c : 8'b11111111;

endmodule
