////////////////////////////////////////////////////////////////////////////////
//
//       This confidential and proprietary software may be used only
//     as authorized by a licensing agreement from Synopsys Inc.
//     In the event of publication, the following notice is applicable:
//
//                    (C) COPYRIGHT 1996 - 2023 SYNOPSYS INC.
//                           ALL RIGHTS RESERVED
//
//       The entire notice above must be reproduced on all authorized
//     copies.
//
// AUTHOR:    SS        	Feb 25, 1997
//
// VERSION:   Simulation Architecture
//
// DesignWare_version: 7285f3f5
// DesignWare_release: U-2022.12-DWBB_202212.5
//
////////////////////////////////////////////////////////////////////////////////
//-----------------------------------------------------------------------------------
//
// ABSTRACT:  Single-Port RAM (Latch-Based)
//            (latch based memory array)
//
//              Parameters:     Valid Values
//              ===========     ============
//              data_width      [ 1 to 256 ]
//              depth           [ 2 to 256 ]
//              rst_mode        [ 0 = asynchronous reset,
//                                1 = no reset ]
//
//              Input Ports:    Description
//              ============    ===========
//              rst_n           Reset (active low)
//              cs_n            Chip Select (active low)
//              wr_n            Write Enable (active low)
//              rw_addr         Address Bus [ceil( log2(depth) )]
//              data_in         Input data [data_width-1:0]
//
//              Output Ports:   Description
//              =============   ===========
//              data_out        Output data [data_width-1:0]
//
//      NOTE: This RAM is intended to be used as a scratchpad memory only.
//              For best results keep "depth" and "data_width" less than 65
//              (ie. less than 64 words in RAM) and the overall number of
//              bits less than 256.
//
// MODIFIED: 11/11/99 RPH 	Rewrote for STAR 91151
//              10/18/00  RPH       Rewrote accoding to new guidelines 
//                                  STAR 111067   
//              9/10/14   RJK       Eliminated common async and sync reset coding
//				    style to support VCS NLP
//
//------------------------------------------------------------------------------

module DW_ram_rw_a_lat (rst_n, cs_n, wr_n, rw_addr, data_in, data_out);

   parameter integer data_width = 4;
   parameter integer depth = 8;
   parameter integer rst_mode = 1;


// Address width calculation limited to 8 bits (i.e. max depth 256)
`define DW_addr_width  ((depth>16)?((depth>64)?((depth>128)? 8 : 7) : ((depth>32)? 6 : 5)) : ((depth>4)?((depth>8)? 4 : 3) : ((depth>2)? 2 : 1)))
   
   input     wr_n;
   input     cs_n;
   input     rst_n;
   input [data_width-1 : 0] data_in;   // input port description
   input [`DW_addr_width-1 : 0] rw_addr;

   output [data_width-1 : 0] data_out; // output port description
