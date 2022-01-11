library verilog;
use verilog.vl_types.all;
entity detectRisingEdge_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        signal_input    : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end detectRisingEdge_vlg_sample_tst;
