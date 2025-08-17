library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity subtractor_1bit is
    Port (
        A    : in  STD_LOGIC;
        B    : in  STD_LOGIC;
        Bin  : in  STD_LOGIC;  -- borrow in
        Diff : out STD_LOGIC;
        Bout : out STD_LOGIC   -- borrow out
    );
end subtractor_1bit;

architecture Structural of subtractor_1bit is
    signal B_not : STD_LOGIC;
    signal Cout  : STD_LOGIC;
begin
    -- Complemento de B para usar el full adder
    B_not <= not B;

    -- Full adder: Diff = A + NOT(B) + Bin
    FA: entity work.full_adder
        port map(
            A    => A,
            B    => B_not,
            Cin  => Bin,
            Sum  => Diff,
            Cout => Cout
        );

    -- Borrow out = complemento del carry out
    Bout <= (not A and B) or ((not A or B) and Bin);
end Structural;