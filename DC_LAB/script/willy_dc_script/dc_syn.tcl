#$DESIGN changes to your design name (use ctl+f)
sh mkdir reports

#Read All Files
read_file -format verilog  $DESIGN.v
#read_file -format sverilog  $DESIGN.sv
current_design $DESIGN
link

#Setting Clock Constraints
source -echo -verbose $DESIGN.sdc
check_design
set high_fanout_net_threshold 0
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

set_max_area 0
set compile_top_all_paths true   

set_host_options -max_cores 8

#Synthesis all design
compile -map_effort high -area_effort high

#compile
#compile -map_effort high -area_effort high
#compile -map_effort high -area_effort high -inc 
#compile_ultra 
#compile_ultra -area -timing

write -format ddc       -hierarchy       -output "$DESIGN_syn.ddc"
write_sdf -version 1.0                           $DESIGN_syn.sdf
write -format verilog   -hierarchy       -output $DESIGN_syn.v
report_area     > reports/area.log
report_timing   > reports/timing.log
report_qor      > reports/$DESIGN_syn.qor