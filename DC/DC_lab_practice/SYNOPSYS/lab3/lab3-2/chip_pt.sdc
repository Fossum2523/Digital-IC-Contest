################################################################################
#
# Design name:  CHIP
#
# Created by icc2 write_sdc on Wed May 20 10:31:00 2020
#
################################################################################

set sdc_version 1.8
set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000
# capacitive_load_unit    : 1e-12
# voltage_unit            : 1
# current_unit            : 0.001
# power_unit              : 1e-12
################################################################################


# Mode: default
# Corner: default
# Scenario: default

# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 8; \
#   /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 10; \
#   /user/DSD/andy/SYNOPSYS/lab3/lab3-2/script_icc2B.tcl, line 28
create_clock -name clk -period 10 -waveform {0 5} [get_ports {clk}]
set_propagated_clock [get_clocks {clk}]
set_load -pin_load 40 [get_ports {Y[9]}]
set_load -pin_load 40 [get_ports {Y[8]}]
set_load -pin_load 40 [get_ports {Y[7]}]
set_load -pin_load 40 [get_ports {Y[6]}]
set_load -pin_load 40 [get_ports {Y[5]}]
set_load -pin_load 40 [get_ports {Y[4]}]
set_load -pin_load 40 [get_ports {Y[3]}]
set_load -pin_load 40 [get_ports {Y[2]}]
set_load -pin_load 40 [get_ports {Y[1]}]
set_load -pin_load 40 [get_ports {Y[0]}]
# Set latency for io paths.
# -origin user
set_clock_latency 0.993938 [get_clocks {clk}]
# Set propagated on clock sources to avoid removing latency for IO paths.
set_propagated_clock  [get_ports {clk}]
set_clock_transition 0.217955 [get_clocks {clk}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 11
set_input_transition 0.5 [get_ports {X[7]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 11
set_input_transition 0.5 [get_ports {X[6]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 11
set_input_transition 0.5 [get_ports {X[5]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 11
set_input_transition 0.5 [get_ports {X[4]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 11
set_input_transition 0.5 [get_ports {X[3]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 11
set_input_transition 0.5 [get_ports {X[2]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 11
set_input_transition 0.5 [get_ports {X[1]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 11
set_input_transition 0.5 [get_ports {X[0]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 11
set_input_transition 0.5 [get_ports {reset}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 11
set_input_transition 0.5 [get_ports {clk}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 15
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {Y[9]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 15
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {Y[8]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 15
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {Y[7]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 15
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {Y[6]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 15
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {Y[5]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 15
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {Y[4]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 15
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {Y[3]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 15
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {Y[2]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 15
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {Y[1]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 15
set_output_delay -clock [get_clocks {clk}] 0.5 [get_ports {Y[0]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 14
set_input_delay -clock [get_clocks {clk}] 6 [get_ports {X[7]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 14
set_input_delay -clock [get_clocks {clk}] 6 [get_ports {X[6]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 14
set_input_delay -clock [get_clocks {clk}] 6 [get_ports {X[5]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 14
set_input_delay -clock [get_clocks {clk}] 6 [get_ports {X[4]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 14
set_input_delay -clock [get_clocks {clk}] 6 [get_ports {X[3]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 14
set_input_delay -clock [get_clocks {clk}] 6 [get_ports {X[2]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 14
set_input_delay -clock [get_clocks {clk}] 6 [get_ports {X[1]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 14
set_input_delay -clock [get_clocks {clk}] 6 [get_ports {X[0]}]
# /user/DSD/andy/SYNOPSYS/lab3/lab3-2/chip_pr.sdc, line 14
set_input_delay -clock [get_clocks {clk}] 6 [get_ports {reset}]
