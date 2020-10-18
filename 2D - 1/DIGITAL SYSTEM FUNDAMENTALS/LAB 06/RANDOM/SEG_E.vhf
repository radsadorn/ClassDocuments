--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SEG_E.vhf
-- /___/   /\     Timestamp : 10/17/2020 17:37:09
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/HCARACH/Documents/2D/Digital/RANDOM/SEG_E.vhf -w C:/Users/HCARACH/Documents/2D/Digital/RANDOM/SEG_E.sch
--Design Name: SEG_E
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SEG_E is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          e     : out   std_logic);
end SEG_E;

architecture BEHAVIORAL of SEG_E is
   attribute BOX_TYPE   : string ;
   signal XLXN_14 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_7 : INV
      port map (I=>BIT_0,
                O=>XLXN_16);
   
   XLXI_8 : INV
      port map (I=>BIT_2,
                O=>XLXN_19);
   
   XLXI_9 : INV
      port map (I=>BIT_0,
                O=>XLXN_20);
   
   XLXI_10 : AND2
      port map (I0=>XLXN_19,
                I1=>XLXN_16,
                O=>XLXN_14);
   
   XLXI_11 : AND2
      port map (I0=>BIT_1,
                I1=>XLXN_20,
                O=>XLXN_15);
   
   XLXI_12 : OR2
      port map (I0=>XLXN_15,
                I1=>XLXN_14,
                O=>e);
   
end BEHAVIORAL;


