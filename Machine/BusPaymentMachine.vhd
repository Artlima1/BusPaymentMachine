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
    COMPONENT Register16b
        PORT (
            clock : IN STD_LOGIC;
            ld : IN STD_LOGIC;
            reset : IN STD_LOGIC;
            D : IN STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
            Q : OUT STD_LOGIC_VECTOR(W - 1 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT Subtrator16b
        PORT (
            x, y : IN STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
            s : OUT STD_LOGIC_VECTOR(W - 1 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT Mux2i
        PORT (
            S : IN STD_LOGIC;
            A, B : IN STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
            Q : OUT STD_LOGIC_VECTOR(W - 1 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT LessThan16b
        PORT (
            A, B : IN STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
            lt : OUT STD_LOGIC
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
    SIGNAL budget_minus_price, c_budget_reg, price_reg, mux_out : STD_LOGIC_VECTOR(W - 1 DOWNTO 0);
BEGIN
    C_ID_REGISTER : Register16b PORT MAP(clock, c_id_ld, c_id_clr, id_value, c_id);
    C_BUDGET_REGISTER : Register16b PORT MAP(clock, c_budget_ld, c_budget_clr, mux_out, c_budget_reg);
    PRICE_REGISTER : Register16b PORT MAP(clock, price_ld, price_clr, price, price_reg);

    LESSTHAN : LessThan16b PORT MAP(c_budget_reg, price_reg, budget_lt_price);
    SUBTRACTOR : Subtrator16b PORT MAP(c_budget_reg, price_reg, budget_minus_price);

    MUX : Mux2i PORT MAP(S0, budget_read, budget_minus_price, mux_out);

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

    c_budget <= c_budget_reg;
END structure;