LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;

ENTITY FlipFlopD IS
	PORT (
		clock : IN STD_LOGIC;
		ld : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		D : IN STD_LOGIC;
		Q : OUT STD_LOGIC
	);
END FlipFlopD;

ARCHITECTURE RTL OF FlipFlopD IS
BEGIN
	PROCESS (clock)
	BEGIN
		IF (clock = '1' AND clock'event) THEN
			IF (reset = '1') THEN
				Q <= '0';
			ELSE
				IF (ld = '1') THEN
					Q <= D;
				END IF;
			END IF;
		END IF;
	END PROCESS;
END RTL;