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

-- DATE "07/29/2017 20:34:10"

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

ENTITY 	test_adder IS
    PORT (
	DIN_A : IN std_logic_vector(3 DOWNTO 0);
	DIN_B : IN std_logic_vector(3 DOWNTO 0);
	EN_L : IN std_logic;
	MCK : IN std_logic;
	DOUT : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END test_adder;

-- Design Ports Information
-- DOUT[0]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_L	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_B[0]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_A[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_B[1]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_A[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_B[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_A[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_B[3]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_A[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test_adder IS
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
SIGNAL ww_EN_L : std_logic;
SIGNAL ww_MCK : std_logic;
SIGNAL ww_DOUT : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \MCK~input_o\ : std_logic;
SIGNAL \MCK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \DIN_B[0]~input_o\ : std_logic;
SIGNAL \adder|DIN_Bd[0]~feeder_combout\ : std_logic;
SIGNAL \EN_L~input_o\ : std_logic;
SIGNAL \DIN_A[0]~input_o\ : std_logic;
SIGNAL \adder|Add0~1_sumout\ : std_logic;
SIGNAL \DIN_A[1]~input_o\ : std_logic;
SIGNAL \adder|DIN_Ad[1]~feeder_combout\ : std_logic;
SIGNAL \DIN_B[1]~input_o\ : std_logic;
SIGNAL \adder|DIN_Bd[1]~feeder_combout\ : std_logic;
SIGNAL \adder|Add0~2\ : std_logic;
SIGNAL \adder|Add0~5_sumout\ : std_logic;
SIGNAL \DIN_B[2]~input_o\ : std_logic;
SIGNAL \adder|DIN_Bd[2]~feeder_combout\ : std_logic;
SIGNAL \DIN_A[2]~input_o\ : std_logic;
SIGNAL \adder|Add0~6\ : std_logic;
SIGNAL \adder|Add0~9_sumout\ : std_logic;
SIGNAL \adder|DOUTx[2]~feeder_combout\ : std_logic;
SIGNAL \DIN_B[3]~input_o\ : std_logic;
SIGNAL \adder|DIN_Bd[3]~feeder_combout\ : std_logic;
SIGNAL \DIN_A[3]~input_o\ : std_logic;
SIGNAL \adder|DIN_Ad[3]~feeder_combout\ : std_logic;
SIGNAL \adder|Add0~10\ : std_logic;
SIGNAL \adder|Add0~13_sumout\ : std_logic;
SIGNAL \adder|DOUTx[3]~feeder_combout\ : std_logic;
SIGNAL \adder|Add0~14\ : std_logic;
SIGNAL \adder|Add0~17_sumout\ : std_logic;
SIGNAL \adder|DOUTx[4]~feeder_combout\ : std_logic;
SIGNAL \adder|DOUTx\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adder|DOUTd\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \adder|DIN_Bd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adder|DIN_Ad\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_MCK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_DIN_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DIN_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_DIN_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_DIN_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DIN_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DIN_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_EN_L~input_o\ : std_logic;
SIGNAL \adder|ALT_INV_DIN_Ad\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adder|ALT_INV_DIN_Bd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \adder|ALT_INV_DOUTd\ : std_logic_vector(4 DOWNTO 2);

BEGIN

ww_DIN_A <= DIN_A;
ww_DIN_B <= DIN_B;
ww_EN_L <= EN_L;
ww_MCK <= MCK;
DOUT <= ww_DOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_MCK~inputCLKENA0_outclk\ <= NOT \MCK~inputCLKENA0_outclk\;
\ALT_INV_DIN_A[3]~input_o\ <= NOT \DIN_A[3]~input_o\;
\ALT_INV_DIN_B[3]~input_o\ <= NOT \DIN_B[3]~input_o\;
\ALT_INV_DIN_B[2]~input_o\ <= NOT \DIN_B[2]~input_o\;
\ALT_INV_DIN_A[1]~input_o\ <= NOT \DIN_A[1]~input_o\;
\ALT_INV_DIN_B[1]~input_o\ <= NOT \DIN_B[1]~input_o\;
\ALT_INV_DIN_B[0]~input_o\ <= NOT \DIN_B[0]~input_o\;
\ALT_INV_EN_L~input_o\ <= NOT \EN_L~input_o\;
\adder|ALT_INV_DIN_Ad\(3) <= NOT \adder|DIN_Ad\(3);
\adder|ALT_INV_DIN_Bd\(3) <= NOT \adder|DIN_Bd\(3);
\adder|ALT_INV_DIN_Ad\(2) <= NOT \adder|DIN_Ad\(2);
\adder|ALT_INV_DIN_Bd\(2) <= NOT \adder|DIN_Bd\(2);
\adder|ALT_INV_DIN_Ad\(1) <= NOT \adder|DIN_Ad\(1);
\adder|ALT_INV_DIN_Bd\(1) <= NOT \adder|DIN_Bd\(1);
\adder|ALT_INV_DIN_Ad\(0) <= NOT \adder|DIN_Ad\(0);
\adder|ALT_INV_DIN_Bd\(0) <= NOT \adder|DIN_Bd\(0);
\adder|ALT_INV_DOUTd\(4) <= NOT \adder|DOUTd\(4);
\adder|ALT_INV_DOUTd\(3) <= NOT \adder|DOUTd\(3);
\adder|ALT_INV_DOUTd\(2) <= NOT \adder|DOUTd\(2);

-- Location: IOOBUF_X89_Y35_N96
\DOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|DOUTx\(0),
	devoe => ww_devoe,
	o => ww_DOUT(0));

-- Location: IOOBUF_X89_Y36_N56
\DOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|DOUTx\(1),
	devoe => ww_devoe,
	o => ww_DOUT(1));

-- Location: IOOBUF_X89_Y35_N79
\DOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|DOUTx\(2),
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
	i => \adder|DOUTx\(3),
	devoe => ww_devoe,
	o => ww_DOUT(3));

-- Location: IOOBUF_X89_Y36_N22
\DOUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \adder|DOUTx\(4),
	devoe => ww_devoe,
	o => ww_DOUT(4));

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

-- Location: IOIBUF_X89_Y38_N38
\DIN_B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_B(0),
	o => \DIN_B[0]~input_o\);

-- Location: LABCELL_X88_Y36_N54
\adder|DIN_Bd[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|DIN_Bd[0]~feeder_combout\ = ( \DIN_B[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DIN_B[0]~input_o\,
	combout => \adder|DIN_Bd[0]~feeder_combout\);

-- Location: IOIBUF_X89_Y38_N55
\EN_L~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_L,
	o => \EN_L~input_o\);

-- Location: FF_X88_Y36_N56
\adder|DIN_Bd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \adder|DIN_Bd[0]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DIN_Bd\(0));

-- Location: IOIBUF_X89_Y38_N4
\DIN_A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_A(0),
	o => \DIN_A[0]~input_o\);

