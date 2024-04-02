`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:13:21 04/01/2024 
// Design Name: 
// Module Name:    SIPO_8to128 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SIPO_8to128#(
    parameter   in_N = 8,
                set_N = 16,
                out_N = in_N * set_N
    )(
        input clk,
        input reset,
        input en,
        input claer,
        input [in_N-1:0]in,
        output valid,
        output [out_N-1:0]out
);


reg [4:0]cnt;
reg [out_N-1:0]DFF;

assign valid = cnt == set_N ? 1'b1 : 1'b0;
assign out = DFF;

genvar i;
generate
    for ( i= 1; i <= 16; i= i + 1) begin:SIPO 
        always @(posedge clk or posedge reset) begin
            if(reset)begin
                DFF[(i*in_N-1)-:in_N] <= 8'd0;
            end
            else begin
                if(en && cnt == (i-1))begin
                    DFF[(i*in_N-1)-:in_N] <= in;
                end 
            end
        end
    end
endgenerate

always @(posedge clk or posedge reset) begin
    if(reset)begin
        cnt <= 4'd0;
    end
    else begin
        if(claer)
            cnt <= 4'd0;
        else if(en && cnt<set_N)
            cnt <= cnt + 1'b1;
    end
end

endmodule
