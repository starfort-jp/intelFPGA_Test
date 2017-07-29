LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

--  Entity Declaration
Entity block_core_tb is
End block_core_tb;


--  Architecture Body
Architecture block_cnt_sim of block_cnt_tb is
  Component block_cnt
    Port
    (
      MCK   : IN  STD_LOGIC;
      DIN   : IN  STD_LOGIC_VECTOR(3 downto 0);
      LD_L  : IN  STD_LOGIC; 
      EN_L  : IN  STD_LOGIC;
      CLR_L : IN  STD_LOGIC;
      CARRY : OUT STD_LOGIC;
      DOUT  : OUT STD_LOGIC_VECTOR(3 downto 0)
    );
  end component;
  signal MCK_tb   : STD_LOGIC;
  signal DIN_tb   : STD_LOGIC_VECTOR(3 downto 0);
  signal LD_L_tb  : STD_LOGIC;
  signal EN_L_tb  : STD_LOGIC;
  signal CLR_L_tb : STD_LOGIC;
  signal CARRY_tb : STD_LOGIC;
  signal DOUT_tb  : STD_LOGIC_VECTOR(3 downto 0);

Begin
  unit1 : block_cnt
  port map
  (
     MCK => MCK_tb,
     DIN => DIN_tb,
     LD_L => LD_L_tb,
     EN_L => EN_L_tb,
     CLR_L => CLR_L_tb,
     CARRY => CARRY_tb,
     DOUT => DOUT_tb
  );
  DIN_tb <= "1010";
  process begin
    LD_L_tb <= '0';
    EN_L_tb <= '0';
    CLR_L_tb <= '0';
    MCK_tb <= '0';
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    CLR_L_tb <= '1';
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    LD_L_tb <= '1';
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait for 100 ns;
    MCK_tb <= not MCK_tb;
    wait;
  end process;
End block_cnt_sim;