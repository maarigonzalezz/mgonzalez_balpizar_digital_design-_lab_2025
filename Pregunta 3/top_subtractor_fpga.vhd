library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_subtractor_fpga is
    Port (
        SW       : in  STD_LOGIC_VECTOR(8 downto 0); -- switches: A[3:0], B[3:0], Bin
        LED      : out STD_LOGIC;                     -- signo
        HEX0     : out STD_LOGIC_VECTOR(6 downto 0); -- display 7 segmentos
        A_out    : out STD_LOGIC_VECTOR(3 downto 0); -- mostrar A
        B_out    : out STD_LOGIC_VECTOR(3 downto 0); -- mostrar B
        Diff_out : out STD_LOGIC_VECTOR(3 downto 0); -- salida Diff
        Bout_out : out STD_LOGIC                      -- salida borrow
    );
end top_subtractor_fpga;

architecture Structural of top_subtractor_fpga is
    signal A, B, Diff : STD_LOGIC_VECTOR(3 downto 0);
    signal Bin, Bout  : STD_LOGIC;
begin
    -- Asignar entradas desde switches
    A   <= SW(3 downto 0);
    B   <= SW(7 downto 4);
    Bin <= '1';  -- siempre complemento a 2

    -- Subtractor de 4 bits
    SUB4: entity work.subtractor_4bit
        port map(
            A    => A,
            B    => B,
            Bin  => Bin,
            Diff => Diff,
            Bout => Bout
        );

    -- Display de 7 segmentos con signo
    DISP: entity work.display_7seg
        port map(
            Diff     => Diff,
            Bout     => Bout,
            segments => HEX0,
            sign     => LED
        );

    -- Salidas adicionales para monitoreo
    A_out    <= A;
    B_out    <= B;
    Diff_out <= Diff;
    Bout_out <= Bout;

end Structural;