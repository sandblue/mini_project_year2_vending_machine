library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vending_mach is
    port(in_clk:in std_logic;
	      in_ten:in std_logic;
			in_five:in std_logic;
			in_one:in std_logic;
			in_buy:in std_logic;
			in_price:in std_logic_vector(1 downto 0);
			buzzer:out std_logic;
			select_digit_one: out std_logic;
			select_digit_two: out std_logic;
			out_sevenSeg:out std_logic_vector(6 downto 0));
end vending_mach;

architecture Behavioral of vending_mach is

component debounce_switch is
  port(CLK: in std_logic;
       button: in std_logic;
		 result: out std_logic);
end component;

component process_price is
    port(input_clk:in std_logic;
	      input_ten:in std_logic;
			input_five:in std_logic;
			input_one:in std_logic;
			input_buy:in std_logic;
			input_price:in std_logic_vector(1 downto 0);
			out_buzzer_on:out std_logic;
			out_digit_one:out std_logic_vector(3 downto 0);
			out_digit_two:out std_logic_vector(3 downto 0));
end component;

component MuxTwo is
  port(bcd_1, bcd_2: in std_logic_vector(3 downto 0);
              selec: in std_logic;
		       result: out std_logic_vector(3 downto 0));
end component;

component bcd_to_sevenSeg is
  port(     bcd: in std_logic_vector (3 downto 0);
		 sevenSeg: out std_logic_vector (6 downto 0));
end component;

component divid_clk is
  port(      clk: in std_logic;
		 clk_after: out std_logic :='0');
end component;

component open_buzzer is
  port(        clk: in std_logic;
         in_buzzer: in std_logic;
		  out_buzzer: out std_logic);
end component;

    signal after_de_buy: std_logic :='0';
    signal after_de_ten: std_logic :='0';
    signal after_de_fiv: std_logic :='0';
    signal after_de_one: std_logic :='0';
	 signal selector: std_logic :='0';
	 signal selector_bar: std_logic :='1';
	 signal clk_after_divid: std_logic;
	 signal digi_one: std_logic_vector(3 downto 0);
	 signal digi_two: std_logic_vector(3 downto 0);
	 signal bcd_digit: std_logic_vector(3 downto 0);
	 signal before_delay_buzzer: std_logic;
begin
    select_digit_one <= clk_after_divid;
	 select_digit_two <= not clk_after_divid;
    U0: debounce_switch
	   port map (clk_after_divid, in_buy, after_de_buy);
	 U1: debounce_switch
	   port map (clk_after_divid, in_ten, after_de_ten);
	 U2: debounce_switch
	   port map (clk_after_divid, in_five, after_de_fiv);
	 U3: debounce_switch
	   port map (clk_after_divid, in_one, after_de_one);
	 U4: process_price
	   port map (clk_after_divid, after_de_ten, after_de_fiv, after_de_one, after_de_buy, in_price, buzzer, digi_one, digi_two);
	 U5: MuxTwo
	   port map (digi_one, digi_two, clk_after_divid, bcd_digit);
	 U6: bcd_to_sevenSeg
	   port map (bcd_digit, out_sevenSeg);
	 U7: divid_clk
	   port map (in_clk, clk_after_divid);
end Behavioral;