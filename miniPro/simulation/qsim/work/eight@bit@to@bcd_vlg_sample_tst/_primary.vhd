library verilog;
use verilog.vl_types.all;
entity eightBitToBcd_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        eightBit        : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end eightBitToBcd_vlg_sample_tst;
