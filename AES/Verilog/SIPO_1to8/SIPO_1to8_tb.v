`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:53:53 04/01/2024
// Design Name:   SIPO_1to8
// Module Name:   C:/Users/Theo/Desktop/AES/SIPO_1to8/SIPO_1to8_tb.v
// Project Name:  SIPO_1to8
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SIPO_1to8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SIPO_1to8_tb;

	// Inputs
	reg clk;
	reg reset;
	reg en;
	reg in;

	// Outputs
	wire valid;
	wire [7:0] out;

	// Instantiate the Unit Under Test (UUT)
	SIPO_1to8 uut (
		.clk(clk), 
		.reset(reset), 
		.en(en), 
		.in(in), 
		.valid(valid), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		en = 0;
		in = 0;

		#10
		reset = 1;
		// Wait 100 ns for global reset to finish
		#190;
		en = 1;
        in = 1'b1;
		#10;
		in = 1'b1;
		#10;
		in = 1'b1;
		#10;
		in = 1'b1;
		#10;
		in = 1'b1;
		#10;
		in = 1'b1;
		#10;
		in = 1'b1;
		#10;
		in = 1'b1;
		#10;
		in = 1'b1;
		#10;

		#200 $stop;
		// Add stimulus here

	end

	always  begin
		clk <= ~clk;
	end
endmodule

