module Mix_Column
#(parameter N = 8)
(
	input [127 : 0] in,
	output [127 : 0] out
);

genvar col;
generate 
    for (col = 0 ; col < 4 ; col = col + 1)begin  :  Sub_Mix_Column
        // assign out[(31+col*32)-:8] = mul_2(in[(31+col*32)-:8]) ^ mul_3(in[(23+col*32)-:8]) ^ mul_1(in[(15+col*32)-:8]) ^ mul_1(in[(7 +col*32)-:8]);
        // assign out[(23+col*32)-:8] = mul_1(in[(31+col*32)-:8]) ^ mul_2(in[(23+col*32)-:8]) ^ mul_3(in[(15+col*32)-:8]) ^ mul_1(in[(7 +col*32)-:8]);
        // assign out[(15+col*32)-:8] = mul_1(in[(31+col*32)-:8]) ^ mul_1(in[(23+col*32)-:8]) ^ mul_2(in[(15+col*32)-:8]) ^ mul_3(in[(7 +col*32)-:8]);
        // assign out[(7 +col*32)-:8] = mul_3(in[(31+col*32)-:8]) ^ mul_1(in[(23+col*32)-:8]) ^ mul_1(in[(15+col*32)-:8]) ^ mul_2(in[(7 +col*32)-:8]);
        assign out[(31+col*32)-:8] = mul_2(in[(31+col*32)-:8] ^ in[(23+col*32)-:8]) ^ mul_1(in[(23+col*32)-:8] ^ in[(15+col*32)-:8] ^ in[(7 +col*32)-:8]);
        assign out[(23+col*32)-:8] = mul_2(in[(23+col*32)-:8] ^ in[(15+col*32)-:8]) ^ mul_1(in[(31+col*32)-:8] ^ in[(15+col*32)-:8] ^ in[(7 +col*32)-:8]);
        assign out[(15+col*32)-:8] = mul_2(in[(15+col*32)-:8] ^ in[(7 +col*32)-:8]) ^ mul_1(in[(31+col*32)-:8] ^ in[(23+col*32)-:8] ^ in[(7 +col*32)-:8]);
        assign out[(7 +col*32)-:8] = mul_2(in[(7 +col*32)-:8] ^ in[(31+col*32)-:8]) ^ mul_1(in[(31+col*32)-:8] ^ in[(23+col*32)-:8] ^ in[(15+col*32)-:8]);
    end
endgenerate

function [N-1 : 0] xtime; //inverse nedd to revise
    input [N-1 : 0] dividend;
    begin
        if(dividend[N-1])
            xtime = (dividend << 1) ^ 8'h1b;
        else
            xtime = dividend << 1;
    end
endfunction	
 
function [N-1 : 0] mul_1; 
   input [N-1 : 0] mul_1_in;
   begin
        mul_1 = mul_1_in;
   end
endfunction	

function [N-1 : 0] mul_2;
    input [N-1 : 0] mul_2_in;
    begin
        mul_2 = xtime(mul_2_in);
    end
endfunction	

function [N-1 : 0] mul_3;
    input [N-1 : 0] mul_3_in;
    begin
        mul_3 = xtime(mul_3_in) ^ mul_3_in;
    end
endfunction	

endmodule