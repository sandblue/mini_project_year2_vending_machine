library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divid_clk is
  port(      clk: in std_logic;
		 clk_after: out std_logic :='0');
end divid_clk;

architecture Structural of divid_clk is
    signal max_count: integer := 5;
	 signal counter: integer range 0 to max_count := 0;
    signal result: std_logic :=clk;	 
begin
  clk_after <= result;
  process (clk)
    begin
	   if(rising_edge(clk))then
		    if(counter < max_count)then
			     counter <= counter + 1;
			 else
			     if(result = '0')then
				      result <= '1';
				  else
					   result <='0';
				  end if;
				  counter <= 0;
			end if;
		end if;
    end process;
end Structural;
