library verilog;
use verilog.vl_types.all;
entity calValue_vlg_check_tst is
    port(
        buy_enble       : in     vl_logic;
        result          : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end calValue_vlg_check_tst;
