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

-- DATE "11/09/2015 11:47:23"

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

ENTITY 	lab6_d IS
    PORT (
	w0 : IN std_logic;
	w1 : IN std_logic;
	w2 : IN std_logic;
	w3 : IN std_logic;
	s : IN std_logic_vector(1 DOWNTO 0);
	f : BUFFER std_logic
	);
END lab6_d;

-- Design Ports Information
-- f	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w0	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w1	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w2	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w3	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[0]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s[1]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab6_d IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_w0 : std_logic;
SIGNAL ww_w1 : std_logic;
SIGNAL ww_w2 : std_logic;
SIGNAL ww_w3 : std_logic;
SIGNAL ww_s : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_f : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \w2~input_o\ : std_logic;
SIGNAL \s[0]~input_o\ : std_logic;
SIGNAL \w0~input_o\ : std_logic;
SIGNAL \s[1]~input_o\ : std_logic;
SIGNAL \w3~input_o\ : std_logic;
SIGNAL \w1~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_s[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_s[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_w3~input_o\ : std_logic;
SIGNAL \ALT_INV_w2~input_o\ : std_logic;
SIGNAL \ALT_INV_w1~input_o\ : std_logic;
SIGNAL \ALT_INV_w0~input_o\ : std_logic;

BEGIN

ww_w0 <= w0;
ww_w1 <= w1;
ww_w2 <= w2;
ww_w3 <= w3;
ww_s <= s;
f <= ww_f;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_s[1]~input_o\ <= NOT \s[1]~input_o\;
\ALT_INV_s[0]~input_o\ <= NOT \s[0]~input_o\;
\ALT_INV_w3~input_o\ <= NOT \w3~input_o\;
\ALT_INV_w2~input_o\ <= NOT \w2~input_o\;
\ALT_INV_w1~input_o\ <= NOT \w1~input_o\;
\ALT_INV_w0~input_o\ <= NOT \w0~input_o\;

-- Location: IOOBUF_X89_Y8_N56
\f~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_f);

-- Location: IOIBUF_X89_Y9_N4
\w2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w2,
	o => \w2~input_o\);

-- Location: IOIBUF_X89_Y8_N38
\s[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(0),
	o => \s[0]~input_o\);

-- Location: IOIBUF_X89_Y8_N4
\w0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w0,
	o => \w0~input_o\);

-- Location: IOIBUF_X89_Y9_N38
\s[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s(1),
	o => \s[1]~input_o\);

-- Location: IOIBUF_X89_Y9_N55
\w3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w3,
	o => \w3~input_o\);

-- Location: IOIBUF_X89_Y9_N21
\w1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w1,
	o => \w1~input_o\);

-- Location: LABCELL_X88_Y9_N30
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \w3~input_o\ & ( \w1~input_o\ & ( ((!\s[1]~input_o\ & ((\w0~input_o\))) # (\s[1]~input_o\ & (\w2~input_o\))) # (\s[0]~input_o\) ) ) ) # ( !\w3~input_o\ & ( \w1~input_o\ & ( (!\s[0]~input_o\ & ((!\s[1]~input_o\ & ((\w0~input_o\))) # 
-- (\s[1]~input_o\ & (\w2~input_o\)))) # (\s[0]~input_o\ & (((!\s[1]~input_o\)))) ) ) ) # ( \w3~input_o\ & ( !\w1~input_o\ & ( (!\s[0]~input_o\ & ((!\s[1]~input_o\ & ((\w0~input_o\))) # (\s[1]~input_o\ & (\w2~input_o\)))) # (\s[0]~input_o\ & 
-- (((\s[1]~input_o\)))) ) ) ) # ( !\w3~input_o\ & ( !\w1~input_o\ & ( (!\s[0]~input_o\ & ((!\s[1]~input_o\ & ((\w0~input_o\))) # (\s[1]~input_o\ & (\w2~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000111011100111111010001000011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_w2~input_o\,
	datab => \ALT_INV_s[0]~input_o\,
	datac => \ALT_INV_w0~input_o\,
	datad => \ALT_INV_s[1]~input_o\,
	datae => \ALT_INV_w3~input_o\,
	dataf => \ALT_INV_w1~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LABCELL_X80_Y66_N0
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


