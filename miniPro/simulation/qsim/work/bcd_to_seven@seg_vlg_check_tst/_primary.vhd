library verilog;
use verilog.vl_types.all;
entity bcd_to_sevenSeg_vlg_check_tst is
    port(
        sevenSeg        : in     vl_logic_vector(6 downto 0);
        sampler_rx      : in     vl_logic
    );
end bcd_to_sevenSeg_vlg_check_tst;
