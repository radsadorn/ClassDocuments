--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : divide2.vhf
-- /___/   /\     Timestamp : 10/17/2020 23:30:37
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/HCARACH/Documents/2D/Digital/RANDOM/divide2.vhf -w C:/Users/HCARACH/Documents/2D/Digital/RANDOM/divide2.sch
--Design Name: divide2
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

entity divide2 is
   port ( CLK_IN  : in    std_logic; 
          CLK_OUT : out   std_logic);
end divide2;

architecture BEHAVIORAL of divide2 is
   attribute BOX_TYPE   : string ;
   signal XLXN_2        : std_logic;
   signal CLK_OUT_DUMMY : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
begin
   CLK_OUT <= CLK_OUT_DUMMY;
   XLXI_2 : INV
      port map (I=>CLK_OUT_DUMMY,
                O=>XLXN_2);
   
   XLXI_4 : FD
      port map (C=>CLK_IN,
                D=>XLXN_2,
                Q=>CLK_OUT_DUMMY);
   
end BEHAVIORAL;


