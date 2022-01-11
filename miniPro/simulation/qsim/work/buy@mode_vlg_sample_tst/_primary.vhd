library verilog;
use verilog.vl_types.all;
entity buyMode_vlg_sample_tst is
    port(
        buy_button      : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end buyMode_vlg_sample_tst;
