library ieee;
use ieee.std_logic_1164.all;

entity detectRisingEdge is
    port(signal_input, clk:in std_logic;
	                 o:out std_logic :='0');
end detectRisingEdge;

architecture Behavioral of detectRisingEdge is
    type state_type is (s0, s1);
	 signal state : state_type :=s0;
begin
    process(signal_input)
	 begin
        if(rising_edge(clk))then
		      case state is 
				    when s0 =>
					     if(signal_input = '1')then
						      state <= s1;
								o <= '1';
						  else
						      state <= s0;
								o <= '0';
						  end if;
					 when s1 =>
					     if(signal_input = '0')then
						      state <= s0;
								o <= '0';
						  else
						      state <= s1;
								o <= '0';
						  end if;
					end case;
				end if;
	 end process;
end Behavioral;
