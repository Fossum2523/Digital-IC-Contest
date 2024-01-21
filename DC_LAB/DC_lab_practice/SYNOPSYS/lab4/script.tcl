
read_file  -format verilog muldiv.v
current_design top
link
set_operating_conditions  -max slow   -min fast

create_clock  -name clk  -period 3.00   [get_ports clk]
set_dont_touch_network                  [get_clocks clk]
set_fix_hold                            [get_clocks clk]
set_clock_uncertainty     0.1           [get_clocks clk]
set_clock_latency         0.5           [get_clocks clk]
set_clock_transition      0.1           [get_clocks clk]
set_ideal_network                       [get_ports  clk]

set_input_delay  0.15  -clock clk [remove_from_collection [all_inputs] [get_ports clk]]
set_output_delay 0.15  -clock clk [all_outputs]

set_load   [load_of  "tpzn90gv3wc/PDT16DGZ_33/I"]    [all_outputs]
set_driving_cell -library tpzn90gv3wc -lib_cell PDIDGZ_33  -pin {C}  [all_inputs]

set_max_fanout 10   [all_inputs]

uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]
compile -boundary_optimization 

return 
report_timing
report_timing -from [all_inputs]
report_timing -to   [all_outputs]
