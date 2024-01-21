#Read All Files
read_file -format verilog  LASER.v
#read_file -format sverilog  LASER.v
current_design LASER
link

#Setting Clock Constraints
source -echo -verbose LASER.sdc
check_design
set high_fanout_net_threshold 0
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

set_max_area 0
set compile_top_all_paths true   

set_host_options -max_cores 16

#Synthesis all design
compile -map_effort high -area_effort high

#compile  #過  38383
#compile -map_effort high -area_effort high  #過  36312.478516
#compile -map_effort high -area_effort high -inc  #沒過
#compile_ultra 
#compile_ultra -area -timing

write -format ddc     -hierarchy -output "LASER_syn.ddc"
write_sdf -version 1.0  LASER_syn.sdf
write -format verilog -hierarchy -output LASER_syn.v
report_area > reports/area.log
report_timing > reports/timing.log
report_qor   >  reports/LASER_syn.qor
