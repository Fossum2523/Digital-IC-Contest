`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:19:32 03/29/2024
// Design Name:   AES
// Module Name:   C:/Users/Theo/Desktop/AES/AES/AES_tb.v
// Project Name:  AES
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AES
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module AES_tb;

	// Inputs
	reg clk;
	reg reset;
	reg start;
	reg [127:0] plaintext;
	reg [127:0] key;

	// Outputs
	wire [127:0] ciphertext;
	wire done;

	// Instantiate the Unit Under Test (UUT)
	AES uut (
		.clk(clk), 
		.reset(reset), 
		.start(start), 
		.plaintext(plaintext), 
		.key(key), 
		.ciphertext(ciphertext), 
		.done(done)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		start = 0;
		plaintext = 0;
		key = 0;

		#10 reset = 1;
		// Wait 100 ns for global reset to finish
		#100;
		
		start = 1;
        plaintext = 128'h3243f6a8885a308d313198a2e0370734;
		key = 128'h2b7e151628aed2a6abf7158809cf4f3c;

		#10 start = 0;
		// Add stimulus here
		#200 $stop;

	end
      
always begin
	#5 clk = ~clk;
end
endmodule

