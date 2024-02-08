library IEEE,DWARE;
use IEEE.std_logic_1164.all;
use DWARE.DWpackages.all;
use DWARE.DW_Foundation_comp.all;

entity DW_fifoctl_2c_df_inst is
      generic (
	    inst_width           : POSITIVE := 8;
	    inst_ram_depth       : POSITIVE := 8;
	    inst_mem_mode        : NATURAL := 5;
	    inst_f_sync_type     : NATURAL := 2;
	    inst_r_sync_type     : NATURAL := 2;
	    inst_clk_ratio       : INTEGER := 7;
	    inst_ram_re_ext      : NATURAL := 1;
	    inst_err_mode        : NATURAL := 0;
	    inst_tst_mode        : NATURAL := 0;
	    inst_verif_en        : NATURAL := 2;
	    inst_clr_dual_domain : NATURAL := 1;
	    inst_arch_type       : NATURAL := 0
	    );
      port (
	    inst_clk_s           : in std_logic;
	    inst_rst_s_n         : in std_logic;
	    inst_init_s_n        : in std_logic;
	    inst_clr_s           : in std_logic;
	    inst_ae_level_s      : in std_logic_vector(bit_width(inst_ram_depth+1)-1 downto 0);
	    inst_af_level_s      : in std_logic_vector(bit_width(inst_ram_depth+1)-1 downto 0);
	    inst_push_s_n        : in std_logic;
	    clr_sync_s_inst      : out std_logic;
	    clr_in_prog_s_inst   : out std_logic;
	    clr_cmplt_s_inst     : out std_logic;
	    wr_en_s_n_inst       : out std_logic;
	    wr_addr_s_inst       : out std_logic_vector(bit_width(inst_ram_depth)-1 downto 0);
	    fifo_word_cnt_s_inst : out std_logic_vector(bit_width(inst_ram_depth+(1+(inst_mem_mode mod 2))+((inst_mem_mode/2) mod 2))-1 downto 0);
	    word_cnt_s_inst      : out std_logic_vector(bit_width(inst_ram_depth+1)-1 downto 0);
	    fifo_empty_s_inst    : out std_logic;
	    empty_s_inst         : out std_logic;
	    almost_empty_s_inst  : out std_logic;
	    half_full_s_inst     : out std_logic;
	    almost_full_s_inst   : out std_logic;
	    full_s_inst          : out std_logic;
	    error_s_inst         : out std_logic;
	    inst_clk_d           : in std_logic;
	    inst_rst_d_n         : in std_logic;
	    inst_init_d_n        : in std_logic;
	    inst_clr_d           : in std_logic;
	    inst_ae_level_d      : in std_logic_vector(bit_width(inst_ram_depth+1)-1 downto 0);
	    inst_af_level_d      : in std_logic_vector(bit_width(inst_ram_depth+1)-1 downto 0);
	    inst_pop_d_n         : in std_logic;
	    inst_rd_data_d       : in std_logic_vector(inst_width-1 downto 0);
	    clr_sync_d_inst      : out std_logic;
	    clr_in_prog_d_inst   : out std_logic;
	    clr_cmplt_d_inst     : out std_logic;
	    ram_re_d_n_inst      : out std_logic;
	    rd_addr_d_inst       : out std_logic_vector(bit_width(inst_ram_depth)-1 downto 0);
	    data_d_inst          : out std_logic_vector(inst_width-1 downto 0);
	    word_cnt_d_inst      : out std_logic_vector(bit_width(inst_ram_depth+(1+(inst_mem_mode mod 2))+((inst_mem_mode/2) mod 2))-1 downto 0);
	    ram_word_cnt_d_inst  : out std_logic_vector(bit_width(inst_ram_depth+1)-1 downto 0);
	    empty_d_inst         : out std_logic;
	    almost_empty_d_inst  : out std_logic;
	    half_full_d_inst     : out std_logic;
	    almost_full_d_inst   : out std_logic;
	    full_d_inst          : out std_logic;
	    error_d_inst         : out std_logic;
	    inst_test            : in std_logic
	    );
    end DW_fifoctl_2c_df_inst;


architecture inst of DW_fifoctl_2c_df_inst is
begin
    -- Instance of DW_fifoctl_2c_df
    U1 : DW_fifoctl_2c_df
	generic map ( width => inst_width, ram_depth => inst_ram_depth,
       mem_mode => inst_mem_mode, f_sync_type => inst_f_sync_type,
       r_sync_type => inst_r_sync_type, clk_ratio => inst_clk_ratio,
       ram_re_ext => inst_ram_re_ext, err_mode => inst_err_mode,
       tst_mode => inst_tst_mode, verif_en => inst_verif_en,
       clr_dual_domain => inst_clr_dual_domain, arch_type => inst_arch_type )
	port map ( clk_s => inst_clk_s, rst_s_n => inst_rst_s_n, init_s_n => inst_init_s_n,
     clr_s => inst_clr_s, ae_level_s => inst_ae_level_s, af_level_s => inst_af_level_s,
    push_s_n => inst_push_s_n, clr_sync_s => clr_sync_s_inst, clr_in_prog_s => clr_in_prog_s_inst,
    clr_cmplt_s => clr_cmplt_s_inst, wr_en_s_n => wr_en_s_n_inst, wr_addr_s => wr_addr_s_inst,
    fifo_word_cnt_s => fifo_word_cnt_s_inst, word_cnt_s => word_cnt_s_inst,
    fifo_empty_s => fifo_empty_s_inst, empty_s => empty_s_inst, almost_empty_s => almost_empty_s_inst,
    half_full_s => half_full_s_inst, almost_full_s => almost_full_s_inst,
    full_s => full_s_inst, error_s => error_s_inst,
    clk_d => inst_clk_d, rst_d_n => inst_rst_d_n, init_d_n => inst_init_d_n,
    clr_d => inst_clr_d, ae_level_d => inst_ae_level_d, af_level_d => inst_af_level_d,
    pop_d_n => inst_pop_d_n, rd_data_d => inst_rd_data_d, clr_sync_d => clr_sync_d_inst,
    clr_in_prog_d => clr_in_prog_d_inst, clr_cmplt_d => clr_cmplt_d_inst,
    ram_re_d_n => ram_re_d_n_inst, rd_addr_d => rd_addr_d_inst, data_d => data_d_inst,
    word_cnt_d => word_cnt_d_inst, ram_word_cnt_d => ram_word_cnt_d_inst,
    empty_d => empty_d_inst, almost_empty_d => almost_empty_d_inst,
    half_full_d => half_full_d_inst, almost_full_d => almost_full_d_inst,
    full_d => full_d_inst, error_d => error_d_inst, test => inst_test );

end inst;

-- Configuration for use with a VHDL simulator
-- pragma translate_off
library DW03;
configuration DW_fifoctl_2c_df_inst_cfg_inst of DW_fifoctl_2c_df_inst is
  for inst
    -- NOTE: If desiring to model missampling, uncomment the following
    -- line.  Doing so, however, will cause inconsequential errors
    -- when analyzing or reading this configuration before synthesis.
    -- for U1 : DW_fifoctl_2c_df use configuration DW03.DW_fifoctl_2c_df_cfg_sim_ms;  end for;
  end for; -- inst
end DW_fifoctl_2c_df_inst_cfg_inst;
-- pragma translate_on
