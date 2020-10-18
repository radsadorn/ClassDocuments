--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : RANDOM.vhf
-- /___/   /\     Timestamp : 10/17/2020 23:40:42
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/HCARACH/Documents/2D/Digital/RANDOM/RANDOM.vhf -w C:/Users/HCARACH/Documents/2D/Digital/RANDOM/RANDOM.sch
--Design Name: RANDOM
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL COMP4_HXILINX_RANDOM -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity COMP4_HXILINX_RANDOM is
  
port(
    EQ  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    A2  : in std_logic;
    A3  : in std_logic;
    B0  : in std_logic;
    B1  : in std_logic;
    B2  : in std_logic;
    B3  : in std_logic
  );
end COMP4_HXILINX_RANDOM;

architecture COMP4_HXILINX_RANDOM_V of COMP4_HXILINX_RANDOM is
begin
  EQ <= '1' when (A0=B0 and A1=B1 and A2=B2 and A3=B3) else '0';
end COMP4_HXILINX_RANDOM_V;
----- CELL CD4CE_HXILINX_RANDOM -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CD4CE_HXILINX_RANDOM is
  
port (
    CEO  : out STD_LOGIC;
    Q0   : out STD_LOGIC;
    Q1   : out STD_LOGIC;
    Q2   : out STD_LOGIC;
    Q3   : out STD_LOGIC;
    TC   : out STD_LOGIC;
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC
    );
end CD4CE_HXILINX_RANDOM;

architecture Behavioral of CD4CE_HXILINX_RANDOM is

  signal COUNT : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
  constant TERMINAL_COUNT : STD_LOGIC_VECTOR(3 downto 0) := "1001";
  
begin

process(C, CLR)
begin
  if (CLR='1') then
    COUNT <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 

      if (COUNT = "1001") then
        COUNT <= "0000";
      elsif (COUNT = "1011") then
        COUNT <= "0110";
      elsif (COUNT = "1101") then
        COUNT <= "0100";
      elsif (COUNT = "1111") then
        COUNT <= "0010";
      else
        COUNT <= COUNT+1;
      end if;

    end if;
  end if;
end process;

TC   <= '0' when (CLR = '1') else
        '1' when (COUNT = TERMINAL_COUNT) else '0';
CEO  <= '1' when ((COUNT = TERMINAL_COUNT) and CE='1') else '0';

Q3   <= COUNT(3);
Q2   <= COUNT(2);
Q1   <= COUNT(1);
Q0   <= COUNT(0);

end Behavioral;

----- CELL M2_1_HXILINX_RANDOM -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M2_1_HXILINX_RANDOM is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    S0  : in std_logic
  );
end M2_1_HXILINX_RANDOM;

architecture M2_1_HXILINX_RANDOM_V of M2_1_HXILINX_RANDOM is
begin
  process (D0, D1, S0)
  begin
    case S0 is
    when '0' => O <= D0;
    when '1' => O <= D1;
    when others => NULL;
    end case;
    end process; 
end M2_1_HXILINX_RANDOM_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity divide2_MUSER_RANDOM is
   port ( CLK_IN  : in    std_logic; 
          CLK_OUT : out   std_logic);
end divide2_MUSER_RANDOM;

architecture BEHAVIORAL of divide2_MUSER_RANDOM is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity divide2_4_MUSER_RANDOM is
   port ( CLK_IN  : in    std_logic; 
          CLK_OUT : out   std_logic);
end divide2_4_MUSER_RANDOM;

architecture BEHAVIORAL of divide2_4_MUSER_RANDOM is
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   component divide2_MUSER_RANDOM
      port ( CLK_IN  : in    std_logic; 
             CLK_OUT : out   std_logic);
   end component;
   
begin
   XLXI_6 : divide2_MUSER_RANDOM
      port map (CLK_IN=>CLK_IN,
                CLK_OUT=>XLXN_1);
   
   XLXI_7 : divide2_MUSER_RANDOM
      port map (CLK_IN=>XLXN_1,
                CLK_OUT=>XLXN_2);
   
   XLXI_8 : divide2_MUSER_RANDOM
      port map (CLK_IN=>XLXN_2,
                CLK_OUT=>XLXN_3);
   
   XLXI_9 : divide2_MUSER_RANDOM
      port map (CLK_IN=>XLXN_3,
                CLK_OUT=>CLK_OUT);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity divide2_16_MUSER_RANDOM is
   port ( CLK_IN  : in    std_logic; 
          CLK_OUT : out   std_logic);
