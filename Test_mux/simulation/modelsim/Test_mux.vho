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

-- DATE "07/29/2017 20:15:47"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	test_mux IS
    PORT (
	DIN_A : IN std_logic_vector(3 DOWNTO 0);
	DIN_B : IN std_logic_vector(3 DOWNTO 0);
	SEL_L : IN std_logic;
	EN_L : IN std_logic;
	MCK : IN std_logic;
	DOUT : OUT std_logic_vector(3 DOWNTO 0)
	);
END test_mux;

-- Design Ports Information
-- DOUT[0]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_L	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEL_L	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_B[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_A[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_B[1]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_A[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_B[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_A[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_B[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_A[3]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test_mux IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DIN_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DIN_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SEL_L : std_logic;
SIGNAL ww_EN_L : std_logic;
SIGNAL ww_MCK : std_logic;
SIGNAL ww_DOUT : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \MCK~input_o\ : std_logic;
SIGNAL \MCK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SEL_L~input_o\ : std_logic;
SIGNAL \DIN_B[0]~input_o\ : std_logic;
SIGNAL \mux|DIN_Bd[0]~feeder_combout\ : std_logic;
SIGNAL \EN_L~input_o\ : std_logic;
SIGNAL \DIN_A[0]~input_o\ : std_logic;
SIGNAL \mux|DIN_Ad[0]~feeder_combout\ : std_logic;
SIGNAL \mux|DOUTx~0_combout\ : std_logic;
SIGNAL \mux|DOUTd[0]~feeder_combout\ : std_logic;
SIGNAL \DIN_A[1]~input_o\ : std_logic;
SIGNAL \DIN_B[1]~input_o\ : std_logic;
SIGNAL \mux|DIN_Bd[1]~feeder_combout\ : std_logic;
SIGNAL \mux|DOUTx~1_combout\ : std_logic;
SIGNAL \mux|DOUTd[1]~feeder_combout\ : std_logic;
SIGNAL \DIN_A[2]~input_o\ : std_logic;
SIGNAL \DIN_B[2]~input_o\ : std_logic;
SIGNAL \mux|DOUTx~2_combout\ : std_logic;
SIGNAL \mux|DOUTd[2]~feeder_combout\ : std_logic;
SIGNAL \DIN_A[3]~input_o\ : std_logic;
SIGNAL \DIN_B[3]~input_o\ : std_logic;
SIGNAL \mux|DIN_Bd[3]~feeder_combout\ : std_logic;
SIGNAL \mux|DOUTx~3_combout\ : std_logic;
SIGNAL \mux|DOUTd[3]~feeder_combout\ : std_logic;
SIGNAL \mux|DOUTd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mux|DOUTx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mux|DIN_Bd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mux|DIN_Ad\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mux|ALT_INV_DOUTx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_MCK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_DIN_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DIN_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DIN_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DIN_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SEL_L~input_o\ : std_logic;
SIGNAL \ALT_INV_EN_L~input_o\ : std_logic;
SIGNAL \mux|ALT_INV_DIN_Ad\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mux|ALT_INV_DIN_Bd\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_DIN_A <= DIN_A;
ww_DIN_B <= DIN_B;
ww_SEL_L <= SEL_L;
ww_EN_L <= EN_L;
ww_MCK <= MCK;
DOUT <= ww_DOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\mux|ALT_INV_DOUTx\(0) <= NOT \mux|DOUTx\(0);
\ALT_INV_MCK~inputCLKENA0_outclk\ <= NOT \MCK~inputCLKENA0_outclk\;
\ALT_INV_DIN_B[3]~input_o\ <= NOT \DIN_B[3]~input_o\;
\ALT_INV_DIN_B[1]~input_o\ <= NOT \DIN_B[1]~input_o\;
\ALT_INV_DIN_A[0]~input_o\ <= NOT \DIN_A[0]~input_o\;
\ALT_INV_DIN_B[0]~input_o\ <= NOT \DIN_B[0]~input_o\;
\ALT_INV_SEL_L~input_o\ <= NOT \SEL_L~input_o\;
\ALT_INV_EN_L~input_o\ <= NOT \EN_L~input_o\;
\mux|ALT_INV_DIN_Ad\(3) <= NOT \mux|DIN_Ad\(3);
\mux|ALT_INV_DIN_Bd\(3) <= NOT \mux|DIN_Bd\(3);
\mux|ALT_INV_DIN_Ad\(2) <= NOT \mux|DIN_Ad\(2);
\mux|ALT_INV_DIN_Bd\(2) <= NOT \mux|DIN_Bd\(2);
\mux|ALT_INV_DIN_Ad\(1) <= NOT \mux|DIN_Ad\(1);
\mux|ALT_INV_DIN_Bd\(1) <= NOT \mux|DIN_Bd\(1);
\mux|ALT_INV_DIN_Ad\(0) <= NOT \mux|DIN_Ad\(0);
\mux|ALT_INV_DIN_Bd\(0) <= NOT \mux|DIN_Bd\(0);
\mux|ALT_INV_DOUTx\(3) <= NOT \mux|DOUTx\(3);
\mux|ALT_INV_DOUTx\(2) <= NOT \mux|DOUTx\(2);
\mux|ALT_INV_DOUTx\(1) <= NOT \mux|DOUTx\(1);

-- Location: IOOBUF_X89_Y37_N5
\DOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|DOUTd\(0),
	devoe => ww_devoe,
	o => ww_DOUT(0));

-- Location: IOOBUF_X89_Y37_N22
\DOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|DOUTd\(1),
	devoe => ww_devoe,
	o => ww_DOUT(1));

-- Location: IOOBUF_X89_Y37_N56
\DOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|DOUTd\(2),
	devoe => ww_devoe,
	o => ww_DOUT(2));

-- Location: IOOBUF_X89_Y35_N45
\DOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \mux|DOUTd\(3),
	devoe => ww_devoe,
	o => ww_DOUT(3));

-- Location: IOIBUF_X89_Y35_N61
\MCK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCK,
	o => \MCK~input_o\);

-- Location: CLKCTRL_G10
\MCK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \MCK~input_o\,
	outclk => \MCK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y38_N55
\SEL_L~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SEL_L,
	o => \SEL_L~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\DIN_B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_B(0),
	o => \DIN_B[0]~input_o\);

