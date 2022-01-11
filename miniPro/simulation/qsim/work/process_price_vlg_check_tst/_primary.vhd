library verilog;
use verilog.vl_types.all;
entity process_price_vlg_check_tst is
    port(
        out_buzzer_on   : in     vl_logic;
        out_digit_one   : in     vl_logic_vector(3 downto 0);
        out_digit_two   : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end process_price_vlg_check_tst;
