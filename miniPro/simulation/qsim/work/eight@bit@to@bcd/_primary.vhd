library verilog;
use verilog.vl_types.all;
entity eightBitToBcd is
    port(
        clk             : in     vl_logic;
        eightBit        : in     vl_logic_vector(7 downto 0);
        digi_one        : out    vl_logic_vector(3 downto 0);
        digi_two        : out    vl_logic_vector(3 downto 0)
    );
end eightBitToBcd;
