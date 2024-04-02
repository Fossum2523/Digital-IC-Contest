`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:29:35 04/01/2024
// Design Name:   SIPO_8to128
// Module Name:   C:/Users/fossu/Desktop/IC_Contest_syn/AES/Verilog/SIPO_8to128/SIPO_8to128_tb.v
// Project Name:  SIPO_8to128
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SIPO_8to128
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SIPO_8to128_tb;

	// Inputs
	reg clk;
	reg reset;
	reg en;
	reg claer;
	reg [7:0] in;

	// Outputs
	wire valid;
	wire [127:0] out;

	// Instantiate the Unit Under Test (UUT)
	SIPO_8to128 uut (
		.clk(clk), 
		.reset(reset), 
		.en(en), 
		.claer(claer), 
		.in(in), 
		.valid(valid), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		en = 0;
		claer = 0;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;

		reset = 0;
		#10;
		// Add stimulus here
		en = 1;
		in = 8'b1111_1111;

		#100;

		$stop;

	end

	always begin
		#5 clk <= ~clk;
	end
endmodule

