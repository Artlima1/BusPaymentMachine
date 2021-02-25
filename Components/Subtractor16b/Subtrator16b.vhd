LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
use ieee.numeric_std.all;

ENTITY Subtrator16b IS
    GENERIC (
        W : INTEGER := 15
    );
    PORT (
        x, y : IN STD_LOGIC_VECTOR(W DOWNTO 0);
        s : OUT STD_LOGIC_VECTOR(W DOWNTO 0));
END Subtrator16b;

ARCHITECTURE comportamental OF Subtrator16b IS
BEGIN
    s <= STD_LOGIC_VECTOR(unsigned(x) - unsigned(y));
END comportamental;