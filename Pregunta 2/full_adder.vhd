library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Full Adder de 1 bit
entity full_adder is
    Port (
        A    : in  STD_LOGIC;
        B    : in  STD_LOGIC;
        Cin  : in  STD_LOGIC;
        Sum  : out STD_LOGIC;
        Cout : out STD_LOGIC
    );
end full_adder;

architecture Behavioral of full_adder is
begin
    process(A, B, Cin)
    variable p, g : STD_LOGIC;
    begin
        p := A xor B;
        g := A and B;
        Sum  <= p xor Cin;
        Cout <= g or (p and Cin);
    end process;
end Behavioral;

--Fuente: "Digital Design and Computer Architecture, ARM Edition"
-- Autores: David Harris y Sarah Harris