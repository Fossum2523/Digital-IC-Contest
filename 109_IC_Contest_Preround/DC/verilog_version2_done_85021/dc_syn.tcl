# 有檔案連接不到lib時
#1. printvar search_path                # 可以看 search_path都連結到那些路徑
#2. print_variable_group system         # 可以看到整個系統目前所有的連結資訊

#geofence changes to your design name (use ctl+f)
sh mkdir reports
sh mkdir model
define_design_lib model -path ./model

##Read All Files
#read_file -format verilog  geofence.v
#read_file -format verilog -autoread -top geofence -recursive {./} 

#analyze -library model -format verilog "geofence.v LX_Sort.v JAM.v" 
analyze -library model -format verilog -autoread -recursive {./} -top geofence -exclude {geofence_syn.v}
elaborate geofence -architecture verilog -library model

current_design geofence
link

#Setting Clock Constraints
source -echo -verbose geofence.sdc
check_design
#set high_fanout_net_threshold 0
uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

set_max_area 0
set compile_top_all_paths true   

set_host_options -max_cores 16

#Synthesis all design
compile
#compile -map_effort high -area_effort high
#compile -map_effort high -area_effort high -inc 
#compile_ultra 
#compile_ultra -area -timing

write -format ddc       -hierarchy       -output "geofence_syn.ddc"
write_sdf -version 1.0                           geofence_syn.sdf
write -format verilog   -hierarchy       -output geofence_syn.v
report_area     > reports/area.log
report_timing   > reports/timing.log
report_qor      > reports/geofence_syn.qor
report_constraint -all_viol -max_delay > reports/violation.log
