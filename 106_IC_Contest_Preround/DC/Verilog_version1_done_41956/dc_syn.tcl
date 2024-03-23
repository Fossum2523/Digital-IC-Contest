# 有檔案連接不到lib時
#1. printvar search_path                # 可以看 search_path都連結到那些路徑
#2. print_variable_group system         # 可以看到整個系統目前所有的連結資訊

#huffman changes to your design name (use ctl+f)
sh mkdir reports
sh mkdir model
define_design_lib model -path ./model

##Read All Files
#read_file -format verilog  huffman.v
#read_file -format verilog -autoread -top huffman -recursive {./} 

#analyze -library model -format verilog "huffman.v LX_Sort.v JAM.v" 
analyze -library model -format verilog -autoread -recursive {./} -top huffman
#\ -exclude {huffman_syn.v}
elaborate huffman -architecture verilog -library model

current_design huffman
link

#Setting Clock Constraints
source -echo -verbose huffman.sdc
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

write -format ddc       -hierarchy       -output "huffman_syn.ddc"
write_sdf -version 1.0                           huffman_syn.sdf
write -format verilog   -hierarchy       -output huffman_syn.v
report_area     > reports/area.log
report_timing   > reports/timing.log
report_qor      > reports/huffman_syn.qor
