module top(clk,out,a,b,c);
output [15:0]  out;
input  [7:0]   a,b;
input  [15:0]  c;
input          clk;
reg    [15:0]  mul_out; 
reg    [15:0]  out;
reg    [15:0]  c_tmp;


always @(posedge clk) mul_out<=a*b;
always @(posedge clk) c_tmp<=c;
always @(posedge clk) out<=mul_out/c_tmp;
   
endmodule




