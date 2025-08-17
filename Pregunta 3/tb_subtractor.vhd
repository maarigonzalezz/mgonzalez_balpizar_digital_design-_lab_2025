library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_subtractor is
end tb_subtractor;

architecture sim of tb_subtractor is
    signal A, B   : STD_LOGIC_VECTOR(3 downto 0);
    signal Bin    : STD_LOGIC := '1';  -- Inicializamos en 1 para complemento a 2
    signal Diff   : STD_LOGIC_VECTOR(3 downto 0);
    signal Bout   : STD_LOGIC;
begin
    -- Instancia del restador de 4 bits
    UUT: entity work.subtractor_4bit
        port map(
            A    => A,
            B    => B,
            Bin  => Bin,
            Diff => Diff,
            Bout => Bout
        );

    -- Proceso de prueba
    process
    begin
        -- Caso 5 - 3
        A <= "0101"; B <= "0011";
        wait for 10 ns;

        -- Caso 8 - 4
        A <= "1000"; B <= "0100";
        wait for 10 ns;

        -- Caso 6 - 9
        A <= "0110"; B <= "1001";
        wait for 10 ns;

        -- Caso 0 - 1
        A <= "0000"; B <= "0001";
        wait for 10 ns;

        -- Caso 15 - 15
        A <= "1111"; B <= "1111";
        wait for 10 ns;

        wait;
    end process;

end sim;