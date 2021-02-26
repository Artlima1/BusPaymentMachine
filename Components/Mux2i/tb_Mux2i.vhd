
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_textio.ALL;
USE std.textio.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_Mux2i IS
    GENERIC (
        W : INTEGER := 15
    );
END tb_Mux2i;

ARCHITECTURE behavior OF tb_Mux2i IS

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT Mux2i
        PORT (
            S : IN STD_LOGIC; -- control input
            A, B : IN STD_LOGIC_VECTOR(W DOWNTO 0); -- data inputs
            Q : OUT STD_LOGIC_VECTOR(W DOWNTO 0) -- data output
        );
    END COMPONENT;

    SIGNAL s : STD_LOGIC;
    SIGNAL data_in_A : STD_LOGIC_VECTOR(W DOWNTO 0);
    SIGNAL data_in_B : STD_LOGIC_VECTOR(W DOWNTO 0);
    SIGNAL data_output : STD_LOGIC_VECTOR(W DOWNTO 0);
    SIGNAL temp : STD_LOGIC_VECTOR(W DOWNTO 0);
    CONSTANT max_value : NATURAL := 6;
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
    DUT : Mux2i
    PORT MAP(
        A => data_in_A,
        B => data_in_B,
        Q => data_output,
        S => s
    );

    ------------------------------------------------------------------------------------
    ----------------- processo para gerar o estimulo de s
    ------------------------------------------------------------------------------------		
    s_S : PROCESS
    BEGIN
        WAIT FOR (OFFSET + 3 * PERIOD);
        s <= '1';
        WAIT FOR (4 * PERIOD);
        s <= '0';
        WAIT;
    END PROCESS s_S;
    ------------------------------------------------------------------------------------
    ----------------- processo para leer os dados do arquivo data_in.txt
    ------------------------------------------------------------------------------------
    read_inputs_data_in : PROCESS
        VARIABLE lineaA : line;
        VARIABLE inputA : STD_LOGIC_VECTOR(W DOWNTO 0);
        VARIABLE lineaB : line;
        VARIABLE inputB : STD_LOGIC_VECTOR(W DOWNTO 0);
    BEGIN
        WHILE NOT endfile(inputs_data_in_A) LOOP
            IF read_data_in = '1' THEN
                readline(inputs_data_in_A, lineaA);
                read(lineaA, inputA);
                data_in_A <= inputA;
                readline(inputs_data_in_B, lineaB);
                read(lineaB, inputB);
                data_in_B <= inputB;
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
        WHILE true LOOP
            IF (flag_write = '1') THEN
                output := data_output;
                ASSERT(temp = output)
                REPORT "Saida errada!" SEVERITY warning;
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
        VARIABLE expected_value : STD_LOGIC_VECTOR (W DOWNTO 0);
    BEGIN
        WHILE true LOOP
            IF (flag_check = '1') THEN
                readline(correct_outputs, linea);
                read(linea, expected_value);
                temp <= expected_value;
            END IF;
            WAIT FOR PERIOD;
        END LOOP;
    END PROCESS checking_outputs;
END;