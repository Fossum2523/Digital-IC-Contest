module SIPO_1to8 #(
    parameter N = 8
)(
    input clk,
    input reset,
    input en,
    input in,
    output valid,
    output reg[N-1:0]out
);

reg [3:0]cnt;

assign valid = cnt == 8 ? 1'b1 : 1'b0;

always @(posedge clk or posedge reset) begin
    if(reset)begin
        out <= 8'd0;
        cnt <= 4'd0;
    end
    else begin
        if(en && cnt < 8)begin
            out[cnt] <= in;
            cnt <= cnt + 1'b1;
        end 
    end
end

endmodule