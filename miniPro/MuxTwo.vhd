library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MuxTwo is
  port(bcd_1, bcd_2: in std_logic_vector(3 downto 0);
              selec: in std_logic;
		       result: out std_logic_vector(3 downto 0));
end MuxTwo;
	 
architecture behave of MuxTwo is
begin
  result <= bcd_1 when selec = '0' else bcd_2;
end behave;
	