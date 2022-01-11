library verilog;
use verilog.vl_types.all;
entity detectRisingEdge is
    port(
        signal_input    : in     vl_logic;
        clk             : in     vl_logic;
        o               : out    vl_logic
    );
end detectRisingEdge;