end divide2_16_MUSER_RANDOM;

architecture BEHAVIORAL of divide2_16_MUSER_RANDOM is
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   component divide2_4_MUSER_RANDOM
      port ( CLK_IN  : in    std_logic; 
             CLK_OUT : out   std_logic);
   end component;
   
begin
   XLXI_5 : divide2_4_MUSER_RANDOM
      port map (CLK_IN=>CLK_IN,
                CLK_OUT=>XLXN_1);
   
   XLXI_7 : divide2_4_MUSER_RANDOM
      port map (CLK_IN=>XLXN_1,
                CLK_OUT=>XLXN_2);
   
   XLXI_8 : divide2_4_MUSER_RANDOM
      port map (CLK_IN=>XLXN_2,
                CLK_OUT=>XLXN_3);
   
   XLXI_9 : divide2_4_MUSER_RANDOM
      port map (CLK_IN=>XLXN_3,
                CLK_OUT=>CLK_OUT);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SEG_D_MUSER_RANDOM is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          BIT_3 : in    std_logic; 
          d     : out   std_logic);
end SEG_D_MUSER_RANDOM;

architecture BEHAVIORAL of SEG_D_MUSER_RANDOM is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SEG_C_MUSER_RANDOM is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          c     : out   std_logic);
end SEG_C_MUSER_RANDOM;

architecture BEHAVIORAL of SEG_C_MUSER_RANDOM is
   attribute BOX_TYPE   : string ;
   signal XLXN_11 : std_logic;
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
begin
   XLXI_4 : INV
      port map (I=>BIT_1,
                O=>XLXN_11);
   
   XLXI_5 : OR3
      port map (I0=>BIT_2,
                I1=>XLXN_11,
                I2=>BIT_0,
                O=>c);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SEG_G_MUSER_RANDOM is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          BIT_3 : in    std_logic; 
          g     : out   std_logic);
end SEG_G_MUSER_RANDOM;

architecture BEHAVIORAL of SEG_G_MUSER_RANDOM is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SEG_F_MUSER_RANDOM is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          BIT_3 : in    std_logic; 
          f     : out   std_logic);
end SEG_F_MUSER_RANDOM;

architecture BEHAVIORAL of SEG_F_MUSER_RANDOM is
   attribute BOX_TYPE   : string ;
   signal XLXN_23 : std_logic;
   signal XLXN_24 : std_logic;
   signal XLXN_25 : std_logic;
   signal XLXN_26 : std_logic;
   signal XLXN_27 : std_logic;
   signal XLXN_28 : std_logic;
   signal XLXN_29 : std_logic;
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
   XLXI_10 : INV
      port map (I=>BIT_0,
                O=>XLXN_23);
   
   XLXI_11 : INV
      port map (I=>BIT_1,
                O=>XLXN_24);
   
   XLXI_12 : INV
      port map (I=>BIT_1,
                O=>XLXN_25);
   
   XLXI_13 : INV
      port map (I=>BIT_0,
                O=>XLXN_26);
   
   XLXI_14 : AND2
      port map (I0=>XLXN_24,
                I1=>XLXN_23,
                O=>XLXN_29);
   
   XLXI_15 : AND2
      port map (I0=>XLXN_25,
                I1=>BIT_2,
                O=>XLXN_28);
   
   XLXI_16 : AND2
      port map (I0=>XLXN_26,
                I1=>BIT_2,
                O=>XLXN_27);
   
   XLXI_17 : OR4
      port map (I0=>BIT_3,
                I1=>XLXN_27,
                I2=>XLXN_28,
                I3=>XLXN_29,
                O=>f);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SEG_E_MUSER_RANDOM is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          e     : out   std_logic);
end SEG_E_MUSER_RANDOM;

