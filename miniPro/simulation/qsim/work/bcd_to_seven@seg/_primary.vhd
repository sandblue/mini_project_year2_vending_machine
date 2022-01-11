library verilog;
use verilog.vl_types.all;
entity bcd_to_sevenSeg is
    port(
        bcd             : in     vl_logic_vector(3 downto 0);
        sevenSeg        : out    vl_logic_vector(6 downto 0)
    );
end bcd_to_sevenSeg;
