library verilog;
use verilog.vl_types.all;
entity vending_mach_vlg_check_tst is
    port(
        buzzer          : in     vl_logic;
        out_sevenSeg    : in     vl_logic_vector(6 downto 0);
        select_digit_one: in     vl_logic;
        select_digit_two: in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end vending_mach_vlg_check_tst;
