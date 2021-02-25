LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY Register16b IS
    GENERIC (
        W : INTEGER := 15
    );
    PORT (
        clock : IN STD_LOGIC;
        ld : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        D : IN STD_LOGIC_VECTOR(W DOWNTO 0);
        Q : OUT STD_LOGIC_VECTOR(W DOWNTO 0)
    );
END Register16b;

ARCHITECTURE RTL OF Register16b IS
BEGIN
    PROCESS (clock)
    BEGIN
        IF (rising_edge(clock)) THEN
            IF (reset = '1') THEN
                Q <= "0000000000000000";
            ELSE
                IF (ld = '1') THEN
                    Q <= D;
                END IF;
            END IF;
        END IF;
    END PROCESS;
END RTL;