architecture BEHAVIORAL of SEG_E_MUSER_RANDOM is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SEG_B_MUSER_RANDOM is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          b     : out   std_logic);
end SEG_B_MUSER_RANDOM;

architecture BEHAVIORAL of SEG_B_MUSER_RANDOM is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SEG_A_MUSER_RANDOM is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          BIT_3 : in    std_logic; 
          a     : out   std_logic);
end SEG_A_MUSER_RANDOM;

architecture BEHAVIORAL of SEG_A_MUSER_RANDOM is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity BCD2SEG_MUSER_RANDOM is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          BIT_3 : in    std_logic; 
          a     : out   std_logic; 
          b     : out   std_logic; 
          c     : out   std_logic; 
          d     : out   std_logic; 
          e     : out   std_logic; 
          f     : out   std_logic; 
          g     : out   std_logic);
end BCD2SEG_MUSER_RANDOM;

architecture BEHAVIORAL of BCD2SEG_MUSER_RANDOM is
   component SEG_A_MUSER_RANDOM
      port ( BIT_0 : in    std_logic; 
             BIT_1 : in    std_logic; 
             BIT_2 : in    std_logic; 
             BIT_3 : in    std_logic; 
             a     : out   std_logic);
   end component;
   
   component SEG_B_MUSER_RANDOM
      port ( BIT_0 : in    std_logic; 
             BIT_1 : in    std_logic; 
             BIT_2 : in    std_logic; 
             b     : out   std_logic);
   end component;
   
   component SEG_E_MUSER_RANDOM
      port ( BIT_0 : in    std_logic; 
             BIT_1 : in    std_logic; 
             BIT_2 : in    std_logic; 
             e     : out   std_logic);
   end component;
   
   component SEG_F_MUSER_RANDOM
      port ( BIT_0 : in    std_logic; 
             BIT_1 : in    std_logic; 
             BIT_2 : in    std_logic; 
             BIT_3 : in    std_logic; 
             f     : out   std_logic);
   end component;
   
   component SEG_G_MUSER_RANDOM
      port ( BIT_0 : in    std_logic; 
             BIT_1 : in    std_logic; 
             BIT_2 : in    std_logic; 
             BIT_3 : in    std_logic; 
             g     : out   std_logic);
   end component;
   
   component SEG_C_MUSER_RANDOM
      port ( BIT_0 : in    std_logic; 
             BIT_2 : in    std_logic; 
             BIT_1 : in    std_logic; 
             c     : out   std_logic);
   end component;
   
   component SEG_D_MUSER_RANDOM
      port ( BIT_3 : in    std_logic; 
             BIT_0 : in    std_logic; 
             BIT_1 : in    std_logic; 
             BIT_2 : in    std_logic; 
             d     : out   std_logic);
   end component;
   
begin
   XLXI_1 : SEG_A_MUSER_RANDOM
      port map (BIT_0=>BIT_0,
                BIT_1=>BIT_1,
                BIT_2=>BIT_2,
                BIT_3=>BIT_3,
                a=>a);
   
   XLXI_2 : SEG_B_MUSER_RANDOM
      port map (BIT_0=>BIT_0,
                BIT_1=>BIT_1,
                BIT_2=>BIT_2,
                b=>b);
   
   XLXI_5 : SEG_E_MUSER_RANDOM
      port map (BIT_0=>BIT_0,
                BIT_1=>BIT_1,
                BIT_2=>BIT_2,
                e=>e);
   
   XLXI_6 : SEG_F_MUSER_RANDOM
      port map (BIT_0=>BIT_0,
                BIT_1=>BIT_1,
                BIT_2=>BIT_2,
                BIT_3=>BIT_3,
                f=>f);
   
   XLXI_7 : SEG_G_MUSER_RANDOM
      port map (BIT_0=>BIT_0,
                BIT_1=>BIT_1,
                BIT_2=>BIT_2,
                BIT_3=>BIT_3,
                g=>g);
   
   XLXI_10 : SEG_C_MUSER_RANDOM
      port map (BIT_0=>BIT_0,
                BIT_1=>BIT_1,
                BIT_2=>BIT_2,
                c=>c);
   
   XLXI_11 : SEG_D_MUSER_RANDOM
      port map (BIT_0=>BIT_0,
                BIT_1=>BIT_1,
                BIT_2=>BIT_2,
                BIT_3=>BIT_3,
                d=>d);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Multiplexer_MUSER_RANDOM is
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
end Multiplexer_MUSER_RANDOM;