-- Location: FF_X88_Y36_N29
\adder|DIN_Ad[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	asdata => \DIN_A[0]~input_o\,
	sload => VCC,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DIN_Ad\(0));

-- Location: LABCELL_X88_Y36_N0
\adder|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|Add0~1_sumout\ = SUM(( \adder|DIN_Ad\(0) ) + ( \adder|DIN_Bd\(0) ) + ( !VCC ))
-- \adder|Add0~2\ = CARRY(( \adder|DIN_Ad\(0) ) + ( \adder|DIN_Bd\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \adder|ALT_INV_DIN_Bd\(0),
	datad => \adder|ALT_INV_DIN_Ad\(0),
	cin => GND,
	sumout => \adder|Add0~1_sumout\,
	cout => \adder|Add0~2\);

-- Location: FF_X88_Y36_N2
\adder|DOUTd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputCLKENA0_outclk\,
	d => \adder|Add0~1_sumout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DOUTd\(0));

-- Location: FF_X88_Y36_N52
\adder|DOUTx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	asdata => \adder|DOUTd\(0),
	clrn => \ALT_INV_EN_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DOUTx\(0));

-- Location: IOIBUF_X89_Y36_N38
\DIN_A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_A(1),
	o => \DIN_A[1]~input_o\);

-- Location: LABCELL_X88_Y36_N42
\adder|DIN_Ad[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|DIN_Ad[1]~feeder_combout\ = ( \DIN_A[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DIN_A[1]~input_o\,
	combout => \adder|DIN_Ad[1]~feeder_combout\);

-- Location: FF_X88_Y36_N44
\adder|DIN_Ad[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \adder|DIN_Ad[1]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DIN_Ad\(1));

-- Location: IOIBUF_X89_Y38_N21
\DIN_B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_B(1),
	o => \DIN_B[1]~input_o\);

-- Location: LABCELL_X88_Y36_N45
\adder|DIN_Bd[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|DIN_Bd[1]~feeder_combout\ = ( \DIN_B[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DIN_B[1]~input_o\,
	combout => \adder|DIN_Bd[1]~feeder_combout\);

-- Location: FF_X88_Y36_N47
\adder|DIN_Bd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \adder|DIN_Bd[1]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DIN_Bd\(1));

-- Location: LABCELL_X88_Y36_N3
\adder|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|Add0~5_sumout\ = SUM(( \adder|DIN_Bd\(1) ) + ( \adder|DIN_Ad\(1) ) + ( \adder|Add0~2\ ))
-- \adder|Add0~6\ = CARRY(( \adder|DIN_Bd\(1) ) + ( \adder|DIN_Ad\(1) ) + ( \adder|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \adder|ALT_INV_DIN_Ad\(1),
	datad => \adder|ALT_INV_DIN_Bd\(1),
	cin => \adder|Add0~2\,
	sumout => \adder|Add0~5_sumout\,
	cout => \adder|Add0~6\);

-- Location: FF_X88_Y36_N5
\adder|DOUTd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputCLKENA0_outclk\,
	d => \adder|Add0~5_sumout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DOUTd\(1));

-- Location: FF_X88_Y36_N34
\adder|DOUTx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	asdata => \adder|DOUTd\(1),
	clrn => \ALT_INV_EN_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DOUTx\(1));

-- Location: IOIBUF_X89_Y37_N21
\DIN_B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_B(2),
	o => \DIN_B[2]~input_o\);

