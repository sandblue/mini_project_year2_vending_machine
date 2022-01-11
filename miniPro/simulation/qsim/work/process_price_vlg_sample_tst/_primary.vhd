library verilog;
use verilog.vl_types.all;
entity process_price_vlg_sample_tst is
    port(
        input_buy       : in     vl_logic;
        input_clk       : in     vl_logic;
        input_five      : in     vl_logic;
        input_one       : in     vl_logic;
        input_price     : in     vl_logic_vector(1 downto 0);
        input_ten       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end process_price_vlg_sample_tst;
