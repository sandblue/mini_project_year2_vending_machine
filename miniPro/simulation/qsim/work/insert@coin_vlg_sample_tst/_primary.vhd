library verilog;
use verilog.vl_types.all;
entity insertCoin_vlg_sample_tst is
    port(
        buy_anable      : in     vl_logic;
        clk             : in     vl_logic;
        in_five         : in     vl_logic;
        in_one          : in     vl_logic;
        in_ten          : in     vl_logic;
        price_item      : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end insertCoin_vlg_sample_tst;
