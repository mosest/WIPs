LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY lab6_d IS
	PORT (	w0, w1, w2, w3  	: in std_logic;
					s					: IN 	STD_LOGIC_vector (1 downto 0) ;
					f					: OUT 	STD_LOGIC ) ;
END lab6_d ;
ARCHITECTURE Behavior OF lab6_d IS	
BEGIN
	PROCESS ( w0, w1,w2, w3, s)
	BEGIN
		CASE s IS
			WHEN "00" =>
				f <= w0 ;
			WHEN "01" =>
				f <= w1 ;
			WHEN "10" =>
				f <= w2 ;
			WHEN OTHERS =>
				f <= w3 ;
		END CASE ;
	END PROCESS ;
END Behavior ;
