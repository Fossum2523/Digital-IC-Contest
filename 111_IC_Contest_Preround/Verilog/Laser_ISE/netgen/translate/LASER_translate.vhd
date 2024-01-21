--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: LASER_translate.vhd
-- /___/   /\     Timestamp: Sun Jan 21 16:15:33 2024
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm LASER -w -dir netgen/translate -ofmt vhdl -sim LASER.ngd LASER_translate.vhd 
-- Device	: 6vlx75tff484-1
-- Input file	: LASER.ngd
-- Output file	: C:\Users\Theo\Desktop\IC_Contest\111_IC_Contest_Preround\Verilog\Laser_ISE\netgen\translate\LASER_translate.vhd
-- # of Entities	: 1
-- Design Name	: LASER
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity LASER is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RST : in STD_LOGIC := 'X'; 
    DONE : out STD_LOGIC; 
    X : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    Y : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    C1X : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    C1Y : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    C2X : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    C2Y : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end LASER;

architecture Structure of LASER is
begin
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

