LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

--  Entity Declaration

ENTITY test_mux IS
	PORT
	(
		DIN_A : IN STD_LOGIC_VECTOR(3 downto 0);
		DIN_B : IN STD_LOGIC_VECTOR(3 downto 0);
		SEL_L : IN STD_LOGIC;
		EN_L : IN STD_LOGIC;
		MCK : IN STD_LOGIC;
		DOUT : OUT STD_LOGIC_VECTOR(3 downto 0)
	);
END test_mux;

architecture rtl of test_mux is
    component block_mux is
	 	PORT
		(
			DIN_A : IN STD_LOGIC_VECTOR(3 downto 0);
			DIN_B : IN STD_LOGIC_VECTOR(3 downto 0);
			SEL_L : IN STD_LOGIC;
			EN_L : IN STD_LOGIC;
			MCK : IN STD_LOGIC;
			DOUT : OUT STD_LOGIC_VECTOR(3 downto 0)
		);
    end component block_mux;
begin
	 mux : block_mux
    port map
	 (
			DIN_A => DIN_A,
         DIN_B => DIN_B,
         SEL_L => SEL_L,
         EN_L => EN_L,
         MCK => MCK,
         DOUT => DOUT			
    );
end architecture rtl;