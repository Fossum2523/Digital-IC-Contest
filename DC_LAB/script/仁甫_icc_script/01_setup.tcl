# define top design
set DESIGN "ccm_IO"

set CBDK_LIB "/home/mst21f/m11002105/Downloads/CBDK_TSMC018_Arm_v4.0"

set POWER_BUDGET 21

#======================================================================
# Creating a Design Library
# 1. Bondage pad
# 2. IO pad
# 3. Std-cells
# 4. Macro
#======================================================================
create_mw_lib -technology $CBDK_LIB\/CIC/ICC/tsmc18_CIC.tf \
    -mw_reference_library \
        "$CBDK_LIB\/CIC/ICC/tpz973gv \
         $CBDK_LIB\/CIC/ICC/tpb973gv \
         $CBDK_LIB\/CIC/ICC/tsmc18_fram" \
    -bus_naming_style {[%d]} -open $DESIGN
# set_check_library_options -all
# check_library

#======================================================================
# Set tlu_plus_files
#======================================================================
set_tlu_plus_files -max_tluplus $CBDK_LIB\/CIC/ICC/tluplus/t18.tluplus -tech2itf_map $CBDK_LIB\/CIC/ICC/tluplus/t18.map

#======================================================================
# Import a Design
# note ---top & cell name mustmatch your "_io.v" 's TOP module name instead of the top module name in your RTL code!!
#======================================================================
import_designs -format verilog -top $DESIGN -cel $DESIGN ../dc/netlist/$DESIGN\_syn.v

#======================================================================
# Import SDC
# 記得註解掉set_ideal_network、set_wire_load_model
#======================================================================
read_sdc -version Latest ../dc/netlist/$DESIGN\_syn.sdc

#======================================================================
# Timing and Optimization Controls
#======================================================================
#set timing_enable_multiple_clocks_per_reg true ;   # for multiple clk
set case_analysis_with_logic_constants true    ;    # for memory
set_fix_multiple_port_nets -all -buffer_constants;  # 這指令讓同一個net接到兩個以上的port時，自動加buffer來幫助推動。
#======================================================================
# Timing Sanity Check ( if Slack < 0 here, APR will definitely fail )
#======================================================================
#set_zero_interconnect_delay_mode true
#report_constraint -all
#report_timing
#set_zero_interconnect_delay_mode false
#======================================================================


#======================================================================
# Save Design
#======================================================================
save_mw_cel -design $DESIGN
save_mw_cel -design $DESIGN -as "design_setup"


source -echo -verbose scripts/02_floorplan.tcl

