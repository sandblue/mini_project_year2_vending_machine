library verilog;
use verilog.vl_types.all;
entity calValue is
    port(
        price_value     : in     vl_logic_vector(1 downto 0);
        buy_button      : in     vl_logic;
        reset           : in     vl_logic;
        buy_enble       : out    vl_logic;
        result          : out    vl_logic_vector(7 downto 0)
    );
end calValue;
