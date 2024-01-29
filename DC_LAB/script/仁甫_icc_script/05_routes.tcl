
#======================================================================
# Check Design and Report, after-CTS-pre-Route
# if no err will show "No out-of-boundary error found 
#======================================================================
check_zrt_routability -error_view design_setup.err

reset_timing_derate

#======================================================================
# Setting Routing Setting
#======================================================================
source $CBDK_LIB\/CIC/ICC/antenna_CIC.cmd 
set_route_zrt_common_options -post_detail_route_redundant_via_insertion high \
-concurrent_redundant_via_mode insert_at_high_cost -concurrent_redundant_via_effort_level high 

#======================================================================
# Detail Routing (1st Routing)
#======================================================================
route_zrt_group -all_clock_nets 


#======================================================================
# Route Optimization (2nd Routing)
#======================================================================
route_opt -effort high 
#route_zrt_auto

## under i line common no use this common just add prevent antenna effect 
set_route_zrt_detail_options -diode_libcell_names ANTENNA -insert_diodes_during_routing true


#=======================================================================
# Verify Design and Reports (3rd Routing)
# fix drc error 
#======================================================================
verify_zrt_route 
route_zrt_detail -incremental true -initial_drc_from_input true

#======================================================================
# if not only DRC but also timing problem
#======================================================================
# route_opt -incremental
# route_opt; #serious



derive_pg_connection -power_net {VDD} -ground_net {VSS} -power_pin {VDD} -ground_pin {VSS}


#======================================================================
# Save Desgin
#======================================================================
save_mw_cel -design $DESIGN
save_mw_cel -design $DESIGN -as "route"


