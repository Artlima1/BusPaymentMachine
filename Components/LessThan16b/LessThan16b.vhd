LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE ieee.numeric_std.ALL;

ENTITY LessThan16b IS
	GENERIC (
		W : INTEGER := 15
	);
	PORT (
		A, B : IN STD_LOGIC_VECTOR(W DOWNTO 0);
		lt : OUT STD_LOGIC
	);
END LessThan16b;

ARCHITECTURE comportamental OF LessThan16b IS
BEGIN
	lt <= '1' WHEN(signed(A) < signed(B)) ELSE '0';
END comportamental;