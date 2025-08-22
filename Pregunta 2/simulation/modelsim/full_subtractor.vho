-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "08/17/2025 22:09:02"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
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

ENTITY 	top_subtractor_fpga IS
    PORT (
	SW : IN std_logic_vector(8 DOWNTO 0);
	LED : BUFFER std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	A_out : BUFFER std_logic_vector(3 DOWNTO 0);
	B_out : BUFFER std_logic_vector(3 DOWNTO 0);
	Diff_out : BUFFER std_logic_vector(3 DOWNTO 0);
	Bout_out : BUFFER std_logic
	);
END top_subtractor_fpga;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_out[0]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_out[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_out[2]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_out[3]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_out[0]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_out[1]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_out[2]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_out[3]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Diff_out[0]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Diff_out[1]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Diff_out[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Diff_out[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Bout_out	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_subtractor_fpga IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LED : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_A_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Diff_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Bout_out : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SUB4|SUB2|Bout~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SUB4|SUB3|Bout~0_combout\ : std_logic;
SIGNAL \SUB4|SUB0|FA|p~combout\ : std_logic;
SIGNAL \SUB4|SUB2|FA|Sum~combout\ : std_logic;
SIGNAL \SUB4|SUB1|FA|Sum~combout\ : std_logic;
SIGNAL \DISP|Add0~2_combout\ : std_logic;
SIGNAL \DISP|Add0~1_combout\ : std_logic;
SIGNAL \DISP|Add0~0_combout\ : std_logic;
SIGNAL \DISP|Mux6~0_combout\ : std_logic;
SIGNAL \DISP|Mux5~0_combout\ : std_logic;
SIGNAL \DISP|Mux4~0_combout\ : std_logic;
SIGNAL \DISP|Mux3~0_combout\ : std_logic;
SIGNAL \DISP|Mux2~0_combout\ : std_logic;
SIGNAL \DISP|Mux1~0_combout\ : std_logic;
SIGNAL \DISP|Mux0~0_combout\ : std_logic;
SIGNAL \SUB4|SUB3|FA|Sum~combout\ : std_logic;
SIGNAL \SUB4|SUB3|FA|ALT_INV_Sum~combout\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \SUB4|SUB2|ALT_INV_Bout~0_combout\ : std_logic;
SIGNAL \SUB4|SUB0|FA|ALT_INV_p~combout\ : std_logic;
SIGNAL \SUB4|SUB1|FA|ALT_INV_Sum~combout\ : std_logic;
SIGNAL \DISP|ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \SUB4|SUB2|FA|ALT_INV_Sum~combout\ : std_logic;
SIGNAL \DISP|ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \DISP|ALT_INV_Add0~2_combout\ : std_logic;
SIGNAL \DISP|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
LED <= ww_LED;
HEX0 <= ww_HEX0;
A_out <= ww_A_out;
B_out <= ww_B_out;
Diff_out <= ww_Diff_out;
Bout_out <= ww_Bout_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\SUB4|SUB3|FA|ALT_INV_Sum~combout\ <= NOT \SUB4|SUB3|FA|Sum~combout\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\SUB4|SUB2|ALT_INV_Bout~0_combout\ <= NOT \SUB4|SUB2|Bout~0_combout\;
\SUB4|SUB0|FA|ALT_INV_p~combout\ <= NOT \SUB4|SUB0|FA|p~combout\;
\SUB4|SUB1|FA|ALT_INV_Sum~combout\ <= NOT \SUB4|SUB1|FA|Sum~combout\;
\DISP|ALT_INV_Add0~0_combout\ <= NOT \DISP|Add0~0_combout\;
\SUB4|SUB2|FA|ALT_INV_Sum~combout\ <= NOT \SUB4|SUB2|FA|Sum~combout\;
\DISP|ALT_INV_Add0~1_combout\ <= NOT \DISP|Add0~1_combout\;
\DISP|ALT_INV_Add0~2_combout\ <= NOT \DISP|Add0~2_combout\;
\DISP|ALT_INV_Mux0~0_combout\ <= NOT \DISP|Mux0~0_combout\;

-- Location: IOOBUF_X89_Y11_N45
\LED~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SUB4|SUB3|Bout~0_combout\,
	devoe => ww_devoe,
	o => ww_LED);

-- Location: IOOBUF_X60_Y0_N19
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X80_Y0_N2
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X50_Y0_N93
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N76
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X56_Y0_N36
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X58_Y0_N76
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X56_Y0_N53
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DISP|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y21_N56
\A_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => ww_A_out(0));

-- Location: IOOBUF_X89_Y23_N5
\A_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => ww_A_out(1));

