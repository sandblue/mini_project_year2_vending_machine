library verilog;
use verilog.vl_types.all;
entity clk_to_selecter_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end clk_to_selecter_vlg_sample_tst;
