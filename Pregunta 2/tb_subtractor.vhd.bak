library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_subtractor is
end tb_subtractor;

architecture behavior of tb_subtractor is
    signal A, B   : STD_LOGIC_VECTOR(3 downto 0);
    signal Bin    : STD_LOGIC;
    signal Diff   : STD_LOGIC_VECTOR(3 downto 0);
    signal Bout   : STD_LOGIC;

    component full_subtractor_4bit
        Port (
            A    : in  STD_LOGIC_VECTOR(3 downto 0);
            B    : in  STD_LOGIC_VECTOR(3 downto 0);
            Bin  : in  STD_LOGIC;
            Diff : out STD_LOGIC_VECTOR(3 downto 0);
            Bout : out STD_LOGIC
        );
    end component;
begin
    -- instanciamos el restador de 4 bits
    UUT: full_subtractor_4bit port map (
        A    => A,
        B    => B,
        Bin  => Bin,
        Diff => Diff,
        Bout => Bout
    );
	 
	 -- Pruebas
    process
    begin
        -- Caso 1: 5 - 3
        A <= "0101";  -- 5
        B <= "0011";  -- 3
        Bin <= '0';
        wait for 10 ns;

        -- Caso 2: 9 - 4
        A <= "1001";  -- 9
        B <= "0100";  -- 4
        Bin <= '0';
        wait for 10 ns;

        -- Caso 3: 6 - 7 (tendrá borrow)
        A <= "0110";  -- 6
        B <= "0111";  -- 7
        Bin <= '0';
        wait for 10 ns;

        -- Caso 4: 15 - 15
        A <= "1111";  -- 15
        B <= "1111";  -- 15
        Bin <= '0';
        wait for 10 ns;

        wait;
    end process;
end behavior;