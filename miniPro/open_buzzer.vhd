library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity open_buzzer is
  port(        clk: in std_logic;
         in_buzzer: in std_logic;
		  out_reset_buy: out std_logic;
		  out_buzzer: out std_logic);
end open_buzzer;

architecture behavioral of open_buzzer is
    type state_type is (s1, s2);
	 signal state : state_type := s1;
	 signal max_delay: integer := 100;
	 signal counter_delay: integer:= 0;
begin
  process (clk, in_buzzer)
    begin
	   if(rising_edge(clk))then
	       if(in_buzzer = '1')then
			     case state is
				      when s1 =>
						    state <= s2;
							 out_buzzer <= '1';
							 out_reset_buy <= '1';
						when s2 =>
						    counter_delay <= 0;
				  end case;
			 else
			     case state is
				      when s1 =>
						    counter_delay <= 0;
						when s2 =>
						    if(counter_delay < max_delay)then
							     counter_delay <= counter_delay + 1;
							 else
							     state <= s1;
								  out_buzzer <= '0';
								  out_reset_buy <= '0';
							 end if;
					end case;
				end if;
		end if;
    end process;
end behavioral;