-- Location: IOOBUF_X89_Y21_N22
\A_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => ww_A_out(2));

-- Location: IOOBUF_X89_Y23_N39
\A_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => ww_A_out(3));

-- Location: IOOBUF_X89_Y15_N56
\B_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => ww_B_out(0));

-- Location: IOOBUF_X89_Y15_N39
\B_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	devoe => ww_devoe,
	o => ww_B_out(1));

-- Location: IOOBUF_X89_Y16_N5
\B_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	devoe => ww_devoe,
	o => ww_B_out(2));

-- Location: IOOBUF_X89_Y25_N5
\B_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	devoe => ww_devoe,
	o => ww_B_out(3));

-- Location: IOOBUF_X89_Y4_N79
\Diff_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SUB4|SUB0|FA|p~combout\,
	devoe => ww_devoe,
	o => ww_Diff_out(0));

-- Location: IOOBUF_X89_Y16_N39
\Diff_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SUB4|SUB1|FA|ALT_INV_Sum~combout\,
	devoe => ww_devoe,
	o => ww_Diff_out(1));

-- Location: IOOBUF_X89_Y16_N22
\Diff_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SUB4|SUB2|FA|ALT_INV_Sum~combout\,
	devoe => ww_devoe,
	o => ww_Diff_out(2));

-- Location: IOOBUF_X89_Y16_N56
\Diff_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SUB4|SUB3|FA|ALT_INV_Sum~combout\,
	devoe => ww_devoe,
	o => ww_Diff_out(3));

-- Location: IOOBUF_X89_Y13_N22
\Bout_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SUB4|SUB3|Bout~0_combout\,
	devoe => ww_devoe,
	o => ww_Bout_out);

-- Location: IOIBUF_X89_Y21_N4
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X89_Y20_N78
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X89_Y20_N61
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X89_Y21_N38
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X89_Y20_N44
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X89_Y25_N21
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X88_Y16_N30
\SUB4|SUB2|Bout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SUB4|SUB2|Bout~0_combout\ = ( \SW[4]~input_o\ & ( \SW[1]~input_o\ & ( (!\SW[6]~input_o\ & ((!\SW[5]~input_o\) # (\SW[2]~input_o\))) # (\SW[6]~input_o\ & (!\SW[5]~input_o\ & \SW[2]~input_o\)) ) ) ) # ( !\SW[4]~input_o\ & ( \SW[1]~input_o\ & ( 
-- (!\SW[6]~input_o\ & (((!\SW[5]~input_o\) # (\SW[2]~input_o\)) # (\SW[0]~input_o\))) # (\SW[6]~input_o\ & (\SW[2]~input_o\ & ((!\SW[5]~input_o\) # (\SW[0]~input_o\)))) ) ) ) # ( \SW[4]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[6]~input_o\ & \SW[2]~input_o\) 
-- ) ) ) # ( !\SW[4]~input_o\ & ( !\SW[1]~input_o\ & ( (!\SW[6]~input_o\ & (((\SW[0]~input_o\ & !\SW[5]~input_o\)) # (\SW[2]~input_o\))) # (\SW[6]~input_o\ & (\SW[0]~input_o\ & (!\SW[5]~input_o\ & \SW[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011011100000000001100110011000100111111011100000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \SUB4|SUB2|Bout~0_combout\);

-- Location: IOIBUF_X89_Y25_N38
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X89_Y25_N55
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X88_Y16_N6
\SUB4|SUB3|Bout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SUB4|SUB3|Bout~0_combout\ = ( \SW[3]~input_o\ & ( (!\SUB4|SUB2|Bout~0_combout\ & \SW[7]~input_o\) ) ) # ( !\SW[3]~input_o\ & ( (!\SUB4|SUB2|Bout~0_combout\) # (\SW[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SUB4|SUB2|ALT_INV_Bout~0_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \SUB4|SUB3|Bout~0_combout\);

-- Location: LABCELL_X88_Y16_N15
\SUB4|SUB0|FA|p\ : cyclonev_lcell_comb
-- Equation(s):
-- \SUB4|SUB0|FA|p~combout\ = ( !\SW[4]~input_o\ & ( \SW[0]~input_o\ ) ) # ( \SW[4]~input_o\ & ( !\SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \SUB4|SUB0|FA|p~combout\);

-- Location: LABCELL_X88_Y16_N0
\SUB4|SUB2|FA|Sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \SUB4|SUB2|FA|Sum~combout\ = ( \SW[4]~input_o\ & ( \SW[1]~input_o\ & ( !\SW[6]~input_o\ $ (!\SW[5]~input_o\ $ (\SW[2]~input_o\)) ) ) ) # ( !\SW[4]~input_o\ & ( \SW[1]~input_o\ & ( !\SW[6]~input_o\ $ (!\SW[2]~input_o\ $ (((!\SW[0]~input_o\ & 
-- \SW[5]~input_o\)))) ) ) ) # ( \SW[4]~input_o\ & ( !\SW[1]~input_o\ & ( !\SW[6]~input_o\ $ (\SW[2]~input_o\) ) ) ) # ( !\SW[4]~input_o\ & ( !\SW[1]~input_o\ & ( !\SW[6]~input_o\ $ (!\SW[2]~input_o\ $ (((!\SW[0]~input_o\) # (\SW[5]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110001100011110011000011001100111001110001100011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \SUB4|SUB2|FA|Sum~combout\);

