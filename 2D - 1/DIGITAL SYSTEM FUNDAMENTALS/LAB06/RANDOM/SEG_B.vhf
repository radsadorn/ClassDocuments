--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SEG_B.vhf
-- /___/   /\     Timestamp : 10/17/2020 22:58:29
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/HCARACH/Documents/2D/Digital/RANDOM/SEG_B.vhf -w C:/Users/HCARACH/Documents/2D/Digital/RANDOM/SEG_B.sch
--Design Name: SEG_B
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

entity SEG_B is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          b     : out   std_logic);
end SEG_B;

architecture BEHAVIORAL of SEG_B is
   attribute BOX_TYPE   : string ;
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_23 : std_logic;
   signal XLXN_24 : std_logic;
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
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
begin
   XLXI_6 : INV
      port map (I=>BIT_0,
                O=>XLXN_20);
   
   XLXI_7 : INV
      port map (I=>BIT_1,
                O=>XLXN_21);
   
   XLXI_8 : INV
      port map (I=>BIT_2,
                O=>XLXN_24);
   
   XLXI_9 : AND2
      port map (I0=>XLXN_21,
                I1=>XLXN_20,
                O=>XLXN_22);
   
   XLXI_10 : AND2
      port map (I0=>BIT_1,
                I1=>BIT_0,
                O=>XLXN_23);
   
   XLXI_11 : OR3
      port map (I0=>XLXN_24,
                I1=>XLXN_23,
                I2=>XLXN_22,
                O=>b);
   
end BEHAVIORAL;


