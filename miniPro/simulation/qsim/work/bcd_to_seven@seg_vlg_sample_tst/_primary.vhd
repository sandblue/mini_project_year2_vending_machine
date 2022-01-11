library verilog;
use verilog.vl_types.all;
entity bcd_to_sevenSeg_vlg_sample_tst is
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end bcd_to_sevenSeg_vlg_sample_tst;
