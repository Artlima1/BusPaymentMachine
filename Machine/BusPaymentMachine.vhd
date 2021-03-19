LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BusPaymentMachine IS
    GENERIC (
        W : INTEGER := 16
    );
    PORT (
        clock : IN STD_LOGIC;
        id : IN STD_LOGIC;
        pass : IN STD_LOGIC;
        s_read : IN STD_LOGIC;
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
END BusPaymentMachine;
ARCHITECTURE structure OF BusPaymentMachine IS
    COMPONENT DataPath
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

    COMPONENT Controller
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

    SIGNAL c_id_clr, c_id_ld, c_budget_clr, c_budget_ld, price_clr, price_ld, budget_lt_price, S0 : STD_LOGIC;
    
BEGIN
    DATAPATH_COMPONENT : DataPath PORT MAP(
        clock,
        id_value,
        budget_read,
        price,
        c_id,
        c_budget,
        c_id_ld,
        c_id_clr,
        c_budget_ld,
        c_budget_clr,
        price_ld,
        price_clr,
        S0,
        budget_lt_price
    );

    CONTROLLER_COMPONENT : Controller PORT MAP(
        clock,
        id,
        s_read,
        pass,
        budget_lt_price,
        c_id_ld,
        c_id_clr,
        c_budget_ld,
        c_budget_clr,
        price_ld,
        price_clr,
        denied,
        S0,
        write_DB,
        read_DB,
        lib
    );
END structure;