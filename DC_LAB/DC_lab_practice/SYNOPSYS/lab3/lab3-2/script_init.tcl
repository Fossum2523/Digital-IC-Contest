sh rm -rf CS_NDM

#create_lib CS_NDM  -technology phy_lib/tsmc090_9lm_2thick_cic.tf    -ref_libs {phy_lib/tsmc090nvt_ndm phy_lib/tsmc090nvt_phy_ndm phy_lib/tpzn90gv3_ndm phy_lib/tpzn90gv3_phy_ndm}
create_lib CS_NDM 
set_ref_libs -library CS_NDM -ref_libs {phy_lib/tsmc090nvt_ndm phy_lib/tsmc090nvt_phy_ndm phy_lib/tpzn90gv3_ndm phy_lib/tpzn90gv3_phy_ndm}

read_verilog ./chip_syn.v -top CHIP

read_tech_lef phy_lib/tsmc090lk_9lm_2thick_tech_cic.lef -merge_action ignore  -design CHIP



read_parasitic_tech -name {max} -tlup {phy_lib/crn90lp_1p09m+alrdl_mim_rcworst.tluplus} -layermap {phy_lib/T90.map} -sanity_check basic
read_parasitic_tech -name {min} -tlup {phy_lib/crn90lp_1p09m+alrdl_mim_rcbest.tluplus}  -layermap {phy_lib/T90.map} -sanity_check basic

set_parasitic_parameters -early_spec min
set_parasitic_parameters -late_spec  max


set_ignored_layers -max_routing_layer M8 -min_routing_layer M1
set_attribute [get_layers M1] routing_direction horizontal
set_attribute [get_layers M3] routing_direction horizontal
set_attribute [get_layers M5] routing_direction horizontal
set_attribute [get_layers M7] routing_direction horizontal
set_attribute [get_layers M2] routing_direction vertical
set_attribute [get_layers M4] routing_direction vertical
set_attribute [get_layers M6] routing_direction vertical
set_attribute [get_layers M8] routing_direction vertical


initialize_floorplan -control_type die -side_length {720 720} -core_offset {250} -keep_placement {io}

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


remove_signal_io_constraints
set_signal_io_constraints -file ./io.ios
place_io

#remove_cells [get_cells {iovdd* iovss*  vdd* vss* __added_corner_cell*}]


set_fixed_objects [get_cells ipad*]
set_fixed_objects [get_cells opad*]




#PowerPlan

#create_placement -floorplan 

create_net -power  VDD
create_net -ground VSS

connect_pg_net
connect_pg_net


#create power ring
create_pg_region r1 -core -macro_offset 5.0

create_pg_ring_pattern ring1 -horizontal_layer M5 -vertical_layer M4 -horizontal_width 8.0 -vertical_width 8.0 -horizontal_spacing 4.0 -vertical_spacing 4.0 -corner_bridge true

set_pg_strategy s1 -pg_regions {r1}                 \
                   -pattern    {                    \
                        {name:    ring1}            \
                        {nets:   {VDD VSS VDD VSS}} \
                        {offset: {5 5}}             \
                    }

compile_pg -strategies s1


remove_cells [get_cells top/*]
remove_cells [get_cells {iovdd* iovss*  vdd* vss* __added_corner_cell*}]


save_block -as CS_NDM:CHIP.design

write_def -version 5.8 init.def


