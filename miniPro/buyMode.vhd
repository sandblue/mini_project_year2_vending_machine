library ieee;
use ieee.std_logic_1164.all;

entity buyMode is
     port(buy_button:in std_logic;
	            reset:in std_logic;
	             mode:out std_logic :='0');
end buyMode;

architecture Behavioral of buyMode is
    signal status: std_logic:= '0';
begin
    process(buy_button, reset)
	 begin
	    if(reset = '1')then
			mode <= '0';
			status <= '0';
		 elsif(rising_edge(buy_button))then
			if(status = '0')then
				mode <= '1';
				status <= '1';
			else
				mode <= '0';
				status <='0';
			end if;
		end if;
	end process;
end Behavioral;