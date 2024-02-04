// a test bench for the ***
`timescale 1ns / 1ps //display in ns, precise in ps
module CalCost_2_tb ;
// internal signals declarations
parameter clock_period = 10; // 1000kMz / clock_period = the freq. you need
reg [6:0]Cost;
reg start ;
reg RST;
reg CLK;
reg arrange0;
reg arrange1;
reg arrange2;
reg arrange3;
reg arrange4;
reg arranee5;
reg arrange6;
reg arrange7;
wire [3:0] MatchCount;
wire [9:0] MinCost;
wire done;
integer i;
reg [2:0] W;
reg [2:0] J;
// UUT : Unit Under Test port map
// UUT ( .<madule input/output> ( <tb input/output> ) )
CalCost_2 UUT (
    .Cost(Cost),
    .start(start),
    .RST(RST),
    .CLK(CLK),
    .arrange0,
    .arrange1,
    .arrange2,
    .arrange3,
    .arrange4,
    .arrange5,
    .arrange6,
    .arrange7,   
    .MatchCount(MatchCount),
    .MinCost(MinCost),
    .done(done)
    .W(W),
    .J(J)
) ;

// generate a  CLK signal you need
initial CLK <= 1'b0;
always begin
    #(clock_period/ 2 ) CLK <= 1'b0;
    #(clock_period/ 2 ) CLK <= 1'b1;
end

initial begin
    RST= 1'b1; //clear FFs
    repeat (5 ) @(negedge CLK ) ; //wait for 5 CLK cycles
    RST = 1'b0; //set ready to start
    repeat (5 ) @(negedge CLK ) ; //wait for 5 CLK cycles

    @(negedge CLK ) Cost = 50; 
    start = 1'b1;
    @(negedge CLK ) start = 1'b0;
    wait (done);

    @(negedge CLK ) Cost = 45; 
    start = 1'b1;
    @(negedge CLK ) start = 1'b0;
    wait (done);

    @(negedge CLK ) Cost = 40; 
    start = 1'b1;
    @(negedge CLK ) start = 1'b0;
    wait (done);

    @(negedge CLK ) Cost = 35; 
    start = 1'b1;
    @(negedge CLK ) start = 1'b0;
    wait (done);

    @(negedge CLK ) Cost = 30; 
    start = 1'b1;
    @(negedge CLK ) start = 1'b0;
    wait (done);

    @(negedge CLK ) Cost = 50; 
    start = 1'b1;
    @(negedge CLK ) start = 1'b0;
    wait (done);

    @(negedge CLK ) Cost = 30; 
    start = 1'b1;
    @(negedge CLK ) start = 1'b0;
    wait (done);

    @(negedge CLK ) Cost = 30; 
    start = 1'b1;
    @(negedge CLK ) start = 1'b0;
    wait (done);
    $finish;
end

//initial #6000000 $finish ; //when to finsish

initial //the value you want to monitor
    $monitor ( $realtime , "ns start=%d, Cost=%d, MinCost=%d, MatchCount=%d, done=%d \n" ,
               start, Cost , MinCost , MatchCount , done) ;
endmodule