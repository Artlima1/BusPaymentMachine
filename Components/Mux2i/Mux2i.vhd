LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Mux2i IS
    GENERIC (
        W : INTEGER := 15
    );
    PORT (
        S : IN STD_LOGIC; -- control input
        A, B : IN STD_LOGIC_VECTOR(W DOWNTO 0); -- data inputs
        Q : OUT STD_LOGIC_VECTOR(W DOWNTO 0) -- data output
    );
END Mux2i;
ARCHITECTURE arch OF Mux2i IS
BEGIN
    Q <= B when (S='1') else A;
END arch;