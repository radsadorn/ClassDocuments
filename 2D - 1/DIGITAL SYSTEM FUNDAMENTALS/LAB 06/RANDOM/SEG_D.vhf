--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : SEG_D.vhf
-- /___/   /\     Timestamp : 10/17/2020 22:58:29
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/HCARACH/Documents/2D/Digital/RANDOM/SEG_D.vhf -w C:/Users/HCARACH/Documents/2D/Digital/RANDOM/SEG_D.sch
--Design Name: SEG_D
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

entity SEG_D is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          BIT_3 : in    std_logic; 
          d     : out   std_logic);
end SEG_D;

architecture BEHAVIORAL of SEG_D is
   attribute BOX_TYPE   : string ;
   signal XLXN_25 : std_logic;
   signal XLXN_26 : std_logic;
   signal XLXN_27 : std_logic;
   signal XLXN_28 : std_logic;
   signal XLXN_29 : std_logic;
   signal XLXN_30 : std_logic;
   signal XLXN_31 : std_logic;
   signal XLXN_32 : std_logic;
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
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
begin
   XLXI_13 : INV
      port map (I=>BIT_0,
                O=>XLXN_25);
   
   XLXI_14 : INV
      port map (I=>BIT_2,
                O=>XLXN_26);
   
   XLXI_15 : INV
      port map (I=>BIT_2,
                O=>XLXN_27);
   
   XLXI_16 : INV
      port map (I=>BIT_0,
                O=>XLXN_28);
   
   XLXI_17 : INV
      port map (I=>BIT_1,
                O=>XLXN_29);
   
   XLXI_18 : AND2
      port map (I0=>XLXN_26,
                I1=>XLXN_25,
                O=>XLXN_33);
   
   XLXI_19 : AND2
      port map (I0=>XLXN_27,
                I1=>BIT_1,
                O=>XLXN_32);
   
   XLXI_20 : AND2
      port map (I0=>XLXN_28,
                I1=>BIT_1,
                O=>XLXN_31);
   
   XLXI_21 : AND3
      port map (I0=>BIT_0,
                I1=>XLXN_29,
                I2=>BIT_2,
                O=>XLXN_30);
   
   XLXI_22 : OR5
      port map (I0=>BIT_3,
                I1=>XLXN_30,
                I2=>XLXN_31,
                I3=>XLXN_32,
                I4=>XLXN_33,
                O=>d);
   
end BEHAVIORAL;


