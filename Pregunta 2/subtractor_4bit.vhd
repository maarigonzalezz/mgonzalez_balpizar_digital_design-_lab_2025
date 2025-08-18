library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity subtractor_4bit is
    Port (
        A    : in  STD_LOGIC_VECTOR(3 downto 0);
        B    : in  STD_LOGIC_VECTOR(3 downto 0);
        Bin  : in  STD_LOGIC;  -- borrow in
        Diff : out STD_LOGIC_VECTOR(3 downto 0);
        Bout : out STD_LOGIC   -- borrow out
    );
end subtractor_4bit;

architecture Structural of subtractor_4bit is
    signal borrow : STD_LOGIC_VECTOR(4 downto 0);
begin
    borrow(0) <= Bin;
	 
	-- Restador para el bit 1
    SUB0: entity work.subtractor_1bit
        port map (A(0), B(0), borrow(0), Diff(0), borrow(1));
		  
	-- Restador para el bit 2 (Usa como entradas las salidas del anterior)

    SUB1: entity work.subtractor_1bit
        port map (A(1), B(1), borrow(1), Diff(1), borrow(2));
		  
	-- Restador para el bit 3 (Usa como entradas las salidas del anterior)

    SUB2: entity work.subtractor_1bit
        port map (A(2), B(2), borrow(2), Diff(2), borrow(3));

	-- Restador para el bit 4 (Usa como entradas las salidas del anterior)

    SUB3: entity work.subtractor_1bit
        port map (A(3), B(3), borrow(3), Diff(3), borrow(4));

	--Posible salida para un quinto bit
	
    Bout <= borrow(4);
end Structural;