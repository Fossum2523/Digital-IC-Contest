module top(clk,out,a,b,c);
output [15:0]  out;
input  [7:0]   a,b;
input  [15:0]  c;
input          clk;
reg    [15:0]  mul_out; 
reg    [15:0]  out;
reg    [15:0]  c_tmp;
reg    [7:0]   a_d; 
reg    [7:0]   b_d;
reg    [7:0]   c_d;

always @(posedge clk) a_d<=a;
always @(posedge clk) b_d<=b;
always @(posedge clk) c_d<=c;

always @(posedge clk) mul_out<=a_d*b_d;
always @(posedge clk) c_tmp<=c_d;
always @(posedge clk) out<=mul_out/c_tmp;
   
endmodule




