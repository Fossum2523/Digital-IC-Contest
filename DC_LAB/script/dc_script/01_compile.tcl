###set TOP module name & period 

##debug
#set compile_preserve_subdesign_interfaces true  

set DESIGN ccm_IO

### https://www.cnblogs.com/iclearner/p/6636176.html
### set_flatten true -effort low | medium | high
### set hlo_resource_allocation 
######  constraint_driven(default) (by min timing)
######  area_only (by min area)
######  area_no_tree_balancing | none | true | false
### set_structure true (default)

set case_analysis_with_logic_constants true

#Prevent designware hierarchy disappear
set compile_ultra_ungroup_dw  false
#set hlo_resource_allocation area_only
set_flatten true -effort low


### read all design file 
read_file -format verilog -autoread -top $DESIGN -recursive {../RTL}
#-param "MAX_REF_SIZE=256,REF_SIZE_N=8,MAX_CU_SIZE=64,CU_SIZE_N=7"
#analyze -format sverilog -define WIDTH=10,DEPTH=128 vvc.v
current_design [get_designs $DESIGN] 

set_structure true


check_design > reports/$DESIGN\.check_design
link

source -echo -verbose scripts/ccm.sdc


set high_fanout_net_threshold  0;  #high fanout auto add buffer
# set_max_area        0

#set_timing_derate -late 1.10 -cell_delay [get_cells -hier * -filter "ref_name!=**logic_0**" ]  
#set_timing_derate -early 1.10 -cell_delay [get_cells -hier * -filter "ref_name!=**logic_0**" ]


### check and solve multiple instance porblem 
check_design 
check_timing > reports/$DESIGN\.check_timing
uniquify 
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]; #防止assign出現導致APR錯誤


set_dont_touch [get_cell *pad*]

### solve floating point 
remove_unconnected_ports -blast_buses [get_cells * -hier] 
#remove_irregular_net_bus - restricted "A\[\]"

### set multi-core synthesis (1-16) 
set_host_options -max_core 8

### synthesis all design 
#compile -map_effort high -area_effort high
#compile
compile -map_effort high 
#compile_ultra
#compile_ultra -timing   
#up 20%
#compile_ultra -area     
#up 40%
#compile_ultra -retime

### retiming
#optimize_registers   
##set_dont_retime <cells or designs> true
source -echo -verbose scripts/02_output.tcl














