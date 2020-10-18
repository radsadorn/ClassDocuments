--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Multiplexer.vhf
-- /___/   /\     Timestamp : 10/17/2020 18:05:57
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/HCARACH/Documents/2D/Digital/RANDOM/Multiplexer.vhf -w C:/Users/HCARACH/Documents/2D/Digital/RANDOM/Multiplexer.sch
--Design Name: Multiplexer
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL M2_1_HXILINX_Multiplexer -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_Multiplexer is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_Multiplexer;

architecture M2_1_HXILINX_Multiplexer_V of M2_1_HXILINX_Multiplexer is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_Multiplexer_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Multiplexer is
   port ( A0    : in    std_logic; 
          A1    : in    std_logic; 
          A2    : in    std_logic; 
          A3    : in    std_logic; 
          B0    : in    std_logic; 
          B1    : in    std_logic; 
          B2    : in    std_logic; 
          B3    : in    std_logic; 
          CLK   : in    std_logic; 
          BIT_0 : out   std_logic; 
          BIT_1 : out   std_logic; 
          BIT_2 : out   std_logic; 
          BIT_3 : out   std_logic);
end Multiplexer;

architecture BEHAVIORAL of Multiplexer is
   attribute HU_SET     : string ;
   component M2_1_HXILINX_Multiplexer
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_9";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_10";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_11";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_12";
begin
   XLXI_1 : M2_1_HXILINX_Multiplexer
      port map (D0=>A0,
                D1=>B0,
                S0=>CLK,
                O=>BIT_0);
   
   XLXI_2 : M2_1_HXILINX_Multiplexer
      port map (D0=>A1,
                D1=>B1,
                S0=>CLK,
                O=>BIT_1);
   
   XLXI_3 : M2_1_HXILINX_Multiplexer
      port map (D0=>A2,
                D1=>B2,
                S0=>CLK,
                O=>BIT_2);
   
   XLXI_4 : M2_1_HXILINX_Multiplexer
      port map (D0=>A3,
                D1=>B3,
                S0=>CLK,
                O=>BIT_3);
   
end BEHAVIORAL;


