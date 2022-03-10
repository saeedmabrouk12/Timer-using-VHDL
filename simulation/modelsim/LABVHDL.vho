-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "01/12/2021 20:37:16"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LABVHDL IS
    PORT (
	clk : IN std_logic;
	start_stop : IN std_logic;
	min_in : IN std_logic_vector(5 DOWNTO 0);
	sec_in : IN std_logic_vector(5 DOWNTO 0);
	min_out : BUFFER std_logic_vector(5 DOWNTO 0);
	sec_out : BUFFER std_logic_vector(5 DOWNTO 0);
	finish : BUFFER std_logic
	);
END LABVHDL;

-- Design Ports Information
-- min_out[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_out[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_out[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_out[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_out[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_out[5]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_out[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_out[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_out[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_out[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_out[4]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_out[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finish	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_in[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_in[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_in[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_in[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_in[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- min_in[4]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_in[5]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_in[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_in[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_in[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_in[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sec_in[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_stop	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LABVHDL IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_start_stop : std_logic;
SIGNAL ww_min_in : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_sec_in : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_min_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_sec_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_finish : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \min_out[0]~output_o\ : std_logic;
SIGNAL \min_out[1]~output_o\ : std_logic;
SIGNAL \min_out[2]~output_o\ : std_logic;
SIGNAL \min_out[3]~output_o\ : std_logic;
SIGNAL \min_out[4]~output_o\ : std_logic;
SIGNAL \min_out[5]~output_o\ : std_logic;
SIGNAL \sec_out[0]~output_o\ : std_logic;
SIGNAL \sec_out[1]~output_o\ : std_logic;
SIGNAL \sec_out[2]~output_o\ : std_logic;
SIGNAL \sec_out[3]~output_o\ : std_logic;
SIGNAL \sec_out[4]~output_o\ : std_logic;
SIGNAL \sec_out[5]~output_o\ : std_logic;
SIGNAL \finish~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \min_in[0]~input_o\ : std_logic;
SIGNAL \min_in[2]~input_o\ : std_logic;
SIGNAL \min_in[5]~input_o\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \start_stop~input_o\ : std_logic;
SIGNAL \c[0]~0_combout\ : std_logic;
SIGNAL \min_in[1]~input_o\ : std_logic;
SIGNAL \min~11_combout\ : std_logic;
SIGNAL \min~9_combout\ : std_logic;
SIGNAL \min~10_combout\ : std_logic;
SIGNAL \min[1]~1_combout\ : std_logic;
SIGNAL \sec_in[0]~input_o\ : std_logic;
SIGNAL \sec_in[5]~input_o\ : std_logic;
SIGNAL \sec_in[4]~input_o\ : std_logic;
SIGNAL \sec~2_combout\ : std_logic;
SIGNAL \sec_in[3]~input_o\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \sec_in[1]~input_o\ : std_logic;
SIGNAL \sec~10_combout\ : std_logic;
SIGNAL \sec[1]~0_combout\ : std_logic;
SIGNAL \Equal2~1_wirecell_combout\ : std_logic;
SIGNAL \sec~6_combout\ : std_logic;
SIGNAL \sec~14_combout\ : std_logic;
SIGNAL \sec~15_combout\ : std_logic;
SIGNAL \sec~16_combout\ : std_logic;
SIGNAL \sec~4_combout\ : std_logic;
SIGNAL \sec~11_combout\ : std_logic;
SIGNAL \sec~12_combout\ : std_logic;
SIGNAL \sec~13_combout\ : std_logic;
SIGNAL \sec_in[2]~input_o\ : std_logic;
SIGNAL \sec~5_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \sec~17_combout\ : std_logic;
SIGNAL \sec[4]~1_combout\ : std_logic;
SIGNAL \sec~3_combout\ : std_logic;
SIGNAL \sec~18_combout\ : std_logic;
SIGNAL \sec~19_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \sec~8_combout\ : std_logic;
SIGNAL \sec~9_combout\ : std_logic;
SIGNAL \sec~7_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \min~3_combout\ : std_logic;
SIGNAL \min~13_combout\ : std_logic;
SIGNAL \min~16_combout\ : std_logic;
SIGNAL \min~18_combout\ : std_logic;
SIGNAL \min~6_combout\ : std_logic;
SIGNAL \min~17_combout\ : std_logic;
SIGNAL \min_in[4]~input_o\ : std_logic;
SIGNAL \min~7_combout\ : std_logic;
SIGNAL \min~12_combout\ : std_logic;
SIGNAL \min~14_combout\ : std_logic;
SIGNAL \min~4_combout\ : std_logic;
SIGNAL \min~15_combout\ : std_logic;
SIGNAL \min[3]~2_combout\ : std_logic;
SIGNAL \min_in[3]~input_o\ : std_logic;
SIGNAL \min~5_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \c[1]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \min[0]~0_combout\ : std_logic;
SIGNAL \min~8_combout\ : std_logic;
SIGNAL \finish~0_combout\ : std_logic;
SIGNAL \finish~reg0_q\ : std_logic;
SIGNAL sec : std_logic_vector(5 DOWNTO 0);
SIGNAL min : std_logic_vector(5 DOWNTO 0);
SIGNAL c : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_start_stop <= start_stop;
ww_min_in <= min_in;
ww_sec_in <= sec_in;
min_out <= ww_min_out;
sec_out <= ww_sec_out;
finish <= ww_finish;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;

-- Location: IOOBUF_X22_Y31_N2
\min_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => min(0),
	devoe => ww_devoe,
	o => \min_out[0]~output_o\);

-- Location: IOOBUF_X33_Y28_N2
\min_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => min(1),
	devoe => ww_devoe,
	o => \min_out[1]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\min_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => min(2),
	devoe => ww_devoe,
	o => \min_out[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\min_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => min(3),
	devoe => ww_devoe,
	o => \min_out[3]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\min_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => min(4),
	devoe => ww_devoe,
	o => \min_out[4]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\min_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => min(5),
	devoe => ww_devoe,
	o => \min_out[5]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\sec_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sec(0),
	devoe => ww_devoe,
	o => \sec_out[0]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\sec_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sec(1),
	devoe => ww_devoe,
	o => \sec_out[1]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\sec_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sec(2),
	devoe => ww_devoe,
	o => \sec_out[2]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\sec_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sec(3),
	devoe => ww_devoe,
	o => \sec_out[3]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\sec_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sec(4),
	devoe => ww_devoe,
	o => \sec_out[4]~output_o\);

-- Location: IOOBUF_X33_Y28_N9
\sec_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sec(5),
	devoe => ww_devoe,
	o => \sec_out[5]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\finish~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \finish~reg0_q\,
	devoe => ww_devoe,
	o => \finish~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X26_Y31_N1
\min_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_in(0),
	o => \min_in[0]~input_o\);

-- Location: IOIBUF_X29_Y31_N1
\min_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_in(2),
	o => \min_in[2]~input_o\);

-- Location: IOIBUF_X14_Y31_N8
\min_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_in(5),
	o => \min_in[5]~input_o\);

-- Location: LCCOMB_X14_Y27_N2
\Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\min~4_combout\ & (!\min~5_combout\ & (!\min~6_combout\ & !\min~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min~4_combout\,
	datab => \min~5_combout\,
	datac => \min~6_combout\,
	datad => \min~7_combout\,
	combout => \Equal2~0_combout\);

-- Location: IOIBUF_X33_Y27_N1
\start_stop~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_stop,
	o => \start_stop~input_o\);

-- Location: LCCOMB_X15_Y27_N20
\c[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c[0]~0_combout\ = c(0) $ (((!c(1) & (\start_stop~input_o\ & !\process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(1),
	datab => \start_stop~input_o\,
	datac => c(0),
	datad => \process_0~0_combout\,
	combout => \c[0]~0_combout\);

-- Location: FF_X15_Y27_N21
\c[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c(0));

-- Location: IOIBUF_X31_Y31_N8
\min_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_in(1),
	o => \min_in[1]~input_o\);

-- Location: LCCOMB_X14_Y27_N10
\min~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~11_combout\ = (\min[0]~0_combout\) # ((\Equal2~0_combout\ & !\min~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~0_combout\,
	datac => \min[0]~0_combout\,
	datad => \min~3_combout\,
	combout => \min~11_combout\);

-- Location: LCCOMB_X13_Y27_N28
\min~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~9_combout\ = (!\min~7_combout\ & ((\Equal0~0_combout\ & ((!min(5)))) # (!\Equal0~0_combout\ & (!\min_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_in[5]~input_o\,
	datab => min(5),
	datac => \min~7_combout\,
	datad => \Equal0~0_combout\,
	combout => \min~9_combout\);

-- Location: LCCOMB_X14_Y27_N20
\min~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~10_combout\ = (!\min~3_combout\ & ((\min~4_combout\) # ((\min~5_combout\) # (!\min~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min~4_combout\,
	datab => \min~3_combout\,
	datac => \min~5_combout\,
	datad => \min~9_combout\,
	combout => \min~10_combout\);

-- Location: LCCOMB_X14_Y27_N28
\min[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[1]~1_combout\ = (\min~11_combout\ & (\min~3_combout\)) # (!\min~11_combout\ & ((\min~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min~11_combout\,
	datac => \min~3_combout\,
	datad => \min~10_combout\,
	combout => \min[1]~1_combout\);

-- Location: IOIBUF_X16_Y31_N8
\sec_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sec_in(0),
	o => \sec_in[0]~input_o\);

-- Location: IOIBUF_X24_Y31_N1
\sec_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sec_in(5),
	o => \sec_in[5]~input_o\);

-- Location: IOIBUF_X22_Y31_N8
\sec_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sec_in(4),
	o => \sec_in[4]~input_o\);

-- Location: LCCOMB_X16_Y27_N24
\sec~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~2_combout\ = (c(1) & (sec(5))) # (!c(1) & ((c(0) & (sec(5))) # (!c(0) & ((\sec_in[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sec(5),
	datab => \sec_in[5]~input_o\,
	datac => c(1),
	datad => c(0),
	combout => \sec~2_combout\);

-- Location: IOIBUF_X31_Y31_N1
\sec_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sec_in(3),
	o => \sec_in[3]~input_o\);

-- Location: LCCOMB_X16_Y27_N28
\Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\min~3_combout\ & (!\min[0]~0_combout\ & \Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min~3_combout\,
	datac => \min[0]~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~1_combout\);

-- Location: IOIBUF_X16_Y31_N1
\sec_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sec_in(1),
	o => \sec_in[1]~input_o\);

-- Location: LCCOMB_X16_Y27_N10
\sec~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~10_combout\ = (!\sec~6_combout\ & ((\sec~4_combout\) # ((\sec~5_combout\) # (!\Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec~4_combout\,
	datab => \sec~6_combout\,
	datac => \Equal1~1_combout\,
	datad => \sec~5_combout\,
	combout => \sec~10_combout\);

-- Location: LCCOMB_X16_Y27_N4
\sec[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[1]~0_combout\ = (\sec~8_combout\ & (\sec~10_combout\)) # (!\sec~8_combout\ & ((\sec~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec~10_combout\,
	datab => \sec~6_combout\,
	datad => \sec~8_combout\,
	combout => \sec[1]~0_combout\);

-- Location: LCCOMB_X16_Y27_N14
\Equal2~1_wirecell\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~1_wirecell_combout\ = !\Equal2~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Equal2~1_combout\,
	combout => \Equal2~1_wirecell_combout\);

-- Location: FF_X16_Y27_N5
\sec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sec[1]~0_combout\,
	asdata => \Equal2~1_wirecell_combout\,
	sclr => \process_0~0_combout\,
	sload => \Equal1~2_combout\,
	ena => \start_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(1));

-- Location: LCCOMB_X16_Y27_N18
\sec~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~6_combout\ = (c(1) & (((sec(1))))) # (!c(1) & ((c(0) & ((sec(1)))) # (!c(0) & (\sec_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec_in[1]~input_o\,
	datab => sec(1),
	datac => c(1),
	datad => c(0),
	combout => \sec~6_combout\);

-- Location: LCCOMB_X16_Y27_N20
\sec~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~14_combout\ = (\sec~4_combout\ & ((\sec~5_combout\) # ((\sec~6_combout\) # (!\sec~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec~5_combout\,
	datab => \sec~6_combout\,
	datac => \sec~4_combout\,
	datad => \sec~8_combout\,
	combout => \sec~14_combout\);

-- Location: LCCOMB_X16_Y27_N6
\sec~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~15_combout\ = (\sec~14_combout\) # ((\Equal1~0_combout\ & (!\sec~7_combout\ & !\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \sec~7_combout\,
	datac => \Equal1~1_combout\,
	datad => \sec~14_combout\,
	combout => \sec~15_combout\);

-- Location: LCCOMB_X16_Y27_N2
\sec~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~16_combout\ = (!\process_0~0_combout\ & ((\sec~15_combout\) # ((!\Equal2~1_combout\ & \Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \sec~15_combout\,
	combout => \sec~16_combout\);

-- Location: FF_X16_Y27_N3
\sec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sec~16_combout\,
	ena => \start_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(3));

-- Location: LCCOMB_X15_Y27_N26
\sec~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~4_combout\ = (c(1) & (((sec(3))))) # (!c(1) & ((c(0) & ((sec(3)))) # (!c(0) & (\sec_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(1),
	datab => c(0),
	datac => \sec_in[3]~input_o\,
	datad => sec(3),
	combout => \sec~4_combout\);

-- Location: LCCOMB_X16_Y27_N0
\sec~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~11_combout\ = (\sec~4_combout\) # ((\sec~3_combout\) # (\sec~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec~4_combout\,
	datac => \sec~3_combout\,
	datad => \sec~2_combout\,
	combout => \sec~11_combout\);

-- Location: LCCOMB_X16_Y27_N22
\sec~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~12_combout\ = (!\sec~6_combout\ & (!\sec~7_combout\ & ((!\Equal1~0_combout\) # (!\Equal1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec~6_combout\,
	datab => \sec~7_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \sec~12_combout\);

-- Location: LCCOMB_X15_Y27_N18
\sec~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~13_combout\ = (!\process_0~0_combout\ & ((\sec~5_combout\ & ((!\sec~12_combout\))) # (!\sec~5_combout\ & (\sec~11_combout\ & \sec~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \sec~5_combout\,
	datac => \sec~11_combout\,
	datad => \sec~12_combout\,
	combout => \sec~13_combout\);

-- Location: FF_X15_Y27_N19
\sec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sec~13_combout\,
	ena => \start_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(2));

-- Location: IOIBUF_X24_Y31_N8
\sec_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sec_in(2),
	o => \sec_in[2]~input_o\);

-- Location: LCCOMB_X15_Y27_N28
\sec~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~5_combout\ = (c(1) & (sec(2))) # (!c(1) & ((c(0) & (sec(2))) # (!c(0) & ((\sec_in[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(1),
	datab => sec(2),
	datac => \sec_in[2]~input_o\,
	datad => c(0),
	combout => \sec~5_combout\);

-- Location: LCCOMB_X15_Y27_N2
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\sec~5_combout\ & (!\sec~4_combout\ & !\sec~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec~5_combout\,
	datac => \sec~4_combout\,
	datad => \sec~6_combout\,
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X17_Y27_N28
\sec~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~17_combout\ = (\Equal1~0_combout\ & (\sec~2_combout\ & !\sec~3_combout\)) # (!\Equal1~0_combout\ & ((\sec~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sec~2_combout\,
	datac => \Equal1~0_combout\,
	datad => \sec~3_combout\,
	combout => \sec~17_combout\);

-- Location: LCCOMB_X16_Y27_N26
\sec[4]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec[4]~1_combout\ = (\sec~8_combout\ & ((\sec~17_combout\))) # (!\sec~8_combout\ & (\sec~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec~8_combout\,
	datab => \sec~3_combout\,
	datad => \sec~17_combout\,
	combout => \sec[4]~1_combout\);

-- Location: FF_X16_Y27_N27
\sec[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sec[4]~1_combout\,
	asdata => \Equal2~1_wirecell_combout\,
	sclr => \process_0~0_combout\,
	sload => \Equal1~2_combout\,
	ena => \start_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(4));

-- Location: LCCOMB_X15_Y27_N0
\sec~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~3_combout\ = (c(1) & (((sec(4))))) # (!c(1) & ((c(0) & ((sec(4)))) # (!c(0) & (\sec_in[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(1),
	datab => c(0),
	datac => \sec_in[4]~input_o\,
	datad => sec(4),
	combout => \sec~3_combout\);

-- Location: LCCOMB_X16_Y27_N8
\sec~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~18_combout\ = (\sec~2_combout\ & ((\sec~3_combout\) # ((\sec~7_combout\) # (!\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec~3_combout\,
	datab => \sec~2_combout\,
	datac => \sec~7_combout\,
	datad => \Equal1~0_combout\,
	combout => \sec~18_combout\);

-- Location: LCCOMB_X16_Y27_N12
\sec~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~19_combout\ = (!\process_0~0_combout\ & ((\sec~18_combout\) # ((\Equal1~2_combout\ & !\Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \Equal1~2_combout\,
	datac => \sec~18_combout\,
	datad => \Equal2~1_combout\,
	combout => \sec~19_combout\);

-- Location: FF_X16_Y27_N13
\sec[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sec~19_combout\,
	ena => \start_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(5));

-- Location: LCCOMB_X15_Y27_N8
\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\sec~3_combout\ & ((\Equal0~0_combout\ & ((!sec(5)))) # (!\Equal0~0_combout\ & (!\sec_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec_in[5]~input_o\,
	datab => \Equal0~0_combout\,
	datac => sec(5),
	datad => \sec~3_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X15_Y27_N14
\sec~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~8_combout\ = (!\sec~7_combout\ & ((!\Equal1~0_combout\) # (!\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec~7_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \sec~8_combout\);

-- Location: LCCOMB_X16_Y27_N16
\sec~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~9_combout\ = (!\process_0~0_combout\ & ((\sec~8_combout\) # ((!\Equal2~1_combout\ & \Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec~8_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal1~2_combout\,
	datad => \process_0~0_combout\,
	combout => \sec~9_combout\);

-- Location: FF_X16_Y27_N17
\sec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sec~9_combout\,
	ena => \start_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sec(0));

-- Location: LCCOMB_X15_Y27_N30
\sec~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sec~7_combout\ = (c(1) & (((sec(0))))) # (!c(1) & ((c(0) & ((sec(0)))) # (!c(0) & (\sec_in[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(1),
	datab => c(0),
	datac => \sec_in[0]~input_o\,
	datad => sec(0),
	combout => \sec~7_combout\);

-- Location: LCCOMB_X15_Y27_N4
\Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!\sec~7_combout\ & (\Equal1~1_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec~7_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: FF_X14_Y27_N29
\min[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \min[1]~1_combout\,
	asdata => \min~3_combout\,
	sclr => \process_0~0_combout\,
	sload => \ALT_INV_Equal1~2_combout\,
	ena => \start_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(1));

-- Location: LCCOMB_X15_Y27_N22
\min~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~3_combout\ = (c(1) & (((min(1))))) # (!c(1) & ((c(0) & ((min(1)))) # (!c(0) & (\min_in[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(1),
	datab => c(0),
	datac => \min_in[1]~input_o\,
	datad => min(1),
	combout => \min~3_combout\);

-- Location: LCCOMB_X14_Y27_N24
\min~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~13_combout\ = (!\Equal2~0_combout\ & (!\min~3_combout\ & (!\min[0]~0_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \min~3_combout\,
	datac => \min[0]~0_combout\,
	datad => \Equal1~2_combout\,
	combout => \min~13_combout\);

-- Location: LCCOMB_X14_Y27_N18
\min~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~16_combout\ = (!\min~4_combout\ & (!\min~5_combout\ & \min~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min~4_combout\,
	datac => \min~5_combout\,
	datad => \min~13_combout\,
	combout => \min~16_combout\);

-- Location: LCCOMB_X14_Y27_N8
\min~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~18_combout\ = (\min~6_combout\ & (!\process_0~0_combout\ & ((\min~7_combout\) # (!\min~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min~7_combout\,
	datab => \min~6_combout\,
	datac => \process_0~0_combout\,
	datad => \min~16_combout\,
	combout => \min~18_combout\);

-- Location: FF_X14_Y27_N9
\min[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \min~18_combout\,
	ena => \start_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(5));

-- Location: LCCOMB_X14_Y27_N14
\min~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~6_combout\ = (c(0) & (((min(5))))) # (!c(0) & ((c(1) & ((min(5)))) # (!c(1) & (\min_in[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_in[5]~input_o\,
	datab => min(5),
	datac => c(0),
	datad => c(1),
	combout => \min~6_combout\);

-- Location: LCCOMB_X14_Y27_N26
\min~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~17_combout\ = (!\process_0~0_combout\ & ((\min~7_combout\ & ((!\min~16_combout\))) # (!\min~7_combout\ & (\min~6_combout\ & \min~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min~7_combout\,
	datab => \min~6_combout\,
	datac => \process_0~0_combout\,
	datad => \min~16_combout\,
	combout => \min~17_combout\);

-- Location: FF_X14_Y27_N27
\min[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \min~17_combout\,
	ena => \start_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(4));

-- Location: IOIBUF_X14_Y31_N1
\min_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_in(4),
	o => \min_in[4]~input_o\);

-- Location: LCCOMB_X14_Y27_N12
\min~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~7_combout\ = (c(0) & (min(4))) # (!c(0) & ((c(1) & (min(4))) # (!c(1) & ((\min_in[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(4),
	datab => \min_in[4]~input_o\,
	datac => c(0),
	datad => c(1),
	combout => \min~7_combout\);

-- Location: LCCOMB_X13_Y27_N22
\min~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~12_combout\ = (!\min~7_combout\ & (!\min~6_combout\ & !\min~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min~7_combout\,
	datac => \min~6_combout\,
	datad => \min~5_combout\,
	combout => \min~12_combout\);

-- Location: LCCOMB_X14_Y27_N4
\min~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~14_combout\ = (!\process_0~0_combout\ & ((\min~4_combout\ & ((!\min~13_combout\))) # (!\min~4_combout\ & (!\min~12_combout\ & \min~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min~4_combout\,
	datab => \min~12_combout\,
	datac => \process_0~0_combout\,
	datad => \min~13_combout\,
	combout => \min~14_combout\);

-- Location: FF_X14_Y27_N5
\min[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \min~14_combout\,
	ena => \start_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(2));

-- Location: LCCOMB_X14_Y27_N30
\min~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~4_combout\ = (c(0) & (((min(2))))) # (!c(0) & ((c(1) & ((min(2)))) # (!c(1) & (\min_in[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min_in[2]~input_o\,
	datab => min(2),
	datac => c(0),
	datad => c(1),
	combout => \min~4_combout\);

-- Location: LCCOMB_X13_Y27_N20
\min~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~15_combout\ = (\min~5_combout\ & ((\min~3_combout\) # ((\min[0]~0_combout\)))) # (!\min~5_combout\ & (!\min~3_combout\ & (!\min[0]~0_combout\ & !\min~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min~5_combout\,
	datab => \min~3_combout\,
	datac => \min[0]~0_combout\,
	datad => \min~9_combout\,
	combout => \min~15_combout\);

-- Location: LCCOMB_X14_Y27_N22
\min[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[3]~2_combout\ = (\min~4_combout\ & (\min~5_combout\)) # (!\min~4_combout\ & ((\min~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min~4_combout\,
	datac => \min~5_combout\,
	datad => \min~15_combout\,
	combout => \min[3]~2_combout\);

-- Location: FF_X14_Y27_N23
\min[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \min[3]~2_combout\,
	asdata => \min~5_combout\,
	sclr => \process_0~0_combout\,
	sload => \ALT_INV_Equal1~2_combout\,
	ena => \start_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(3));

-- Location: IOIBUF_X29_Y31_N8
\min_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_min_in(3),
	o => \min_in[3]~input_o\);

-- Location: LCCOMB_X14_Y27_N16
\min~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~5_combout\ = (c(0) & (min(3))) # (!c(0) & ((c(1) & (min(3))) # (!c(1) & ((\min_in[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(3),
	datab => \min_in[3]~input_o\,
	datac => c(0),
	datad => c(1),
	combout => \min~5_combout\);

-- Location: LCCOMB_X14_Y27_N6
\LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (\min~7_combout\ & ((\Equal0~0_combout\ & (min(5))) # (!\Equal0~0_combout\ & ((\min_in[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => min(5),
	datab => \min_in[5]~input_o\,
	datac => \Equal0~0_combout\,
	datad => \min~7_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X15_Y27_N10
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (\sec~4_combout\ & (\sec~3_combout\ & (\sec~5_combout\ & \sec~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sec~4_combout\,
	datab => \sec~3_combout\,
	datac => \sec~5_combout\,
	datad => \sec~2_combout\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X15_Y27_N12
\process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\LessThan0~0_combout\) # ((\min~5_combout\ & (\min~4_combout\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \min~5_combout\,
	datab => \min~4_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan0~0_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X15_Y27_N6
\c[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \c[1]~1_combout\ = (c(1)) # ((!\process_0~0_combout\ & (\start_stop~input_o\ & c(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \start_stop~input_o\,
	datac => c(1),
	datad => c(0),
	combout => \c[1]~1_combout\);

-- Location: FF_X15_Y27_N7
\c[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => c(1));

-- Location: LCCOMB_X15_Y27_N24
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (c(1)) # (c(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => c(1),
	datad => c(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X15_Y27_N16
\min[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min[0]~0_combout\ = (\Equal0~0_combout\ & ((min(0)))) # (!\Equal0~0_combout\ & (\min_in[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min_in[0]~input_o\,
	datac => min(0),
	datad => \Equal0~0_combout\,
	combout => \min[0]~0_combout\);

-- Location: LCCOMB_X14_Y27_N0
\min~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \min~8_combout\ = (!\min[0]~0_combout\ & ((\min~3_combout\) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \min~3_combout\,
	datac => \min[0]~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \min~8_combout\);

-- Location: FF_X15_Y27_N17
\min[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \min[0]~0_combout\,
	asdata => \min~8_combout\,
	sclr => \process_0~0_combout\,
	sload => \Equal1~2_combout\,
	ena => \start_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => min(0));

-- Location: LCCOMB_X16_Y27_N30
\finish~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \finish~0_combout\ = (\process_0~0_combout\) # ((\Equal1~2_combout\ & \Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal2~1_combout\,
	combout => \finish~0_combout\);

-- Location: FF_X16_Y27_N31
\finish~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \finish~0_combout\,
	ena => \start_stop~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \finish~reg0_q\);

ww_min_out(0) <= \min_out[0]~output_o\;

ww_min_out(1) <= \min_out[1]~output_o\;

ww_min_out(2) <= \min_out[2]~output_o\;

ww_min_out(3) <= \min_out[3]~output_o\;

ww_min_out(4) <= \min_out[4]~output_o\;

ww_min_out(5) <= \min_out[5]~output_o\;

ww_sec_out(0) <= \sec_out[0]~output_o\;

ww_sec_out(1) <= \sec_out[1]~output_o\;

ww_sec_out(2) <= \sec_out[2]~output_o\;

ww_sec_out(3) <= \sec_out[3]~output_o\;

ww_sec_out(4) <= \sec_out[4]~output_o\;

ww_sec_out(5) <= \sec_out[5]~output_o\;

ww_finish <= \finish~output_o\;
END structure;


