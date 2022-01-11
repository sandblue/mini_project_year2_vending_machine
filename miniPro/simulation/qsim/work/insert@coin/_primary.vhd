library verilog;
use verilog.vl_types.all;
entity insertCoin is
    port(
        in_ten          : in     vl_logic;
        in_five         : in     vl_logic;
        in_one          : in     vl_logic;
        buy_anable      : in     vl_logic;
        price_item      : in     vl_logic_vector(7 downto 0);
        clk             : in     vl_logic;
        result          : out    vl_logic_vector(7 downto 0)
    );
end insertCoin;