-- Location: LABCELL_X88_Y36_N36
\mux|DIN_Bd[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|DIN_Bd[0]~feeder_combout\ = ( \DIN_B[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DIN_B[0]~input_o\,
	combout => \mux|DIN_Bd[0]~feeder_combout\);

-- Location: IOIBUF_X89_Y38_N38
\EN_L~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_L,
	o => \EN_L~input_o\);

-- Location: FF_X88_Y36_N38
\mux|DIN_Bd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \mux|DIN_Bd[0]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DIN_Bd\(0));

-- Location: IOIBUF_X89_Y36_N21
\DIN_A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_A(0),
	o => \DIN_A[0]~input_o\);

-- Location: LABCELL_X88_Y36_N39
\mux|DIN_Ad[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|DIN_Ad[0]~feeder_combout\ = ( \DIN_A[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DIN_A[0]~input_o\,
	combout => \mux|DIN_Ad[0]~feeder_combout\);

-- Location: FF_X88_Y36_N41
\mux|DIN_Ad[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \mux|DIN_Ad[0]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DIN_Ad\(0));

-- Location: LABCELL_X88_Y36_N48
\mux|DOUTx~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|DOUTx~0_combout\ = ( \mux|DIN_Ad\(0) & ( (!\SEL_L~input_o\) # (\mux|DIN_Bd\(0)) ) ) # ( !\mux|DIN_Ad\(0) & ( (\SEL_L~input_o\ & \mux|DIN_Bd\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL_L~input_o\,
	datad => \mux|ALT_INV_DIN_Bd\(0),
	dataf => \mux|ALT_INV_DIN_Ad\(0),
	combout => \mux|DOUTx~0_combout\);

-- Location: FF_X88_Y36_N50
\mux|DOUTx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputCLKENA0_outclk\,
	d => \mux|DOUTx~0_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DOUTx\(0));

-- Location: LABCELL_X88_Y36_N24
\mux|DOUTd[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|DOUTd[0]~feeder_combout\ = ( \mux|DOUTx\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux|ALT_INV_DOUTx\(0),
	combout => \mux|DOUTd[0]~feeder_combout\);

-- Location: FF_X88_Y36_N25
\mux|DOUTd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \mux|DOUTd[0]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DOUTd\(0));

-- Location: IOIBUF_X89_Y36_N55
\DIN_A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_A(1),
	o => \DIN_A[1]~input_o\);

-- Location: FF_X88_Y36_N32
\mux|DIN_Ad[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	asdata => \DIN_A[1]~input_o\,
	sload => VCC,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DIN_Ad\(1));

-- Location: IOIBUF_X89_Y37_N38
\DIN_B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_B(1),
	o => \DIN_B[1]~input_o\);