-- Location: LABCELL_X88_Y16_N18
\SUB4|SUB1|FA|Sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \SUB4|SUB1|FA|Sum~combout\ = ( \SW[4]~input_o\ & ( \SW[1]~input_o\ & ( \SW[5]~input_o\ ) ) ) # ( !\SW[4]~input_o\ & ( \SW[1]~input_o\ & ( !\SW[0]~input_o\ $ (!\SW[5]~input_o\) ) ) ) # ( \SW[4]~input_o\ & ( !\SW[1]~input_o\ & ( !\SW[5]~input_o\ ) ) ) # ( 
-- !\SW[4]~input_o\ & ( !\SW[1]~input_o\ & ( !\SW[0]~input_o\ $ (\SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101111100001111000001011010010110100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \SUB4|SUB1|FA|Sum~combout\);

-- Location: LABCELL_X88_Y16_N42
\DISP|Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP|Add0~2_combout\ = ( \SW[7]~input_o\ & ( \SW[3]~input_o\ & ( (\SUB4|SUB2|FA|Sum~combout\ & (!\SUB4|SUB0|FA|p~combout\ & (\SUB4|SUB1|FA|Sum~combout\ & \SUB4|SUB2|Bout~0_combout\))) ) ) ) # ( !\SW[7]~input_o\ & ( \SW[3]~input_o\ & ( 
-- !\SUB4|SUB2|Bout~0_combout\ $ (((!\SUB4|SUB2|FA|Sum~combout\) # ((!\SUB4|SUB1|FA|Sum~combout\) # (\SUB4|SUB0|FA|p~combout\)))) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[3]~input_o\ & ( !\SUB4|SUB2|Bout~0_combout\ ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[3]~input_o\ & 
-- ( (\SUB4|SUB2|FA|Sum~combout\ & (!\SUB4|SUB0|FA|p~combout\ & (\SUB4|SUB1|FA|Sum~combout\ & \SUB4|SUB2|Bout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100111111110000000000000100111110110000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SUB4|SUB2|FA|ALT_INV_Sum~combout\,
	datab => \SUB4|SUB0|FA|ALT_INV_p~combout\,
	datac => \SUB4|SUB1|FA|ALT_INV_Sum~combout\,
	datad => \SUB4|SUB2|ALT_INV_Bout~0_combout\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \DISP|Add0~2_combout\);

-- Location: LABCELL_X88_Y16_N36
\DISP|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP|Add0~1_combout\ = ( \SW[7]~input_o\ & ( \SW[3]~input_o\ & ( !\SUB4|SUB2|FA|Sum~combout\ $ (((!\SUB4|SUB2|Bout~0_combout\) # ((!\SUB4|SUB0|FA|p~combout\ & \SUB4|SUB1|FA|Sum~combout\)))) ) ) ) # ( !\SW[7]~input_o\ & ( \SW[3]~input_o\ & ( 
-- !\SUB4|SUB2|FA|Sum~combout\ $ (((!\SUB4|SUB0|FA|p~combout\ & \SUB4|SUB1|FA|Sum~combout\))) ) ) ) # ( \SW[7]~input_o\ & ( !\SW[3]~input_o\ & ( \SUB4|SUB2|FA|Sum~combout\ ) ) ) # ( !\SW[7]~input_o\ & ( !\SW[3]~input_o\ & ( !\SUB4|SUB2|FA|Sum~combout\ $ 
-- (((!\SUB4|SUB2|Bout~0_combout\) # ((!\SUB4|SUB0|FA|p~combout\ & \SUB4|SUB1|FA|Sum~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100110010101010101010110100110101001100101010110100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SUB4|SUB2|FA|ALT_INV_Sum~combout\,
	datab => \SUB4|SUB0|FA|ALT_INV_p~combout\,
	datac => \SUB4|SUB1|FA|ALT_INV_Sum~combout\,
	datad => \SUB4|SUB2|ALT_INV_Bout~0_combout\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \DISP|Add0~1_combout\);

-- Location: LABCELL_X88_Y16_N24
\DISP|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP|Add0~0_combout\ = ( \SW[3]~input_o\ & ( !\SUB4|SUB1|FA|Sum~combout\ $ (((!\SUB4|SUB0|FA|p~combout\) # ((\SW[7]~input_o\ & !\SUB4|SUB2|Bout~0_combout\)))) ) ) # ( !\SW[3]~input_o\ & ( !\SUB4|SUB1|FA|Sum~combout\ $ ((((!\SUB4|SUB0|FA|p~combout\) # 
-- (!\SUB4|SUB2|Bout~0_combout\)) # (\SW[7]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101101000011110010110100101101001111000010110100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \SUB4|SUB0|FA|ALT_INV_p~combout\,
	datac => \SUB4|SUB1|FA|ALT_INV_Sum~combout\,
	datad => \SUB4|SUB2|ALT_INV_Bout~0_combout\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \DISP|Add0~0_combout\);

-- Location: MLABCELL_X59_Y2_N30
\DISP|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP|Mux6~0_combout\ = ( \DISP|Add0~0_combout\ & ( (!\SUB4|SUB0|FA|p~combout\ & (!\DISP|Add0~2_combout\ & !\DISP|Add0~1_combout\)) # (\SUB4|SUB0|FA|p~combout\ & (!\DISP|Add0~2_combout\ $ (!\DISP|Add0~1_combout\))) ) ) # ( !\DISP|Add0~0_combout\ & ( 
-- (\SUB4|SUB0|FA|p~combout\ & (\DISP|Add0~2_combout\ & \DISP|Add0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000110010100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SUB4|SUB0|FA|ALT_INV_p~combout\,
	datab => \DISP|ALT_INV_Add0~2_combout\,
	datac => \DISP|ALT_INV_Add0~1_combout\,
	dataf => \DISP|ALT_INV_Add0~0_combout\,
	combout => \DISP|Mux6~0_combout\);

-- Location: MLABCELL_X59_Y2_N9
\DISP|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP|Mux5~0_combout\ = ( \SUB4|SUB0|FA|p~combout\ & ( \DISP|Add0~2_combout\ & ( !\DISP|Add0~0_combout\ ) ) ) # ( !\SUB4|SUB0|FA|p~combout\ & ( \DISP|Add0~2_combout\ & ( !\DISP|Add0~1_combout\ ) ) ) # ( \SUB4|SUB0|FA|p~combout\ & ( !\DISP|Add0~2_combout\ 
-- & ( (!\DISP|Add0~1_combout\ & \DISP|Add0~0_combout\) ) ) ) # ( !\SUB4|SUB0|FA|p~combout\ & ( !\DISP|Add0~2_combout\ & ( (!\DISP|Add0~1_combout\ & !\DISP|Add0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000001010101010101010101010101111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISP|ALT_INV_Add0~1_combout\,
	datad => \DISP|ALT_INV_Add0~0_combout\,
	datae => \SUB4|SUB0|FA|ALT_INV_p~combout\,
	dataf => \DISP|ALT_INV_Add0~2_combout\,
	combout => \DISP|Mux5~0_combout\);

-- Location: MLABCELL_X59_Y2_N12
\DISP|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP|Mux4~0_combout\ = ( \DISP|Add0~0_combout\ & ( (!\SUB4|SUB0|FA|p~combout\ & (\DISP|Add0~2_combout\ & !\DISP|Add0~1_combout\)) ) ) # ( !\DISP|Add0~0_combout\ & ( (!\DISP|Add0~2_combout\ & (!\SUB4|SUB0|FA|p~combout\ & \DISP|Add0~1_combout\)) # 
-- (\DISP|Add0~2_combout\ & ((!\DISP|Add0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000111000001110000011100000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SUB4|SUB0|FA|ALT_INV_p~combout\,
	datab => \DISP|ALT_INV_Add0~2_combout\,
	datac => \DISP|ALT_INV_Add0~1_combout\,
	dataf => \DISP|ALT_INV_Add0~0_combout\,
	combout => \DISP|Mux4~0_combout\);

-- Location: MLABCELL_X59_Y2_N21
\DISP|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP|Mux3~0_combout\ = ( \SUB4|SUB0|FA|p~combout\ & ( \DISP|Add0~2_combout\ & ( (!\DISP|Add0~1_combout\ & !\DISP|Add0~0_combout\) ) ) ) # ( !\SUB4|SUB0|FA|p~combout\ & ( \DISP|Add0~2_combout\ & ( (\DISP|Add0~1_combout\ & !\DISP|Add0~0_combout\) ) ) ) # ( 
-- \SUB4|SUB0|FA|p~combout\ & ( !\DISP|Add0~2_combout\ & ( !\DISP|Add0~1_combout\ $ (\DISP|Add0~0_combout\) ) ) ) # ( !\SUB4|SUB0|FA|p~combout\ & ( !\DISP|Add0~2_combout\ & ( (!\DISP|Add0~1_combout\ & \DISP|Add0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010101010100101010101010101000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISP|ALT_INV_Add0~1_combout\,
	datad => \DISP|ALT_INV_Add0~0_combout\,
	datae => \SUB4|SUB0|FA|ALT_INV_p~combout\,
	dataf => \DISP|ALT_INV_Add0~2_combout\,
	combout => \DISP|Mux3~0_combout\);

-- Location: MLABCELL_X59_Y2_N24
\DISP|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP|Mux2~0_combout\ = ( \DISP|Add0~0_combout\ & ( (!\DISP|Add0~1_combout\ & ((!\DISP|Add0~2_combout\))) # (\DISP|Add0~1_combout\ & (\SUB4|SUB0|FA|p~combout\)) ) ) # ( !\DISP|Add0~0_combout\ & ( (\SUB4|SUB0|FA|p~combout\ & !\DISP|Add0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010011000101110001011100010111000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SUB4|SUB0|FA|ALT_INV_p~combout\,
	datab => \DISP|ALT_INV_Add0~2_combout\,
	datac => \DISP|ALT_INV_Add0~1_combout\,
	dataf => \DISP|ALT_INV_Add0~0_combout\,
	combout => \DISP|Mux2~0_combout\);

-- Location: MLABCELL_X59_Y2_N3
\DISP|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP|Mux1~0_combout\ = ( \SUB4|SUB0|FA|p~combout\ & ( \DISP|Add0~2_combout\ & ( (!\DISP|Add0~1_combout\ & \DISP|Add0~0_combout\) ) ) ) # ( \SUB4|SUB0|FA|p~combout\ & ( !\DISP|Add0~2_combout\ & ( (!\DISP|Add0~0_combout\) # (\DISP|Add0~1_combout\) ) ) ) # 
-- ( !\SUB4|SUB0|FA|p~combout\ & ( !\DISP|Add0~2_combout\ & ( (\DISP|Add0~1_combout\ & !\DISP|Add0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000111111110101010100000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DISP|ALT_INV_Add0~1_combout\,
	datad => \DISP|ALT_INV_Add0~0_combout\,
	datae => \SUB4|SUB0|FA|ALT_INV_p~combout\,
	dataf => \DISP|ALT_INV_Add0~2_combout\,
	combout => \DISP|Mux1~0_combout\);

-- Location: MLABCELL_X59_Y2_N36
\DISP|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DISP|Mux0~0_combout\ = ( \DISP|Add0~0_combout\ & ( (!\DISP|Add0~2_combout\ & ((!\DISP|Add0~1_combout\))) # (\DISP|Add0~2_combout\ & ((\DISP|Add0~1_combout\) # (\SUB4|SUB0|FA|p~combout\))) ) ) # ( !\DISP|Add0~0_combout\ & ( (!\SUB4|SUB0|FA|p~combout\) # 
-- ((\DISP|Add0~1_combout\) # (\DISP|Add0~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111111101111111011111111010011110100111101001111010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SUB4|SUB0|FA|ALT_INV_p~combout\,
	datab => \DISP|ALT_INV_Add0~2_combout\,
	datac => \DISP|ALT_INV_Add0~1_combout\,
	dataf => \DISP|ALT_INV_Add0~0_combout\,
	combout => \DISP|Mux0~0_combout\);

-- Location: LABCELL_X88_Y16_N51
\SUB4|SUB3|FA|Sum\ : cyclonev_lcell_comb
-- Equation(s):
-- \SUB4|SUB3|FA|Sum~combout\ = ( \SW[3]~input_o\ & ( !\SW[7]~input_o\ $ (!\SUB4|SUB2|Bout~0_combout\) ) ) # ( !\SW[3]~input_o\ & ( !\SW[7]~input_o\ $ (\SUB4|SUB2|Bout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \SUB4|SUB2|ALT_INV_Bout~0_combout\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \SUB4|SUB3|FA|Sum~combout\);

-- Location: IOIBUF_X89_Y20_N95
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X24_Y45_N0
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


