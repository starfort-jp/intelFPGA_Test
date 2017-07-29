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

-- DATE "07/29/2017 19:47:30"

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

ENTITY 	test_cnt IS
    PORT (
	MCK : IN std_logic;
	DIN : IN std_logic_vector(3 DOWNTO 0);
	EN_L : IN std_logic;
	CLR_L : IN std_logic;
	LD_L : IN std_logic;
	CARRY : OUT std_logic;
	DOUT : OUT std_logic_vector(3 DOWNTO 0)
	);
END test_cnt;

-- Design Ports Information
-- CARRY	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[0]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR_L	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LD_L	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN_L	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[2]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[1]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN[0]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF test_cnt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MCK : std_logic;
SIGNAL ww_DIN : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_EN_L : std_logic;
SIGNAL ww_CLR_L : std_logic;
SIGNAL ww_LD_L : std_logic;
SIGNAL ww_CARRY : std_logic;
SIGNAL ww_DOUT : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \MCK~input_o\ : std_logic;
SIGNAL \MCK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \CLR_L~input_o\ : std_logic;
SIGNAL \DIN[2]~input_o\ : std_logic;
SIGNAL \LD_L~input_o\ : std_logic;
SIGNAL \DIN[0]~input_o\ : std_logic;
SIGNAL \cnt|DOUTx~2_combout\ : std_logic;
SIGNAL \EN_L~input_o\ : std_logic;
SIGNAL \DIN[1]~input_o\ : std_logic;
SIGNAL \cnt|DOUTx~1_combout\ : std_logic;
SIGNAL \cnt|DOUTx~0_combout\ : std_logic;
SIGNAL \DIN[3]~input_o\ : std_logic;
SIGNAL \cnt|DOUTx~3_combout\ : std_logic;
SIGNAL \cnt|Equal0~0_combout\ : std_logic;
SIGNAL \cnt|DOUTx\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_DIN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_DIN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_DIN[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_EN_L~input_o\ : std_logic;
SIGNAL \ALT_INV_DIN[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_LD_L~input_o\ : std_logic;
SIGNAL \ALT_INV_CLR_L~input_o\ : std_logic;
SIGNAL \cnt|ALT_INV_DOUTx\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_MCK <= MCK;
ww_DIN <= DIN;
ww_EN_L <= EN_L;
ww_CLR_L <= CLR_L;
ww_LD_L <= LD_L;
CARRY <= ww_CARRY;
DOUT <= ww_DOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_DIN[0]~input_o\ <= NOT \DIN[0]~input_o\;
\ALT_INV_DIN[1]~input_o\ <= NOT \DIN[1]~input_o\;
\ALT_INV_DIN[2]~input_o\ <= NOT \DIN[2]~input_o\;
\ALT_INV_EN_L~input_o\ <= NOT \EN_L~input_o\;
\ALT_INV_DIN[3]~input_o\ <= NOT \DIN[3]~input_o\;
\ALT_INV_LD_L~input_o\ <= NOT \LD_L~input_o\;
\ALT_INV_CLR_L~input_o\ <= NOT \CLR_L~input_o\;
\cnt|ALT_INV_DOUTx\(0) <= NOT \cnt|DOUTx\(0);
\cnt|ALT_INV_DOUTx\(1) <= NOT \cnt|DOUTx\(1);
\cnt|ALT_INV_DOUTx\(2) <= NOT \cnt|DOUTx\(2);
\cnt|ALT_INV_DOUTx\(3) <= NOT \cnt|DOUTx\(3);

-- Location: IOOBUF_X89_Y35_N79
\CARRY~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_CARRY);

-- Location: IOOBUF_X89_Y35_N45
\DOUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|DOUTx\(0),
	devoe => ww_devoe,
	o => ww_DOUT(0));

-- Location: IOOBUF_X89_Y36_N39
\DOUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|DOUTx\(1),
	devoe => ww_devoe,
	o => ww_DOUT(1));

-- Location: IOOBUF_X89_Y36_N22
\DOUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|DOUTx\(2),
	devoe => ww_devoe,
	o => ww_DOUT(2));

-- Location: IOOBUF_X89_Y35_N96
\DOUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cnt|DOUTx\(3),
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

-- Location: IOIBUF_X89_Y36_N55
\CLR_L~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR_L,
	o => \CLR_L~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\DIN[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(2),
	o => \DIN[2]~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\LD_L~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LD_L,
	o => \LD_L~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\DIN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(0),
	o => \DIN[0]~input_o\);

-- Location: LABCELL_X88_Y36_N48
\cnt|DOUTx~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|DOUTx~2_combout\ = ( \DIN[0]~input_o\ & ( (\CLR_L~input_o\ & ((!\LD_L~input_o\) # (!\cnt|DOUTx\(0)))) ) ) # ( !\DIN[0]~input_o\ & ( (\LD_L~input_o\ & (\CLR_L~input_o\ & !\cnt|DOUTx\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LD_L~input_o\,
	datac => \ALT_INV_CLR_L~input_o\,
	datad => \cnt|ALT_INV_DOUTx\(0),
	dataf => \ALT_INV_DIN[0]~input_o\,
	combout => \cnt|DOUTx~2_combout\);

-- Location: IOIBUF_X89_Y38_N21
\EN_L~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN_L,
	o => \EN_L~input_o\);

-- Location: FF_X88_Y36_N50
\cnt|DOUTx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputCLKENA0_outclk\,
	d => \cnt|DOUTx~2_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|DOUTx\(0));

-- Location: IOIBUF_X89_Y38_N55
\DIN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(1),
	o => \DIN[1]~input_o\);

