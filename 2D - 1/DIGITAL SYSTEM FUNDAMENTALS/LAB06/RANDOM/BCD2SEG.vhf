--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : BCD2SEG.vhf
-- /___/   /\     Timestamp : 10/17/2020 23:37:03
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl C:/Users/HCARACH/Documents/2D/Digital/RANDOM/BCD2SEG.vhf -w C:/Users/HCARACH/Documents/2D/Digital/RANDOM/BCD2SEG.sch
--Design Name: BCD2SEG
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

entity SEG_D_MUSER_BCD2SEG is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          BIT_3 : in    std_logic; 
          d     : out   std_logic);
end SEG_D_MUSER_BCD2SEG;

architecture BEHAVIORAL of SEG_D_MUSER_BCD2SEG is
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

entity SEG_C_MUSER_BCD2SEG is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          c     : out   std_logic);
end SEG_C_MUSER_BCD2SEG;

architecture BEHAVIORAL of SEG_C_MUSER_BCD2SEG is
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

entity SEG_G_MUSER_BCD2SEG is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          BIT_3 : in    std_logic; 
          g     : out   std_logic);
end SEG_G_MUSER_BCD2SEG;

architecture BEHAVIORAL of SEG_G_MUSER_BCD2SEG is
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

entity SEG_F_MUSER_BCD2SEG is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          BIT_3 : in    std_logic; 
          f     : out   std_logic);
end SEG_F_MUSER_BCD2SEG;

architecture BEHAVIORAL of SEG_F_MUSER_BCD2SEG is
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

entity SEG_E_MUSER_BCD2SEG is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          e     : out   std_logic);
end SEG_E_MUSER_BCD2SEG;

architecture BEHAVIORAL of SEG_E_MUSER_BCD2SEG is
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

entity SEG_B_MUSER_BCD2SEG is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          b     : out   std_logic);
end SEG_B_MUSER_BCD2SEG;

architecture BEHAVIORAL of SEG_B_MUSER_BCD2SEG is
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

entity SEG_A_MUSER_BCD2SEG is
   port ( BIT_0 : in    std_logic; 
          BIT_1 : in    std_logic; 
          BIT_2 : in    std_logic; 
          BIT_3 : in    std_logic; 
          a     : out   std_logic);
end SEG_A_MUSER_BCD2SEG;

architecture BEHAVIORAL of SEG_A_MUSER_BCD2SEG is
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

entity BCD2SEG is
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
end BCD2SEG;

architecture BEHAVIORAL of BCD2SEG is
   component SEG_A_MUSER_BCD2SEG
      port ( BIT_0 : in    std_logic; 
             BIT_1 : in    std_logic; 
             BIT_2 : in    std_logic; 
             BIT_3 : in    std_logic; 
             a     : out   std_logic);
   end component;
   
   component SEG_B_MUSER_BCD2SEG
      port ( BIT_0 : in    std_logic; 
             BIT_1 : in    std_logic; 
             BIT_2 : in    std_logic; 
             b     : out   std_logic);
   end component;
   
   component SEG_E_MUSER_BCD2SEG
      port ( BIT_0 : in    std_logic; 
             BIT_1 : in    std_logic; 
             BIT_2 : in    std_logic; 
             e     : out   std_logic);
   end component;
   
   component SEG_F_MUSER_BCD2SEG
      port ( BIT_0 : in    std_logic; 
             BIT_1 : in    std_logic; 
             BIT_2 : in    std_logic; 
             BIT_3 : in    std_logic; 
             f     : out   std_logic);
   end component;
   
   component SEG_G_MUSER_BCD2SEG
      port ( BIT_0 : in    std_logic; 
             BIT_1 : in    std_logic; 
             BIT_2 : in    std_logic; 
             BIT_3 : in    std_logic; 
             g     : out   std_logic);
   end component;
   
   component SEG_C_MUSER_BCD2SEG
      port ( BIT_0 : in    std_logic; 
             BIT_2 : in    std_logic; 
             BIT_1 : in    std_logic; 
             c     : out   std_logic);
   end component;
   
   component SEG_D_MUSER_BCD2SEG
      port ( BIT_3 : in    std_logic; 
             BIT_0 : in    std_logic; 
             BIT_1 : in    std_logic; 
             BIT_2 : in    std_logic; 
             d     : out   std_logic);
   end component;
   
begin
   XLXI_1 : SEG_A_MUSER_BCD2SEG
      port map (BIT_0=>BIT_0,
                BIT_1=>BIT_1,
                BIT_2=>BIT_2,
                BIT_3=>BIT_3,
                a=>a);
   
   XLXI_2 : SEG_B_MUSER_BCD2SEG
      port map (BIT_0=>BIT_0,
                BIT_1=>BIT_1,
                BIT_2=>BIT_2,
                b=>b);
   
   XLXI_5 : SEG_E_MUSER_BCD2SEG
      port map (BIT_0=>BIT_0,
                BIT_1=>BIT_1,
                BIT_2=>BIT_2,
                e=>e);
   
   XLXI_6 : SEG_F_MUSER_BCD2SEG
      port map (BIT_0=>BIT_0,
                BIT_1=>BIT_1,
                BIT_2=>BIT_2,
                BIT_3=>BIT_3,
                f=>f);
   
   XLXI_7 : SEG_G_MUSER_BCD2SEG
      port map (BIT_0=>BIT_0,
                BIT_1=>BIT_1,
                BIT_2=>BIT_2,
                BIT_3=>BIT_3,
                g=>g);
   
   XLXI_10 : SEG_C_MUSER_BCD2SEG
      port map (BIT_0=>BIT_0,
                BIT_1=>BIT_1,
                BIT_2=>BIT_2,
                c=>c);
   
   XLXI_11 : SEG_D_MUSER_BCD2SEG
      port map (BIT_0=>BIT_0,
                BIT_1=>BIT_1,
                BIT_2=>BIT_2,
                BIT_3=>BIT_3,
                d=>d);
   
end BEHAVIORAL;


