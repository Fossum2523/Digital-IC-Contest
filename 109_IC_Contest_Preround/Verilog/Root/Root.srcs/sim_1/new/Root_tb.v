`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/18 14:42:57
// Design Name: 
// Module Name: Root_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Root_tb();   

reg     [31:0]in;
wire    [15:0]out;

Root UUT(.in(in), .out(out));
defparam UUT.bias = 0;

initial begin
    in = 16'd10;
end
endmodule
