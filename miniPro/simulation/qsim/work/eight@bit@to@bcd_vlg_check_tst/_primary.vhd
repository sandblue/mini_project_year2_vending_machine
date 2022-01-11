library verilog;
use verilog.vl_types.all;
entity eightBitToBcd_vlg_check_tst is
    port(
        digi_one        : in     vl_logic_vector(3 downto 0);
        digi_two        : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end eightBitToBcd_vlg_check_tst;
