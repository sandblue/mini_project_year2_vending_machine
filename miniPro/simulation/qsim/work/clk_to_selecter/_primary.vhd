library verilog;
use verilog.vl_types.all;
entity clk_to_selecter is
    port(
        clk             : in     vl_logic;
        o               : out    vl_logic;
        ob              : out    vl_logic
    );
end clk_to_selecter;