-- Location: LABCELL_X88_Y36_N24
\adder|DIN_Bd[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|DIN_Bd[2]~feeder_combout\ = ( \DIN_B[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DIN_B[2]~input_o\,
	combout => \adder|DIN_Bd[2]~feeder_combout\);

-- Location: FF_X88_Y36_N26
\adder|DIN_Bd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \adder|DIN_Bd[2]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DIN_Bd\(2));

-- Location: IOIBUF_X89_Y36_N4
\DIN_A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_A(2),
	o => \DIN_A[2]~input_o\);

-- Location: FF_X88_Y36_N59
\adder|DIN_Ad[2]\ : dffeas
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
	q => \adder|DIN_Ad\(2));

-- Location: LABCELL_X88_Y36_N6
\adder|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|Add0~9_sumout\ = SUM(( \adder|DIN_Ad\(2) ) + ( \adder|DIN_Bd\(2) ) + ( \adder|Add0~6\ ))
-- \adder|Add0~10\ = CARRY(( \adder|DIN_Ad\(2) ) + ( \adder|DIN_Bd\(2) ) + ( \adder|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \adder|ALT_INV_DIN_Bd\(2),
	datad => \adder|ALT_INV_DIN_Ad\(2),
	cin => \adder|Add0~6\,
	sumout => \adder|Add0~9_sumout\,
	cout => \adder|Add0~10\);

-- Location: FF_X88_Y36_N8
\adder|DOUTd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputCLKENA0_outclk\,
	d => \adder|Add0~9_sumout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DOUTd\(2));

