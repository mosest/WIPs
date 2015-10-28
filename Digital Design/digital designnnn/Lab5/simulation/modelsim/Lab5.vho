-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Web Edition"

-- DATE "10/28/2015 09:54:07"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab5 IS
    PORT (
	output : OUT std_logic_vector(7 DOWNTO 0);
	add_sub : IN std_logic;
	dataa : IN std_logic_vector(7 DOWNTO 0);
	datab : IN std_logic_vector(7 DOWNTO 0)
	);
END Lab5;

-- Design Ports Information
-- output[7]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add_sub	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[7]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[7]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[6]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[6]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[5]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[5]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[4]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[3]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[2]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[1]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[1]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dataa[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- datab[0]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_add_sub : std_logic;
SIGNAL ww_dataa : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_datab : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \dataa[7]~input_o\ : std_logic;
SIGNAL \datab[7]~input_o\ : std_logic;
SIGNAL \add_sub~input_o\ : std_logic;
SIGNAL \dataa[6]~input_o\ : std_logic;
SIGNAL \datab[6]~input_o\ : std_logic;
SIGNAL \dataa[5]~input_o\ : std_logic;
SIGNAL \datab[5]~input_o\ : std_logic;
SIGNAL \datab[4]~input_o\ : std_logic;
SIGNAL \dataa[4]~input_o\ : std_logic;
SIGNAL \datab[3]~input_o\ : std_logic;
SIGNAL \dataa[3]~input_o\ : std_logic;
SIGNAL \dataa[2]~input_o\ : std_logic;
SIGNAL \datab[2]~input_o\ : std_logic;
SIGNAL \datab[1]~input_o\ : std_logic;
SIGNAL \dataa[1]~input_o\ : std_logic;
SIGNAL \datab[0]~input_o\ : std_logic;
SIGNAL \dataa[0]~input_o\ : std_logic;
SIGNAL \inst|lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\ : std_logic;
SIGNAL \inst|lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\ : std_logic;
SIGNAL \inst|lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \inst|lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\ : std_logic;
SIGNAL \inst|lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\ : std_logic;
SIGNAL \inst|lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\ : std_logic;
SIGNAL \inst|lpm_add_sub_component|auto_generated|add_sub_cella[5]~COUT\ : std_logic;
SIGNAL \inst|lpm_add_sub_component|auto_generated|add_sub_cella[6]~COUT\ : std_logic;
SIGNAL \inst|lpm_add_sub_component|auto_generated|result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_datab[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_datab[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_datab[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_datab[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_datab[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_datab[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_datab[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_datab[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_dataa[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_add_sub~input_o\ : std_logic;

BEGIN

output <= ww_output;
ww_add_sub <= add_sub;
ww_dataa <= dataa;
ww_datab <= datab;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_datab[0]~input_o\ <= NOT \datab[0]~input_o\;
\ALT_INV_dataa[0]~input_o\ <= NOT \dataa[0]~input_o\;
\ALT_INV_datab[1]~input_o\ <= NOT \datab[1]~input_o\;
\ALT_INV_dataa[1]~input_o\ <= NOT \dataa[1]~input_o\;
\ALT_INV_datab[2]~input_o\ <= NOT \datab[2]~input_o\;
\ALT_INV_dataa[2]~input_o\ <= NOT \dataa[2]~input_o\;
\ALT_INV_datab[3]~input_o\ <= NOT \datab[3]~input_o\;
\ALT_INV_dataa[3]~input_o\ <= NOT \dataa[3]~input_o\;
\ALT_INV_datab[4]~input_o\ <= NOT \datab[4]~input_o\;
\ALT_INV_dataa[4]~input_o\ <= NOT \dataa[4]~input_o\;
\ALT_INV_datab[5]~input_o\ <= NOT \datab[5]~input_o\;
\ALT_INV_dataa[5]~input_o\ <= NOT \dataa[5]~input_o\;
\ALT_INV_datab[6]~input_o\ <= NOT \datab[6]~input_o\;
\ALT_INV_dataa[6]~input_o\ <= NOT \dataa[6]~input_o\;
\ALT_INV_datab[7]~input_o\ <= NOT \datab[7]~input_o\;
\ALT_INV_dataa[7]~input_o\ <= NOT \dataa[7]~input_o\;
\ALT_INV_add_sub~input_o\ <= NOT \add_sub~input_o\;

-- Location: IOOBUF_X89_Y8_N22
\output[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lpm_add_sub_component|auto_generated|result\(7),
	devoe => ww_devoe,
	o => ww_output(7));

-- Location: IOOBUF_X89_Y37_N5
\output[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lpm_add_sub_component|auto_generated|result\(6),
	devoe => ww_devoe,
	o => ww_output(6));

-- Location: IOOBUF_X89_Y9_N56
\output[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lpm_add_sub_component|auto_generated|result\(5),
	devoe => ww_devoe,
	o => ww_output(5));

-- Location: IOOBUF_X89_Y6_N39
\output[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lpm_add_sub_component|auto_generated|result\(4),
	devoe => ww_devoe,
	o => ww_output(4));

-- Location: IOOBUF_X89_Y9_N5
\output[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lpm_add_sub_component|auto_generated|result\(3),
	devoe => ww_devoe,
	o => ww_output(3));

-- Location: IOOBUF_X89_Y38_N39
\output[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lpm_add_sub_component|auto_generated|result\(2),
	devoe => ww_devoe,
	o => ww_output(2));

-- Location: IOOBUF_X89_Y9_N39
\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lpm_add_sub_component|auto_generated|result\(1),
	devoe => ww_devoe,
	o => ww_output(1));

-- Location: IOOBUF_X89_Y37_N56
\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|lpm_add_sub_component|auto_generated|result\(0),
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOIBUF_X89_Y35_N44
\dataa[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(7),
	o => \dataa[7]~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\datab[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(7),
	o => \datab[7]~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\add_sub~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_add_sub,
	o => \add_sub~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\dataa[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(6),
	o => \dataa[6]~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\datab[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(6),
	o => \datab[6]~input_o\);

-- Location: IOIBUF_X89_Y38_N55
\dataa[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(5),
	o => \dataa[5]~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\datab[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(5),
	o => \datab[5]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\datab[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(4),
	o => \datab[4]~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\dataa[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(4),
	o => \dataa[4]~input_o\);

-- Location: IOIBUF_X89_Y35_N95
\datab[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(3),
	o => \datab[3]~input_o\);

-- Location: IOIBUF_X89_Y8_N55
\dataa[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(3),
	o => \dataa[3]~input_o\);

-- Location: IOIBUF_X89_Y38_N21
\dataa[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(2),
	o => \dataa[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\datab[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(2),
	o => \datab[2]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\datab[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(1),
	o => \datab[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\dataa[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(1),
	o => \dataa[1]~input_o\);

-- Location: IOIBUF_X89_Y35_N78
\datab[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_datab(0),
	o => \datab[0]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\dataa[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataa(0),
	o => \dataa[0]~input_o\);

-- Location: LABCELL_X88_Y35_N0
\inst|lpm_add_sub_component|auto_generated|add_sub_cella[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\ = CARRY(( VCC ) + ( !\add_sub~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_add_sub~input_o\,
	cin => GND,
	cout => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\);

-- Location: LABCELL_X88_Y35_N3
\inst|lpm_add_sub_component|auto_generated|add_sub_cella[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|lpm_add_sub_component|auto_generated|result\(0) = SUM(( \dataa[0]~input_o\ ) + ( !\add_sub~input_o\ $ (\datab[0]~input_o\) ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\ ))
-- \inst|lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\ = CARRY(( \dataa[0]~input_o\ ) + ( !\add_sub~input_o\ $ (\datab[0]~input_o\) ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011001100110011000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datab => \ALT_INV_datab[0]~input_o\,
	datad => \ALT_INV_dataa[0]~input_o\,
	cin => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[0]~2_cout\,
	sumout => \inst|lpm_add_sub_component|auto_generated|result\(0),
	cout => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\);

-- Location: LABCELL_X88_Y35_N6
\inst|lpm_add_sub_component|auto_generated|add_sub_cella[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|lpm_add_sub_component|auto_generated|result\(1) = SUM(( !\add_sub~input_o\ $ (\datab[1]~input_o\) ) + ( \dataa[1]~input_o\ ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\ ))
-- \inst|lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\ = CARRY(( !\add_sub~input_o\ $ (\datab[1]~input_o\) ) + ( \dataa[1]~input_o\ ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datac => \ALT_INV_datab[1]~input_o\,
	dataf => \ALT_INV_dataa[1]~input_o\,
	cin => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[0]~COUT\,
	sumout => \inst|lpm_add_sub_component|auto_generated|result\(1),
	cout => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\);

-- Location: LABCELL_X88_Y35_N9
\inst|lpm_add_sub_component|auto_generated|add_sub_cella[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|lpm_add_sub_component|auto_generated|result\(2) = SUM(( \dataa[2]~input_o\ ) + ( !\add_sub~input_o\ $ (\datab[2]~input_o\) ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\ ))
-- \inst|lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\ = CARRY(( \dataa[2]~input_o\ ) + ( !\add_sub~input_o\ $ (\datab[2]~input_o\) ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datac => \ALT_INV_dataa[2]~input_o\,
	dataf => \ALT_INV_datab[2]~input_o\,
	cin => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[1]~COUT\,
	sumout => \inst|lpm_add_sub_component|auto_generated|result\(2),
	cout => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\);

-- Location: LABCELL_X88_Y35_N12
\inst|lpm_add_sub_component|auto_generated|add_sub_cella[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|lpm_add_sub_component|auto_generated|result\(3) = SUM(( !\add_sub~input_o\ $ (\datab[3]~input_o\) ) + ( \dataa[3]~input_o\ ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\ ))
-- \inst|lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\ = CARRY(( !\add_sub~input_o\ $ (\datab[3]~input_o\) ) + ( \dataa[3]~input_o\ ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datac => \ALT_INV_datab[3]~input_o\,
	dataf => \ALT_INV_dataa[3]~input_o\,
	cin => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[2]~COUT\,
	sumout => \inst|lpm_add_sub_component|auto_generated|result\(3),
	cout => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\);

-- Location: LABCELL_X88_Y35_N15
\inst|lpm_add_sub_component|auto_generated|add_sub_cella[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|lpm_add_sub_component|auto_generated|result\(4) = SUM(( \dataa[4]~input_o\ ) + ( !\add_sub~input_o\ $ (\datab[4]~input_o\) ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\ ))
-- \inst|lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\ = CARRY(( \dataa[4]~input_o\ ) + ( !\add_sub~input_o\ $ (\datab[4]~input_o\) ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010110100101101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datac => \ALT_INV_datab[4]~input_o\,
	datad => \ALT_INV_dataa[4]~input_o\,
	cin => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[3]~COUT\,
	sumout => \inst|lpm_add_sub_component|auto_generated|result\(4),
	cout => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\);

-- Location: LABCELL_X88_Y35_N18
\inst|lpm_add_sub_component|auto_generated|add_sub_cella[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|lpm_add_sub_component|auto_generated|result\(5) = SUM(( \dataa[5]~input_o\ ) + ( !\add_sub~input_o\ $ (\datab[5]~input_o\) ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\ ))
-- \inst|lpm_add_sub_component|auto_generated|add_sub_cella[5]~COUT\ = CARRY(( \dataa[5]~input_o\ ) + ( !\add_sub~input_o\ $ (\datab[5]~input_o\) ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_dataa[5]~input_o\,
	datac => \ALT_INV_add_sub~input_o\,
	dataf => \ALT_INV_datab[5]~input_o\,
	cin => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[4]~COUT\,
	sumout => \inst|lpm_add_sub_component|auto_generated|result\(5),
	cout => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[5]~COUT\);

-- Location: LABCELL_X88_Y35_N21
\inst|lpm_add_sub_component|auto_generated|add_sub_cella[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|lpm_add_sub_component|auto_generated|result\(6) = SUM(( \dataa[6]~input_o\ ) + ( !\add_sub~input_o\ $ (\datab[6]~input_o\) ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[5]~COUT\ ))
-- \inst|lpm_add_sub_component|auto_generated|add_sub_cella[6]~COUT\ = CARRY(( \dataa[6]~input_o\ ) + ( !\add_sub~input_o\ $ (\datab[6]~input_o\) ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[5]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101011010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_add_sub~input_o\,
	datad => \ALT_INV_dataa[6]~input_o\,
	dataf => \ALT_INV_datab[6]~input_o\,
	cin => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[5]~COUT\,
	sumout => \inst|lpm_add_sub_component|auto_generated|result\(6),
	cout => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[6]~COUT\);

-- Location: LABCELL_X88_Y35_N24
\inst|lpm_add_sub_component|auto_generated|add_sub_cella[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|lpm_add_sub_component|auto_generated|result\(7) = SUM(( \dataa[7]~input_o\ ) + ( !\datab[7]~input_o\ $ (\add_sub~input_o\) ) + ( \inst|lpm_add_sub_component|auto_generated|add_sub_cella[6]~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dataa[7]~input_o\,
	datab => \ALT_INV_datab[7]~input_o\,
	datac => \ALT_INV_add_sub~input_o\,
	cin => \inst|lpm_add_sub_component|auto_generated|add_sub_cella[6]~COUT\,
	sumout => \inst|lpm_add_sub_component|auto_generated|result\(7));

-- Location: MLABCELL_X87_Y13_N0
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


