LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY tb_BusPaymentMachine IS
    GENERIC (
        W : INTEGER := 16
    );
END tb_BusPaymentMachine;

ARCHITECTURE teste OF tb_BusPaymentMachine IS
    COMPONENT BusPaymentMachine IS
        PORT (
            clock : IN STD_LOGIC;
            id : IN STD_LOGIC;
            pass : IN STD_LOGIC;
            s_read : IN STD_LOGIC;
            reset : IN STD_LOGIC;
            id_value : IN STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
            budget_read : IN STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
            price : IN STD_LOGIC_VECTOR(W - 1 DOWNTO 0);

            denied : OUT STD_LOGIC;
            write_DB : OUT STD_LOGIC;
            read_DB : OUT STD_LOGIC;
            lib : OUT STD_LOGIC;
            c_id : OUT STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
            c_budget : OUT STD_LOGIC_VECTOR(W - 1 DOWNTO 0)

        );
    END COMPONENT;

    SIGNAL clock : STD_LOGIC := '0';
    SIGNAL id : STD_LOGIC;
    SIGNAL pass : STD_LOGIC;
    SIGNAL s_read : STD_LOGIC;
    SIGNAL reset : STD_LOGIC;
    SIGNAL id_value : STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
    SIGNAL budget_read : STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
    SIGNAL price : STD_LOGIC_VECTOR(W - 1 DOWNTO 0);

    SIGNAL denied : STD_LOGIC;
    SIGNAL write_DB : STD_LOGIC;
    SIGNAL read_DB : STD_LOGIC;
    SIGNAL lib : STD_LOGIC;
    SIGNAL c_id : STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
    SIGNAL c_budget : STD_LOGIC_VECTOR(W - 1 DOWNTO 0);

BEGIN
    instancia_BusPaymentMachine : BusPaymentMachine PORT MAP(clock => clock, reset => reset, id => id, pass => pass, s_read => s_read, id_value => id_value, budget_read => budget_read, price => price, denied => denied, write_DB => write_DB, read_DB => read_DB, lib => lib, c_id => c_id, c_budget => c_budget);

    reset <= '0';
    clock <= NOT clock AFTER 1 ns;
    id <= '0', '1' AFTER 4 ns, '0' AFTER 6 ns, '1' AFTER 22 ns, '0' AFTER 24 ns;
    id_value <= "0000000000000000", "0000000000000001" AFTER 4 ns, "0000000000000010" AFTER 22 ns;
    s_read <= '0', '1' AFTER 8 ns, '0' AFTER 10 ns, '1' AFTER 26 ns, '0' AFTER 28 ns;
    budget_read <= "0000000000000000", "1000000000000000" AFTER 8 ns, "0000000000000001" AFTER 26 ns;
    price <= "0000001000000001";
    pass <= '0', '1' AFTER 20 ns;

END teste;