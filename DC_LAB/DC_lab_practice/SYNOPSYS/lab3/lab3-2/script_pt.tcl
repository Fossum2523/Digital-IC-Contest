read_file -format verilog ./chip_pr.v
current_design CHIP
link
source chip_pt.sdc
read_parasitics -format SPEF -verbose  chip_pr.spef.CHIP.max_125.spef
report_timing
write_sdf -version 2.1 chip_pr.sdf
exit
