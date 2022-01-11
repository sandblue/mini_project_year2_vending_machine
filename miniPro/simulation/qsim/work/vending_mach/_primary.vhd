library verilog;
use verilog.vl_types.all;
entity vending_mach is
    port(
        in_clk          : in     vl_logic;
        in_ten          : in     vl_logic;
        in_five         : in     vl_logic;
        in_one          : in     vl_logic;
        in_buy          : in     vl_logic;
        in_price        : in     vl_logic_vector(1 downto 0);
        buzzer          : out    vl_logic;
        select_digit_one: out    vl_logic;
        select_digit_two: out    vl_logic;
        out_sevenSeg    : out    vl_logic_vector(6 downto 0)
    );
end vending_mach;
