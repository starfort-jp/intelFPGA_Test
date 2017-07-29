LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

--  Entity Declaration

ENTITY test_cnt IS
	PORT
	(
		MCK : IN STD_LOGIC;
		DIN : IN STD_LOGIC_VECTOR(3 downto 0);
		EN_L : IN STD_LOGIC;
		CLR_L : IN STD_LOGIC;
		LD_L : IN STD_LOGIC;
		CARRY : OUT STD_LOGIC;
		DOUT : OUT STD_LOGIC_VECTOR(3 downto 0)
	);
END test_cnt;

architecture rtl of test_cnt is
    component block_cnt is
	 	PORT
		(
			MCK : IN STD_LOGIC;
			DIN : IN STD_LOGIC_VECTOR(3 downto 0);
			EN_L : IN STD_LOGIC;
			CLR_L : IN STD_LOGIC;
			LD_L : IN STD_LOGIC;
			CARRY : OUT STD_LOGIC;
			DOUT : OUT STD_LOGIC_VECTOR(3 downto 0)
		);
    end component block_cnt;
begin
	 cnt : block_cnt
    port map
	 (
			MCK => MCK,
         DIN => DIN,
         EN_L => EN_L,
         CLR_L => CLR_L,
         LD_L => LD_L,
         CARRY => CARRY,
         DOUT => DOUT			
    );
end architecture rtl;