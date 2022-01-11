library ieee;
use ieee.std_logic_1164.all;

entity clk_to_selecter is
  port(     clk: in std_logic;
              o: out std_logic;
		       ob: out std_logic);
end clk_to_selecter;

architecture behavioral of clk_to_selecter is
begin
  o <= clk;
  ob <= not clk;
end behavioral;
