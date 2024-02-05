# 有檔案連接不到lib時
#1. printvar search_path                # 可以看 search_path都連結到那些路徑
#2. print_variable_group system         # 可以看到整個系統目前所有的連結資訊

#$DESIGN changes to your design name (use ctl+f)
sh mkdir reports
sh mkdir model
define_design_lib model -path ./model

##Read All Files
#read_file -format verilog  $DESIGN.v
#read_file -format verilog -autoread -top $DESIGN -recursive {./} 

#analyze -library model -format verilog "$DESIGN.v LX_Sort.v JAM.v" 
analyze -library model -format verilog -autoread -recursive {./} -top $DESIGN
#\ -exclude {$DESIGN_syn.v}
elaborate $DESIGN -architecture verilog -library model

current_design $DESIGN
link

#Setting Clock Constraints
source -echo -verbose $DESIGN.sdc
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

write -format ddc       -hierarchy       -output "$DESIGN_syn.ddc"
write_sdf -version 1.0                           $DESIGN_syn.sdf
write -format verilog   -hierarchy       -output $DESIGN_syn.v
report_area     > reports/area.log
report_timing   > reports/timing.log
report_qor      > reports/$DESIGN_syn.qor
