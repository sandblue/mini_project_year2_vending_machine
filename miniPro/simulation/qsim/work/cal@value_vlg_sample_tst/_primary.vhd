library verilog;
use verilog.vl_types.all;
entity calValue_vlg_sample_tst is
    port(
        buy_button      : in     vl_logic;
        price_value     : in     vl_logic_vector(1 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end calValue_vlg_sample_tst;
