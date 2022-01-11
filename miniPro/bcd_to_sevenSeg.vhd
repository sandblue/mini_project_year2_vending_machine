library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_to_sevenSeg is
  port(     bcd: in std_logic_vector (3 downto 0);
		 sevenSeg: out std_logic_vector (6 downto 0));
end bcd_to_sevenSeg;

architecture Structural of bcd_to_sevenSeg is
begin
  process (bcd)
    begin
	     case bcd is
		      when "0000" => sevenSeg <= "1111110";
            when "0001" => sevenSeg <= "0110000";
				when "0010" => sevenSeg <= "1101101";
      		when "0011" => sevenSeg <= "1111001";
				when "0100" => sevenSeg <= "0110011";
				when "0101" => sevenSeg <= "1011011";
				when "0110" => sevenSeg <= "1011111";
				when "0111" => sevenSeg <= "1110000";
				when "1000" => sevenSeg <= "1111111";
				when "1001" => sevenSeg <= "1111011";
				when others => sevenSeg <= "1001111";
			end case;
    end process;
end Structural;
