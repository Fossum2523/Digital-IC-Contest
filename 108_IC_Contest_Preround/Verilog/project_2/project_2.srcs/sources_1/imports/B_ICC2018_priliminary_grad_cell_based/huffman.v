module huffman(clk, reset, gray_valid, gray_data, CNT_valid, CNT1, CNT2, CNT3, CNT4, CNT5, CNT6,
    code_valid,M1, M2, M3, M4, M5, M6, HC1, HC2, HC3, HC4, HC5, HC6);

input clk;
input reset;
input gray_valid;
input [7:0] gray_data;
output reg CNT_valid;
output [7:0] CNT1, CNT2, CNT3, CNT4, CNT5, CNT6;
output reg code_valid;
output reg[7:0] HC1, HC2, HC3, HC4, HC5, HC6;
output reg[7:0] M1, M2, M3, M4, M5, M6;


reg [7:0]count_100p;
reg [7:0]A_quan[5:0];

assign CNT1 = CNT_valid ? A_quan[0] : 8'd0;
assign CNT2 = CNT_valid ? A_quan[1] : 8'd0;
assign CNT3 = CNT_valid ? A_quan[2] : 8'd0;
assign CNT4 = CNT_valid ? A_quan[3] : 8'd0;
assign CNT5 = CNT_valid ? A_quan[4] : 8'd0;
assign CNT6 = CNT_valid ? A_quan[5] : 8'd0;

