module lab1(a,b,c,sel,z);
input [7:0] a,b,c;
input sel;
output [8:0] z;

always @(a or b or c) begin
if (sel) z = a + b;
else z = a + c;
end

endmodule
