library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity calValue is
     port(price_value:in std_logic_vector(1 downto 0);
			 buy_button :in std_logic;
			       reset:in std_logic;
		      buy_enble:out std_logic := '0';
			 result :out std_logic_vector(7 downto 0):="00000000");
end calValue;

architecture Behavioral of calValue is
    type state_type is (s1, s2);
    signal state: state_type := s1;
	 signal store_value: integer := 0; -- store remainder money
	 
begin
    process(buy_button, reset) --s1 mean starter state user cant insert coin
	 begin
	     if(reset = '1')then
			state <= s1;
			store_value <= 0;
			buy_enble <= '0';
	     elsif(rising_edge(buy_button))then
			case state is
				when s1 =>
					state <= s2;
					case price_value is
						when "00" => store_value <= 45;
						when "01" => store_value <= 38;
						when "10" => store_value <= 18;
						when "11" => store_value <= 9;
					end case;
					buy_enble <= '1';
			   when s2 =>
				    state <= s1;
				    store_value <= 0;
				    buy_enble <= '0';
			  end case;
			end if;
	end process;
	result <= std_logic_vector(to_signed(store_value, 8));
end Behavioral;