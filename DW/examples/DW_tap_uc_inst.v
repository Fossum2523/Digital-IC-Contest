module DW_tap_uc_inst( tck, trst_n, tms, tdi, so, 
		bypass_sel, sentinel_val, device_id_sel, user_code_sel, user_code_val, 
		ver, ver_sel, part_num, part_num_sel, mnfr_id, 
		mnfr_id_sel, clock_dr_inst, shift_dr_inst, update_dr_inst, tdo_inst, 
		tdo_en_inst, tap_state_inst, instructions_inst, sync_capture_en_inst,
		sync_update_dr_inst, test );

parameter width = 8;
parameter id = 0;
parameter idcode_opcode = 1;
parameter version = 0;
parameter part = 0;
parameter man_num = 0;
parameter sync_mode = 0;
parameter tst_mode = 1;


input tck;
input trst_n;
input tms;
input tdi;
input so;
input bypass_sel;
input [width-2 : 0] sentinel_val;
input device_id_sel;
input user_code_sel;
input [31 : 0] user_code_val;
input [3 : 0] ver;
input ver_sel;
input [15 : 0] part_num;
input part_num_sel;
input [10 : 0] mnfr_id;
input mnfr_id_sel;
output clock_dr_inst;
output shift_dr_inst;
output update_dr_inst;
output tdo_inst;
output tdo_en_inst;
output [15 : 0] tap_state_inst;
output [width-1 : 0] instructions_inst;
output sync_capture_en_inst;
output sync_update_dr_inst;
input test;

    // Instance of DW_tap_uc
    DW_tap_uc #(width, id, idcode_opcode, version, part, man_num, sync_mode, tst_mode)
	  U1 ( .tck(tck), .trst_n(trst_n), .tms(tms), .tdi(tdi), .so(so),
	       .bypass_sel(bypass_sel), .sentinel_val(sentinel_val),
	       .device_id_sel(device_id_sel), .user_code_sel(user_code_sel),
	       .user_code_val(user_code_val), .ver(ver), .ver_sel(ver_sel),
	       .part_num(part_num), .part_num_sel(part_num_sel), .mnfr_id(mnfr_id),
	       .mnfr_id_sel(mnfr_id_sel), .clock_dr(clock_dr_inst),
	       .shift_dr(shift_dr_inst), .update_dr(update_dr_inst), .tdo(tdo_inst),
	       .tdo_en(tdo_en_inst), .tap_state(tap_state_inst),
	       .instructions(instructions_inst), .sync_capture_en(sync_capture_en_inst),
	       .sync_update_dr(sync_update_dr_inst), .test(test) );

endmodule