//input 100 pixel start----------------------------------
always @(posedge clk or posedge reset)begin
    if(reset)begin
        A_quan[0] <= 7'd0;
        A_quan[1] <= 7'd0;
        A_quan[2] <= 7'd0;
        A_quan[3] <= 7'd0;
        A_quan[4] <= 7'd0;
        A_quan[5] <= 7'd0;
        count_100p <= 7'd0;
        CNT_valid <= 1'b0;
    end
    else if(gray_valid && count_100p<7'd100) begin
        case(gray_data)
            16'h01: A_quan[0] <= A_quan[0] + 1'b1;
            16'h02: A_quan[1] <= A_quan[1] + 1'b1;
            16'h03: A_quan[2] <= A_quan[2] + 1'b1;
            16'h04: A_quan[3] <= A_quan[3] + 1'b1;
            16'h05: A_quan[4] <= A_quan[4] + 1'b1;
            16'h06: A_quan[5] <= A_quan[5] + 1'b1;
            default:begin
                A_quan[0] <= 7'dz;
                A_quan[1] <= 7'dz;
                A_quan[2] <= 7'dz;
                A_quan[3] <= 7'dz;
                A_quan[4] <= 7'dz;
                A_quan[5] <= 7'dz;
            end
        endcase
        count_100p <= count_100p +1'b1;
    end
     else if(CNT_valid == 1'b1)begin
        count_100p <=7'd101;
        CNT_valid <= 1'b0;
    end
    else if(count_100p==7'd100)begin
        CNT_valid <= 1'b1;
    end
end
//input 100 pixel end------------------------------------

//Insertion Sort start-----------------------------------
reg [6:0]bit_array;
reg [13:0]sym_set[5:0];

integer i,j;

reg in_valid;
reg [13:0]data_in;
reg sort_done;
reg [5:0]state_fg;
reg [3:0]cnt_sym;
reg [3:0]cnt_PC;

integer l;

always@(posedge clk or posedge reset)begin
    if(reset)begin
	    for(i=0;i<6;i=i+1)bit_array[i] = 0;
	    bit_array[6] = 1;
	end
	else if(in_valid)begin
	    for(i=0;i<cnt_sym;i=i+1)bit_array[i] = (data_in[7:0] > sym_set[i][7:0]) ? 1 : 0;//		  
	end
	else begin
	    for(i=0;i<cnt_sym-1;i=i+1)bit_array[i] = 0;
	    bit_array[cnt_sym-1] = 1;//----------------------------
	end
end

always@(posedge clk or posedge reset)begin
	if(reset)begin
        for(j=0;j<6;j=j+1)sym_set[j] <= 14'b000000_1111_1111;
    end
    
    else if(in_valid)begin
	    for(j=cnt_sym;j>0;j=j-1)begin
		    sym_set[j-1]   <=  (bit_array[j-:2]==2'b10) ? data_in :
							(bit_array[j-:2]==2'b11) ? sym_set[j-1] : sym_set[j];
	    end
	end
    else if(sort_done && cnt_sym>4'd1)begin
        sym_set[cnt_sym-1][7:0] <= sym_set[cnt_sym-1][7:0] + sym_set[cnt_sym-2][7:0];
        sym_set[cnt_sym-1][13:8] <= sym_set[cnt_sym-1][13:8] | sym_set[cnt_sym-2][13:8];
        for(j=0;j<cnt_sym-2;j=j+1) sym_set[j+1] <= sym_set[j];
        sym_set[0] <= 14'b000000_1111_1111;
    end
end 

//Insertion Sort end-------------------------------------

reg [5:0]weight[4:0];
reg [5:0]weight_2[4:0];
reg [5:0]deep[5:0];

always@(posedge clk or posedge reset)begin
	if(reset)begin 
        data_in <= 14'd0;
        cnt_sym <= 4'd6;
        cnt_PC <= 4'd0;
        in_valid <= 1'b0;
        sort_done <= 1'b0;
        state_fg <= 6'd0;
        for(i=0;i<5;i=i+1)weight[i] <= 6'd0;
        for(i=0;i<6;i=i+1) deep[i] <= 6'd0;
        HC1 <= 8'd0;
        HC2 <= 8'd0;
        HC3 <= 8'd0;
        HC4 <= 8'd0;
        HC5 <= 8'd0;
        HC6 <= 8'd0;

        M1 <= 8'd0;
        M2 <= 8'd0;
        M3 <= 8'd0;
        M4 <= 8'd0;
        M5 <= 8'd0;
        M6 <= 8'd0;

        CNT_valid <= 1'b0;
        code_valid <= 1'b0;
    end
	else if(count_100p ==7'd101)begin
        case(state_fg)
            6'd0:begin
                cnt_sym <= 4'd6;//
                cnt_PC <= 4'd0;
                in_valid <= 1'b0;
                state_fg <= state_fg + 1'b1;    
            end
            6'd1:begin
                in_valid <= 1'b1;
                data_in[7:0] <= A_quan[cnt_PC];
                data_in[cnt_PC+8] <= 1'b1;
                cnt_PC <= cnt_PC + 1'b1;
                state_fg <= state_fg + 1'b1;
            end
            6'd2:begin
                data_in[13:8] <= 6'd0;
                in_valid <= 1'b0; 
                if(cnt_PC <cnt_sym) state_fg <= 6'd1;
                else state_fg <= state_fg + 1'b1;
            end
            6'd3:begin
                in_valid <= 1'b0;//
                data_in[7:0] <= sym_set[cnt_sym-1][7:0] + sym_set[cnt_sym-2][7:0];
                data_in[13:8] <= sym_set[cnt_sym-1][13:8] | sym_set[cnt_sym-2][13:8];
                if(cnt_sym > 4'd1) 
                sort_done <= 1'b1;
                for(i=0;i<6;i=i+1) weight[cnt_sym-2][i] <= sym_set[cnt_sym-1][8+i] ? 1'b1 : 1'b0;
                for(i=0;i<6;i=i+1) weight_2[cnt_sym-2][i] <= sym_set[cnt_sym-1][8+i] ? 1'b1 : 1'b0;
                state_fg <= state_fg + 1'b1;
            end
            6'd4:begin
                sort_done <= 1'b0;  
                if(cnt_sym > 4'd1)begin
                    cnt_PC <= 4'd0;
                    for(i=0;i<6;i=i+1) if(weight[cnt_sym-2][i]!=1'b1)weight[cnt_sym-2][i] <= sym_set[cnt_sym-2][8+i] ? 1'b1 : 1'b0;
                    state_fg <= state_fg + 1'b1;
                end  
                else  state_fg <= 6'd7;
            end
            6'd5:begin         
                cnt_sym <= cnt_sym - 1'b1;
                in_valid <= 1'b1;
                cnt_PC <= cnt_PC + 1'b1;
                state_fg <= state_fg + 1'b1;
            end
            6'd6:begin         
                data_in[13:8] <= 6'd0;
                in_valid <= 1'b0; 
                state_fg <= 6'd3;
            end

            6'd7:begin  
                deep[0] <= weight[0][0] + weight[1][0] + weight[2][0] + weight[3][0] + weight[4][0];
                deep[1] <= weight[0][1] + weight[1][1] + weight[2][1] + weight[3][1] + weight[4][1];
                deep[2] <= weight[0][2] + weight[1][2] + weight[2][2] + weight[3][2] + weight[4][2];
                deep[3] <= weight[0][3] + weight[1][3] + weight[2][3] + weight[3][3] + weight[4][3];
                deep[4] <= weight[0][4] + weight[1][4] + weight[2][4] + weight[3][4] + weight[4][4];
                deep[5] <= weight[0][5] + weight[1][5] + weight[2][5] + weight[3][5] + weight[4][5];

                HC1[state_fg-6'd7] <= weight[state_fg-6'd7][0] & weight_2[state_fg-6'd7][0];
                HC2[state_fg-6'd7] <= weight[state_fg-6'd7][1] & weight_2[state_fg-6'd7][1];
                HC3[state_fg-6'd7] <= weight[state_fg-6'd7][2] & weight_2[state_fg-6'd7][2];
                HC4[state_fg-6'd7] <= weight[state_fg-6'd7][3] & weight_2[state_fg-6'd7][3];
                HC5[state_fg-6'd7] <= weight[state_fg-6'd7][4] & weight_2[state_fg-6'd7][4];
                HC6[state_fg-6'd7] <= weight[state_fg-6'd7][5] & weight_2[state_fg-6'd7][5];
                state_fg <= state_fg + 1'b1;
            end
            6'd8:begin  
                M1 <= (1'b1 << (deep[0])) - 1'b1;
                M2 <= (1'b1 << (deep[1])) - 1'b1;
                M3 <= (1'b1 << (deep[2])) - 1'b1;
                M4 <= (1'b1 << (deep[3])) - 1'b1;
                M5 <= (1'b1 << (deep[4])) - 1'b1;
                M6 <= (1'b1 << (deep[5])) - 1'b1;
                
                if(weight[state_fg-6'd7][0]) HC1 <= (HC1 << 1'b1) + weight_2[state_fg-6'd7][0];
                if(weight[state_fg-6'd7][1]) HC2 <= (HC2 << 1'b1) + weight_2[state_fg-6'd7][1];
                if(weight[state_fg-6'd7][2]) HC3 <= (HC3 << 1'b1) + weight_2[state_fg-6'd7][2];
                if(weight[state_fg-6'd7][3]) HC4 <= (HC4 << 1'b1) + weight_2[state_fg-6'd7][3];
                if(weight[state_fg-6'd7][4]) HC5 <= (HC5 << 1'b1) + weight_2[state_fg-6'd7][4];
                if(weight[state_fg-6'd7][5]) HC6 <= (HC6 << 1'b1) + weight_2[state_fg-6'd7][5];

                state_fg <= state_fg + 1'b1;
            end
            6'd9:begin
                if(weight[state_fg-6'd7][0]) HC1 <= (HC1 << 1'b1) + weight_2[state_fg-6'd7][0];
                if(weight[state_fg-6'd7][1]) HC2 <= (HC2 << 1'b1) + weight_2[state_fg-6'd7][1];
                if(weight[state_fg-6'd7][2]) HC3 <= (HC3 << 1'b1) + weight_2[state_fg-6'd7][2];
                if(weight[state_fg-6'd7][3]) HC4 <= (HC4 << 1'b1) + weight_2[state_fg-6'd7][3];
                if(weight[state_fg-6'd7][4]) HC5 <= (HC5 << 1'b1) + weight_2[state_fg-6'd7][4];
                if(weight[state_fg-6'd7][5]) HC6 <= (HC6 << 1'b1) + weight_2[state_fg-6'd7][5];

                state_fg <= state_fg + 1'b1;
            end
            6'd10:begin
                if(weight[state_fg-6'd7][0]) HC1 <= (HC1 << 1'b1) + weight_2[state_fg-6'd7][0];
                if(weight[state_fg-6'd7][1]) HC2 <= (HC2 << 1'b1) + weight_2[state_fg-6'd7][1];
                if(weight[state_fg-6'd7][2]) HC3 <= (HC3 << 1'b1) + weight_2[state_fg-6'd7][2];
                if(weight[state_fg-6'd7][3]) HC4 <= (HC4 << 1'b1) + weight_2[state_fg-6'd7][3];
                if(weight[state_fg-6'd7][4]) HC5 <= (HC5 << 1'b1) + weight_2[state_fg-6'd7][4];
                if(weight[state_fg-6'd7][5]) HC6 <= (HC6 << 1'b1) + weight_2[state_fg-6'd7][5];
                state_fg <= state_fg + 1'b1;
            end
            6'd11:begin
                if(weight[state_fg-6'd7][0]) HC1 <= (HC1 << 1'b1) + weight_2[state_fg-6'd7][0];
                if(weight[state_fg-6'd7][1]) HC2 <= (HC2 << 1'b1) + weight_2[state_fg-6'd7][1];
                if(weight[state_fg-6'd7][2]) HC3 <= (HC3 << 1'b1) + weight_2[state_fg-6'd7][2];
                if(weight[state_fg-6'd7][3]) HC4 <= (HC4 << 1'b1) + weight_2[state_fg-6'd7][3];
                if(weight[state_fg-6'd7][4]) HC5 <= (HC5 << 1'b1) + weight_2[state_fg-6'd7][4];
                if(weight[state_fg-6'd7][5]) HC6 <= (HC6 << 1'b1) + weight_2[state_fg-6'd7][5];
                state_fg <= state_fg + 1'b1;
            end
            6'd12:begin  
                CNT_valid <= 1'b1;
                code_valid <= 1'b1;
                state_fg <= state_fg + 1'b1;
            end
            6'd13:begin  
                CNT_valid <= 1'b0;
                code_valid <= 1'b0;
            end
        endcase
    end
end

endmodule
