library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FSM_TB is
	--empty
end entity;

architecture sim of FSM_TB is
	constant ClockFreqHz : integer := 100;
	constant ClockPeriod : time := 1000 ms / ClockFreqHz;

	signal Clk : std_logic := '1';
	signal nRst : std_logic := '0';

begin
	i_States : entity work.FSM_Sim_Entity(FSM_SIM_Arch)
	generic map(ClockFreqHz => ClockFreqHz)
	port map(Clk => Clk,
	         nRst => nRst);
	Clk <= not Clk after ClockPeriod / 2;

	process is
	begin
		wait until rising_edge(Clk);
		wait until rising_edge(Clk);

		nRst <= '1';


		wait;
	end process;
end architecture;