architecture BEHAVIORAL of Multiplexer_MUSER_RANDOM is
   attribute HU_SET     : string ;
   component M2_1_HXILINX_RANDOM
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             S0 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_0";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_1";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_2";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_3";
begin
   XLXI_1 : M2_1_HXILINX_RANDOM
      port map (D0=>A0,
                D1=>B0,
                S0=>CLK,
                O=>BIT_0);
   
   XLXI_2 : M2_1_HXILINX_RANDOM
      port map (D0=>A1,
                D1=>B1,
                S0=>CLK,
                O=>BIT_1);
   
   XLXI_3 : M2_1_HXILINX_RANDOM
      port map (D0=>A2,
                D1=>B2,
                S0=>CLK,
                O=>BIT_2);
   
   XLXI_4 : M2_1_HXILINX_RANDOM
      port map (D0=>A3,
                D1=>B3,
                S0=>CLK,
                O=>BIT_3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Counter_MUSER_RANDOM is
   port ( C   : in    std_logic; 
          CLR : in    std_logic; 
          A0  : out   std_logic; 
          A1  : out   std_logic; 
          A2  : out   std_logic; 
          A3  : out   std_logic; 
          B0  : out   std_logic; 
          B1  : out   std_logic; 
          B2  : out   std_logic; 
          B3  : out   std_logic);
end Counter_MUSER_RANDOM;

architecture BEHAVIORAL of Counter_MUSER_RANDOM is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_4  : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   component CD4CE_HXILINX_RANDOM
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             CEO : out   std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic; 
             TC  : out   std_logic);
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_4";
   attribute HU_SET of XLXI_2 : label is "XLXI_2_5";
begin
   XLXI_1 : CD4CE_HXILINX_RANDOM
      port map (C=>C,
                CE=>XLXN_4,
                CLR=>CLR,
                CEO=>XLXN_18,
                Q0=>A0,
                Q1=>A1,
                Q2=>A2,
                Q3=>A3,
                TC=>open);
   
   XLXI_2 : CD4CE_HXILINX_RANDOM
      port map (C=>XLXN_18,
                CE=>XLXN_4,
                CLR=>CLR,
                CEO=>XLXN_16,
                Q0=>B0,
                Q1=>B1,
                Q2=>B2,
                Q3=>B3,
                TC=>XLXN_17);
   
   XLXI_3 : VCC
      port map (P=>XLXN_4);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity RANDOM is
   port ( CLR     : in    std_logic; 
          OSC     : in    std_logic; 
          PB1     : in    std_logic; 
          a       : out   std_logic; 
          b       : out   std_logic; 
          Buzzer  : out   std_logic; 
          c       : out   std_logic; 
          common0 : out   std_logic; 
          common1 : out   std_logic; 
          common2 : out   std_logic; 
          common3 : out   std_logic; 
          d       : out   std_logic; 
          e       : out   std_logic; 
          f       : out   std_logic; 
          g       : out   std_logic);
end RANDOM;

