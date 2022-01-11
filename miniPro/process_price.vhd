library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity process_price is
    port(input_clk:in std_logic;
	      input_ten:in std_logic;
			input_five:in std_logic;
			input_one:in std_logic;
			input_buy:in std_logic;
			input_price:in std_logic_vector(1 downto 0);
			out_buzzer_on:out std_logic;
			out_digit_one:out std_logic_vector(3 downto 0);
			out_digit_two:out std_logic_vector(3 downto 0));
end process_price;

architecture Behavioral of process_price is

component buyMode is
     port(buy_button:in std_logic;
	  	        reset :in std_logic;
	             mode:out std_logic :='0');
end component;

component calValue is
     port(price_value:in std_logic_vector(1 downto 0);
			 buy_button :in std_logic;
			 	    reset:in std_logic;
		      buy_enble:out std_logic := '0';
			 result :out std_logic_vector(7 downto 0):="00000000");
end component;

component insertCoin is
     port(in_ten :in std_logic;
	       in_five:in std_logic;
			 in_one :in std_logic;
	       buy_anable:in std_logic;
	       price_item:in std_logic_vector(7 downto 0);
			        clk:in std_logic;
			     result:out std_logic_vector(7 downto 0));
end component;

component eightBitToBcd is
    port(     clk:in std_logic;
	      eightBit:in std_logic_vector(7 downto 0);
	      digi_one:out std_logic_vector(3 downto 0);
			digi_two:out std_logic_vector(3 downto 0));
end component;

component insertComplete is
    port(     clk:in std_logic;
	      eightBit:in std_logic_vector(7 downto 0);
			output_buzzer_on:out std_logic :='0');
end component;

component open_buzzer is
  port(        clk: in std_logic;
         in_buzzer: in std_logic;
	     out_reset_buy: out std_logic;
		  out_buzzer: out std_logic);
end component;

    signal edge_buy: std_logic :='0';
	 signal mode_buy: std_logic :='0';
	 signal original_price: std_logic_vector(7 downto 0) :="00000000";
	 signal price_remain: std_logic_vector(7 downto 0) :="00000000";
	 signal reset_buy: std_logic :='0';
	 signal buzzer_on: std_logic :='0';

begin
    U0: buyMode
	   port map (input_buy,  reset_buy, edge_buy);
	 U1: calValue
	   port map (input_price, edge_buy, reset_buy, mode_buy, original_price);
	 U2: insertCoin
	   port map (input_ten, input_five, input_one, mode_buy, original_price, input_clk, price_remain);
	 U3: eightBitToBcd
	   port map (input_clk, price_remain, out_digit_one, out_digit_two);
	 U4: insertComplete
	   port map (input_clk, price_remain, buzzer_on);
	 U5: open_buzzer
	   port map (input_clk, buzzer_on, reset_buy, out_buzzer_on);
end Behavioral;