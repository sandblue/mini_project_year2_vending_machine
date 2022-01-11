library verilog;
use verilog.vl_types.all;
entity open_buzzer_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        in_buzzer       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end open_buzzer_vlg_sample_tst;
