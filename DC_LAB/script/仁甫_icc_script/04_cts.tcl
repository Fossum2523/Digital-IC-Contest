#======================================================================
# Check Design and Report
#======================================================================
check_clock_tree

report_clock 
report_clock -skew 
report_clock_tree -summary 
report_constraint -all


#======================================================================
# Clock Optimization (takes time)
#======================================================================
set_fix_hold [all_clocks] 

check_physical_design -stage pre_clock_opt 
clock_opt -fix_hold_all_clocks -no_clock_route 
#clock_opt -only_psyn -fix_hold_all_clocks -congestion -no_clock_route 

derive_pg_connection -power_net {VDD} -ground_net {VSS} -power_pin {VDD} -ground_pin {VSS} 


#======================================================================
# Report CTS timing
# if stack<0, do GUI Route -> Core Routing and Optimization
#======================================================================
report_timing
report_clock_tree -summary

#======================================================================
# Save Desgin
#======================================================================
save_mw_cel -design $DESIGN
save_mw_cel -design $DESIGN -as "cts"


#source -echo -verbose scripts/05_routes.tcl
