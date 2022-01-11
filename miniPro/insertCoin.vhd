library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity insertCoin is
     port(in_ten :in std_logic;
	       in_five:in std_logic;
			 in_one :in std_logic;
	       buy_anable:in std_logic;
	       price_item:in std_logic_vector(7 downto 0);
			        clk:in std_logic;
			     result:out std_logic_vector(7 downto 0));
end insertCoin;

architecture Behavioral of insertCoin is
    type state_type is (s1, s2);
	 signal state : state_type := s1;
    signal price_item_input: integer:=0; 
	 signal set_start: std_logic:='0';
	 signal keep_re: std_logic_vector(7 downto 0) :="00000000";
begin
    result <= keep_re;
    process(clk)
	 begin
        if(rising_edge(clk))then
		      if(set_start = '0')then
				    set_start <= '1';
					 price_item_input <= to_integer(signed(price_item));
					 keep_re <= "00000000";
				else
				    if(price_item_input > 0)then
					     keep_re <= std_logic_vector(to_signed(price_item_input, 8));
					 else 
					     keep_re <= "00000000";
					 end if;
				end if;
	         if(buy_anable = '1')then
		          case state is
				        when s1 =>
				    	     if(in_ten = '0')then
						         price_item_input <= price_item_input -10;
							   	state <= s2;
							  elsif(in_five = '0')then
							      price_item_input <= price_item_input -5;
								   state <= s2;
							  elsif(in_one ='0')then
							      price_item_input <= price_item_input -1;
								   state <= s2;
							  end if;
					     when s2 =>
					        if(in_ten ='1' and in_five ='1' and in_one ='1')then
							      state <= s1;
							  end if;
				    end case;
				 else
				     set_start <= '0';
			    end if;
		    end if;
	    end process;
end Behavioral;