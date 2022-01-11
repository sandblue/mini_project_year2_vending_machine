library verilog;
use verilog.vl_types.all;
entity insertComplete is
    port(
        clk             : in     vl_logic;
        eightBit        : in     vl_logic_vector(7 downto 0);
        output_buzzer_on: out    vl_logic
    );
end insertComplete;
