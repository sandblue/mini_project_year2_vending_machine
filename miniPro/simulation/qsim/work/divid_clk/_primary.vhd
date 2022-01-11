library verilog;
use verilog.vl_types.all;
entity divid_clk is
    port(
        clk             : in     vl_logic;
        clk_after       : out    vl_logic
    );
end divid_clk;
