library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- full substractor (1 bit) --
entity full_subtractor is
    Port (
        a    : in  STD_LOGIC;
        b    : in  STD_LOGIC;
        bin  : in  STD_LOGIC;
        diff : out STD_LOGIC;
        bout : out STD_LOGIC
    );
end full_subtractor;

architecture Structural of full_subtractor is
    signal b_xor, sum  : STD_LOGIC;
    signal cout        : STD_LOGIC;

    component full_adder
        Port (
            a    : in  STD_LOGIC;
            b    : in  STD_LOGIC;
            cin  : in  STD_LOGIC;
            sum  : out STD_LOGIC;
            cout : out STD_LOGIC
        );
    end component;

begin
    -- complemento de b
    b_xor <= not b;

    -- usamos el full adder: diff = a + (not b) + bin
    U1: full_adder port map (
        a    => a,
        b    => b_xor,
        cin  => bin,
        sum  => sum,
        cout => cout
    );

    diff <= sum;
    bout <= not cout;  -- el borrow es el inverso del carry
end Structural;