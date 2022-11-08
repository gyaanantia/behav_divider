library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use work.divider_const.all;
--Additional standard or custom libraries go here

entity comparator_tb is
generic(
	DATA_WIDTH : natural := 8
);
port(
	DOUT : out std_logic_vector (DATA_WIDTH - 1 downto 0);
	isGreaterEq : out std_logic
);
end entity comparator_tb;


architecture behavioral of comparator_tb is
	-- Signal & Component declarations
	component comparator is
	port(
		-- Input signals
		DINL : in std_logic_vector (DATA_WIDTH downto 0);
		DINR : in std_logic_vector (DATA_WIDTH - 1 downto 0);
		-- Output signals
		DOUT : out std_logic_vector (DATA_WIDTH - 1 downto 0);
		isGreaterEq : out std_logic
	);
	end component comparator;

	-- internal signal declarations
	signal sig_DINL : std_logic_vector (DATA_WIDTH downto 0);
	signal sig_DINR : std_logic_vector (DATA_WIDTH - 1 downto 0);
begin

	dut : comparator
	port map(
		DINL => sig_DINL,
		DINR => sig_DINR,
		DOUT => DOUT,
		isGreaterEq => isGreaterEq
	);

	stimulus_testinput : process is
	begin
		sig_DINL <= "00000";
		sig_DINR <= "0000";
		wait for 10 ns;
		sig_DINL <= "00001";
		sig_DINR <= "0000";
		wait for 10 ns;
		sig_DINL <= "00010";
		sig_DINR <= "0011";
		wait for 10 ns;
		sig_DINL <= "00100";
		sig_DINR <= "0011";
		wait for 10 ns;
		sig_DINL <= "01000";
		sig_DINR <= "0111";
		wait for 10 ns;
		sig_DINL <= "00110";
		sig_DINR <= "0111";
		wait for 10 ns;
		sig_DINL <= "00101";
		sig_DINR <= "0110";
		wait for 10 ns;
		sig_DINL <= "01011";
		sig_DINR <= "0111";
		wait;
	end process stimulus_testinput;

end architecture behavioral;