architecture BEHAVIORAL of RANDOM is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_3        : std_logic;
   signal XLXN_20       : std_logic;
   signal XLXN_24       : std_logic;
   signal XLXN_25       : std_logic;
   signal XLXN_26       : std_logic;
   signal XLXN_27       : std_logic;
   signal XLXN_28       : std_logic;
   signal XLXN_29       : std_logic;
   signal XLXN_30       : std_logic;
   signal XLXN_37       : std_logic;
   signal XLXN_61       : std_logic;
   signal XLXN_101      : std_logic;
   signal XLXN_120      : std_logic;
   signal XLXN_121      : std_logic;
   signal XLXN_122      : std_logic;
   signal common0_DUMMY : std_logic;
   component BCD2SEG_MUSER_RANDOM
      port ( BIT_0 : in    std_logic; 
             BIT_1 : in    std_logic; 
             BIT_2 : in    std_logic; 
             BIT_3 : in    std_logic; 
             a     : out   std_logic; 
             c     : out   std_logic; 
             d     : out   std_logic; 
             e     : out   std_logic; 
             f     : out   std_logic; 
             g     : out   std_logic; 
             b     : out   std_logic);
   end component;
   
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
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component Counter_MUSER_RANDOM
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             A0  : out   std_logic; 
             A1  : out   std_logic; 
             A2  : out   std_logic; 
             A3  : out   std_logic; 
             B0  : out   std_logic; 
             B1  : out   std_logic; 
             B2  : out   std_logic; 
             B3  : out   std_logic);
   end component;
   
   component COMP4_HXILINX_RANDOM
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             A2 : in    std_logic; 
             A3 : in    std_logic; 
             B0 : in    std_logic; 
             B1 : in    std_logic; 
             B2 : in    std_logic; 
             B3 : in    std_logic; 
             EQ : out   std_logic);
   end component;
   
   component Multiplexer_MUSER_RANDOM
      port ( CLK   : in    std_logic; 
             B3    : in    std_logic; 
             A3    : in    std_logic; 
             B2    : in    std_logic; 
             A2    : in    std_logic; 
             B1    : in    std_logic; 
             A1    : in    std_logic; 
             A0    : in    std_logic; 
             B0    : in    std_logic; 
             BIT_0 : out   std_logic; 
             BIT_1 : out   std_logic; 
             BIT_2 : out   std_logic; 
             BIT_3 : out   std_logic);
   end component;
   
   component divide2_16_MUSER_RANDOM
      port ( CLK_IN  : in    std_logic; 
             CLK_OUT : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_28 : label is "XLXI_28_6";
begin
   common0 <= common0_DUMMY;
   XLXI_7 : BCD2SEG_MUSER_RANDOM
      port map (BIT_0=>XLXN_3,
                BIT_1=>XLXN_120,
                BIT_2=>XLXN_121,
                BIT_3=>XLXN_122,
                a=>a,
                b=>b,
                c=>c,
                d=>d,
                e=>e,
                f=>f,
                g=>g);
   
   XLXI_10 : INV
      port map (I=>common0_DUMMY,
                O=>common1);
   
   XLXI_11 : AND2
      port map (I0=>XLXN_37,
                I1=>XLXN_61,
                O=>Buzzer);
   
   XLXI_12 : INV
      port map (I=>PB1,
                O=>XLXN_37);
   
   XLXI_14 : VCC
      port map (P=>common2);
   
   XLXI_16 : VCC
      port map (P=>common3);
   
   XLXI_20 : AND2
      port map (I0=>PB1,
                I1=>common0_DUMMY,
                O=>XLXN_101);
   
   XLXI_27 : Counter_MUSER_RANDOM
      port map (C=>XLXN_101,
                CLR=>CLR,
                A0=>XLXN_20,
                A1=>XLXN_24,
                A2=>XLXN_25,
                A3=>XLXN_26,
                B0=>XLXN_27,
                B1=>XLXN_28,
                B2=>XLXN_29,
                B3=>XLXN_30);
   
   XLXI_28 : COMP4_HXILINX_RANDOM
      port map (A0=>XLXN_20,
                A1=>XLXN_24,
                A2=>XLXN_25,
                A3=>XLXN_26,
                B0=>XLXN_27,
                B1=>XLXN_28,
                B2=>XLXN_29,
                B3=>XLXN_30,
                EQ=>XLXN_61);
   
   XLXI_32 : Multiplexer_MUSER_RANDOM
      port map (A0=>XLXN_20,
                A1=>XLXN_24,
                A2=>XLXN_25,
                A3=>XLXN_26,
                B0=>XLXN_27,
                B1=>XLXN_28,
                B2=>XLXN_29,
                B3=>XLXN_30,
                CLK=>common0_DUMMY,
                BIT_0=>XLXN_3,
                BIT_1=>XLXN_120,
                BIT_2=>XLXN_121,
                BIT_3=>XLXN_122);
   
   XLXI_34 : divide2_16_MUSER_RANDOM
      port map (CLK_IN=>OSC,
                CLK_OUT=>common0_DUMMY);
   
end BEHAVIORAL;


