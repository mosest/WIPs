LIBRARY ieee ;
USE ieee.std_logic_1164.all;

ENTITY lab6_a IS
	PORT ( x1, x2, x3 	: in std_logic  ;
			f 			: out std_logic );
END lab6_a;

ARCHITECTURE Behavior OF lab6_a IS
BEGIN
	f <= (x1 OR NOT x2 OR NOT x3);
END Behavior;