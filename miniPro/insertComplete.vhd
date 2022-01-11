library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity insertComplete is
    port(     clk:in std_logic;
	      eightBit:in std_logic_vector(7 downto 0);
			output_buzzer_on:out std_logic :='0');
end insertComplete;

architecture Behavioral of insertComplete is
    signal value_input: integer :=to_integer(signed(eightBit));
	 type state_type is (s1, s2);
	 signal state : state_type := s1;
begin
    process(clk)
	 begin
	     if(rising_edge(clk))then
		      value_input <= to_integer(signed(eightBit));
            if(value_input /= 0)then
                if(state = s1)then
					     state <= s2;
						  output_buzzer_on <= '0';
					 end if;
				else
				    case state is
					     when s1 =>
						      output_buzzer_on <= '0';
						  when s2 =>
							   state <= s1;
						      output_buzzer_on <= '1';
					 end case;
				end if;	       
		  end if;
	end process;
end Behavioral;