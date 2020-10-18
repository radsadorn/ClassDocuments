--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SEG_A.vhf
-- /___/   /\     Timestamp : 10/17/2020 17:37:08
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/HCARACH/Documents/2D/Digital/RANDOM/SEG_A.vhf -w C:/Users/HCARACH/Documents/2D/Digital/RANDOM/SEG_A.sch
--Design Name: SEG_A
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

entity SEG_A is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          BIT_3 : in    std_logic; 
          a     : out   std_logic);
end SEG_A;

architecture BEHAVIORAL of SEG_A is
   attribute BOX_TYPE   : string ;
   signal XLXN_24 : std_logic;
   signal XLXN_25 : std_logic;
   signal XLXN_26 : std_logic;
   signal XLXN_27 : std_logic;
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
                O=>XLXN_25);
   
   XLXI_10 : INV
      port map (I=>BIT_2,
                O=>XLXN_26);
   
   XLXI_13 : AND2
      port map (I0=>XLXN_26,
                I1=>XLXN_25,
                O=>XLXN_24);
   
   XLXI_14 : AND2
      port map (I0=>BIT_2,
                I1=>BIT_0,
                O=>XLXN_27);
   
   XLXI_15 : OR4
      port map (I0=>BIT_3,
                I1=>XLXN_27,
                I2=>BIT_1,
                I3=>XLXN_24,
                O=>a);
   
end BEHAVIORAL;


