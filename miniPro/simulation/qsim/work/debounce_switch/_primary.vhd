library verilog;
use verilog.vl_types.all;
entity debounce_switch is
    port(
        CLK             : in     vl_logic;
        button          : in     vl_logic;
        result          : out    vl_logic
    );
end debounce_switch;
