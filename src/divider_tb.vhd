library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_textio.all;
use ieee.numeric_std.all;
use std.textio.all;
use work.divider_const.all;

-- Additional standard or custom libraries go here
entity divider_tb is
end entity divider_tb;

architecture behavioral of divider_tb is

  -- type state is (idle, init, b_eq_1, l00p, epistemology);

  component divider is
      port(
        -- Input ports
        clk : in std_logic;
        reset : in std_logic;
        -- COMMENT OUT clk signal for Part A.
        start : in std_logic;
        dividend : in std_logic_vector (DIVIDEND_WIDTH - 1 downto 0);
        divisor : in std_logic_vector (DIVISOR_WIDTH - 1 downto 0);
        -- Output ports
        quotient : out std_logic_vector (DIVIDEND_WIDTH - 1 downto 0);
        remainder : out std_logic_vector (DIVISOR_WIDTH - 1 downto 0);
        overflow : out std_logic
        -- for debugging
        -- a_out : out std_logic_vector(DIVIDEND_WIDTH - 1 downto 0);
        -- b_out : out std_logic_vector(DIVISOR_WIDTH - 1 downto 0);
        -- q_out : out std_logic_vector(DIVIDEND_WIDTH - 1 downto 0);
        -- state_out : out state
      );
  end component divider;
  
  for all : divider use entity WORK.divider (fsm_behavior);

  -- internal signal declarations
  signal sig_START : std_logic;
  signal sig_DIVIDEND : std_logic_vector (DIVIDEND_WIDTH - 1 downto 0);
  signal sig_DIVISOR : std_logic_vector (DIVISOR_WIDTH - 1 downto 0);
  signal sig_QUOTIENT : std_logic_vector (DIVIDEND_WIDTH - 1 downto 0);
  signal sig_REMAINDER : std_logic_vector (DIVISOR_WIDTH - 1 downto 0);
  signal sig_OVFLW : std_logic;
  signal clk : std_logic;
  signal hold : std_logic := '0';
  signal reset : std_logic := '0';
  -- debugging
  -- signal sig_a : std_logic_vector (DIVIDEND_WIDTH - 1 downto 0);
  -- signal sig_b : std_logic_vector (DIVISOR_WIDTH - 1 downto 0);
  -- signal sig_q : std_logic_vector (DIVIDEND_WIDTH - 1 downto 0);
  -- signal sig_state : state;

begin
    dut : divider
        port map (
					      clk => clk,
                reset => reset,
                start => sig_START,
                dividend => sig_DIVIDEND,
                divisor => sig_DIVISOR,
                quotient => sig_QUOTIENT,
                remainder => sig_REMAINDER,
                overflow => sig_OVFLW
                -- a_out => sig_a,
                -- b_out => sig_b,
                -- q_out => sig_q,
                -- state_out => sig_state
            );
	clock_generate: process is
	begin
	  clk <= '0';
	  wait for 50 ns;
	  clk <= not clk;
	  wait for 50 ns;
	if hold = '1' then
	  wait;
  	end if;
    end process clock_generate;

    reset_generate : process is 
      begin
        reset <= '0';
        wait for 25 ns;
        reset <= '1';
        wait for 25 ns;
        reset <= '0';
        wait;
      end process reset_generate;
	 
    stimulus_testinput : process is
        variable curr_line : line;
        file file_in: text open read_mode is "../src/divider32.in";
        file file_out: text open write_mode is "../src/divider32.out";

        variable var_DIVIDEND : integer;
        variable var_DIVISOR : integer;

        begin while not (endfile(file_in)) loop
            -- read in the two lines containing dividend and divisor
            readline(file_in, curr_line);
            read(curr_line, var_DIVIDEND);
            readline(file_in, curr_line);
            read(curr_line, var_DIVISOR);

            -- drive signals
            sig_START <= '0';
            sig_DIVIDEND <= std_logic_vector(to_signed(var_DIVIDEND, DIVIDEND_WIDTH));
            sig_DIVISOR <= std_logic_vector(to_signed(var_DIVISOR, DIVISOR_WIDTH));
				wait for 100 ns;
				sig_START <= '1';
				wait for 100 ns;
				sig_START <= '0';
            wait for 3000 ns;
				

            -- write to the output file
            write(curr_line, var_DIVIDEND);
            write(curr_line, string'(" / "));
            write(curr_line, var_DIVISOR);
            write(curr_line, string'(" = "));
            write(curr_line, to_integer(signed(sig_QUOTIENT)));
            write(curr_line, string'(" -- "));
            write(curr_line, to_integer(signed(sig_REMAINDER)));

            if sig_OVFLW = '1' then
                write(curr_line, string'(" ! overflow detected !"));
            end if;

            writeline(file_out, curr_line);
        end loop;
				hold <= '1';
        wait;
    end process stimulus_testinput;

end architecture behavioral;
