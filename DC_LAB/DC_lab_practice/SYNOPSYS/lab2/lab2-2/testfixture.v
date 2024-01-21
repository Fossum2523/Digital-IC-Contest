`timescale 1ns/10ps
`define SDFFILE "./chip_syn.sdf"        // Modify your sdf file name
`define CYCLE 4
module test;
reg clk, reset, test, set_time, start_cook;
reg [15:0] cook_time;
wire [6:0] min_msb_led, min_lsb_led, sec_msb_led, sec_lsb_led;

top top(clk, reset, test, set_time, start_cook, cook_time,  min_msb_led, min_lsb_led, sec_msb_led, sec_lsb_led);

initial  clk=0;

always  #(`CYCLE/2) clk = ~clk;

initial $sdf_annotate(`SDFFILE, top);

initial begin
#0;
reset=0; test=0; set_time=0; start_cook=0; cook_time=0;

@(posedge clk) #1;
#(`CYCLE) reset=1;
#(`CYCLE*2) test=1;
#(`CYCLE*2) test=0; set_time=1; cook_time=16'h0515;
#(`CYCLE*2) set_time=0; start_cook=1;
#(`CYCLE*1) start_cook=0;
#(`CYCLE*500)  set_time=1; cook_time=16'h3617;
#(`CYCLE*2) set_time=0; start_cook=1;
#(`CYCLE*1) start_cook=0;
#(`CYCLE*2200) $finish;
end

initial begin
$dumpfile("chip_syn.vcd");
$dumpvars;
//$fsdbDumpfile("chip_syn.fsdb");
//$fsdbDumpvars(0, "top");
end

endmodule
