#open  CS_NDM
open_lib CS_NDM
set_ref_libs -library CS_NDM -ref_libs {phy_lib/tsmc090nvt_ndm phy_lib/tsmc090nvt_phy_ndm phy_lib/tpzn90gv3_ndm phy_lib/tpzn90gv3_phy_ndm}
read_tech_file phy_lib/tsmc090_9lm_2thick_cic.tf

shell_is_in_ndm_mode

set_tlu_plus_files  -max_tluplus phy_lib/crn90lp_1p09m+alrdl_mim_rcworst.tluplus -min_tluplus phy_lib/crn90lp_1p09m+alrdl_mim_rcbest.tluplus   -tech2itf_map phy_lib/T90.map
check_tlu_plus_files


#Import Design
read_file -format verilog  "./CS.v"
read_file -format verilog  "./CHIP.v"

current_design [get_designs CHIP]
link


extract_physical_constraints -allow_physical_cells init.def

source -echo -verbose ./CHIP_dc.tcl


set high_fanout_net_threshold 0

uniquify
set_fix_multiple_port_nets -all -buffer_constants [get_designs *]

set_dont_touch [get_cell ipad*]
set_dont_touch [get_cell opad*]

set_power_prediction  true


compile_ultra -no_autoungroup -spg



remove_unconnected_ports -blast_buses [get_cells -hierarchical *]

set bus_inference_style {%s[%d]}
set bus_naming_style {%s[%d]}
set hdlout_internal_busses true
change_names -hierarchy -rule verilog
define_name_rules name_rule -allowed {a-z A-Z 0-9 _} -max_length 255 -type cell
define_name_rules name_rule -allowed {a-z A-Z 0-9 _[]} -max_length 255 -type net
define_name_rules name_rule -map {{"\\*cell\\*" "cell"}}
define_name_rules name_rule -case_insensitive
change_names -hierarchy -rules name_rule


write -format ddc     -hierarchy -output "chip_syn.ddc"
write -format verilog -hierarchy -output "chip_syn.v"
write_sdf -version 1.0  -context verilog  -load_delay net  chip_syn.sdf
write_def -version 5.8  -output  std_cell.def
#write_sdc -version 2.1   chip_pr.sdc

