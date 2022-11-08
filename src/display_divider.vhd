library IEEE;
use IEEE.std_logic_1164.all;
use WORK.divider_const.all;

--Additional standard or custom libraries go here
entity display_divider is
  port(
  --You will replace these with your actual inputs and outputs
      -- input signals
		clk	:	in std_logic;
      dividend : in std_logic_vector(DIVIDEND_WIDTH - 1 downto 0);
      divisor : in std_logic_vector(DIVISOR_WIDTH - 1 downto 0);
      start : in std_logic;
      -- output signals
      dividend_led : out std_logic_vector ((DIVIDEND_WIDTH / 4) * 7 - 1 downto 0);
      divisor_led : out std_logic_vector ((DIVISOR_WIDTH / 4) * 7 - 1 downto 0);
      quotient_led : out std_logic_vector ((DIVIDEND_WIDTH / 4) * 7 - 1 downto 0);
      rem_led : out std_logic_vector ((DIVISOR_WIDTH / 4) * 7 - 1 downto 0);
      overflow : out std_logic
    );
end entity display_divider;

architecture structural of display_divider is
--Signals and components go here
  component leddcd is
    port (
      data_in : in   std_logic_vector(3 downto 0);
      segments_out :  out std_logic_vector(6 downto 0)
      );
  end component;

  component divider is
    port (
		  clk	: in std_logic;
        start : in std_logic;
        dividend : in std_logic_vector (DIVIDEND_WIDTH - 1 downto 0);
        divisor : in std_logic_vector (DIVISOR_WIDTH - 1 downto 0);
        quotient : out std_logic_vector (DIVIDEND_WIDTH - 1 downto 0);
        remainder : out std_logic_vector (DIVISOR_WIDTH - 1 downto 0);
        overflow : out std_logic
      );
  end component;

  signal quotient: std_logic_vector (DIVIDEND_WIDTH - 1 downto 0);
  signal remainder: std_logic_vector (DIVISOR_WIDTH - 1 downto 0);

  begin
--Structural design goes here
  div: divider port map (clk, start, dividend, divisor, quotient, remainder, overflow);

  dividend_gen: for i in 0 to (DIVIDEND_WIDTH / 4) - 1 generate begin
    dividend_dcd: leddcd port map (dividend(4 * (i+1) - 1 downto 4 * i), dividend_led(7 * (i+1) - 1 downto 7 * i));
  end generate;

  divisor_gen: for i in 0 to (DIVISOR_WIDTH / 4) - 1 generate begin
    divisor_dcd: leddcd port map (divisor(4 * (i+1) - 1 downto 4 * i), divisor_led(7 * (i+1) - 1 downto 7 * i));
  end generate;

  quotient_gen: for i in 0 to (DIVIDEND_WIDTH / 4) - 1 generate begin
    quotient_dcd: leddcd port map (quotient(4 * (i+1) - 1 downto 4 * i), quotient_led(7 * (i+1) - 1 downto 7 * i));
  end generate;

  rem_gen: for i in 0 to (DIVISOR_WIDTH / 4) - 1 generate begin
    rem_dcd: leddcd port map (remainder(4 * (i+1) - 1 downto 4 * i), rem_led(7 * (i+1) - 1 downto 7 * i));
  end generate;

end architecture structural;