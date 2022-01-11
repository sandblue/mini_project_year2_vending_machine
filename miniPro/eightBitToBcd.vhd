library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eightBitToBcd is
    port(     clk:in std_logic;
	      eightBit:in std_logic_vector(7 downto 0);
	      digi_one:out std_logic_vector(3 downto 0);
			digi_two:out std_logic_vector(3 downto 0));
end eightBitToBcd;

architecture Behavioral of eightBitToBcd is
    signal value_input: integer :=to_integer(signed(eightBit));
	 signal value_digit_one: integer :=value_input/10;
	 signal value_digit_two: integer :=value_input mod 10;
begin
    process(clk)
	 begin
	     if(rising_edge(clk))then
            digi_one <= std_logic_vector(to_signed(value_digit_one, 4));
	         digi_two <= std_logic_vector(to_signed(value_digit_two, 4));
		  end if;
	end process;
end Behavioral;