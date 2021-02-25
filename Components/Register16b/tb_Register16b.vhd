
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_textio.ALL;
USE std.textio.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_Register16b IS
    GENERIC (
        W : INTEGER := 15
    );
END tb_Register16b;

ARCHITECTURE behavior OF tb_Register16b IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT Register16b
        PORT (
            clock : IN STD_LOGIC;
            ld : IN STD_LOGIC;
            reset : IN STD_LOGIC;
            D : IN STD_LOGIC_VECTOR(W DOWNTO 0);
            Q : OUT STD_LOGIC_VECTOR(W DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL clk : STD_LOGIC;
    SIGNAL rst : STD_LOGIC;
    SIGNAL ld : STD_LOGIC;
    SIGNAL data_in : STD_LOGIC_VECTOR(W DOWNTO 0);
    SIGNAL data_output : STD_LOGIC_VECTOR(W DOWNTO 0);
    SIGNAL temp : STD_LOGIC_VECTOR(W DOWNTO 0);
    CONSTANT max_value : NATURAL := 4;
    CONSTANT mim_value : NATURAL := 1;
    SIGNAL read_data_in : STD_LOGIC := '0';
    SIGNAL flag_write : STD_LOGIC := '0';
    SIGNAL flag_check : STD_LOGIC := '0';
    FILE inputs_data_in : text OPEN read_mode IS "data_in.txt";
    FILE correct_outputs : text OPEN read_mode IS "expected_outputs.txt";
    FILE outputs : text OPEN write_mode IS "outputs.txt";
    -- Clock period definitions
    CONSTANT PERIOD : TIME := 10 ns;
    CONSTANT DUTY_CYCLE : real := 0.5;
    CONSTANT OFFSET : TIME := 5 ns;

BEGIN
    -- Instantiate the Unit Under Test (UUT) or Design Under Test (DUT)
    DUT : Register16b
    PORT MAP(
        clock => clk,
        reset => rst,
        D => data_in,
        Q => data_output,
        ld => ld
    );

    ------------------------------------------------------------------------------------
    ----------------- processo para gerar o sinal de clock 
    ------------------------------------------------------------------------------------		
    PROCESS -- clock process for clock
    BEGIN
        WAIT FOR OFFSET;
        CLOCK_LOOP : LOOP
            clk <= '0';
            WAIT FOR (PERIOD - (PERIOD * DUTY_CYCLE));
            clk <= '1';
            WAIT FOR (PERIOD * DUTY_CYCLE);
        END LOOP CLOCK_LOOP;
    END PROCESS;

    ------------------------------------------------------------------------------------
    ----------------- processo para gerar o estimulo de reset
    ------------------------------------------------------------------------------------		
    sreset : PROCESS
    BEGIN
        WAIT FOR (OFFSET + 7 * PERIOD);
        rst <= '1';
        WAIT FOR PERIOD;
        rst <= '0';
        WAIT;
    END PROCESS sreset;

    ------------------------------------------------------------------------------------
    ----------------- processo para gerar o estimulo de ld
    ------------------------------------------------------------------------------------		
    s_ld : PROCESS
    BEGIN
        WAIT FOR (OFFSET + 3 * PERIOD);
        ld <= '1';
        WAIT FOR (3*PERIOD);
        ld <= '0';
        WAIT;
    END PROCESS s_ld;
    ------------------------------------------------------------------------------------
    ----------------- processo para leer os dados do arquivo data_in.txt
    ------------------------------------------------------------------------------------
    read_inputs_data_in : PROCESS
        VARIABLE linea : line;
        VARIABLE input : STD_LOGIC_VECTOR(W DOWNTO 0);
    BEGIN
        WAIT UNTIL falling_edge(clk);
        WHILE NOT endfile(inputs_data_in) LOOP
            IF read_data_in = '1' THEN
                readline(inputs_data_in, linea);
                read(linea, input);
                data_in <= input;
            END IF;
            WAIT FOR PERIOD;
        END LOOP;
        WAIT;
    END PROCESS read_inputs_data_in;

    ------------------------------------------------------------------------------------
    ----------------- processo para gerar os estimulos de entrada
    ------------------------------------------------------------------------------------

    tb_stimulus : PROCESS
    BEGIN
        WAIT FOR (OFFSET + 3 * PERIOD);
        read_data_in <= '1';
        FOR i IN mim_value TO max_value LOOP
            WAIT FOR PERIOD;
        END LOOP;
        read_data_in <= '0';
        WAIT;
    END PROCESS tb_stimulus;

    ------------------------------------------------------------------------------------
    ------ processo para gerar os estimulos de escrita do arquivo de saida
    ------------------------------------------------------------------------------------   

    escreve_outputs : PROCESS
    BEGIN
        WAIT FOR (OFFSET + 4 * PERIOD);
        flag_write <= '1';
        FOR i IN mim_value TO max_value LOOP
            WAIT FOR PERIOD;
        END LOOP;
        flag_write <= '0';
        WAIT;
    END PROCESS escreve_outputs;

    ------------------------------------------------------------------------------------
    ------ processo para escriber os dados de saida no arquivo .txt
    ------------------------------------------------------------------------------------   

    write_outputs : PROCESS
        VARIABLE linea : line;
        VARIABLE output : STD_LOGIC_VECTOR(W DOWNTO 0);
    BEGIN
        WAIT UNTIL clk = '0';
        WHILE true LOOP
            IF (flag_write = '1') THEN
                output := data_output;
                write(linea, output);
                writeline(outputs, linea);
            END IF;
            WAIT FOR PERIOD;
        END LOOP;
    END PROCESS write_outputs;

    -- ------------------------------------------------------------------------------------
    -- ------ processo para comparar os dados de saida com os do arquivo saida2.txt
    -- ------------------------------------------------------------------------------------  
    check_output_trigger : PROCESS
        VARIABLE linea : line;
        VARIABLE value : STD_LOGIC_VECTOR(W DOWNTO 0);
    BEGIN
        WAIT FOR (OFFSET + 4 * PERIOD);
        flag_check <= '1';
        FOR i IN mim_value TO max_value LOOP
            WAIT FOR PERIOD;
        END LOOP;
        flag_check <= '0';
        WAIT;
    END PROCESS check_output_trigger;

    checking_outputs : PROCESS
        VARIABLE linea : line;
        VARIABLE expected_value : STD_LOGIC_VECTOR (W DOWNTO 0);
    BEGIN
        WHILE true LOOP
            IF (flag_check = '1') THEN
                readline(correct_outputs, linea);
                read(linea, expected_value);
                temp <= expected_value;
                ASSERT(temp = data_output)
                REPORT "Saida errada!" SEVERITY warning;
            END IF;
            WAIT FOR PERIOD;
        END LOOP;
    END PROCESS checking_outputs;
END;