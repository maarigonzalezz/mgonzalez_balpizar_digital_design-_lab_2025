library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_top_subtractor_fpga is
-- Testbench no tiene puertos
end tb_top_subtractor_fpga;

architecture Behavioral of tb_top_subtractor_fpga is
    signal SW       : STD_LOGIC_VECTOR(8 downto 0);
    signal LED      : STD_LOGIC;
    signal HEX0     : STD_LOGIC_VECTOR(6 downto 0);
    signal A_out    : STD_LOGIC_VECTOR(3 downto 0);
    signal B_out    : STD_LOGIC_VECTOR(3 downto 0);
    signal Diff_out : STD_LOGIC_VECTOR(3 downto 0);
    signal Bout_out : STD_LOGIC;
begin
    -- Instancia del top
    UUT: entity work.top_subtractor_fpga
        port map(
            SW       => SW,
            LED      => LED,
            HEX0     => HEX0,
            A_out    => A_out,
            B_out    => B_out,
            Diff_out => Diff_out,
            Bout_out => Bout_out
        );

    -- Estímulos
    stim_proc: process
    begin
        -- 5 - 3
        SW <= "001100101"; wait for 20 ns;
        -- 8 - 4
        SW <= "010010001"; wait for 20 ns;
        -- 6 - 9
        SW <= "100101101"; wait for 20 ns;
        -- 0 - 1
        SW <= "000100001"; wait for 20 ns;
        -- 15 - 7
        SW <= "011110111"; wait for 20 ns;

        wait; -- fin
    end process;

end Behavioral;