-- Location: LABCELL_X88_Y36_N33
\mux|DIN_Bd[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|DIN_Bd[1]~feeder_combout\ = ( \DIN_B[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DIN_B[1]~input_o\,
	combout => \mux|DIN_Bd[1]~feeder_combout\);

-- Location: FF_X88_Y36_N35
\mux|DIN_Bd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \mux|DIN_Bd[1]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DIN_Bd\(1));

-- Location: LABCELL_X88_Y36_N51
\mux|DOUTx~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|DOUTx~1_combout\ = ( \mux|DIN_Bd\(1) & ( (\mux|DIN_Ad\(1)) # (\SEL_L~input_o\) ) ) # ( !\mux|DIN_Bd\(1) & ( (!\SEL_L~input_o\ & \mux|DIN_Ad\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL_L~input_o\,
	datac => \mux|ALT_INV_DIN_Ad\(1),
	dataf => \mux|ALT_INV_DIN_Bd\(1),
	combout => \mux|DOUTx~1_combout\);

-- Location: FF_X88_Y36_N53
\mux|DOUTx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputCLKENA0_outclk\,
	d => \mux|DOUTx~1_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DOUTx\(1));

-- Location: LABCELL_X88_Y36_N3
\mux|DOUTd[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|DOUTd[1]~feeder_combout\ = ( \mux|DOUTx\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux|ALT_INV_DOUTx\(1),
	combout => \mux|DOUTd[1]~feeder_combout\);

-- Location: FF_X88_Y36_N4
\mux|DOUTd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \mux|DOUTd[1]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DOUTd\(1));

-- Location: IOIBUF_X89_Y35_N78
\DIN_A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_A(2),
	o => \DIN_A[2]~input_o\);

-- Location: FF_X88_Y36_N47
\mux|DIN_Ad[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	asdata => \DIN_A[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DIN_Ad\(2));

-- Location: IOIBUF_X89_Y35_N95
\DIN_B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_B(2),
	o => \DIN_B[2]~input_o\);

-- Location: FF_X88_Y36_N44
\mux|DIN_Bd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	asdata => \DIN_B[2]~input_o\,
	sload => VCC,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DIN_Bd\(2));

-- Location: LABCELL_X88_Y36_N12
\mux|DOUTx~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|DOUTx~2_combout\ = ( \mux|DIN_Bd\(2) & ( (\mux|DIN_Ad\(2)) # (\SEL_L~input_o\) ) ) # ( !\mux|DIN_Bd\(2) & ( (!\SEL_L~input_o\ & \mux|DIN_Ad\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL_L~input_o\,
	datad => \mux|ALT_INV_DIN_Ad\(2),
	dataf => \mux|ALT_INV_DIN_Bd\(2),
	combout => \mux|DOUTx~2_combout\);

-- Location: FF_X88_Y36_N14
\mux|DOUTx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputCLKENA0_outclk\,
	d => \mux|DOUTx~2_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DOUTx\(2));

-- Location: LABCELL_X88_Y36_N18
\mux|DOUTd[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|DOUTd[2]~feeder_combout\ = ( \mux|DOUTx\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux|ALT_INV_DOUTx\(2),
	combout => \mux|DOUTd[2]~feeder_combout\);

-- Location: FF_X88_Y36_N19
\mux|DOUTd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \mux|DOUTd[2]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DOUTd\(2));

-- Location: IOIBUF_X89_Y36_N4
\DIN_A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_A(3),
	o => \DIN_A[3]~input_o\);

-- Location: FF_X88_Y36_N8
\mux|DIN_Ad[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	asdata => \DIN_A[3]~input_o\,
	sload => VCC,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DIN_Ad\(3));

-- Location: IOIBUF_X89_Y36_N38
\DIN_B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_B(3),
	o => \DIN_B[3]~input_o\);

-- Location: LABCELL_X88_Y36_N9
\mux|DIN_Bd[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|DIN_Bd[3]~feeder_combout\ = ( \DIN_B[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DIN_B[3]~input_o\,
	combout => \mux|DIN_Bd[3]~feeder_combout\);

-- Location: FF_X88_Y36_N11
\mux|DIN_Bd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \mux|DIN_Bd[3]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DIN_Bd\(3));

-- Location: LABCELL_X88_Y36_N15
\mux|DOUTx~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|DOUTx~3_combout\ = ( \mux|DIN_Bd\(3) & ( (\mux|DIN_Ad\(3)) # (\SEL_L~input_o\) ) ) # ( !\mux|DIN_Bd\(3) & ( (!\SEL_L~input_o\ & \mux|DIN_Ad\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SEL_L~input_o\,
	datac => \mux|ALT_INV_DIN_Ad\(3),
	dataf => \mux|ALT_INV_DIN_Bd\(3),
	combout => \mux|DOUTx~3_combout\);

-- Location: FF_X88_Y36_N17
\mux|DOUTx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputCLKENA0_outclk\,
	d => \mux|DOUTx~3_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DOUTx\(3));

-- Location: LABCELL_X88_Y36_N57
\mux|DOUTd[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \mux|DOUTd[3]~feeder_combout\ = ( \mux|DOUTx\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \mux|ALT_INV_DOUTx\(3),
	combout => \mux|DOUTd[3]~feeder_combout\);

-- Location: FF_X88_Y36_N58
\mux|DOUTd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \mux|DOUTd[3]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mux|DOUTd\(3));

-- Location: MLABCELL_X6_Y5_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


