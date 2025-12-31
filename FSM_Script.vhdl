library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FSM_Sim_Entity is
	generic(ClockFreqHz : integer);
	port(
		    Clk : in std_logic;
	            nRst : in std_logic
            );
end entity;

architecture FSM_SIM_Arch of FSM_Sim_Entity is
	type t_State is (S0, S1, S2, S3,
	                 S4, S5, S6, S7);
	signal State : t_State; 
begin
	process(Clk) is
	begin
		if rising_edge(Clk) then
			if nRst = '0' then
				--Resset values
				State <= S0;
			else
				case State is
					when S0 =>
						State <= S1;
					when S1 =>
						State <= S2;
					when S2 =>
						State <= S3;
					when S3 =>
						State <= S4;
					when S4 =>
						State <= S5;
					when S5 =>
						State <= S6;
					when S6 =>
						State <= S7;
					when S7 =>
						State <= S0;
				end case;

			end if;
		end if;
	end process;
end architecture;

