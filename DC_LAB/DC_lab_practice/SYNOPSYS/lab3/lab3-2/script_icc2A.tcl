#re-open NDM 
open_lib CS_NDM
set_ref_libs -library CS_NDM -ref_libs {phy_lib/tsmc090nvt_ndm phy_lib/tsmc090nvt_phy_ndm phy_lib/tpzn90gv3_ndm phy_lib/tpzn90gv3_phy_ndm phy_lib/tpbn90v_ndm}
read_verilog chip_syn.v -top CHIP
read_tech_file  phy_lib/tsmc090_9lm_2thick_cic.tf 



read_parasitic_tech -name {max} -tlup {phy_lib/crn90lp_1p09m+alrdl_mim_rcworst.tluplus} -layermap {phy_lib/T90.map} -sanity_check basic
read_parasitic_tech -name {min} -tlup {phy_lib/crn90lp_1p09m+alrdl_mim_rcbest.tluplus}  -layermap {phy_lib/T90.map} -sanity_check basic
set_parasitic_parameters -early_spec min
set_parasitic_parameters -late_spec  max

report_parasitic_parameters


set_ignored_layers -max_routing_layer M8 -min_routing_layer M1
set_attribute [get_layers M1] routing_direction horizontal
set_attribute [get_layers M3] routing_direction horizontal
set_attribute [get_layers M5] routing_direction horizontal
set_attribute [get_layers M7] routing_direction horizontal
set_attribute [get_layers M2] routing_direction vertical
set_attribute [get_layers M4] routing_direction vertical
set_attribute [get_layers M6] routing_direction vertical
set_attribute [get_layers M8] routing_direction vertical


#initialize_floorplan -control_type die -side_length {800 800} -core_offset {250} -keep_placement {io}
read_def ./std_cell.def


source  ./chip_pr.sdc



create_io_ring -corner_height 190


create_io_corner_cell -reference_cell PCORNERG_33 {_default_io_ring1.left   _default_io_ring1.top}
create_io_corner_cell -reference_cell PCORNERG_33 {_default_io_ring1.bottom _default_io_ring1.left}
create_io_corner_cell -reference_cell PCORNERG_33 {_default_io_ring1.right  _default_io_ring1.bottom}
create_io_corner_cell -reference_cell PCORNERG_33 {_default_io_ring1.top    _default_io_ring1.right}
create_cell {vdd1 vdd2 vdd3 vdd4}  tpzn90gv3_ndm/PVDD1DGZ_33
create_cell {vss1 vss2 vss3 vss4}  tpzn90gv3_ndm/PVSS1DGZ_33
create_cell {iovdd1 iovdd2 iovdd3 iovdd4}  tpzn90gv3_ndm/PVDD2DGZ_33
create_cell {iovdd5 iovdd6 iovdd7 iovdd8}  tpzn90gv3_ndm/PVDD2DGZ_33
create_cell {iovss1 iovss2 iovss3 iovss4}  tpzn90gv3_ndm/PVSS2DGZ_33
create_cell {iovss5 iovss6 iovss7 iovss8}  tpzn90gv3_ndm/PVSS2DGZ_33

set_fixed_objects [get_cells ipad*] -unfix
set_fixed_objects [get_cells opad*] -unfix

remove_signal_io_constraints
set_signal_io_constraints -file ./io.ios
place_io


create_io_filler_cells -prefix io_filler_  -reference_cells {{PFILLER20G_33 PFILLER10G_33 PFILLER5G_33  PFILLER1G_33 PFILLER05G_33 PFILLER0005G_33}}
#create_net -power  VDD
#create_net -ground VSS
connect_pg_net
connect_pg_net


create_pg_macro_conn_pattern pad_pattern_h -pin_conn_type scattered_pin -layers {M2 M1}
create_pg_macro_conn_pattern pad_pattern_v -pin_conn_type scattered_pin -layers {M1 M2}

set all_pg_pads [get_cells {vdd* vss*} -hier]

set_pg_strategy s_pad_h -macros $all_pg_pads  -pattern {{name: pad_pattern_h}{nets: {VDD  VSS}}} -extension {stop: outermost_ring}
set_pg_strategy s_pad_v -macros $all_pg_pads  -pattern {{name: pad_pattern_v}{nets: {VDD  VSS}}} -extension {stop: outermost_ring}

compile_pg -strategies s_pad_h
compile_pg -strategies s_pad_v




create_pg_mesh_pattern pg_mesh1 -layers {{{horizontal_layer : M7} {width : 4} {spacing : 2} {pitch : 40} {trim : true}} {{vertical_layer : M6} {width : 4} {spacing : 2} {pitch : 40} {trim : true}}} -via_rule {{intersection : all}}

set_pg_strategy s_mesh -core -pattern {{name : pg_mesh1}{nets : {VDD VSS}}}  -extension {{{stop : outermost_ring}}}

compile_pg -strategies s_mesh



create_pg_std_cell_conn_pattern std_pattern -layers {M1} -check_std_cell_drc false -mark_as_follow_pin false

set_pg_strategy power_rail -core -pattern {{name : std_pattern}{nets : {VDD VSS}}} -extension {{stop : outermost_ring}}

compile_pg -strategies power_rail



save_block -as CS_NDM:pp.design