-- Location: LABCELL_X88_Y36_N57
\cnt|DOUTx~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|DOUTx~1_combout\ = ( \cnt|DOUTx\(1) & ( \cnt|DOUTx\(0) & ( (\DIN[1]~input_o\ & (!\LD_L~input_o\ & \CLR_L~input_o\)) ) ) ) # ( !\cnt|DOUTx\(1) & ( \cnt|DOUTx\(0) & ( (\CLR_L~input_o\ & ((\LD_L~input_o\) # (\DIN[1]~input_o\))) ) ) ) # ( \cnt|DOUTx\(1) 
-- & ( !\cnt|DOUTx\(0) & ( (\CLR_L~input_o\ & ((\LD_L~input_o\) # (\DIN[1]~input_o\))) ) ) ) # ( !\cnt|DOUTx\(1) & ( !\cnt|DOUTx\(0) & ( (\DIN[1]~input_o\ & (!\LD_L~input_o\ & \CLR_L~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011111100000000001111110000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_DIN[1]~input_o\,
	datac => \ALT_INV_LD_L~input_o\,
	datad => \ALT_INV_CLR_L~input_o\,
	datae => \cnt|ALT_INV_DOUTx\(1),
	dataf => \cnt|ALT_INV_DOUTx\(0),
	combout => \cnt|DOUTx~1_combout\);

-- Location: FF_X88_Y36_N59
\cnt|DOUTx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputCLKENA0_outclk\,
	d => \cnt|DOUTx~1_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|DOUTx\(1));

-- Location: LABCELL_X88_Y36_N12
\cnt|DOUTx~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|DOUTx~0_combout\ = ( \cnt|DOUTx\(2) & ( \cnt|DOUTx\(1) & ( (\CLR_L~input_o\ & ((!\LD_L~input_o\ & (\DIN[2]~input_o\)) # (\LD_L~input_o\ & ((!\cnt|DOUTx\(0)))))) ) ) ) # ( !\cnt|DOUTx\(2) & ( \cnt|DOUTx\(1) & ( (\CLR_L~input_o\ & ((!\LD_L~input_o\ & 
-- (\DIN[2]~input_o\)) # (\LD_L~input_o\ & ((\cnt|DOUTx\(0)))))) ) ) ) # ( \cnt|DOUTx\(2) & ( !\cnt|DOUTx\(1) & ( (\CLR_L~input_o\ & ((\LD_L~input_o\) # (\DIN[2]~input_o\))) ) ) ) # ( !\cnt|DOUTx\(2) & ( !\cnt|DOUTx\(1) & ( (\DIN[2]~input_o\ & 
-- (!\LD_L~input_o\ & \CLR_L~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000111011100000000010001110000000001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_DIN[2]~input_o\,
	datab => \ALT_INV_LD_L~input_o\,
	datac => \cnt|ALT_INV_DOUTx\(0),
	datad => \ALT_INV_CLR_L~input_o\,
	datae => \cnt|ALT_INV_DOUTx\(2),
	dataf => \cnt|ALT_INV_DOUTx\(1),
	combout => \cnt|DOUTx~0_combout\);

-- Location: FF_X88_Y36_N14
\cnt|DOUTx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputCLKENA0_outclk\,
	d => \cnt|DOUTx~0_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|DOUTx\(2));

-- Location: IOIBUF_X89_Y37_N4
\DIN[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DIN(3),
	o => \DIN[3]~input_o\);

-- Location: LABCELL_X88_Y36_N24
\cnt|DOUTx~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|DOUTx~3_combout\ = ( !\LD_L~input_o\ & ( (\CLR_L~input_o\ & (((\DIN[3]~input_o\)))) ) ) # ( \LD_L~input_o\ & ( (\CLR_L~input_o\ & (!\cnt|DOUTx\(3) $ (((!\cnt|DOUTx\(2)) # ((!\cnt|DOUTx\(1)) # (!\cnt|DOUTx\(0))))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CLR_L~input_o\,
	datab => \cnt|ALT_INV_DOUTx\(2),
	datac => \cnt|ALT_INV_DOUTx\(3),
	datad => \cnt|ALT_INV_DOUTx\(1),
	datae => \ALT_INV_LD_L~input_o\,
	dataf => \cnt|ALT_INV_DOUTx\(0),
	datag => \ALT_INV_DIN[3]~input_o\,
	combout => \cnt|DOUTx~3_combout\);

-- Location: FF_X88_Y36_N26
\cnt|DOUTx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCK~inputCLKENA0_outclk\,
	d => \cnt|DOUTx~3_combout\,
	ena => \ALT_INV_EN_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cnt|DOUTx\(3));

-- Location: LABCELL_X88_Y36_N51
\cnt|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cnt|Equal0~0_combout\ = ( \cnt|DOUTx\(0) & ( (\cnt|DOUTx\(3) & (\cnt|DOUTx\(1) & \cnt|DOUTx\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cnt|ALT_INV_DOUTx\(3),
	datac => \cnt|ALT_INV_DOUTx\(1),
	datad => \cnt|ALT_INV_DOUTx\(2),
	dataf => \cnt|ALT_INV_DOUTx\(0),
	combout => \cnt|Equal0~0_combout\);

-- Location: LABCELL_X62_Y58_N3
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


