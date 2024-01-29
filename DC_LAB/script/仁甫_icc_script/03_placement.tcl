#=====================================================================
# Check clock constraints before CTS
#=====================================================================
read_sdc -version Latest ../dc/netlist/$DESIGN\_syn.sdc

report_clock 
report_clock -skew 

#=====================================================================
# Check timing: if(slack is large)  modify design planning
#                 else keep going
#=====================================================================
set_zero_interconnect_delay_mode true 
report_timing 
report_constraint -all
set_zero_interconnect_delay_mode false

#======================================================================
# Start with a Good Design Setup
# check congestion 
# 1. 確定macro已經固定
# 2. 邏輯netlist與實際layout上有對應
#======================================================================
check_physical_constraints 
check_physical_design -stage pre_place_opt 
report_power


source $CBDK_LIB\/CIC/ICC/add_tie.tcl 

#======================================================================
# Placement
# if not set place_opt -optimize_dft -power will error
#======================================================================
set_separate_process_options -placement false
#place_opt -optimize_dft -power -congestion -effort high
place_opt -optimize_dft -power
report_power 
report_timing

derive_pg_connection -power_net {VDD} -ground_net {VSS} -power_pin {VDD} -ground_pin {VSS}



#======================================================================
# Refine Placement (if congestion is not met do Refinement)
# Click Global Route Congestion on GUI window and Click Reload
#======================================================================
refine_placement -perturbation_level high
#set_fix_hold [all_clocks]
#psynopt;
#psynopt -congestion; # -congestion
#derive_pg_connection -power_net {VDD} -ground_net {VSS} -power_pin {VDD} -ground_pin {VSS}
#======================================================================



#=====================================================================
# Save Design
#=====================================================================
save_mw_cel -design $DESIGN
save_mw_cel -design $DESIGN -as "placement"


source -echo -verbose scripts/04_cts.tcl


