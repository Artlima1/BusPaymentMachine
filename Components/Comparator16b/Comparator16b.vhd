library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Comparator16b is
    GENERIC (
        W : INTEGER := 15
    );
	port 
	(
		A, B 				 : in std_logic_vector(W downto 0);
		maior, menor, iguais : out std_logic
	);
end Comparator16b;

architecture comportamental of Comparator16b is
begin
	gt <= '1' when(signed(A)>signed(B)) else '0';
	ld <= '1' when(signed(A)<signed(B)) else '0';
	eq <= '1' when(signed(A)=signed(B)) else '0';
end comportamental;