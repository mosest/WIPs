LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;

ENTITY lab6_b IS
	PORT ( 	add_sub 	: IN STD_LOGIC ;
			zero_flag 	: OUT STD_LOGIC ;
			X, Y 		: IN STD_LOGIC_VECTOR(4 DOWNTO 0) ;
			Result		: OUT STD_LOGIC_VECTOR(4 DOWNTO 0) ;
			Overflow	: OUT STD_LOGIC ) ;	
END lab6_b ;

ARCHITECTURE Behavior OF lab6_b IS
	SIGNAL internal_result : STD_LOGIC_VECTOR(5 DOWNTO 0) ;
BEGIN

	internal_result <= ('0'&X+Y) when add_sub = '1' else ('0'&X-Y);
	Result 			<= internal_result(4 DOWNTO 0);
	Overflow 		<= X(4) xor Y(4) xor internal_result(4) xor internal_result(5);
	zero_flag		<= '1' when internal_result(5 DOWNTO 0) = "0" else '0';
END Behavior ;