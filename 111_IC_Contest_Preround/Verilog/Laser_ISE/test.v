`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:58:28 01/16/2024
// Design Name:   LASER
// Module Name:   C:/Users/USER/Desktop/IC compete/111_IC_Contest_Preround/Verilog/Laser_ISE/test.v
// Project Name:  Laser_ISE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LASER
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;


 // Instantiate the Unit Under Test (UUT)

wire test1, test2, test3;
reg signed [7:0] din;
wire signed [7:0]dou1;
wire [7:0]dou2,dou3; 




//assign dou1 = din + 1;
//assign dou2 = din + 1'b1;
//assign dou3 = din + (-1'b1);  


assign test1 = (din + 1) > 0 ? 1'b1 : 1'b0;  //test1 = 0
assign test2 = (din + 1'b1) > 0 ? 1'b1 : 1'b0;   //test2 = 1
assign test3 = (din + (-1'b1)) > 0 ? 1'b1 : 1'b0;   // test3 = 1 (unsigned),  test3 = 0 (signed)




initial begin
 din = -5;
end
     
endmodule
