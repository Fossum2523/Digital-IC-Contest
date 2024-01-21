#=====================================================================
#if after compile there's timing violation :
#=====================================================================
#compile -exact_map -map_effort high -area effort low
#if it still slack<0 ,then do:
#optimize_registers
#compile -inc -only_hold_time

set bus_inference_style {%s[%d]}
set bus_naming_style    {%s[%d]}
set hdlout_internal_busses true
define_name_rules name_rule -allowed {a-z A-Z 0-9 _} -max_length 255 -type cell
define_name_rules name_rule -allowed {a-z A-Z 0-9 _[]} -max_length 255 -type net
define_name_rules name_rule -map {{"\\*cell\\*" "cell"}}
set_app_var verilogout_no_tri true
change_names -rules verilog -hierarchy -verbose

#============================
# Output Reports
#============================
report_design              > reports/$DESIGN\.design
report_port                > reports/$DESIGN\.port
report_net                 > reports/$DESIGN\.net
report_timing_requirements > reports/$DESIGN\.timing_requirements
report_constraint          > reports/$DESIGN\.constraint
report_timing              > reports/$DESIGN\.timing
report_area                > reports/$DESIGN\.area
report_area -hier          > reports/$DESIGN\.area.hier
report_resource            > reports/$DESIGN\.resource
report_resource -hier      > reports/$DESIGN\.resource.hier
report_power               > reports/$DESIGN\.power
report_hierarchy -noleaf   > reports/$DESIGN\.hierarchy

report_cell [get_cells -hier -filter "ref_name=~*LAT*"]  > reports/$DESIGN\.cell_lat
report_net_fanout -high_fanout  > reports/$DESIGN\.fanout
#============================
# Output Netlists
#============================
set verilogout_higher_design_first true
write -format verilog -output netlist/$DESIGN\_syn.v -hierarchy
write_sdf -version 1.0 -context verilog -load_delay cell netlist/$DESIGN\_syn.sdf
write_sdc -version 2.0 netlist/$DESIGN\_syn.sdc
write_file -format ddc -hierarchy -output netlist/$DESIGN\_syn.ddc

report_timing


