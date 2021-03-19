LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY tb_Controller IS
END tb_Controller;

ARCHITECTURE teste OF tb_Controller IS
    COMPONENT Controller IS
        PORT (
            clock : IN STD_LOGIC;
            id : IN STD_LOGIC;
            s_read : IN STD_LOGIC;
            pass : IN STD_LOGIC;
            budget_lt_price : IN STD_LOGIC;

            c_id_ld : OUT STD_LOGIC;
            c_id_clr : OUT STD_LOGIC;
            c_budget_ld : OUT STD_LOGIC;
            c_budget_clr : OUT STD_LOGIC;
            c_price_ld : OUT STD_LOGIC;
            c_price_clr : OUT STD_LOGIC;
            denied : OUT STD_LOGIC;
            S0 : OUT STD_LOGIC;
            write_DB : OUT STD_LOGIC;
            read_DB : OUT STD_LOGIC;
            lib : OUT STD_LOGIC

        );
    END COMPONENT;

    SIGNAL clock : STD_LOGIC := '0';
    SIGNAL id, s_read, pass, budget_lt_price, c_id_ld, c_id_clr, c_budget_ld, c_budget_clr, c_price_ld, c_price_clr, denied, S0, write_DB, read_DB, lib : STD_LOGIC;

BEGIN
    instancia_Controller : Controller PORT MAP(clock => clock, id => id, s_read => s_read, pass => pass, budget_lt_price => budget_lt_price, c_id_ld => c_id_ld, c_id_clr => c_id_clr, c_budget_ld => c_budget_ld, c_budget_clr => c_budget_clr, c_price_ld => c_price_ld, c_price_clr => c_price_clr, denied => denied, S0 => S0, write_DB => write_DB, read_DB => read_DB, lib => lib);

    clock <= NOT clock AFTER 1 ns;
    id <='0', '1' AFTER 4000 ps, '0' AFTER 6000 ps, '1' AFTER 22000 ps, '0' AFTER 24000 ps;
    s_read <='0', '1' AFTER 8000 ps, '0' AFTER 10000 ps, '1' AFTER 26000 ps, '0' AFTER 28000 ps;
    budget_lt_price <= '0', '1' AFTER 26000 ps;
    pass <='0', '1' AFTER 20000 ps;
END teste;