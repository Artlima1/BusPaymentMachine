
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_textio.ALL;
USE std.textio.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_LessThan16b IS
    GENERIC (
        W : INTEGER := 15
    );
END tb_LessThan16b;

ARCHITECTURE behavior OF tb_LessThan16b IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT LessThan16b
        PORT (
            A, B : IN STD_LOGIC_VECTOR(W DOWNTO 0);
            lt : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL data_in_A : STD_LOGIC_VECTOR(W DOWNTO 0);
    SIGNAL data_in_B : STD_LOGIC_VECTOR(W DOWNTO 0);
    SIGNAL data_output : STD_LOGIC;
    SIGNAL temp : STD_LOGIC;
    CONSTANT max_value : NATURAL := 4;
    CONSTANT mim_value : NATURAL := 1;
    SIGNAL read_data_in : STD_LOGIC := '0';
    SIGNAL flag_write : STD_LOGIC := '0';
    SIGNAL flag_check : STD_LOGIC := '0';
    FILE inputs_data_in_A : text OPEN read_mode IS "data_in_A.txt";
    FILE inputs_data_in_B : text OPEN read_mode IS "data_in_B.txt";
    FILE correct_outputs : text OPEN read_mode IS "expected_outputs.txt";
    FILE outputs : text OPEN write_mode IS "outputs.txt";
    -- Clock period definitions
    CONSTANT PERIOD : TIME := 10 ns;
    CONSTANT OFFSET : TIME := 5 ns;

BEGIN
    -- Instantiate the Unit Under Test (UUT) or Design Under Test (DUT)
    DUT : LessThan16b
    PORT MAP(
        A => data_in_A,
        B => data_in_B,
        lt => data_output
    );

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
    ----------------- processo para leer os dados do arquivo data_in.txt
    ------------------------------------------------------------------------------------
    read_inputs_data_in : PROCESS
        VARIABLE lineaA: line;
        VARIABLE lineaB: line;
        VARIABLE inputA : STD_LOGIC_VECTOR(W DOWNTO 0);
        VARIABLE inputB : STD_LOGIC_VECTOR(W DOWNTO 0);
    BEGIN
        WHILE ((NOT endfile(inputs_data_in_A)) AND (NOT endfile(inputs_data_in_B))) LOOP
            IF read_data_in = '1' THEN
                readline(inputs_data_in_A, lineaA);
                readline(inputs_data_in_B, lineaB);
                read(lineaA, inputA);
                read(lineaB, inputB);
                data_in_A <= inputA;
                data_in_B <= inputB;
            END IF;
            WAIT FOR PERIOD;
        END LOOP;
        WAIT;
    END PROCESS read_inputs_data_in;

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
        VARIABLE output : STD_LOGIC;
    BEGIN
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
    BEGIN
        WAIT FOR (OFFSET + 3 * PERIOD);
        flag_check <= '1';
        FOR i IN mim_value TO max_value LOOP
            WAIT FOR PERIOD;
        END LOOP;
        flag_check <= '0';
        WAIT;
    END PROCESS check_output_trigger;

    checking_outputs : PROCESS
        VARIABLE linea : line;
        VARIABLE expected_value : STD_LOGIC;
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