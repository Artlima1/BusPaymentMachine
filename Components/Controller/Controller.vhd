LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY controller IS
    PORT (
        clock : IN STD_LOGIC; -- clock input
        id : IN STD_LOGIC; -- incoming id from the card reader module
        s_read : IN STD_LOGIC; -- reading from the server was successful
        pass : IN STD_LOGIC; -- user entered the bus successifully
        budget_lt_price : IN STD_LOGIC; -- compare budget to price
        reset : IN STD_LOGIC; -- reset the controller to Init State

        c_id_ld : OUT STD_LOGIC; -- load c_id from card reader
        c_id_clr : OUT STD_LOGIC; -- clear c_id register
        c_budget_ld : OUT STD_LOGIC; -- load c_budget from connection module
        c_budget_clr : OUT STD_LOGIC; -- clear c_budget register
        c_price_ld : OUT STD_LOGIC; -- load c_price from memory module
        c_price_clr : OUT STD_LOGIC; -- clear c_price register
        denied : OUT STD_LOGIC; -- visor to show an error
        S0 : OUT STD_LOGIC; -- selector entry in mux
        write_DB : OUT STD_LOGIC; -- connection module to write new budget to user
        read_DB : OUT STD_LOGIC; -- connection module to read budget from user
        lib : OUT STD_LOGIC -- allow user to pass through

    );
END controller;
ARCHITECTURE arch OF controller IS

    TYPE State IS (Init, wait_st, read_st, search, att, comp, error_st, newBudget, pay, allow);

    SIGNAL current_state, next_state : State;

BEGIN
    PROCESS (clock)
    BEGIN
        IF (reset = '1') THEN
            current_state <= Init;
        ELSIF rising_edge(clock) THEN
            current_state <= next_state;
        END IF;
    END PROCESS;

    PROCESS (current_state, id, s_read, pass, budget_lt_price, reset) BEGIN
        CASE current_state IS
            WHEN Init =>
                c_id_ld <= '0';
                c_id_clr <= '1';
                c_budget_ld <= '0';
                c_budget_clr <= '1';
                c_price_ld <= '0';
                c_price_clr <= '1';
                denied <= '0';
                S0 <= '0';
                write_DB <= '0';
                read_DB <= '0';
                lib <= '0';
                next_state <= wait_st;
            WHEN wait_st =>
                c_id_ld <= '0';
                c_id_clr <= '1';
                c_budget_ld <= '0';
                c_budget_clr <= '1';
                c_price_ld <= '0';
                c_price_clr <= '1';
                denied <= '0';
                S0 <= '0';
                write_DB <= '0';
                read_DB <= '0';
                lib <= '0';
                IF id = '1'
                    THEN
                    next_state <= read_st;
                ELSE
                    next_state <= wait_st;
                END IF;
            WHEN read_st =>
                c_id_ld <= '1';
                c_id_clr <= '0';
                c_budget_ld <= '0';
                c_budget_clr <= '0';
                c_price_ld <= '0';
                c_price_clr <= '0';
                denied <= '0';
                S0 <= '0';
                write_DB <= '0';
                read_DB <= '0';
                lib <= '0';
                next_state <= search;
            WHEN search =>
                c_id_ld <= '0';
                c_id_clr <= '0';
                c_budget_ld <= '0';
                c_budget_clr <= '0';
                c_price_ld <= '0';
                c_price_clr <= '0';
                denied <= '0';
                S0 <= '0';
                write_DB <= '0';
                read_DB <= '1';
                lib <= '0';
                IF s_read = '1'
                    THEN
                    next_state <= att;
                ELSE
                    next_state <= search;
                END IF;
            WHEN att =>
                c_id_ld <= '0';
                c_id_clr <= '0';
                c_budget_ld <= '1';
                c_budget_clr <= '0';
                c_price_ld <= '1';
                c_price_clr <= '0';
                denied <= '0';
                S0 <= '0';
                write_DB <= '0';
                read_DB <= '0';
                lib <= '0';
                next_state <= comp;
            WHEN comp =>
                c_id_ld <= '0';
                c_id_clr <= '0';
                c_budget_ld <= '0';
                c_budget_clr <= '0';
                c_price_ld <= '0';
                c_price_clr <= '0';
                denied <= '0';
                S0 <= '0';
                write_DB <= '0';
                read_DB <= '0';
                lib <= '0';
                IF budget_lt_price = '1'
                    THEN
                    next_state <= error_st;
                ELSE
                    next_state <= newBudget;
                END IF;
            WHEN error_st =>
                c_id_ld <= '0';
                c_id_clr <= '0';
                c_budget_ld <= '0';
                c_budget_clr <= '0';
                c_price_ld <= '0';
                c_price_clr <= '0';
                denied <= '1';
                S0 <= '0';
                write_DB <= '0';
                read_DB <= '0';
                lib <= '0';
                next_state <= wait_st;
            WHEN newBudget =>
                c_id_ld <= '0';
                c_id_clr <= '0';
                c_budget_ld <= '1';
                c_budget_clr <= '0';
                c_price_ld <= '0';
                c_price_clr <= '0';
                denied <= '0';
                S0 <= '1';
                write_DB <= '0';
                read_DB <= '0';
                lib <= '0';
                next_state <= pay;
            WHEN pay =>
                c_id_ld <= '0';
                c_id_clr <= '0';
                c_budget_ld <= '0';
                c_budget_clr <= '0';
                c_price_ld <= '0';
                c_price_clr <= '0';
                denied <= '0';
                S0 <= '0';
                write_DB <= '1';
                read_DB <= '0';
                lib <= '0';
                next_state <= allow;
            WHEN allow =>
                c_id_ld <= '0';
                c_id_clr <= '0';
                c_budget_ld <= '0';
                c_budget_clr <= '0';
                c_price_ld <= '0';
                c_price_clr <= '0';
                denied <= '0';
                S0 <= '0';
                write_DB <= '0';
                read_DB <= '0';
                lib <= '1';
                IF pass = '1'
                    THEN
                    next_state <= wait_st;
                ELSE
                    next_state <= allow;
                END IF;
        END CASE;
    END PROCESS;

END arch;