// synopsys translate_off
   wire [data_width-1:0]   data_in;
   wire [data_width-1:0]   data_in_int;
   reg [data_width-1:0]    mem [depth-1:0];
   
   integer 		   i;
   
   function	any_unknown;
      input[`DW_addr_width-1:0] addr;
      integer	bit_idx;
      begin
	 any_unknown = 1'b0;

	 for (bit_idx = `DW_addr_width-1;
	      bit_idx >= 0 && any_unknown === 1'b0;
	      bit_idx = bit_idx-1)
	 begin
	    if (addr[bit_idx] !== 1'b0 && addr[bit_idx] !== 1'b1)
	      begin
		 any_unknown = 1'b1;
	      end
	 end
      end
   endfunction // any_unknown
   
  
 
  initial begin : parameter_check
    integer param_err_flg;

    param_err_flg = 0;
    
    
  
    if ( (data_width < 1) || (data_width > 256) ) begin
      param_err_flg = 1;
      $display(
	"ERROR: %m :\n  Invalid value (%d) for parameter data_width (legal range: 1 to 256)",
	data_width );
    end
  
    if ( (depth < 2) || (depth > 256 ) ) begin
      param_err_flg = 1;
      $display(
	"ERROR: %m :\n  Invalid value (%d) for parameter depth (legal range: 2 to 256 )",
	depth );
    end
  
    if ( (rst_mode < 0) || (rst_mode > 1 ) ) begin
      param_err_flg = 1;
      $display(
	"ERROR: %m :\n  Invalid value (%d) for parameter rst_mode (legal range: 0 to 1 )",
	rst_mode );
    end


  
    if ( param_err_flg == 1) begin
      $display(
        "%m :\n  Simulation aborted due to invalid parameter value(s)");
      $finish;
    end

  end // parameter_check 


  assign data_out = (rw_addr < depth && cs_n === 1'b0) ? 
		     (any_unknown(rw_addr) ? 
		      {data_width{1'bx}} : mem[rw_addr]) : {data_width{1'b0}};
   
   assign data_in_int = (any_unknown(data_in)) ? {data_width{1'bx}} : data_in;
   
   
generate
 if (rst_mode == 0) begin : GEN_RM_EQ_0
   always @(cs_n or rw_addr or wr_n or data_in_int or rst_n)
     begin : mk_ar_mem
	if (rst_n === 1'b0) begin
	   for (i = 0; i < depth; i = i + 1) begin
	      mem[i] = {data_width{1'b0}};
	   end 
	end
	else if (rst_n === 1'b1) begin
	   if (cs_n === 1'b0) begin
	      if (wr_n === 1'b0) begin
		 if (any_unknown(rw_addr) == 1'b1) begin
		    for (i = 0; i < depth; i = i + 1) begin
		       mem[i] = {data_width{1'bx}};
		    end 
		 end
		 else begin
		    mem[rw_addr] = data_in_int;
		 end // else: !if(any_unknown(rw_addr) == 1'b1)
	      end // if (cs_n === 1'b0)
	      else if(wr_n === 1'b1) begin
		 // do nothing
	      end
	      else begin
		 if (any_unknown(rw_addr) == 1'b1) begin
		    for (i = 0; i < depth; i = i + 1) begin
		       mem[i] = {data_width{1'bx}};
		    end 
		 end
		 else begin
		    mem[rw_addr] = {data_width{1'bx}};
		 end // else: !if(any_unknown(rw_addr) == 1'b1)
	      end
	   end // if (cs_n === 1'b0)
	   else if (cs_n === 1'b1) begin
	      // do nothing
	   end
	   else begin
	      if (any_unknown(rw_addr) == 1'b1) begin
		 for (i = 0; i < depth; i = i + 1) begin
		    mem[i] = {data_width{1'bx}};
		 end 
	      end
	      else begin
		 mem[rw_addr] = data_in_int;
	      end // else: !if(any_unknown(rw_addr) == 1'b1)
	   end // else: !if(cs_n === 1'b1)
	end // if (rst_n === 1'b1)
	else begin
	   for (i = 0; i < depth; i = i + 1) begin
	      mem[i] = {data_width{1'bx}};
	   end 
	end // else: !if(rst_n === 1'b1)
     end // block: mk_ar_mem
  end else begin : GEN_RM_NE_0
   always @(cs_n or rw_addr or wr_n or data_in_int)
     begin : mk_nr_mem
       if (cs_n === 1'b0) begin
	  if (wr_n === 1'b0) begin
	     if (any_unknown(rw_addr) == 1'b1) begin
		for (i = 0; i < depth; i = i + 1) begin
		   mem[i] = {data_width{1'bx}};
		end 
	     end
	     else begin
		mem[rw_addr] = data_in_int;
	     end // else: !if(any_unknown(rw_addr) == 1'b1)
	  end // if (cs_n === 1'b0)
	  else if(wr_n === 1'b1) begin
	     // do nothing
	  end
	  else begin
	     if (any_unknown(rw_addr) == 1'b1) begin
		for (i = 0; i < depth; i = i + 1) begin
		   mem[i] = {data_width{1'bx}};
		end 
	     end
	     else begin
		mem[rw_addr] = {data_width{1'bx}};
	     end // else: !if(any_unknown(rw_addr) == 1'b1)
	  end
       end // if (cs_n === 1'b0)
       else if (cs_n === 1'b1) begin
	  // do nothing
       end
       else begin
	  if (any_unknown(rw_addr) == 1'b1) begin
	     for (i = 0; i < depth; i = i + 1) begin
		mem[i] = {data_width{1'bx}};
	     end 
	  end
	  else begin
	     mem[rw_addr] = data_in_int;
	  end // else: !if(any_unknown(rw_addr) == 1'b1)
       end // else: !if(cs_n === 1'b1)
     end // block: mk_nr_mem
  end
endgenerate
// synopsys translate_on
`undef DW_addr_width
endmodule  // DW_ram_rw_a_lat;




