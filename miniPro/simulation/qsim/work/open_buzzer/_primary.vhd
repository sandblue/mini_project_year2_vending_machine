library verilog;
use verilog.vl_types.all;
entity open_buzzer is
    port(
        clk             : in     vl_logic;
        in_buzzer       : in     vl_logic;
        out_buzzer      : out    vl_logic
    );
end open_buzzer;
