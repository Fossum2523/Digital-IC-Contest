source $CBDK_LIB\/CIC/ICC/createNplace_bondpads.tcl 
createNplace_bondpads -inline_pad_ref_name PAD60GU -stagger true -stagger_pad_ref_name PAD60NU

#======================================================================
# Save Desgin
#======================================================================
save_mw_cel -design $DESIGN
save_mw_cel -design $DESIGN -as "DFM"

##---.................-07.08 output route .gd . V .sdf 
set_write_stream_options -map_layer $CBDK_LIB\/CIC/ICC/macro.map -child_depth 20 -flatten_via

#
write_stream -format gds -lib_name $DESIGN -cells {DFM} netlist/$DESIGN\_pr.gds 
#write_stream -format gds -lib_name /home/IC/Desktop/IC/matrix/icc/matrix_io -cells {DFM } matrix_io_pr.gds

write_verilog -unconnected_ports -diode_ports -wire_declaration -keep_backslash_before_hiersep -no_physical_only_cells netlist/$DESIGN\_pr.v 

write_sdf -version 1.0 -context verilog -load_delay net netlist/$DESIGN\_pr.sdf


#======================================================================
# Save Desgin
#======================================================================
save_mw_cel -design $DESIGN 
save_mw_cel -design $DESIGN -as "CHIP"


#================================================================== 
# Output Reports #
#================================================================== 
report_design               > reports/$DESIGN\.design 
report_port                 > reports/$DESIGN\.port 
report_net                  > reports/$DESIGN\.net 
report_timing_requirements  > reports/$DESIGN\.timing_requirements 
report_constraint           > reports/$DESIGN\.constraint 
report_timing               > reports/$DESIGN\.timing 
report_area                 > reports/$DESIGN\.area 
report_reference            > reports/$DESIGN\.reference 
report_power                > reports/$DESIGN\.power

#get_attribute [get_die_area] bbox