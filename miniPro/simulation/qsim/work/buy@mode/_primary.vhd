library verilog;
use verilog.vl_types.all;
entity buyMode is
    port(
        buy_button      : in     vl_logic;
        reset           : in     vl_logic;
        mode            : out    vl_logic
    );
end buyMode;
