library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity display_7seg is
    Port (
        Diff     : in  STD_LOGIC_VECTOR(3 downto 0);  -- salida del subtractor de 4 bits
        Bout     : in  STD_LOGIC;                     -- borrow out
        segments : out STD_LOGIC_VECTOR(6 downto 0); -- display 7 segmentos a-g
        sign     : out STD_LOGIC                      -- '-' si es negativo
    );
end display_7seg;

architecture Behavioral of display_7seg is
begin
    process(Diff, Bout)
        variable temp_mag : unsigned(3 downto 0);         -- variable intermedia para magnitud
        variable mag     : STD_LOGIC_VECTOR(3 downto 0);  -- variable para asignar a la señal magnitude
    begin
        -- Determina la magnitud usando complemento a 2
        if Bout = '1' then
            -- Número negativo: se muestra el complemento
            mag := Diff;
            sign <= '1';
        else
            -- Número positivo: se calcula la magnitud paso a paso
            temp_mag := unsigned(not Diff) + 1;  -- complemento a 2
            mag := std_logic_vector(temp_mag);
            sign <= '0';                         -- indica el positivo
        end if;

        -- Codificación de la magnitud a display de 7 segmentos
        case mag is
            when "0000" => segments <= "1000000"; -- 0
				when "0001" => segments <= "1111001"; -- 1
				when "0010" => segments <= "0100100"; -- 2
				when "0011" => segments <= "0110000"; -- 3
				when "0100" => segments <= "0011001"; -- 4
				when "0101" => segments <= "0010010"; -- 5
				when "0110" => segments <= "0000010"; -- 6
				when "0111" => segments <= "1111000"; -- 7
				when "1000" => segments <= "0000000"; -- 8
				when "1001" => segments <= "0010000"; -- 9
				when "1010" => segments <= "0001000"; -- A
				when "1011" => segments <= "0000011"; -- b
				when "1100" => segments <= "1000110"; -- C
				when "1101" => segments <= "0100001"; -- d
				when "1110" => segments <= "0000110"; -- E
				when "1111" => segments <= "0001110"; -- F
				when others => segments <= "1111111"; -- apagar (ánodo común)
        end case;
    end process;
end Behavioral;