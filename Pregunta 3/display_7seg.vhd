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
        -- Determinar magnitud usando complemento a 2
        if Bout = '1' then
            -- Número positivo: se muestra tal cual
            mag := Diff;
            sign <= '1';
        else
            -- Número negativo: calcular magnitud paso a paso
            temp_mag := unsigned(not Diff) + 1;  -- complemento a 2
            mag := std_logic_vector(temp_mag);
            sign <= '0';                         -- indicar negativo
        end if;

        -- Codificación de la magnitud a display de 7 segmentos
        case mag is
            when "0000" => segments <= "1111110"; -- 0
            when "0001" => segments <= "0110000"; -- 1
            when "0010" => segments <= "1101101"; -- 2
            when "0011" => segments <= "1111001"; -- 3
            when "0100" => segments <= "0110011"; -- 4
            when "0101" => segments <= "1011011"; -- 5
            when "0110" => segments <= "1011111"; -- 6
            when "0111" => segments <= "1110000"; -- 7
            when "1000" => segments <= "1111111"; -- 8
            when "1001" => segments <= "1111011"; -- 9
            when "1010" => segments <= "1110111"; -- A
            when "1011" => segments <= "0011111"; -- B
            when "1100" => segments <= "1001110"; -- C
            when "1101" => segments <= "0111101"; -- D
            when "1110" => segments <= "1001111"; -- E
            when "1111" => segments <= "1000111"; -- F
            when others => segments <= "0000000"; -- apagar display si fuera inválido
        end case;
    end process;
end Behavioral;