-- Location: LABCELL_X88_Y36_N30
\adder|DOUTx[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|DOUTx[2]~feeder_combout\ = ( \adder|DOUTd\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \adder|ALT_INV_DOUTd\(2),
	combout => \adder|DOUTx[2]~feeder_combout\);

-- Location: FF_X88_Y36_N31
\adder|DOUTx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \adder|DOUTx[2]~feeder_combout\,
	clrn => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DOUTx\(2));

-- Location: IOIBUF_X89_Y37_N38
\DIN_B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_B(3),
	o => \DIN_B[3]~input_o\);

-- Location: LABCELL_X88_Y36_N39
\adder|DIN_Bd[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|DIN_Bd[3]~feeder_combout\ = ( \DIN_B[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DIN_B[3]~input_o\,
	combout => \adder|DIN_Bd[3]~feeder_combout\);

-- Location: FF_X88_Y36_N41
\adder|DIN_Bd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \adder|DIN_Bd[3]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DIN_Bd\(3));

-- Location: IOIBUF_X89_Y37_N55
\DIN_A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN_A(3),
	o => \DIN_A[3]~input_o\);

-- Location: LABCELL_X88_Y36_N36
\adder|DIN_Ad[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|DIN_Ad[3]~feeder_combout\ = ( \DIN_A[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_DIN_A[3]~input_o\,
	combout => \adder|DIN_Ad[3]~feeder_combout\);

-- Location: FF_X88_Y36_N38
\adder|DIN_Ad[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \adder|DIN_Ad[3]~feeder_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DIN_Ad\(3));

-- Location: LABCELL_X88_Y36_N9
\adder|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|Add0~13_sumout\ = SUM(( \adder|DIN_Ad\(3) ) + ( \adder|DIN_Bd\(3) ) + ( \adder|Add0~10\ ))
-- \adder|Add0~14\ = CARRY(( \adder|DIN_Ad\(3) ) + ( \adder|DIN_Bd\(3) ) + ( \adder|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \adder|ALT_INV_DIN_Bd\(3),
	datad => \adder|ALT_INV_DIN_Ad\(3),
	cin => \adder|Add0~10\,
	sumout => \adder|Add0~13_sumout\,
	cout => \adder|Add0~14\);

-- Location: FF_X88_Y36_N11
\adder|DOUTd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputCLKENA0_outclk\,
	d => \adder|Add0~13_sumout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DOUTd\(3));

-- Location: LABCELL_X88_Y36_N48
\adder|DOUTx[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|DOUTx[3]~feeder_combout\ = ( \adder|DOUTd\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \adder|ALT_INV_DOUTd\(3),
	combout => \adder|DOUTx[3]~feeder_combout\);

-- Location: FF_X88_Y36_N49
\adder|DOUTx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \adder|DOUTx[3]~feeder_combout\,
	clrn => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DOUTx\(3));

-- Location: LABCELL_X88_Y36_N12
\adder|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|Add0~17_sumout\ = SUM(( GND ) + ( GND ) + ( \adder|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \adder|Add0~14\,
	sumout => \adder|Add0~17_sumout\);

-- Location: FF_X88_Y36_N14
\adder|DOUTd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputCLKENA0_outclk\,
	d => \adder|Add0~17_sumout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DOUTd\(4));

-- Location: LABCELL_X88_Y36_N18
\adder|DOUTx[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \adder|DOUTx[4]~feeder_combout\ = ( \adder|DOUTd\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \adder|ALT_INV_DOUTd\(4),
	combout => \adder|DOUTx[4]~feeder_combout\);

-- Location: FF_X88_Y36_N19
\adder|DOUTx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_MCK~inputCLKENA0_outclk\,
	d => \adder|DOUTx[4]~feeder_combout\,
	clrn => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \adder|DOUTx\(4));

-- Location: MLABCELL_X82_Y11_N3
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


