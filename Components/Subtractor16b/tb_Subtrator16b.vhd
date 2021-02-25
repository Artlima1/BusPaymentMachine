LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.std_logic_textio.ALL;
USE std.textio.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_subtrator16b IS
    GENERIC (
        W : INTEGER := 15
    );
END tb_subtrator16b;

ARCHITECTURE behavior OF tb_subtrator16b IS
    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT subtrator16b
        PORT (
            x, y : IN STD_LOGIC_VECTOR(W DOWNTO 0);
            s : OUT STD_LOGIC_VECTOR(W DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL data_in_x : STD_LOGIC_VECTOR(W DOWNTO 0);
    SIGNAL data_in_y : STD_LOGIC_VECTOR(W DOWNTO 0);
    SIGNAL data_output : STD_LOGIC_VECTOR(W DOWNTO 0);
    CONSTANT max_value : NATURAL := 4;
    CONSTANT mim_value : NATURAL := 1;
    SIGNAL read_data_in : STD_LOGIC := '0';
    SIGNAL flag_write : STD_LOGIC := '0';
    SIGNAL flag_check : STD_LOGIC := '0';
    SIGNAL temp : STD_LOGIC_VECTOR(W DOWNTO 0);
    FILE inputs_data_in_x : text OPEN read_mode IS "data_in_x.txt";
    FILE inputs_data_in_y : text OPEN read_mode IS "data_in_y.txt";
    FILE correct_outputs : text OPEN read_mode IS "saidaEsperada.txt";
    FILE outputs : text OPEN write_mode IS "outputs.txt";
BEGIN
    -- Instantiate the Unit Under Test (UUT) or Design Under Test (DUT)
    DUT : subtrator16b
    PORT MAP(
        x => data_in_x,
        y => data_in_y,
        s => data_output
    );

    ------------------------------------------------------------------------------------
    ----------------- processo para leer os dados do arquivo data_in.txt
    ------------------------------------------------------------------------------------
    read_inputs_data_in : PROCESS
        VARIABLE lineaX : line;
        VARIABLE lineaY : line;
        VARIABLE inputX : STD_LOGIC_VECTOR(W DOWNTO 0);
        VARIABLE inputY : STD_LOGIC_VECTOR(W DOWNTO 0);
    BEGIN
        WHILE ((NOT endfile(inputs_data_in_x)) AND (NOT endfile(inputs_data_in_y))) LOOP
            IF read_data_in = '1' THEN
                readline(inputs_data_in_x, lineaX);
                readline(inputs_data_in_y, lineaY);
                read(lineaX, inputX);
                read(lineaY, inputY);
                data_in_x <= inputX;
                data_in_y <= inputY;
            END IF;
            WAIT FOR 10 ns;
        END LOOP;
        WAIT;
    END PROCESS read_inputs_data_in;

    ------------------------------------------------------------------------------------
    ----------------- processo para gerar os estimulos de entrada
    ------------------------------------------------------------------------------------

    tb_stimulus : PROCESS
    BEGIN
        WAIT FOR 30 ns;
        read_data_in <= '1';
        FOR i IN mim_value TO max_value LOOP
            WAIT FOR 10 ns;
        END LOOP;
        read_data_in <= '0';
        WAIT;
    END PROCESS tb_stimulus;

    ------------------------------------------------------------------------------------
    ------ processo para gerar os estimulos de escrita do arquivo de saida
    ------------------------------------------------------------------------------------   

    escreve_outputs : PROCESS
    BEGIN
        WAIT FOR 40 ns;
        flag_write <= '1';
        FOR i IN mim_value TO max_value LOOP
            WAIT FOR 10 ns;
        END LOOP;
        flag_write <= '0';
        WAIT;
    END PROCESS escreve_outputs;

    -- ------------------------------------------------------------------------------------
    -- ------ processo para escriber os dados de saida no arquivo .txt
    -- ------------------------------------------------------------------------------------   

    write_outputs : PROCESS
        VARIABLE linea : line;
        VARIABLE output : STD_LOGIC_VECTOR (W DOWNTO 0);
    BEGIN
        WHILE true LOOP
            IF (flag_write = '1') THEN
                output := data_output;
                write(linea, output);
                writeline(outputs, linea);
            END IF;
            WAIT FOR 10 ns;
        END LOOP;
    END PROCESS write_outputs;
    -- ------------------------------------------------------------------------------------
    -- ------ processo para comparar os dados de saida com os do arquivo saida2.txt
    -- ------------------------------------------------------------------------------------  
    check_output_trigger : PROCESS
    BEGIN
        WAIT FOR 30 ns;
        flag_check <= '1';
        FOR i IN mim_value TO max_value LOOP
            WAIT FOR 10 ns;
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
            WAIT FOR 10 ns;
        END LOOP;
    END PROCESS checking_outputs;
END;