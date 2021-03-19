LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY tb_DataPath IS
    GENERIC (
        W : INTEGER := 16
    );
END tb_DataPath;

ARCHITECTURE teste OF tb_DataPath IS
    COMPONENT DataPath IS
        PORT (
            clock : IN STD_LOGIC;

            id_value : IN STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
            budget_read : IN STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
            price : IN STD_LOGIC_VECTOR(W - 1 DOWNTO 0);

            c_id : OUT STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
            c_budget : OUT STD_LOGIC_VECTOR(W - 1 DOWNTO 0);

            c_id_ld : IN STD_LOGIC;
            c_id_clr : IN STD_LOGIC;
            c_budget_ld : IN STD_LOGIC;
            c_budget_clr : IN STD_LOGIC;
            price_ld : IN STD_LOGIC;
            price_clr : IN STD_LOGIC;
            S0 : IN STD_LOGIC;
            budget_lt_price : OUT STD_LOGIC

        );
    END COMPONENT;

    SIGNAL clock : STD_LOGIC := '0';

    SIGNAL id_value : STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
    SIGNAL budget_read : STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
    SIGNAL price : STD_LOGIC_VECTOR(W - 1 DOWNTO 0);

    SIGNAL c_id : STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
    SIGNAL c_budget : STD_LOGIC_VECTOR(W - 1 DOWNTO 0);

    SIGNAL c_id_ld : STD_LOGIC;
    SIGNAL c_id_clr : STD_LOGIC;
    SIGNAL c_budget_ld : STD_LOGIC;
    SIGNAL c_budget_clr : STD_LOGIC;
    SIGNAL price_ld : STD_LOGIC;
    SIGNAL price_clr : STD_LOGIC;
    SIGNAL S0 : STD_LOGIC;
    SIGNAL budget_lt_price : STD_LOGIC;

BEGIN
    instancia_DataPath : DataPath PORT MAP(clock => clock, id_value => id_value, budget_read => budget_read, price => price, c_id => c_id, c_budget => c_budget, c_id_ld => c_id_ld, c_id_clr => c_id_clr, c_budget_ld => c_budget_ld, c_budget_clr => c_budget_clr, price_ld => price_ld, price_clr => price_clr, S0 => S0, budget_lt_price => budget_lt_price);

    clock <= NOT clock AFTER 1 ns;
    
    id_value <=     "0000000000000000", "0000000011000000" AFTER 5 ns;
    c_id_ld <=      '0',                                               '1' AFTER 10 ns, '0' AFTER 11 ns;
    c_id_clr <=     '1',                '0' AFTER 5 ns;
    
    budget_read <=  "0000000000000000",                                "1000000000000000" AFTER 10 ns,                                                                                                                                       "0000000000000001" AFTER 30 ns;
    c_budget_ld <=  '0',                                                                                '1' AFTER 15 ns,'0' AFTER 16 ns,                                  '1' AFTER 23 ns, '0' AFTER 24 ns,                                                                 '1' AFTER 33 ns, '0' AFTER 34 ns;
    c_budget_clr <= '1',                '0' AFTER 5 ns,                                                                                                                                                     '1' AFTER 27 ns, '0' AFTER 28 ns;
    
    price <=        "0000001000000000";
    price_ld <=     '0',                                                                                '1' AFTER 15 ns,'0' AFTER 16 ns;
    price_clr <=    '1',                '0' AFTER 5 ns;
    
    S0 <=           '0',                                                                                                                 '1' AFTER 20 ns,                                                                                     '0' AFTER 30 ns;

END teste;