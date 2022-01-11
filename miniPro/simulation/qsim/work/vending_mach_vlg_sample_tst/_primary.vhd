library verilog;
use verilog.vl_types.all;
entity vending_mach_vlg_sample_tst is
    port(
        in_buy          : in     vl_logic;
        in_clk          : in     vl_logic;
        in_five         : in     vl_logic;
        in_one          : in     vl_logic;
        in_price        : in     vl_logic_vector(1 downto 0);
        in_ten          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end vending_mach_vlg_sample_tst;
