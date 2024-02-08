module DW_div_inst (a, b, quotient, remainder, divide_by_0);

  parameter width    = 8;
  parameter tc_mode  = 0;
  parameter rem_mode = 1; // corresponds to "%" in Verilog

  localparam a_width = width;  // With numerator (a) the same
  localparam b_width = width;  // size as the divisor (b) both
                               // a_width and b_width parameters
                               // for DW_div are the same

  input  [a_width-1 : 0] a;
  input  [b_width-1 : 0] b;
  output [a_width-1 : 0] quotient;
  output [b_width-1 : 0] remainder;
  output                 divide_by_0;

  // Please add +incdir+$SYNOPSYS/dw/sim_ver+ to your verilog simulator
  // command line (for simulation).

  // instance of DW_div
  DW_div #(.a_width(a_width), .b_width(b_width),
           .tc_mode(tc_mode), .rem_mode(rem_mode))
    U1 (.a(a), .b(b),
        .quotient(quotient), .remainder(remainder),
        .divide_by_0(divide_by_0));
endmodule
