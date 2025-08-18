library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- FULL ADDER (1 bit) --
entity full_adder is
    Port (
        a    : in  STD_LOGIC;
        b    : in  STD_LOGIC;
        cin  : in  STD_LOGIC;
        sum  : out STD_LOGIC;
        cout : out STD_LOGIC
    );
end full_adder;

architecture Behavioral of full_adder is
    signal p, g : STD_LOGIC; -- señales internas para propagación y generación
begin
    p    <= a xor b;                 -- Propagate
    g    <= a and b;                 -- Generate
    sum  <= p xor cin;               -- Suma final
    cout <= g or (p and cin);        -- Carry de salida
end Behavioral;