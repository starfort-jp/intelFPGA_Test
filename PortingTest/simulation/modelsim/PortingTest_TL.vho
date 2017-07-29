-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "07/25/2017 21:58:55"

-- 
-- Device: Altera 10M02SCE144A7G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_15,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_17,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_122,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_131,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_135,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PortingTest_TL IS
    PORT (
	CARRY : OUT std_logic;
	MCK : IN std_logic;
	EN_L : IN std_logic;
	CLR_L : IN std_logic;
	LD_L : IN std_logic;
	DIN : IN std_logic_vector(3 DOWNTO 0);
	DOUT_ADDER : OUT std_logic_vector(4 DOWNTO 0);
	SEL_L : IN std_logic;
	DIN_A : IN std_logic_vector(3 DOWNTO 0);
	DIN_B : IN std_logic_vector(3 DOWNTO 0)
	);
END PortingTest_TL;

-- Design Ports Information
-- CARRY	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT_ADDER[4]	=>  Location: PIN_48,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT_ADDER[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT_ADDER[2]	=>  Location: PIN_62,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT_ADDER[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT_ADDER[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR_L	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[3]	=>  Location: PIN_123,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD_L	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCK	=>  Location: PIN_27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_L	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[0]	=>  Location: PIN_63,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_L	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_B[3]	=>  Location: PIN_47,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_A[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_B[2]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_A[2]	=>  Location: PIN_61,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_B[1]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_A[1]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_B[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_A[0]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PortingTest_TL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CARRY : std_logic;
SIGNAL ww_MCK : std_logic;
SIGNAL ww_EN_L : std_logic;
SIGNAL ww_CLR_L : std_logic;
SIGNAL ww_LD_L : std_logic;
SIGNAL ww_DIN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DOUT_ADDER : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SEL_L : std_logic;
SIGNAL ww_DIN_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DIN_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \MCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \CARRY~output_o\ : std_logic;
SIGNAL \DOUT_ADDER[4]~output_o\ : std_logic;
SIGNAL \DOUT_ADDER[3]~output_o\ : std_logic;
SIGNAL \DOUT_ADDER[2]~output_o\ : std_logic;
SIGNAL \DOUT_ADDER[1]~output_o\ : std_logic;
SIGNAL \DOUT_ADDER[0]~output_o\ : std_logic;
SIGNAL \MCK~input_o\ : std_logic;
SIGNAL \MCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \LD_L~input_o\ : std_logic;
SIGNAL \DIN[2]~input_o\ : std_logic;
SIGNAL \CLR_L~input_o\ : std_logic;
SIGNAL \DIN[1]~input_o\ : std_logic;
SIGNAL \DIN[0]~input_o\ : std_logic;
SIGNAL \inst_cnt|DOUTx~5_combout\ : std_logic;
SIGNAL \EN_L~input_o\ : std_logic;
SIGNAL \inst_cnt|DOUTx~3_combout\ : std_logic;
SIGNAL \inst_cnt|DOUTx~4_combout\ : std_logic;
SIGNAL \inst_cnt|DOUTx~1_combout\ : std_logic;
SIGNAL \inst_cnt|DOUTx~2_combout\ : std_logic;
SIGNAL \DIN[3]~input_o\ : std_logic;
SIGNAL \inst_cnt|Add0~0_combout\ : std_logic;
SIGNAL \inst_cnt|DOUTx~0_combout\ : std_logic;
SIGNAL \inst_cnt|Equal0~0_combout\ : std_logic;
SIGNAL \SEL_L~input_o\ : std_logic;
SIGNAL \DIN_A[3]~input_o\ : std_logic;
SIGNAL \inst_mux|DIN_Ad[3]~feeder_combout\ : std_logic;
SIGNAL \DIN_B[3]~input_o\ : std_logic;
SIGNAL \inst_mux|DIN_Bd[3]~feeder_combout\ : std_logic;
SIGNAL \inst_mux|DOUTx~0_combout\ : std_logic;
SIGNAL \inst_mux|DOUTd[3]~feeder_combout\ : std_logic;
SIGNAL \DIN_B[2]~input_o\ : std_logic;
SIGNAL \inst_mux|DIN_Bd[2]~feeder_combout\ : std_logic;
SIGNAL \DIN_A[2]~input_o\ : std_logic;
SIGNAL \inst_mux|DIN_Ad[2]~feeder_combout\ : std_logic;
SIGNAL \inst_mux|DOUTx~1_combout\ : std_logic;
SIGNAL \DIN_A[1]~input_o\ : std_logic;
SIGNAL \inst_mux|DIN_Ad[1]~feeder_combout\ : std_logic;
SIGNAL \DIN_B[1]~input_o\ : std_logic;
SIGNAL \inst_mux|DIN_Bd[1]~feeder_combout\ : std_logic;
SIGNAL \inst_mux|DOUTx~2_combout\ : std_logic;
SIGNAL \inst_mux|DOUTd[1]~feeder_combout\ : std_logic;
SIGNAL \DIN_A[0]~input_o\ : std_logic;
SIGNAL \inst_mux|DIN_Ad[0]~feeder_combout\ : std_logic;
SIGNAL \DIN_B[0]~input_o\ : std_logic;
SIGNAL \inst_mux|DIN_Bd[0]~feeder_combout\ : std_logic;
SIGNAL \inst_mux|DOUTx~3_combout\ : std_logic;
SIGNAL \inst_mux|DOUTd[0]~feeder_combout\ : std_logic;
SIGNAL \inst_adder|DOUT[0]~1\ : std_logic;
SIGNAL \inst_adder|DOUT[1]~3\ : std_logic;
SIGNAL \inst_adder|DOUT[2]~5\ : std_logic;
SIGNAL \inst_adder|DOUT[3]~7\ : std_logic;
SIGNAL \inst_adder|DOUT[4]~8_combout\ : std_logic;
SIGNAL \inst_adder|DOUT[3]~6_combout\ : std_logic;
SIGNAL \inst_adder|DOUT[2]~4_combout\ : std_logic;
SIGNAL \inst_adder|DOUT[1]~2_combout\ : std_logic;
SIGNAL \inst_adder|DOUT[0]~0_combout\ : std_logic;
SIGNAL \inst_mux|DOUTd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_cnt|DOUTx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_mux|DOUTx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_mux|DIN_Bd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_mux|DIN_Ad\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_MCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_EN_L~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

CARRY <= ww_CARRY;
ww_MCK <= MCK;
ww_EN_L <= EN_L;
ww_CLR_L <= CLR_L;
ww_LD_L <= LD_L;
ww_DIN <= DIN;
DOUT_ADDER <= ww_DOUT_ADDER;
ww_SEL_L <= SEL_L;
ww_DIN_A <= DIN_A;
ww_DIN_B <= DIN_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\MCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MCK~input_o\);
\ALT_INV_MCK~inputclkctrl_outclk\ <= NOT \MCK~inputclkctrl_outclk\;
\ALT_INV_EN_L~input_o\ <= NOT \EN_L~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y9_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X6_Y0_N2
\CARRY~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_cnt|Equal0~0_combout\,
	devoe => ww_devoe,
	o => \CARRY~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\DOUT_ADDER[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_adder|DOUT[4]~8_combout\,
	devoe => ww_devoe,
	o => \DOUT_ADDER[4]~output_o\);

-- Location: IOOBUF_X3_Y7_N9
\DOUT_ADDER[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_adder|DOUT[3]~6_combout\,
	devoe => ww_devoe,
	o => \DOUT_ADDER[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\DOUT_ADDER[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_adder|DOUT[2]~4_combout\,
	devoe => ww_devoe,
	o => \DOUT_ADDER[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\DOUT_ADDER[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_adder|DOUT[1]~2_combout\,
	devoe => ww_devoe,
	o => \DOUT_ADDER[1]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\DOUT_ADDER[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_adder|DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \DOUT_ADDER[0]~output_o\);

-- Location: IOIBUF_X0_Y4_N15
\MCK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCK,
	o => \MCK~input_o\);

-- Location: CLKCTRL_G3
\MCK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MCK~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y4_N1
\LD_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LD_L,
	o => \LD_L~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\DIN[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(2),
	o => \DIN[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\CLR_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR_L,
	o => \CLR_L~input_o\);

-- Location: IOIBUF_X18_Y4_N22
\DIN[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(1),
	o => \DIN[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\DIN[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(0),
	o => \DIN[0]~input_o\);

-- Location: LCCOMB_X10_Y4_N30
\inst_cnt|DOUTx~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_cnt|DOUTx~5_combout\ = (\CLR_L~input_o\ & ((\LD_L~input_o\ & ((!\inst_cnt|DOUTx\(0)))) # (!\LD_L~input_o\ & (\DIN[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR_L~input_o\,
	datab => \DIN[0]~input_o\,
	datac => \inst_cnt|DOUTx\(0),
	datad => \LD_L~input_o\,
	combout => \inst_cnt|DOUTx~5_combout\);

-- Location: IOIBUF_X18_Y4_N8
\EN_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_L,
	o => \EN_L~input_o\);

-- Location: FF_X10_Y4_N31
\inst_cnt|DOUTx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputclkctrl_outclk\,
	d => \inst_cnt|DOUTx~5_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_cnt|DOUTx\(0));

-- Location: LCCOMB_X10_Y4_N0
\inst_cnt|DOUTx~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_cnt|DOUTx~3_combout\ = (\LD_L~input_o\ & (\CLR_L~input_o\ & (\inst_cnt|DOUTx\(1) $ (\inst_cnt|DOUTx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD_L~input_o\,
	datab => \CLR_L~input_o\,
	datac => \inst_cnt|DOUTx\(1),
	datad => \inst_cnt|DOUTx\(0),
	combout => \inst_cnt|DOUTx~3_combout\);

-- Location: LCCOMB_X10_Y4_N14
\inst_cnt|DOUTx~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_cnt|DOUTx~4_combout\ = (\inst_cnt|DOUTx~3_combout\) # ((!\LD_L~input_o\ & (\DIN[1]~input_o\ & \CLR_L~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD_L~input_o\,
	datab => \DIN[1]~input_o\,
	datac => \CLR_L~input_o\,
	datad => \inst_cnt|DOUTx~3_combout\,
	combout => \inst_cnt|DOUTx~4_combout\);

-- Location: FF_X10_Y4_N15
\inst_cnt|DOUTx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputclkctrl_outclk\,
	d => \inst_cnt|DOUTx~4_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_cnt|DOUTx\(1));

-- Location: LCCOMB_X10_Y4_N2
\inst_cnt|DOUTx~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_cnt|DOUTx~1_combout\ = \inst_cnt|DOUTx\(2) $ (((\inst_cnt|DOUTx\(1) & \inst_cnt|DOUTx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_cnt|DOUTx\(1),
	datac => \inst_cnt|DOUTx\(0),
	datad => \inst_cnt|DOUTx\(2),
	combout => \inst_cnt|DOUTx~1_combout\);

-- Location: LCCOMB_X10_Y4_N12
\inst_cnt|DOUTx~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_cnt|DOUTx~2_combout\ = (\CLR_L~input_o\ & ((\LD_L~input_o\ & ((\inst_cnt|DOUTx~1_combout\))) # (!\LD_L~input_o\ & (\DIN[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD_L~input_o\,
	datab => \DIN[2]~input_o\,
	datac => \CLR_L~input_o\,
	datad => \inst_cnt|DOUTx~1_combout\,
	combout => \inst_cnt|DOUTx~2_combout\);

-- Location: FF_X10_Y4_N13
\inst_cnt|DOUTx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputclkctrl_outclk\,
	d => \inst_cnt|DOUTx~2_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_cnt|DOUTx\(2));

-- Location: IOIBUF_X6_Y7_N8
\DIN[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(3),
	o => \DIN[3]~input_o\);

-- Location: LCCOMB_X10_Y4_N10
\inst_cnt|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_cnt|Add0~0_combout\ = \inst_cnt|DOUTx\(3) $ (((\inst_cnt|DOUTx\(2) & (\inst_cnt|DOUTx\(1) & \inst_cnt|DOUTx\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_cnt|DOUTx\(2),
	datab => \inst_cnt|DOUTx\(1),
	datac => \inst_cnt|DOUTx\(0),
	datad => \inst_cnt|DOUTx\(3),
	combout => \inst_cnt|Add0~0_combout\);

-- Location: LCCOMB_X10_Y4_N28
\inst_cnt|DOUTx~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_cnt|DOUTx~0_combout\ = (\CLR_L~input_o\ & ((\LD_L~input_o\ & ((\inst_cnt|Add0~0_combout\))) # (!\LD_L~input_o\ & (\DIN[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LD_L~input_o\,
	datab => \CLR_L~input_o\,
	datac => \DIN[3]~input_o\,
	datad => \inst_cnt|Add0~0_combout\,
	combout => \inst_cnt|DOUTx~0_combout\);

-- Location: FF_X10_Y4_N29
\inst_cnt|DOUTx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputclkctrl_outclk\,
	d => \inst_cnt|DOUTx~0_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_cnt|DOUTx\(3));

-- Location: LCCOMB_X10_Y4_N4
\inst_cnt|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_cnt|Equal0~0_combout\ = (\inst_cnt|DOUTx\(2) & (\inst_cnt|DOUTx\(0) & (\inst_cnt|DOUTx\(1) & \inst_cnt|DOUTx\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_cnt|DOUTx\(2),
	datab => \inst_cnt|DOUTx\(0),
	datac => \inst_cnt|DOUTx\(1),
	datad => \inst_cnt|DOUTx\(3),
	combout => \inst_cnt|Equal0~0_combout\);

-- Location: IOIBUF_X10_Y10_N22
\SEL_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_L,
	o => \SEL_L~input_o\);

-- Location: IOIBUF_X6_Y0_N22
\DIN_A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_A(3),
	o => \DIN_A[3]~input_o\);

-- Location: LCCOMB_X9_Y4_N14
\inst_mux|DIN_Ad[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DIN_Ad[3]~feeder_combout\ = \DIN_A[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN_A[3]~input_o\,
	combout => \inst_mux|DIN_Ad[3]~feeder_combout\);

-- Location: FF_X9_Y4_N15
\inst_mux|DIN_Ad[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputclkctrl_outclk\,
	d => \inst_mux|DIN_Ad[3]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DIN_Ad\(3));

-- Location: IOIBUF_X3_Y0_N8
\DIN_B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_B(3),
	o => \DIN_B[3]~input_o\);

-- Location: LCCOMB_X9_Y4_N16
\inst_mux|DIN_Bd[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DIN_Bd[3]~feeder_combout\ = \DIN_B[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN_B[3]~input_o\,
	combout => \inst_mux|DIN_Bd[3]~feeder_combout\);

-- Location: FF_X9_Y4_N17
\inst_mux|DIN_Bd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputclkctrl_outclk\,
	d => \inst_mux|DIN_Bd[3]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DIN_Bd\(3));

-- Location: LCCOMB_X9_Y4_N26
\inst_mux|DOUTx~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DOUTx~0_combout\ = (\SEL_L~input_o\ & ((\inst_mux|DIN_Bd\(3)))) # (!\SEL_L~input_o\ & (\inst_mux|DIN_Ad\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_L~input_o\,
	datac => \inst_mux|DIN_Ad\(3),
	datad => \inst_mux|DIN_Bd\(3),
	combout => \inst_mux|DOUTx~0_combout\);

-- Location: FF_X9_Y4_N27
\inst_mux|DOUTx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputclkctrl_outclk\,
	d => \inst_mux|DOUTx~0_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DOUTx\(3));

-- Location: LCCOMB_X9_Y4_N0
\inst_mux|DOUTd[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DOUTd[3]~feeder_combout\ = \inst_mux|DOUTx\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_mux|DOUTx\(3),
	combout => \inst_mux|DOUTd[3]~feeder_combout\);

-- Location: FF_X9_Y4_N1
\inst_mux|DOUTd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputclkctrl_outclk\,
	d => \inst_mux|DOUTd[3]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DOUTd\(3));

-- Location: IOIBUF_X6_Y7_N29
\DIN_B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_B(2),
	o => \DIN_B[2]~input_o\);

-- Location: LCCOMB_X10_Y4_N8
\inst_mux|DIN_Bd[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DIN_Bd[2]~feeder_combout\ = \DIN_B[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN_B[2]~input_o\,
	combout => \inst_mux|DIN_Bd[2]~feeder_combout\);

-- Location: FF_X10_Y4_N9
\inst_mux|DIN_Bd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputclkctrl_outclk\,
	d => \inst_mux|DIN_Bd[2]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DIN_Bd\(2));

-- Location: IOIBUF_X14_Y0_N8
\DIN_A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_A(2),
	o => \DIN_A[2]~input_o\);

-- Location: LCCOMB_X10_Y4_N6
\inst_mux|DIN_Ad[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DIN_Ad[2]~feeder_combout\ = \DIN_A[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN_A[2]~input_o\,
	combout => \inst_mux|DIN_Ad[2]~feeder_combout\);

-- Location: FF_X10_Y4_N7
\inst_mux|DIN_Ad[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputclkctrl_outclk\,
	d => \inst_mux|DIN_Ad[2]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DIN_Ad\(2));

-- Location: LCCOMB_X10_Y4_N26
\inst_mux|DOUTx~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DOUTx~1_combout\ = (\SEL_L~input_o\ & (\inst_mux|DIN_Bd\(2))) # (!\SEL_L~input_o\ & ((\inst_mux|DIN_Ad\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SEL_L~input_o\,
	datac => \inst_mux|DIN_Bd\(2),
	datad => \inst_mux|DIN_Ad\(2),
	combout => \inst_mux|DOUTx~1_combout\);

-- Location: FF_X10_Y4_N27
\inst_mux|DOUTx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputclkctrl_outclk\,
	d => \inst_mux|DOUTx~1_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DOUTx\(2));

-- Location: FF_X10_Y4_N21
\inst_mux|DOUTd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputclkctrl_outclk\,
	asdata => \inst_mux|DOUTx\(2),
	sload => VCC,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DOUTd\(2));

-- Location: IOIBUF_X9_Y0_N29
\DIN_A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_A(1),
	o => \DIN_A[1]~input_o\);

-- Location: LCCOMB_X9_Y4_N30
\inst_mux|DIN_Ad[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DIN_Ad[1]~feeder_combout\ = \DIN_A[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN_A[1]~input_o\,
	combout => \inst_mux|DIN_Ad[1]~feeder_combout\);

-- Location: FF_X9_Y4_N31
\inst_mux|DIN_Ad[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputclkctrl_outclk\,
	d => \inst_mux|DIN_Ad[1]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DIN_Ad\(1));

-- Location: IOIBUF_X6_Y0_N8
\DIN_B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_B(1),
	o => \DIN_B[1]~input_o\);

-- Location: LCCOMB_X9_Y4_N12
\inst_mux|DIN_Bd[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DIN_Bd[1]~feeder_combout\ = \DIN_B[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN_B[1]~input_o\,
	combout => \inst_mux|DIN_Bd[1]~feeder_combout\);

-- Location: FF_X9_Y4_N13
\inst_mux|DIN_Bd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputclkctrl_outclk\,
	d => \inst_mux|DIN_Bd[1]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DIN_Bd\(1));

-- Location: LCCOMB_X9_Y4_N28
\inst_mux|DOUTx~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DOUTx~2_combout\ = (\SEL_L~input_o\ & ((\inst_mux|DIN_Bd\(1)))) # (!\SEL_L~input_o\ & (\inst_mux|DIN_Ad\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_L~input_o\,
	datac => \inst_mux|DIN_Ad\(1),
	datad => \inst_mux|DIN_Bd\(1),
	combout => \inst_mux|DOUTx~2_combout\);

-- Location: FF_X9_Y4_N29
\inst_mux|DOUTx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputclkctrl_outclk\,
	d => \inst_mux|DOUTx~2_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DOUTx\(1));

-- Location: LCCOMB_X9_Y4_N18
\inst_mux|DOUTd[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DOUTd[1]~feeder_combout\ = \inst_mux|DOUTx\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_mux|DOUTx\(1),
	combout => \inst_mux|DOUTd[1]~feeder_combout\);

-- Location: FF_X9_Y4_N19
\inst_mux|DOUTd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputclkctrl_outclk\,
	d => \inst_mux|DOUTd[1]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DOUTd\(1));

-- Location: IOIBUF_X6_Y7_N15
\DIN_A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_A(0),
	o => \DIN_A[0]~input_o\);

-- Location: LCCOMB_X9_Y4_N22
\inst_mux|DIN_Ad[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DIN_Ad[0]~feeder_combout\ = \DIN_A[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN_A[0]~input_o\,
	combout => \inst_mux|DIN_Ad[0]~feeder_combout\);

-- Location: FF_X9_Y4_N23
\inst_mux|DIN_Ad[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputclkctrl_outclk\,
	d => \inst_mux|DIN_Ad[0]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DIN_Ad\(0));

-- Location: IOIBUF_X6_Y7_N22
\DIN_B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_B(0),
	o => \DIN_B[0]~input_o\);

-- Location: LCCOMB_X9_Y4_N24
\inst_mux|DIN_Bd[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DIN_Bd[0]~feeder_combout\ = \DIN_B[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DIN_B[0]~input_o\,
	combout => \inst_mux|DIN_Bd[0]~feeder_combout\);

-- Location: FF_X9_Y4_N25
\inst_mux|DIN_Bd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputclkctrl_outclk\,
	d => \inst_mux|DIN_Bd[0]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DIN_Bd\(0));

-- Location: LCCOMB_X9_Y4_N10
\inst_mux|DOUTx~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DOUTx~3_combout\ = (\SEL_L~input_o\ & ((\inst_mux|DIN_Bd\(0)))) # (!\SEL_L~input_o\ & (\inst_mux|DIN_Ad\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SEL_L~input_o\,
	datac => \inst_mux|DIN_Ad\(0),
	datad => \inst_mux|DIN_Bd\(0),
	combout => \inst_mux|DOUTx~3_combout\);

-- Location: FF_X9_Y4_N11
\inst_mux|DOUTx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputclkctrl_outclk\,
	d => \inst_mux|DOUTx~3_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DOUTx\(0));

-- Location: LCCOMB_X9_Y4_N8
\inst_mux|DOUTd[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux|DOUTd[0]~feeder_combout\ = \inst_mux|DOUTx\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_mux|DOUTx\(0),
	combout => \inst_mux|DOUTd[0]~feeder_combout\);

-- Location: FF_X9_Y4_N9
\inst_mux|DOUTd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputclkctrl_outclk\,
	d => \inst_mux|DOUTd[0]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_mux|DOUTd\(0));

-- Location: LCCOMB_X10_Y4_N16
\inst_adder|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder|DOUT[0]~0_combout\ = (\inst_mux|DOUTd\(0) & (\inst_cnt|DOUTx\(0) $ (VCC))) # (!\inst_mux|DOUTd\(0) & (\inst_cnt|DOUTx\(0) & VCC))
-- \inst_adder|DOUT[0]~1\ = CARRY((\inst_mux|DOUTd\(0) & \inst_cnt|DOUTx\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_mux|DOUTd\(0),
	datab => \inst_cnt|DOUTx\(0),
	datad => VCC,
	combout => \inst_adder|DOUT[0]~0_combout\,
	cout => \inst_adder|DOUT[0]~1\);

-- Location: LCCOMB_X10_Y4_N18
\inst_adder|DOUT[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder|DOUT[1]~2_combout\ = (\inst_mux|DOUTd\(1) & ((\inst_cnt|DOUTx\(1) & (\inst_adder|DOUT[0]~1\ & VCC)) # (!\inst_cnt|DOUTx\(1) & (!\inst_adder|DOUT[0]~1\)))) # (!\inst_mux|DOUTd\(1) & ((\inst_cnt|DOUTx\(1) & (!\inst_adder|DOUT[0]~1\)) # 
-- (!\inst_cnt|DOUTx\(1) & ((\inst_adder|DOUT[0]~1\) # (GND)))))
-- \inst_adder|DOUT[1]~3\ = CARRY((\inst_mux|DOUTd\(1) & (!\inst_cnt|DOUTx\(1) & !\inst_adder|DOUT[0]~1\)) # (!\inst_mux|DOUTd\(1) & ((!\inst_adder|DOUT[0]~1\) # (!\inst_cnt|DOUTx\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_mux|DOUTd\(1),
	datab => \inst_cnt|DOUTx\(1),
	datad => VCC,
	cin => \inst_adder|DOUT[0]~1\,
	combout => \inst_adder|DOUT[1]~2_combout\,
	cout => \inst_adder|DOUT[1]~3\);

-- Location: LCCOMB_X10_Y4_N20
\inst_adder|DOUT[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder|DOUT[2]~4_combout\ = ((\inst_mux|DOUTd\(2) $ (\inst_cnt|DOUTx\(2) $ (!\inst_adder|DOUT[1]~3\)))) # (GND)
-- \inst_adder|DOUT[2]~5\ = CARRY((\inst_mux|DOUTd\(2) & ((\inst_cnt|DOUTx\(2)) # (!\inst_adder|DOUT[1]~3\))) # (!\inst_mux|DOUTd\(2) & (\inst_cnt|DOUTx\(2) & !\inst_adder|DOUT[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_mux|DOUTd\(2),
	datab => \inst_cnt|DOUTx\(2),
	datad => VCC,
	cin => \inst_adder|DOUT[1]~3\,
	combout => \inst_adder|DOUT[2]~4_combout\,
	cout => \inst_adder|DOUT[2]~5\);

-- Location: LCCOMB_X10_Y4_N22
\inst_adder|DOUT[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder|DOUT[3]~6_combout\ = (\inst_mux|DOUTd\(3) & ((\inst_cnt|DOUTx\(3) & (\inst_adder|DOUT[2]~5\ & VCC)) # (!\inst_cnt|DOUTx\(3) & (!\inst_adder|DOUT[2]~5\)))) # (!\inst_mux|DOUTd\(3) & ((\inst_cnt|DOUTx\(3) & (!\inst_adder|DOUT[2]~5\)) # 
-- (!\inst_cnt|DOUTx\(3) & ((\inst_adder|DOUT[2]~5\) # (GND)))))
-- \inst_adder|DOUT[3]~7\ = CARRY((\inst_mux|DOUTd\(3) & (!\inst_cnt|DOUTx\(3) & !\inst_adder|DOUT[2]~5\)) # (!\inst_mux|DOUTd\(3) & ((!\inst_adder|DOUT[2]~5\) # (!\inst_cnt|DOUTx\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_mux|DOUTd\(3),
	datab => \inst_cnt|DOUTx\(3),
	datad => VCC,
	cin => \inst_adder|DOUT[2]~5\,
	combout => \inst_adder|DOUT[3]~6_combout\,
	cout => \inst_adder|DOUT[3]~7\);

-- Location: LCCOMB_X10_Y4_N24
\inst_adder|DOUT[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder|DOUT[4]~8_combout\ = !\inst_adder|DOUT[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst_adder|DOUT[3]~7\,
	combout => \inst_adder|DOUT[4]~8_combout\);

-- Location: UNVM_X0_Y8_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

ww_CARRY <= \CARRY~output_o\;

ww_DOUT_ADDER(4) <= \DOUT_ADDER[4]~output_o\;

ww_DOUT_ADDER(3) <= \DOUT_ADDER[3]~output_o\;

ww_DOUT_ADDER(2) <= \DOUT_ADDER[2]~output_o\;

ww_DOUT_ADDER(1) <= \DOUT_ADDER[1]~output_o\;

ww_DOUT_ADDER(0) <= \DOUT_ADDER[0]~output_o\;
END structure;


