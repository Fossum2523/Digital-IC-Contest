#Read Design File
read_file -format pla  converter.pla
read_file -autoread -top top -recursive .
current_design top
link

#Setting Clock Constraints
create_clock -name clk -period 2.85 [get_ports clk]  
set_dont_touch_network              [get_clocks clk]
set_fix_hold                        [get_clocks clk]
set_clock_uncertainty       0.1     [get_clocks clk]
set_clock_latency   -source 0       [get_clocks clk]
set_clock_latency           1       [get_clocks clk]  
set_input_transition        0.5     [all_inputs]
set_clock_transition        0.1     [all_clocks]


#Setting Design Environment
set_operating_conditions -min fast  -max slow
#set_wire_load_model -name tsmc090_wl10 -library slow

set_driving_cell -library slow -lib_cell BUFX4   -pin {Y}  [get_ports clk]
set_driving_cell -library slow -lib_cell DFFX1   -pin {Q}  [remove_from_collection [all_inputs] [get_ports clk]]
set_load  [load_of "slow/DFFX1/D"]       [all_outputs]
set_input_delay   -max 1    -clock clk   [all_inputs]
set_input_delay   -min 0.2  -clock clk   [all_inputs]
set_output_delay  -max 1    -clock clk   [all_outputs]
set_output_delay  -min 0.1  -clock clk   [all_outputs]


#Setting DRC Constraint
set_max_area        0
set_max_fanout      10   [all_inputs]
set_max_transition  0.3  [all_inputs]


#Solve Multiple Instance
uniquify


#Synthesis all design
compile -boundary_optimization -map_effort high -area_effort high

return

report_timing -significant_digits 4
report_area
report_power

#Second Run
set target_library   "slow.db slow_hvt.db fast.db fast_hvt.db tpzn90gv3wc.db tpzn90gv3lt.db"
set link_library     "* $target_library dw_foundation.sldb"

set_leakage_optimization true

compile -inc 
report_timing -significant_digits 4
report_area
report_power

set HVt_lib  "slow_hvt.db:slow"
set RVt_lib  "slow.db:slow"

set_attribute [get_libs $HVt_lib] default_threshold_voltage_group  HVt  -type string
set_attribute [get_libs $RVt_lib] default_threshold_voltage_group  RVt  -type string
report_threshold_voltage_group

