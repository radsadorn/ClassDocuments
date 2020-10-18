--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SEG_G.vhf
-- /___/   /\     Timestamp : 10/17/2020 17:37:06
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/HCARACH/Documents/2D/Digital/RANDOM/SEG_G.vhf -w C:/Users/HCARACH/Documents/2D/Digital/RANDOM/SEG_G.sch
--Design Name: SEG_G
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

entity SEG_G is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          BIT_3 : in    std_logic; 
          g     : out   std_logic);
end SEG_G;

architecture BEHAVIORAL of SEG_G is
   attribute BOX_TYPE   : string ;
   signal XLXN_26 : std_logic;
   signal XLXN_27 : std_logic;
   signal XLXN_28 : std_logic;
   signal XLXN_29 : std_logic;
   signal XLXN_31 : std_logic;
   signal XLXN_33 : std_logic;
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
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
begin
   XLXI_9 : INV
      port map (I=>BIT_0,
                O=>XLXN_26);
   
   XLXI_10 : INV
      port map (I=>BIT_2,
                O=>XLXN_33);
   
   XLXI_11 : INV
      port map (I=>BIT_1,
                O=>XLXN_31);
   
   XLXI_12 : AND2
      port map (I0=>BIT_2,
                I1=>XLXN_26,
                O=>XLXN_27);
   
   XLXI_13 : AND2
      port map (I0=>XLXN_33,
                I1=>BIT_1,
                O=>XLXN_28);
   
   XLXI_14 : AND2
      port map (I0=>BIT_2,
                I1=>XLXN_31,
                O=>XLXN_29);
   
   XLXI_15 : OR4
      port map (I0=>BIT_3,
                I1=>XLXN_29,
                I2=>XLXN_28,
                I3=>XLXN_27,
                O=>g);
   
end BEHAVIORAL;


