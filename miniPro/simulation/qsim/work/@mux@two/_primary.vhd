library verilog;
use verilog.vl_types.all;
entity MuxTwo is
    port(
        bcd_1           : in     vl_logic_vector(3 downto 0);
        bcd_2           : in     vl_logic_vector(3 downto 0);
        selec           : in     vl_logic;
        result          : out    vl_logic_vector(3 downto 0)
    );
end MuxTwo;
