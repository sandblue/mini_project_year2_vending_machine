library verilog;
use verilog.vl_types.all;
entity process_price is
    port(
        input_clk       : in     vl_logic;
        input_ten       : in     vl_logic;
        input_five      : in     vl_logic;
        input_one       : in     vl_logic;
        input_buy       : in     vl_logic;
        input_price     : in     vl_logic_vector(1 downto 0);
        out_buzzer_on   : out    vl_logic;
        out_digit_one   : out    vl_logic_vector(3 downto 0);
        out_digit_two   : out    vl_logic_vector(3 downto 0)
    );
end process_price;
