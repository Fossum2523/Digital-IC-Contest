#Place
set_app_options -name place_opt.flow.dcg_spg_mode -value true
set_app_options -name place_opt.flow.do_spg  -value true
set_app_options -name place.coarse.continue_on_missing_scandef  -value true
set_app_options -name place.coarse.fix_cells_on_soft_blockages  -value true
set_app_options -name opt.timing.effort  -value  high
set_app_options -name opt.power.effort   -value  low
set_app_options -name opt.area.effort    -value  high
set_app_options -name place_opt.place.congestion_effort  -value high

#create_placement -congestion -congestion_effort high -effort high

place_opt -from final_opto


save_block -as CS_NDM:Place.design

report_timing


#CTS
read_tech_file  ./phy_lib/tsmc090_9lm_2thick_cic.tf

set_app_options -name clock_opt.hold.effort  -value medium
set_app_options -name cts.balance_groups.balance_by_source_latency -value true
set_app_options -name cts.balance_groups.honor_source_latency -value true
set_app_options -name opt.dft.clock_aware_scan_reorder -value true
set_app_options -name time.remove_clock_reconvergence_pessimism -value true
set_app_options -name clock_opt.flow.enable_ccd -value false
set_app_options -name cts.compile.enable_local_skew -value true
set_app_options -name cts.optimize.enable_local_skew -value true

remove_clock_latency [all_clocks]
remove_clock_uncertainty [all_clocks]
remove_ideal_network -all
set_dont_touch_network -clear [all_clocks]
set_propagated_clock [all_clocks]

remove_clock_tree_options -all -target_skew -target_latency
mark_clock_trees
create_routing_rule CTS_w2_s2 \
                -default_reference_rule \
                -widths { M1 0.14 M2 0.14 M3 0.14 M4 0.28 M5 0.28 M6 0.28} \
                -spacings { M1 0.14 M2 0.14 M3 0.14 M4 0.28 M5 0.28 M6 0.28} \
                -taper_distance 0.4 \
                -driver_taper_distance 0.4
set_clock_routing_rules -rules CTS_w2_s2 -min_routing_layer M4 -max_routing_layer M5   -clocks {clk}


create_routing_rule CTS_w1_s2 \
                -default_reference_rule \
                -spacings { M2 0.14 M3 0.14 M4 0.28 M5 0.28 M6 0.28}
set_clock_routing_rules -net_type sink -rules CTS_w1_s2 -min_routing_layer M1 -max_routing_layer M6  -clocks {clk}

set_lib_cell_purpose -exclude cts [get_lib_cells]
set_lib_cell_purpose -include cts [get_lib_cells  {*/CLK* */*DFF*}]
set_attribute -objects [get_lib_cells {*/CLK* */*DFF*}] -name dont_touch -value false
set_attribute -objects [get_lib_cells {*/CLK* */*DFF*}] -name dont_use   -value false


clock_opt -from build_clock -to build_clock
clock_opt -from route_clock -to route_clock
clock_opt -from final_opto  -to final_opto


connect_pg_net
report_clock_timing -type skew

report_clock_qor
report_timing 

set_lib_cell_purpose -reset [get_lib_cells  */TIE*]
set_lib_cell_purpose -include all [get_lib_cells  */TIE*]
set_attribute -objects [get_lib_cells */TIE*] -name dont_touch -value false
set_attribute -objects [get_lib_cells */TIE*] -name dont_use   -value false
set_app_options -name opt.tie_cell.max_fanout -value 10
add_tie_cells -tie_high_lib_cells [get_lib_cells */TIEHI] -tie_low_lib_cells [get_lib_cells */TIELO]

save_block -as CS_NDM:CTS.design

#Route
#set_app_options -list {route.common.connect_within_pins_by_layer_name {{M1 via_wire_standard_cell_pins} }}
set_app_options -name route.global.timing_driven    -value true
set_app_options -name route.global.crosstalk_driven -value false
set_app_options -name route.track.timing_driven     -value true
set_app_options -name route.track.crosstalk_driven  -value true
set_app_options -name route.detail.timing_driven    -value true
set_app_options -name route.detail.force_max_number_iterations -value false
set_app_options -name time.si_enable_analysis -value true
set_app_options -name route.common.post_detail_route_redundant_via_insertion -value high
set_app_options -name route.common.concurrent_redundant_via_effort_level -value high

set_app_options -name route.common.post_detail_route_fix_soft_violations  -value true
set_app_options -name route.common.post_eco_route_fix_soft_violations -value true
set_app_options -name route.common.post_incremental_detail_route_fix_soft_violations -value true
set_app_options -name route.detail.insert_diodes_during_routing -value true
set_app_options -name route.detail.optimize_wire_via_effort_level -value high
set_app_options -name route.detail.timing_driven -value  true
set_app_options -name route.detail.var_spacing_to_same_net -value true
set_app_options -name route_opt.flow.enable_ccd -value true
set_app_options -name ccd.hold_control_effort -value high
set_app_options -name route_opt.flow.enable_targeted_ccd_wns_optimization -value true

set_app_options -name route.detail.diode_libcell_names -value ANTENNA
set_app_options -name route.detail.insert_diodes_during_routing -value true


set_routing_rule  -min_routing_layer M1 -max_routing_layer M8 -default_rule    [get_nets -hierarchical *]

source ./phy_lib/antenna_9lm_CIC.clf


route_auto
report_timing
save_block -as CS_NDM:RouteAuto.design

route_opt
report_timing
connect_pg_net
save_block -as CS_NDM:RouteOpt.design


report_timing
route_opt -xtalk_reduction
report_timing


check_routes

save_block -as CS_NDM:Route.design


create_stdcell_fillers  -lib_cells {FILL64 FILL32 FILL16 FILL8 FILL4 FILL2 FILL1}

#route_eco

report_timing

source  phy_lib/createNplace_bondpads_icc2.tcl.andy
createNplace_bondpads -inline_pad_ref_name PAD60GU  -stagger true  -stagger_pad_ref_name  PAD60NU


save_block -as CS_NDM:Finish.design

source /cad/mentor/calibre/cur/lib/icc_calibre.tcl
#read_drc_error_file -file    ./DRC_RES.db

write_verilog -top_module_first -hierarchy all chip_pr.v -exclude  {corner_cells filler_cells leaf_module_declarations pad_spacer_cells pg_netlist pg_objects physical_only_cells scalar_wire_declarations supply_statements unconnected_ports}
#write_sdf  chip_pr.sdf
write_parasitics -format spef -hierarchical -output chip_pr.spef
write_sdc  -version  1.8 -output chip_pt.sdc
write_gds  -library CS_NDM -design Finish -units 1000 -lib_cell_view design  -merge_files {phy_lib/tpbn90v_9lm_cic2.gds phy_lib/tsmc090nvt_macros.gds phy_lib/tpzn90gv3_9lm_cic.gds}  chip_pr.gds

