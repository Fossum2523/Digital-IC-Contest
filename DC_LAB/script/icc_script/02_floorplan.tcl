

#======================================================================
# Read a IO Constraint file
#======================================================================
source -echo -verbose scripts/io.tdf
#read_pin_pad_physical_constraints scripts/io.tdf


#======================================================================
# Initialize the Floorplan
#======================================================================
set IO_TO_CORE 100
create_floorplan -core_utilization 0.6 -flip_first_row -left_io2core $IO_TO_CORE -bottom_io2core $IO_TO_CORE -right_io2core $IO_TO_CORE -top_io2core $IO_TO_CORE 

#=====================================================================
# Insert PAD Filler
#=====================================================================
insert_pad_filler -cell {PFILLER20 PFILLER10 PFILLER5 PFILLER1 PFILLER05 PFILLER0005} -overlap_cell {PFILLER0005}

#=====================================================================
# Save Design
#=====================================================================
save_mw_cel -design $DESIGN 
save_mw_cel -design $DESIGN  -as "die_init"

#=====================================================================
# Set Macro Placement Constraints
# - Memory margin constraints
# 特定macro或所有macro設定附近不要擺放cell
#======================================================================
set_keepout_margin -all_macros -type hard -outer {20 20 20 20}
#=====================================================================

#======================================================================
# Set Routing Blockage
# 限制某段區間中不要使用特定幾層Layer，可以避免Power Strap經過那些位置
#=====================================================================
#create_route_guide -no_signal_layer {METAL5 METAL6} -coordinate {{20 20} {75 95}}
#=====================================================================

#=====================================================================
# Place Standard and Macro Cells
# 1st Compile
#=====================================================================
set_host_options -max_cores 8
#create_fp_placement
#create_fp_placement -congestion_driven
create_fp_placement -timing_driven
#create_fp_placement -no_hierarchy_gravity
#create_fp_placement -congestion_driven -no_hierarchy_gravity

#=====================================================================
# 檢查繞線資源。如果最後顯示圖結果很多紅色
# Global Route Congestion 
# 1. 修改macro的位置
# 2. 修改IO PAD順序
# 3. 對紅色區域部分減少std cells的使用率
# 4. 修改晶片的floorplan
#=====================================================================
#report_congestion -grc_based -routing_stage global
#set_congestion_options -max_util 0.4 -coordinate {x1 y1 x2 y2}


#=====================================================================
# if set macro position
# need create_fp_placement -inc
#=====================================================================
## this is macro constraint, but we dont have macro. 
# move_objects -x 280 -y 280 [get_cells DCT_tposemem_Bisted_RF_2P_ADV64x16_RF_2P_ADV64x16_u0_SRAM_10] 
#set_dont_touch_placement [all_macro_cells]
create_fp_placement -incremental all

#=====================================================================
# Save Design
#=====================================================================
save_mw_cel -design $DESIGN
save_mw_cel -design $DESIGN -as "before_pns"


#=====================================================================
# Connect P/G Nets
#=====================================================================
derive_pg_connection -power_net {VDD} -ground_net {VSS} -power_pin {VDD} -ground_pin {VSS}


#=====================================================================
# Set Power Network Constraints
# set_fp_rail_constraints  # set rail synthesis constraints
#       -add_layer             (add layer constraints) (strap)
#       -set_ring              (set ring constraints)
#       -set_global            (set global constraints)
#======================================================================

#set H_LAYER METAL5
#set V_LAYER METAL4
set H_LAYER METAL3
set V_LAYER METAL2


# Power Ring
set_fp_rail_constraints -add_layer -layer $H_LAYER -direction horizontal -max_strap 10 -min_strap 3 -max_width 3 -min_width 3 -spacing minimum 
set_fp_rail_constraints -add_layer -layer $V_LAYER -direction vertical   -max_strap 10 -min_strap 3 -max_width 3 -min_width 3 -spacing minimum 

# Power Stripe
set_fp_rail_constraints -set_ring -nets {VDD VSS VDD VSS}  \
    -horizontal_ring_layer $H_LAYER -vertical_ring_layer $V_LAYER  \
    -ring_width 8 -ring_offset 3 -extend_strap core_ring 

set_fp_rail_constraints -set_global -no_routing_over_hard_macros

#=====================================================================
# Set Virtual Pad
# if dont have power pad
#======================================================================
# create_fp_virtual_pad -net VDD -point {110.530 221.060}
# create_fp_virtual_pad -net VSS -point {45.335 220.910}


# For memory block
# modify block cell name
#set_fp_block_ring_constraints -add  \
    -horizontal_layer $H_LAYER \
    -horizontal_width 8 \
    -horizontal_offset 1 \
    -vertical_layer $V_LAYER \
    -vertical_width 8 \
    -vertical_offset 1 \
    -block_type master  \
    -block {sram_256_8} \
    -net  {VDD VSS}


#======================================================================
# Running Power Network Synthesis
#       -voltage_supply : 1.8V for T180 ; 1V for T90 ; 0.9V for T40
#       -power_budget : unit:mW
#======================================================================
synthesize_fp_rail -nets {VDD VSS} -voltage_supply 1.8 -synthesize_power_plan -power_budget $POWER_BUDGET


#======================================
# Note :
#     check IR drop map after this command
#======================================================================
# Commit Power Plan
#======================================================================
commit_fp_rail


#======================================================================
# Connect I/O PAD to P/G Ring
#======================================================================
preroute_instances -ignore_macros -ignore_cover_cells -primary_routing_layer pin -extend_for_multiple_connections -extension_gap 16

#======================================================================
# Connect Block Ring (macro's) to P/G Ring
#======================================================================
preroute_instances -ignore_pads -ignore_cover_cells -primary_routing_layer pin

#======================================================================
# Preroute Std Cell Rail
#======================================================================
preroute_standard_cells -extend_for_multiple_connections \
    -extension_gap 16 -connect horizontal -remove_floating_pieces \
    -do_not_route_over_macros -fill_empty_rows \
    -port_filter_mode off \
    -cell_master_filter_mode off \
    -cell_instance_filter_mode off \
    -voltage_area_filter_mode off \
    -route_type {P/G Std. Cell Pin Conn}


# DC power report
analyze_fp_rail -net {VDD VSS} -power_budget $POWER_BUDGET -voltage_supply 1.8


# no cell under strap
set_pnet_options -partial "$H_LAYER $V_LAYER"
create_fp_placement -incremental all


#=====================================================================
# Save Design
#=====================================================================
save_mw_cel -design $DESIGN
save_mw_cel -design $DESIGN -as "design_planning"


source -echo -verbose scripts/03_placement.tcl


