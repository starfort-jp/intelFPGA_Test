LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

--  Entity Declaration

ENTITY test_adder IS
	PORT
	(
		DIN_A : IN STD_LOGIC_VECTOR(3 downto 0);
		DIN_B : IN STD_LOGIC_VECTOR(3 downto 0);
		EN_L : IN STD_LOGIC;
		MCK : IN STD_LOGIC;
		DOUT : OUT STD_LOGIC_VECTOR(4 downto 0)
	);
END test_adder;

architecture rtl of test_adder is
    component block_adder is
	 	PORT
		(
			DIN_A : IN STD_LOGIC_VECTOR(3 downto 0);
			DIN_B : IN STD_LOGIC_VECTOR(3 downto 0);
			EN_L : IN STD_LOGIC;
			MCK : IN STD_LOGIC;
			DOUT : OUT STD_LOGIC_VECTOR(4 downto 0)
		);
    end component block_adder;
begin
	 adder : block_adder
    port map
	 (
			DIN_A => DIN_A,
         DIN_B => DIN_B,
         EN_L => EN_L,
         MCK => MCK,
         DOUT => DOUT			
    );
end architecture rtl;