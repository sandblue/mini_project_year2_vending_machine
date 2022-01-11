library ieee;
use ieee.std_logic_1164.all;

entity test_module is
    port(signal_in, clk_input:in std_logic;
	                 output:out std_logic :='0');
end test_module;

architecture Behavioral of test_module is

component detectRisingEdge is
    port(signal_input, clk:in std_logic;
	                 o:out std_logic :='0');
end component;

component buyMode is
     port(buy_button:in std_logic;
	             mode:out std_logic :='0');
end component;

begin

 
end Behavioral;