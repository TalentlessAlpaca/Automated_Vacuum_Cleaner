////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: i2c_master_bit_ctrl_sim.v
// /___/   /\     Timestamp: Wed Oct 21 14:32:46 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf i2c_controller_tst2.pcf -mhf -sdf_anno true -sdf_path netgen/par -insert_glbl false -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim i2c_controller_tst2.ncd i2c_controller_tst2_timesim.v 
// Device	: 6slx9csg324-3 (PRODUCTION 1.23 2013-03-26)
// Input file	: i2c_controller_tst2.ncd
// Output file	: C:\Users\Camilo\Documents\Xilinx_Workspace\I2C_2\netgen\par\i2c_controller_tst2_timesim.v
// # of Modules	: 4
// Design Name	: i2c_controller_tst2
// Module Name: i2c_master_bit_ctrl
// Xilinx        : C:\Xilinx\14.5\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module i2c_master_bit_ctrl (
  clk, rst, nReset, ena, din, scl_i, sda_i, cmd_ack, busy, al, dout, scl_o, scl_oen, sda_o, sda_oen, clk_cnt, cmd
);
  input clk;
  input rst;
  input nReset;
  input ena;
  input din;
  input scl_i;
  input sda_i;
  output cmd_ack;
  output busy;
  output al;
  output dout;
  output scl_o;
  output scl_oen;
  output sda_o;
  output sda_oen;
  input [15 : 0] clk_cnt;
  input [3 : 0] cmd;
  wire NlwRenamedSig_OI_busy;
  wire NlwRenamedSig_OI_al;
  wire NlwRenamedSig_OI_dout;
  wire NlwRenamedSig_OI_scl_oen;
  wire NlwRenamedSig_OI_sda_oen;
  wire clk_en_920;
  wire rst_al_OR_70_o;
  wire c_state_FSM_FFd13_922;
  wire c_state_FSM_FFd9_923;
  wire c_state_FSM_FFd5_924;
  wire c_state_FSM_FFd1_925;
  wire c_state_FSM_FFd16_0;
  wire c_state_FSM_FFd15_0;
  wire nReset_inv;
  wire \Result<0>_0 ;
  wire \Result<1>_0 ;
  wire \Result<2>_0 ;
  wire \Mcount_cnt_cy[3] ;
  wire \Result<3>_0 ;
  wire \Result<4>_0 ;
  wire \Result<5>_0 ;
  wire \Result<6>_0 ;
  wire \Mcount_cnt_cy[7] ;
  wire \Result<7>_0 ;
  wire \Result<8>_0 ;
  wire \Result<9>_0 ;
  wire \Result<10>_0 ;
  wire \Mcount_cnt_cy[11] ;
  wire \Result<11>_0 ;
  wire \Result<12>_0 ;
  wire \Result<13>_0 ;
  wire \Result<14>_0 ;
  wire \Result<15>_0 ;
  wire \GND_6_o_GND_6_o_sub_12_OUT<0>_0 ;
  wire \GND_6_o_GND_6_o_sub_12_OUT<1>_0 ;
  wire \GND_6_o_GND_6_o_sub_12_OUT<2>_0 ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_971 ;
  wire \GND_6_o_GND_6_o_sub_12_OUT<3>_0 ;
  wire \GND_6_o_GND_6_o_sub_12_OUT<4>_0 ;
  wire \GND_6_o_GND_6_o_sub_12_OUT<5>_0 ;
  wire \GND_6_o_GND_6_o_sub_12_OUT<6>_0 ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_980 ;
  wire \GND_6_o_GND_6_o_sub_12_OUT<7>_0 ;
  wire \GND_6_o_GND_6_o_sub_12_OUT<8>_0 ;
  wire \GND_6_o_GND_6_o_sub_12_OUT<9>_0 ;
  wire \GND_6_o_GND_6_o_sub_12_OUT<10>_0 ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_989 ;
  wire \GND_6_o_GND_6_o_sub_12_OUT<11>_0 ;
  wire \GND_6_o_GND_6_o_sub_12_OUT<12>_0 ;
  wire \GND_6_o_GND_6_o_sub_12_OUT<13>_0 ;
  wire c_state_FSM_FFd10_996;
  wire c_state_FSM_FFd11_997;
  wire c_state_FSM_FFd12_998;
  wire N01;
  wire c_state_FSM_FFd14_1000;
  wire c_state_FSM_FFd17_1001;
  wire n0025;
  wire c_state_FSM_FFd2_1003;
  wire c_state_FSM_FFd3_1004;
  wire c_state_FSM_FFd4_1005;
  wire N2;
  wire c_state_FSM_FFd6_1007;
  wire c_state_FSM_FFd7_1008;
  wire c_state_FSM_FFd8_1009;
  wire sSCL_1010;
  wire dSCL_0;
  wire sSDA_1012;
  wire N10;
  wire rst_scl_sync_OR_29_o1_1014;
  wire _n0201_inv_0;
  wire rst_scl_sync_OR_29_o4_1016;
  wire rst_scl_sync_OR_29_o3_1017;
  wire rst_scl_sync_OR_29_o2_1018;
  wire N38;
  wire slave_wait_1020;
  wire dscl_oen_1021;
  wire Mmux_sda_oen_PWR_4_o_MUX_92_o1;
  wire c_state_FSM_FFd18_1023;
  wire \sda_chk_c_state[17]_OR_69_o11_1024 ;
  wire N8;
  wire _n0207_inv;
  wire Mmux_sda_chk_GND_6_o_MUX_66_o12_0;
  wire Mmux_sda_chk_GND_6_o_MUX_66_o13_1028;
  wire out;
  wire out1_1030;
  wire cmd_stop_1031;
  wire dSDA_1032;
  wire Mmux_sda_oen_PWR_4_o_MUX_92_o11_1037;
  wire N42;
  wire N6_0;
  wire \c_state_FSM_FFd18-In2_1040 ;
  wire \c_state_FSM_FFd18-In1_1041 ;
  wire Mmux_sda_chk_GND_6_o_MUX_66_o11_0;
  wire Mmux_sda_chk_GND_6_o_MUX_66_o1;
  wire sto_condition_0;
  wire sta_condition_1045;
  wire N56;
  wire N46_0;
  wire N44;
  wire \cSCL<0>_0 ;
  wire N48_0;
  wire N52_0;
  wire N50;
  wire \cSDA<0>_0 ;
  wire N54_0;
  wire \c_state_FSM_FFd16-In ;
  wire c_state_FSM_FFd16_200;
  wire \c_state_FSM_FFd10-In ;
  wire \c_state_FSM_FFd9-In ;
  wire \c_state_FSM_FFd12-In_236 ;
  wire \c_state_FSM_FFd11-In ;
  wire \c_state_FSM_FFd1-In ;
  wire \c_state_FSM_FFd3-In ;
  wire \c_state_FSM_FFd2-In ;
  wire \c_state_FSM_FFd4-In_169 ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<12> ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<13> ;
  wire cmd_stop_rstpot_441;
  wire scl_oen_slave_wait_OR_11_o;
  wire sda_oen_PWR_4_o_MUX_92_o;
  wire Mmux_sda_chk_GND_6_o_MUX_66_o12_273;
  wire GND_6_o_GND_6_o_MUX_90_o;
  wire c_state_FSM_FFd15_260;
  wire \c_state_FSM_FFd15-In ;
  wire scl_oen_PWR_4_o_MUX_91_o;
  wire \c_state_FSM_FFd18-In ;
  wire sda_chk_GND_6_o_MUX_66_o;
  wire sSDA_GND_6_o_MUX_62_o;
  wire sSDA_GND_6_o_MUX_61_o;
  wire sta_condition_GND_6_o_MUX_63_o;
  wire sto_condition_406;
  wire Mmux_sda_chk_GND_6_o_MUX_66_o11_403;
  wire \c_state_FSM_FFd5-In ;
  wire \c_state_FSM_FFd7-In ;
  wire \c_state_FSM_FFd6-In ;
  wire \c_state_FSM_FFd8-In_324 ;
  wire \c_state_FSM_FFd17-In_372 ;
  wire N6;
  wire \c_state_FSM_FFd14-In ;
  wire \c_state_FSM_FFd13-In ;
  wire fSCL_1_rstpot_484;
  wire fSCL_0_rstpot_471;
  wire N46;
  wire \cSCL[0]_GND_6_o_mux_6_OUT<0> ;
  wire \cSCL[0]_GND_6_o_mux_6_OUT<1> ;
  wire fSDA_2_rstpot_788;
  wire N54;
  wire \fSDA[2]_PWR_4_o_MUX_58_o ;
  wire \cnt<0>_rt_2 ;
  wire \i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/ProtoComp5.CYINITVCC.1 ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<8> ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<10> ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<9> ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<11> ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<4> ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<6> ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<5> ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<7> ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<1> ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<2> ;
  wire \filter_cnt<0>_rt_87 ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/ProtoComp5.CYINITVCC.1_86 ;
  wire \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<3> ;
  wire cnt_5_rstpot_528;
  wire cnt_4_rstpot_526;
  wire cnt_3_rstpot_525;
  wire cnt_6_rstpot_512;
  wire dout_rstpot_589;
  wire cnt_9_rstpot_618;
  wire cnt_8_rstpot_616;
  wire cnt_7_rstpot_615;
  wire cnt_10_rstpot_602;
  wire cnt_13_rstpot_692;
  wire cnt_12_rstpot_690;
  wire cnt_11_rstpot_689;
  wire cnt_14_rstpot_676;
  wire cnt_15_rstpot_578;
  wire rst_scl_sync_OR_29_o;
  wire _n0201_inv;
  wire sSCL_PWR_4_o_MUX_59_o;
  wire sSDA_PWR_4_o_MUX_60_o;
  wire dSCL_555;
  wire cnt_0_rstpot_659;
  wire cnt_1_rstpot_643;
  wire cnt_2_rstpot_636;
  wire fSCL_2_rstpot_500;
  wire \fSCL[2]_PWR_4_o_MUX_57_o ;
  wire N48;
  wire fSDA_1_rstpot_734;
  wire fSDA_0_rstpot_721;
  wire N52;
  wire \cSDA[0]_GND_6_o_mux_7_OUT<0> ;
  wire \cSDA[0]_GND_6_o_mux_7_OUT<1> ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd16/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd12/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd11/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd10/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd9/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd4/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd3/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cmd_stop/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/slave_wait/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/sda_oen/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd15/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cmd_ack/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/scl_oen/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd18/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/busy/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/sta_condition/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/sto_condition/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/al/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd8/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd7/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd6/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd5/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd17/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd14/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd13/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/dscl_oen/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/dscl_oen/IN ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cSCL_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cSCL_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_13/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_12/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_11/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/sSDA/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_6/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_5/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_4/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_3/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_10/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_9/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_8/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_7/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_6/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_5/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_4/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_3/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/dout/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_10/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_9/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_8/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_7/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_14/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_13/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_12/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_11/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/dSDA/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/dSCL/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/clk_en/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_15/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/sSCL/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cSDA_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cSDA_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_1/CLK ;
  wire VCC;
  wire GND;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[0]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[1]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[2]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[3]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_DI[1]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_DI[2]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_DI[3]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_O[2]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_O[3]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_S[2]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_S[3]_UNCONNECTED ;
  wire \NLW_N0_14.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_19.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_18.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_17.B5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/i2c_scl_o_2.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_23.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_22.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_21.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_20.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_27.D5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_26.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_25.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_24.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_13.D5LUT_O_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_12.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_11.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_10.A5LUT_O_UNCONNECTED ;
  wire \NLW_Mcount_cnt_xor<15>_CO[0]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_xor<15>_CO[1]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_xor<15>_CO[2]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_xor<15>_CO[3]_UNCONNECTED ;
  wire \NLW_Mcount_cnt_xor<15>_DI[3]_UNCONNECTED ;
  wire \NLW_N0_30.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_29.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_28.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_9.D5LUT_O_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_8.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_7.B5LUT_O_UNCONNECTED ;
  wire \NLW_N0_6.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_5.D5LUT_O_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_N0_4.C5LUT_O_UNCONNECTED ;
  wire \NLW_N0_3.B5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/i2c_scl_o.A5LUT_O_UNCONNECTED ;
  wire [15 : 0] cnt;
  wire [13 : 0] filter_cnt;
  wire [2 : 0] fSDA;
  wire [2 : 0] fSCL;
  wire [1 : 0] cSCL;
  wire [1 : 0] cSDA;
  wire [13 : 0] GND_6_o_GND_6_o_sub_12_OUT;
  wire [13 : 0] GND_6_o_GND_6_o_mux_13_OUT;
  wire [15 : 0] Result;
  wire [15 : 1] Mcount_cnt_lut;
  assign
    busy = NlwRenamedSig_OI_busy,
    al = NlwRenamedSig_OI_al,
    dout = NlwRenamedSig_OI_dout,
    scl_oen = NlwRenamedSig_OI_scl_oen,
    sda_oen = NlwRenamedSig_OI_sda_oen;
  initial $sdf_annotate("netgen/par/i2c_master_bit_ctrl_sim.sdf");
  X_BUF 
  \i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o1/i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o1_CMUX_Delay  (
    .I(c_state_FSM_FFd16_200),
    .O(c_state_FSM_FFd16_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y15" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  Mmux_sda_oen_PWR_4_o_MUX_92_o11 (
    .ADR5(c_state_FSM_FFd6_1007),
    .ADR1(c_state_FSM_FFd5_924),
    .ADR3(c_state_FSM_FFd8_1009),
    .ADR4(c_state_FSM_FFd7_1008),
    .ADR2(c_state_FSM_FFd16_0),
    .ADR0(c_state_FSM_FFd9_923),
    .O(Mmux_sda_oen_PWR_4_o_MUX_92_o1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y15" ),
    .INIT ( 64'hFFFFFAFAFFFFFAFA ))
  _n0207_inv1 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(rst),
    .ADR0(NlwRenamedSig_OI_al),
    .ADR4(clk_en_920),
    .ADR5(1'b1),
    .O(_n0207_inv)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y15" ),
    .INIT ( 32'h05000404 ))
  \c_state_FSM_FFd16-In1  (
    .ADR3(c_state_FSM_FFd17_1001),
    .ADR1(c_state_FSM_FFd16_0),
    .ADR2(rst),
    .ADR0(NlwRenamedSig_OI_al),
    .ADR4(clk_en_920),
    .O(\c_state_FSM_FFd16-In )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y15" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd16 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd16/CLK ),
    .I(\c_state_FSM_FFd16-In ),
    .O(c_state_FSM_FFd16_200),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y15" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFA ))
  \sda_chk_c_state[17]_OR_69_o11_SW0  (
    .ADR1(1'b1),
    .ADR4(c_state_FSM_FFd6_1007),
    .ADR0(c_state_FSM_FFd7_1008),
    .ADR3(c_state_FSM_FFd9_923),
    .ADR2(c_state_FSM_FFd15_0),
    .ADR5(c_state_FSM_FFd16_0),
    .O(N8)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y15" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \sda_chk_c_state[17]_OR_69_o11  (
    .ADR1(c_state_FSM_FFd3_1004),
    .ADR3(c_state_FSM_FFd10_996),
    .ADR2(c_state_FSM_FFd11_997),
    .ADR5(c_state_FSM_FFd14_1000),
    .ADR0(c_state_FSM_FFd2_1003),
    .ADR4(N8),
    .O(\sda_chk_c_state[17]_OR_69_o11_1024 )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y16" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd12 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd12/CLK ),
    .I(\c_state_FSM_FFd12-In_236 ),
    .O(c_state_FSM_FFd12_998),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y16" ),
    .INIT ( 64'h000000000011F0F0 ))
  \c_state_FSM_FFd12-In  (
    .ADR1(cmd[2]),
    .ADR0(cmd[3]),
    .ADR4(clk_en_920),
    .ADR2(c_state_FSM_FFd12_998),
    .ADR3(N01),
    .ADR5(rst_al_OR_70_o),
    .O(\c_state_FSM_FFd12-In_236 )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y16" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd11 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd11/CLK ),
    .I(\c_state_FSM_FFd11-In ),
    .O(c_state_FSM_FFd11_997),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y16" ),
    .INIT ( 64'h0044005000440050 ))
  \c_state_FSM_FFd11-In1  (
    .ADR5(1'b1),
    .ADR3(rst),
    .ADR0(NlwRenamedSig_OI_al),
    .ADR2(c_state_FSM_FFd11_997),
    .ADR4(clk_en_920),
    .ADR1(c_state_FSM_FFd12_998),
    .O(\c_state_FSM_FFd11-In )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y16" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd10 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd10/CLK ),
    .I(\c_state_FSM_FFd10-In ),
    .O(c_state_FSM_FFd10_996),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y16" ),
    .INIT ( 64'h000000CC000000F0 ))
  \c_state_FSM_FFd10-In1  (
    .ADR0(1'b1),
    .ADR3(rst),
    .ADR4(NlwRenamedSig_OI_al),
    .ADR2(c_state_FSM_FFd10_996),
    .ADR5(clk_en_920),
    .ADR1(c_state_FSM_FFd11_997),
    .O(\c_state_FSM_FFd10-In )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y16" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd9 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd9/CLK ),
    .I(\c_state_FSM_FFd9-In ),
    .O(c_state_FSM_FFd9_923),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y16" ),
    .INIT ( 64'h0000223300002200 ))
  \c_state_FSM_FFd9-In1  (
    .ADR2(1'b1),
    .ADR4(rst),
    .ADR1(NlwRenamedSig_OI_al),
    .ADR5(c_state_FSM_FFd9_923),
    .ADR3(clk_en_920),
    .ADR0(c_state_FSM_FFd10_996),
    .O(\c_state_FSM_FFd9-In )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y14" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd4/CLK ),
    .I(\c_state_FSM_FFd4-In_169 ),
    .O(c_state_FSM_FFd4_1005),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y14" ),
    .INIT ( 64'h0000000033007340 ))
  \c_state_FSM_FFd4-In  (
    .ADR4(cmd[3]),
    .ADR2(cmd[2]),
    .ADR1(clk_en_920),
    .ADR3(c_state_FSM_FFd4_1005),
    .ADR0(N2),
    .ADR5(rst_al_OR_70_o),
    .O(\c_state_FSM_FFd4-In_169 )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y14" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd3/CLK ),
    .I(\c_state_FSM_FFd3-In ),
    .O(c_state_FSM_FFd3_1004),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y14" ),
    .INIT ( 64'h000C000A000C000A ))
  \c_state_FSM_FFd3-In1  (
    .ADR5(1'b1),
    .ADR3(rst),
    .ADR2(NlwRenamedSig_OI_al),
    .ADR0(c_state_FSM_FFd3_1004),
    .ADR4(clk_en_920),
    .ADR1(c_state_FSM_FFd4_1005),
    .O(\c_state_FSM_FFd3-In )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y14" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd2/CLK ),
    .I(\c_state_FSM_FFd2-In ),
    .O(c_state_FSM_FFd2_1003),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y14" ),
    .INIT ( 64'h0033002200110000 ))
  \c_state_FSM_FFd2-In1  (
    .ADR2(1'b1),
    .ADR3(rst),
    .ADR1(NlwRenamedSig_OI_al),
    .ADR4(c_state_FSM_FFd2_1003),
    .ADR0(clk_en_920),
    .ADR5(c_state_FSM_FFd3_1004),
    .O(\c_state_FSM_FFd2-In )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y14" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd1/CLK ),
    .I(\c_state_FSM_FFd1-In ),
    .O(c_state_FSM_FFd1_925),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y14" ),
    .INIT ( 64'h00000D0D00000808 ))
  \c_state_FSM_FFd1-In1  (
    .ADR3(1'b1),
    .ADR4(rst),
    .ADR2(NlwRenamedSig_OI_al),
    .ADR5(c_state_FSM_FFd1_925),
    .ADR0(clk_en_920),
    .ADR1(c_state_FSM_FFd2_1003),
    .O(\c_state_FSM_FFd1-In )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<13>/i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<13>_BMUX_Delay  (
    .I(GND_6_o_GND_6_o_sub_12_OUT[13]),
    .O(\GND_6_o_GND_6_o_sub_12_OUT<13>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<13>/i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<13>_AMUX_Delay  (
    .I(GND_6_o_GND_6_o_sub_12_OUT[12]),
    .O(\GND_6_o_GND_6_o_sub_12_OUT<12>_0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y8" ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>  (
    .CI(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_989 ),
    .CYINIT(1'b0),
    .CO({\NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[3]_UNCONNECTED , \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[2]_UNCONNECTED 
, \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[1]_UNCONNECTED , \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_DI[3]_UNCONNECTED , \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_DI[2]_UNCONNECTED 
, \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_DI[1]_UNCONNECTED , 1'b1}),
    .O({\NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_O[3]_UNCONNECTED , \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_O[2]_UNCONNECTED , 
GND_6_o_GND_6_o_sub_12_OUT[13], GND_6_o_GND_6_o_sub_12_OUT[12]}),
    .S({\NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_S[3]_UNCONNECTED , \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_S[2]_UNCONNECTED , 
\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<13> , \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<12> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y8" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<13>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(filter_cnt[13]),
    .O(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<13> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y8" ),
    .INIT ( 64'h3333333333333333 ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<12>_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(filter_cnt[12]),
    .ADR5(1'b1),
    .O(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<12> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y8" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_14.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_14.A5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y17" ),
    .INIT ( 64'hFFFFF0F0FFFFF0F0 ))
  cmd_stop_rstpot_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(cmd[2]),
    .ADR4(cmd[3]),
    .O(N56)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y17" ),
    .INIT ( 1'b0 ))
  cmd_stop (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cmd_stop/CLK ),
    .I(cmd_stop_rstpot_441),
    .O(cmd_stop_1031),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y17" ),
    .INIT ( 64'h0030003000740030 ))
  cmd_stop_rstpot (
    .ADR3(rst),
    .ADR4(cmd[1]),
    .ADR1(clk_en_920),
    .ADR2(cmd_stop_1031),
    .ADR0(cmd[0]),
    .ADR5(N56),
    .O(cmd_stop_rstpot_441)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y11" ),
    .INIT ( 1'b0 ))
  slave_wait (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/slave_wait/CLK ),
    .I(scl_oen_slave_wait_OR_11_o),
    .O(slave_wait_1020),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y11" ),
    .INIT ( 64'h3333333303000300 ))
  scl_oen_slave_wait_OR_11_o1 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR1(sSCL_1010),
    .ADR5(slave_wait_1020),
    .ADR3(NlwRenamedSig_OI_scl_oen),
    .ADR2(dscl_oen_1021),
    .O(scl_oen_slave_wait_OR_11_o)
  );
  X_BUF   \i2c_sda_oe/i2c_sda_oe_DMUX_Delay  (
    .I(Mmux_sda_chk_GND_6_o_MUX_66_o12_273),
    .O(Mmux_sda_chk_GND_6_o_MUX_66_o12_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y14" ),
    .INIT ( 64'hFF00FE00FF00FE00 ))
  Mmux_sda_oen_PWR_4_o_MUX_92_o12 (
    .ADR3(din),
    .ADR1(c_state_FSM_FFd2_1003),
    .ADR2(c_state_FSM_FFd1_925),
    .ADR0(c_state_FSM_FFd4_1005),
    .ADR4(c_state_FSM_FFd3_1004),
    .ADR5(1'b1),
    .O(Mmux_sda_oen_PWR_4_o_MUX_92_o11_1037)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y14" ),
    .INIT ( 32'hFAFAFAFA ))
  Mmux_sda_chk_GND_6_o_MUX_66_o13 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(c_state_FSM_FFd1_925),
    .ADR0(c_state_FSM_FFd4_1005),
    .ADR4(1'b1),
    .O(Mmux_sda_chk_GND_6_o_MUX_66_o12_273)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y14" ),
    .INIT ( 1'b1 ))
  sda_oen_113 (
    .CE(_n0207_inv),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/sda_oen/CLK ),
    .I(sda_oen_PWR_4_o_MUX_92_o),
    .O(NlwRenamedSig_OI_sda_oen),
    .SET(nReset_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y14" ),
    .INIT ( 64'hFFFFFFFFFFFFFEFA ))
  Mmux_sda_oen_PWR_4_o_MUX_92_o13 (
    .ADR2(Mmux_sda_oen_PWR_4_o_MUX_92_o1),
    .ADR5(rst_al_OR_70_o),
    .ADR1(c_state_FSM_FFd18_1023),
    .ADR3(NlwRenamedSig_OI_sda_oen),
    .ADR4(c_state_FSM_FFd17_1001),
    .ADR0(Mmux_sda_oen_PWR_4_o_MUX_92_o11_1037),
    .O(sda_oen_PWR_4_o_MUX_92_o)
  );
  X_BUF   \i2c/byte_controller/core_ack/i2c/byte_controller/core_ack_BMUX_Delay  (
    .I(c_state_FSM_FFd15_260),
    .O(c_state_FSM_FFd15_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y17" ),
    .INIT ( 64'hFFFFF0F0FFFFF0F0 ))
  rst_al_OR_70_o1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(NlwRenamedSig_OI_al),
    .ADR4(rst),
    .ADR5(1'b1),
    .O(rst_al_OR_70_o)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X2Y17" ),
    .INIT ( 32'h00000C0A ))
  \c_state_FSM_FFd15-In1  (
    .ADR3(clk_en_920),
    .ADR1(c_state_FSM_FFd16_0),
    .ADR0(c_state_FSM_FFd15_0),
    .ADR2(NlwRenamedSig_OI_al),
    .ADR4(rst),
    .O(\c_state_FSM_FFd15-In )
  );
  X_FF #(
    .LOC ( "SLICE_X2Y17" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd15 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd15/CLK ),
    .I(\c_state_FSM_FFd15-In ),
    .O(c_state_FSM_FFd15_260),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X2Y17" ),
    .INIT ( 1'b0 ))
  cmd_ack_107 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cmd_ack/CLK ),
    .I(GND_6_o_GND_6_o_MUX_90_o),
    .O(cmd_ack),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X2Y17" ),
    .INIT ( 64'h0000FF000000FE00 ))
  Mmux_GND_6_o_GND_6_o_MUX_90_o11 (
    .ADR3(clk_en_920),
    .ADR4(rst_al_OR_70_o),
    .ADR1(c_state_FSM_FFd13_922),
    .ADR5(c_state_FSM_FFd9_923),
    .ADR0(c_state_FSM_FFd5_924),
    .ADR2(c_state_FSM_FFd1_925),
    .O(GND_6_o_GND_6_o_MUX_90_o)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y15" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \sda_chk_c_state[17]_OR_69_o11_SW1  (
    .ADR2(rst),
    .ADR1(c_state_FSM_FFd3_1004),
    .ADR0(c_state_FSM_FFd2_1003),
    .ADR3(c_state_FSM_FFd14_1000),
    .ADR5(c_state_FSM_FFd11_997),
    .ADR4(c_state_FSM_FFd10_996),
    .O(N42)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y15" ),
    .INIT ( 1'b1 ))
  scl_oen_119 (
    .CE(_n0207_inv),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/scl_oen/CLK ),
    .I(scl_oen_PWR_4_o_MUX_91_o),
    .O(NlwRenamedSig_OI_scl_oen),
    .SET(nReset_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y15" ),
    .INIT ( 64'hFFFFFFFFFFFEFAFA ))
  Mmux_scl_oen_PWR_4_o_MUX_91_o11 (
    .ADR3(c_state_FSM_FFd18_1023),
    .ADR1(c_state_FSM_FFd17_1001),
    .ADR0(N8),
    .ADR4(NlwRenamedSig_OI_scl_oen),
    .ADR2(NlwRenamedSig_OI_al),
    .ADR5(N42),
    .O(scl_oen_PWR_4_o_MUX_91_o)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y15" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFC ))
  Mmux_sda_chk_GND_6_o_MUX_66_o14 (
    .ADR0(1'b1),
    .ADR4(c_state_FSM_FFd8_1009),
    .ADR1(c_state_FSM_FFd5_924),
    .ADR3(c_state_FSM_FFd17_1001),
    .ADR5(c_state_FSM_FFd13_922),
    .ADR2(c_state_FSM_FFd12_998),
    .O(Mmux_sda_chk_GND_6_o_MUX_66_o13_1028)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y17" ),
    .INIT ( 64'hFFFF0000FEFE0000 ))
  \c_state_FSM_FFd18-In2  (
    .ADR3(1'b1),
    .ADR4(clk_en_920),
    .ADR5(c_state_FSM_FFd5_924),
    .ADR2(c_state_FSM_FFd1_925),
    .ADR0(c_state_FSM_FFd13_922),
    .ADR1(c_state_FSM_FFd9_923),
    .O(\c_state_FSM_FFd18-In2_1040 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y17" ),
    .INIT ( 64'hFFFFFFFFFF0FFF0F ))
  \c_state_FSM_FFd4-In_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(cmd[1]),
    .ADR5(cmd[0]),
    .ADR2(c_state_FSM_FFd18_1023),
    .O(N2)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y17" ),
    .INIT ( 64'hCCCCC8CCC8CC84CC ))
  \c_state_FSM_FFd18-In1  (
    .ADR1(c_state_FSM_FFd18_1023),
    .ADR4(cmd[1]),
    .ADR5(cmd[2]),
    .ADR0(cmd[3]),
    .ADR2(cmd[0]),
    .ADR3(clk_en_920),
    .O(\c_state_FSM_FFd18-In1_1041 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y17" ),
    .INIT ( 1'b1 ))
  c_state_FSM_FFd18 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd18/CLK ),
    .I(\c_state_FSM_FFd18-In ),
    .O(c_state_FSM_FFd18_1023),
    .SET(nReset_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y17" ),
    .INIT ( 64'hFFFFFFFFFFFFFFF0 ))
  \c_state_FSM_FFd18-In3  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(rst),
    .ADR3(NlwRenamedSig_OI_al),
    .ADR2(\c_state_FSM_FFd18-In2_1040 ),
    .ADR4(\c_state_FSM_FFd18-In1_1041 ),
    .O(\c_state_FSM_FFd18-In )
  );
  X_BUF   \i2c/i2c_busy/i2c/i2c_busy_DMUX_Delay  (
    .I(Mmux_sda_chk_GND_6_o_MUX_66_o11_403),
    .O(Mmux_sda_chk_GND_6_o_MUX_66_o11_0)
  );
  X_BUF   \i2c/i2c_busy/i2c/i2c_busy_CMUX_Delay  (
    .I(sto_condition_406),
    .O(sto_condition_0)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y14" ),
    .INIT ( 1'b0 ))
  busy_155 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/busy/CLK ),
    .I(sta_condition_GND_6_o_MUX_63_o),
    .O(NlwRenamedSig_OI_busy),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y14" ),
    .INIT ( 64'h000F000A000F000A ))
  Mmux_sta_condition_GND_6_o_MUX_63_o11 (
    .ADR1(1'b1),
    .ADR3(rst),
    .ADR2(sto_condition_0),
    .ADR4(NlwRenamedSig_OI_busy),
    .ADR0(sta_condition_1045),
    .ADR5(1'b1),
    .O(sta_condition_GND_6_o_MUX_63_o)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y14" ),
    .INIT ( 32'h30303030 ))
  Mmux_sda_chk_GND_6_o_MUX_66_o12 (
    .ADR1(cmd_stop_1031),
    .ADR0(1'b1),
    .ADR2(sto_condition_0),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(Mmux_sda_chk_GND_6_o_MUX_66_o11_403)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y14" ),
    .INIT ( 1'b0 ))
  sta_condition (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/sta_condition/CLK ),
    .I(sSDA_GND_6_o_MUX_61_o),
    .O(sta_condition_1045),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y14" ),
    .INIT ( 64'h0000008800000088 ))
  Mmux_sSDA_GND_6_o_MUX_61_o11 (
    .ADR2(1'b1),
    .ADR4(rst),
    .ADR1(dSDA_1032),
    .ADR0(sSCL_1010),
    .ADR3(sSDA_1012),
    .ADR5(1'b1),
    .O(sSDA_GND_6_o_MUX_61_o)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y14" ),
    .INIT ( 32'h00002200 ))
  Mmux_sSDA_GND_6_o_MUX_62_o11 (
    .ADR2(1'b1),
    .ADR4(rst),
    .ADR1(dSDA_1032),
    .ADR0(sSCL_1010),
    .ADR3(sSDA_1012),
    .O(sSDA_GND_6_o_MUX_62_o)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y14" ),
    .INIT ( 1'b0 ))
  sto_condition (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/sto_condition/CLK ),
    .I(sSDA_GND_6_o_MUX_62_o),
    .O(sto_condition_406),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y14" ),
    .INIT ( 64'h00FF000000000000 ))
  Mmux_sda_chk_GND_6_o_MUX_66_o11 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(c_state_FSM_FFd1_925),
    .ADR4(NlwRenamedSig_OI_sda_oen),
    .ADR3(sSDA_1012),
    .O(Mmux_sda_chk_GND_6_o_MUX_66_o1)
  );
  X_FF #(
    .LOC ( "SLICE_X5Y14" ),
    .INIT ( 1'b0 ))
  al_147 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/al/CLK ),
    .I(sda_chk_GND_6_o_MUX_66_o),
    .O(NlwRenamedSig_OI_al),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y14" ),
    .INIT ( 64'h00FF00F000FF00E0 ))
  Mmux_sda_chk_GND_6_o_MUX_66_o15 (
    .ADR3(rst),
    .ADR2(Mmux_sda_chk_GND_6_o_MUX_66_o11_0),
    .ADR1(Mmux_sda_chk_GND_6_o_MUX_66_o12_0),
    .ADR5(Mmux_sda_chk_GND_6_o_MUX_66_o13_1028),
    .ADR0(\sda_chk_c_state[17]_OR_69_o11_1024 ),
    .ADR4(Mmux_sda_chk_GND_6_o_MUX_66_o1),
    .O(sda_chk_GND_6_o_MUX_66_o)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y16" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd8 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd8/CLK ),
    .I(\c_state_FSM_FFd8-In_324 ),
    .O(c_state_FSM_FFd8_1009),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y16" ),
    .INIT ( 64'h0000555D00000008 ))
  \c_state_FSM_FFd8-In  (
    .ADR2(cmd[2]),
    .ADR1(cmd[3]),
    .ADR0(clk_en_920),
    .ADR5(c_state_FSM_FFd8_1009),
    .ADR3(N2),
    .ADR4(rst_al_OR_70_o),
    .O(\c_state_FSM_FFd8-In_324 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y16" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd7/CLK ),
    .I(\c_state_FSM_FFd7-In ),
    .O(c_state_FSM_FFd7_1008),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y16" ),
    .INIT ( 64'h0000223000002230 ))
  \c_state_FSM_FFd7-In1  (
    .ADR5(1'b1),
    .ADR4(rst),
    .ADR1(NlwRenamedSig_OI_al),
    .ADR2(c_state_FSM_FFd7_1008),
    .ADR3(clk_en_920),
    .ADR0(c_state_FSM_FFd8_1009),
    .O(\c_state_FSM_FFd7-In )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y16" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd6/CLK ),
    .I(\c_state_FSM_FFd6-In ),
    .O(c_state_FSM_FFd6_1007),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y16" ),
    .INIT ( 64'h000000000000BB88 ))
  \c_state_FSM_FFd6-In1  (
    .ADR2(1'b1),
    .ADR4(rst),
    .ADR5(NlwRenamedSig_OI_al),
    .ADR3(c_state_FSM_FFd6_1007),
    .ADR1(clk_en_920),
    .ADR0(c_state_FSM_FFd7_1008),
    .O(\c_state_FSM_FFd6-In )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y16" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd5/CLK ),
    .I(\c_state_FSM_FFd5-In ),
    .O(c_state_FSM_FFd5_924),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y16" ),
    .INIT ( 64'h000000BB00000088 ))
  \c_state_FSM_FFd5-In1  (
    .ADR2(1'b1),
    .ADR3(rst),
    .ADR4(NlwRenamedSig_OI_al),
    .ADR5(c_state_FSM_FFd5_924),
    .ADR1(clk_en_920),
    .ADR0(c_state_FSM_FFd6_1007),
    .O(\c_state_FSM_FFd5-In )
  );
  X_BUF   \i2c/byte_controller/bit_controller/c_state_FSM_FFd17/i2c/byte_controller/bit_controller/c_state_FSM_FFd17_DMUX_Delay  (
    .I(N6),
    .O(N6_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y17" ),
    .INIT ( 64'hFFFF5F5FFFFF5F5F ))
  \c_state_FSM_FFd12-In_SW0  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR4(cmd[0]),
    .ADR2(cmd[1]),
    .ADR0(c_state_FSM_FFd18_1023),
    .ADR5(1'b1),
    .O(N01)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X3Y17" ),
    .INIT ( 32'hF5F5FFFF ))
  \c_state_FSM_FFd17-In_SW0  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR4(cmd[0]),
    .ADR2(cmd[1]),
    .ADR0(c_state_FSM_FFd18_1023),
    .O(N6)
  );
  X_FF #(
    .LOC ( "SLICE_X3Y17" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd17 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd17/CLK ),
    .I(\c_state_FSM_FFd17-In_372 ),
    .O(c_state_FSM_FFd17_1001),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y17" ),
    .INIT ( 64'h0000444400054444 ))
  \c_state_FSM_FFd17-In  (
    .ADR2(cmd[2]),
    .ADR5(cmd[3]),
    .ADR4(clk_en_920),
    .ADR1(c_state_FSM_FFd17_1001),
    .ADR3(N6_0),
    .ADR0(rst_al_OR_70_o),
    .O(\c_state_FSM_FFd17-In_372 )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y17" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd14 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd14/CLK ),
    .I(\c_state_FSM_FFd14-In ),
    .O(c_state_FSM_FFd14_1000),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y17" ),
    .INIT ( 64'h0000000030333000 ))
  \c_state_FSM_FFd14-In1  (
    .ADR0(1'b1),
    .ADR5(rst),
    .ADR1(NlwRenamedSig_OI_al),
    .ADR4(c_state_FSM_FFd14_1000),
    .ADR3(clk_en_920),
    .ADR2(c_state_FSM_FFd15_0),
    .O(\c_state_FSM_FFd14-In )
  );
  X_FF #(
    .LOC ( "SLICE_X3Y17" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd13 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd13/CLK ),
    .I(\c_state_FSM_FFd13-In ),
    .O(c_state_FSM_FFd13_922),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X3Y17" ),
    .INIT ( 64'h0000445500004400 ))
  \c_state_FSM_FFd13-In1  (
    .ADR2(1'b1),
    .ADR4(rst),
    .ADR0(NlwRenamedSig_OI_al),
    .ADR5(c_state_FSM_FFd13_922),
    .ADR3(clk_en_920),
    .ADR1(c_state_FSM_FFd14_1000),
    .O(\c_state_FSM_FFd13-In )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y11" ),
    .INIT ( 1'b0 ))
  dscl_oen (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/dscl_oen/CLK ),
    .I(\NlwBufferSignal_i2c/byte_controller/bit_controller/dscl_oen/IN ),
    .O(dscl_oen_1021),
    .RST(GND),
    .SET(GND)
  );
  X_BUF   \i2c/byte_controller/bit_controller/cSCL<1>/i2c/byte_controller/bit_controller/cSCL<1>_DMUX_Delay  (
    .I(cSCL[0]),
    .O(\cSCL<0>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/cSCL<1>/i2c/byte_controller/bit_controller/cSCL<1>_CMUX_Delay  (
    .I(N46),
    .O(N46_0)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 1'b0 ))
  cSCL_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSCL_1/CLK ),
    .I(\cSCL[0]_GND_6_o_mux_6_OUT<1> ),
    .O(cSCL[1]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 64'h2222222222222222 ))
  \Mmux_cSCL[0]_GND_6_o_mux_6_OUT21  (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(rst),
    .ADR0(\cSCL<0>_0 ),
    .ADR5(1'b1),
    .O(\cSCL[0]_GND_6_o_mux_6_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 32'h30303030 ))
  \Mmux_cSCL[0]_GND_6_o_mux_6_OUT11  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(scl_i),
    .ADR1(rst),
    .ADR4(1'b1),
    .O(\cSCL[0]_GND_6_o_mux_6_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 1'b0 ))
  cSCL_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSCL_0/CLK ),
    .I(\cSCL[0]_GND_6_o_mux_6_OUT<0> ),
    .O(cSCL[0]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 64'hEEEE2222EEEE2222 ))
  _n0196_inv1_SW0 (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(filter_cnt[11]),
    .ADR0(cSCL[1]),
    .ADR4(fSCL[0]),
    .ADR5(1'b1),
    .O(N44)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 32'hF3F3C0C0 ))
  _n0196_inv1_SW1 (
    .ADR0(1'b1),
    .ADR2(fSCL[1]),
    .ADR1(filter_cnt[11]),
    .ADR3(1'b1),
    .ADR4(fSCL[0]),
    .O(N46)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 1'b1 ))
  fSCL_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_0/CLK ),
    .I(fSCL_0_rstpot_471),
    .O(fSCL[0]),
    .SET(nReset_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 64'hEEEEEEEFEEEEEEEC ))
  fSCL_0_rstpot (
    .ADR2(out1_1030),
    .ADR4(out),
    .ADR3(filter_cnt[10]),
    .ADR0(fSCL[0]),
    .ADR5(N44),
    .ADR1(rst),
    .O(fSCL_0_rstpot_471)
  );
  X_FF #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 1'b1 ))
  fSCL_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_1/CLK ),
    .I(fSCL_1_rstpot_484),
    .O(fSCL[1]),
    .SET(nReset_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 64'hFFAAFFAAFFAAFFAC ))
  fSCL_1_rstpot (
    .ADR2(out1_1030),
    .ADR5(out),
    .ADR4(filter_cnt[10]),
    .ADR0(fSCL[1]),
    .ADR1(N46_0),
    .ADR3(rst),
    .O(fSCL_1_rstpot_484)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y7" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  out2 (
    .ADR0(filter_cnt[13]),
    .ADR3(filter_cnt[12]),
    .ADR4(filter_cnt[1]),
    .ADR5(filter_cnt[0]),
    .ADR1(filter_cnt[3]),
    .ADR2(filter_cnt[2]),
    .O(out1_1030)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y7" ),
    .INIT ( 1'b0 ))
  filter_cnt_13 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_13/CLK ),
    .I(GND_6_o_GND_6_o_mux_13_OUT[13]),
    .O(filter_cnt[13]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y7" ),
    .INIT ( 64'h000000008888CC00 ))
  Mmux_GND_6_o_GND_6_o_mux_13_OUT51 (
    .ADR2(1'b1),
    .ADR3(clk_cnt[15]),
    .ADR1(ena),
    .ADR5(rst),
    .ADR0(\GND_6_o_GND_6_o_sub_12_OUT<13>_0 ),
    .ADR4(n0025),
    .O(GND_6_o_GND_6_o_mux_13_OUT[13])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y7" ),
    .INIT ( 1'b0 ))
  filter_cnt_12 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_12/CLK ),
    .I(GND_6_o_GND_6_o_mux_13_OUT[12]),
    .O(filter_cnt[12]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y7" ),
    .INIT ( 64'h00CC00F000000000 ))
  Mmux_GND_6_o_GND_6_o_mux_13_OUT41 (
    .ADR0(1'b1),
    .ADR2(clk_cnt[14]),
    .ADR5(ena),
    .ADR3(rst),
    .ADR1(\GND_6_o_GND_6_o_sub_12_OUT<12>_0 ),
    .ADR4(n0025),
    .O(GND_6_o_GND_6_o_mux_13_OUT[12])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y7" ),
    .INIT ( 1'b0 ))
  filter_cnt_11 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_11/CLK ),
    .I(GND_6_o_GND_6_o_mux_13_OUT[11]),
    .O(filter_cnt[11]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y7" ),
    .INIT ( 64'h3020302000200020 ))
  Mmux_GND_6_o_GND_6_o_mux_13_OUT31 (
    .ADR4(1'b1),
    .ADR0(clk_cnt[13]),
    .ADR2(ena),
    .ADR1(rst),
    .ADR5(\GND_6_o_GND_6_o_sub_12_OUT<11>_0 ),
    .ADR3(n0025),
    .O(GND_6_o_GND_6_o_mux_13_OUT[11])
  );
  X_BUF   \i2c/byte_controller/bit_controller/sSDA/i2c/byte_controller/bit_controller/sSDA_CMUX_Delay  (
    .I(N54),
    .O(N54_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y6" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  out1 (
    .ADR5(filter_cnt[5]),
    .ADR4(filter_cnt[4]),
    .ADR3(filter_cnt[7]),
    .ADR2(filter_cnt[6]),
    .ADR0(filter_cnt[9]),
    .ADR1(filter_cnt[8]),
    .O(out)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y6" ),
    .INIT ( 1'b1 ))
  sSDA (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/sSDA/CLK ),
    .I(\fSDA[2]_PWR_4_o_MUX_58_o ),
    .O(sSDA_1012),
    .SET(nReset_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y6" ),
    .INIT ( 64'hFFFFEE88FFFFEE88 ))
  \Mmux_fSDA[2]_PWR_4_o_MUX_58_o11  (
    .ADR2(1'b1),
    .ADR1(fSDA[1]),
    .ADR0(fSDA[2]),
    .ADR3(fSDA[0]),
    .ADR4(rst),
    .ADR5(1'b1),
    .O(\fSDA[2]_PWR_4_o_MUX_58_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y6" ),
    .INIT ( 32'hACACACAC ))
  _n0196_inv1_SW5 (
    .ADR2(filter_cnt[11]),
    .ADR1(fSDA[1]),
    .ADR0(fSDA[2]),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(N54)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y6" ),
    .INIT ( 1'b1 ))
  fSDA_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_2/CLK ),
    .I(fSDA_2_rstpot_788),
    .O(fSDA[2]),
    .SET(nReset_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y6" ),
    .INIT ( 64'hFFFFFF01FFFFFE00 ))
  fSDA_2_rstpot (
    .ADR0(out1_1030),
    .ADR1(out),
    .ADR2(filter_cnt[10]),
    .ADR3(fSDA[2]),
    .ADR5(N54_0),
    .ADR4(rst),
    .O(fSDA_2_rstpot_788)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y6" ),
    .INIT ( 1'b0 ))
  filter_cnt_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_6/CLK ),
    .I(GND_6_o_GND_6_o_mux_13_OUT[6]),
    .O(filter_cnt[6]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y6" ),
    .INIT ( 64'h00CC00AA00000000 ))
  Mmux_GND_6_o_GND_6_o_mux_13_OUT111 (
    .ADR2(1'b1),
    .ADR0(clk_cnt[8]),
    .ADR5(ena),
    .ADR1(\GND_6_o_GND_6_o_sub_12_OUT<6>_0 ),
    .ADR3(rst),
    .ADR4(n0025),
    .O(GND_6_o_GND_6_o_mux_13_OUT[6])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y6" ),
    .INIT ( 1'b0 ))
  filter_cnt_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_5/CLK ),
    .I(GND_6_o_GND_6_o_mux_13_OUT[5]),
    .O(filter_cnt[5]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y6" ),
    .INIT ( 64'h00A000A000C000C0 ))
  Mmux_GND_6_o_GND_6_o_mux_13_OUT101 (
    .ADR4(1'b1),
    .ADR1(clk_cnt[7]),
    .ADR2(ena),
    .ADR0(\GND_6_o_GND_6_o_sub_12_OUT<5>_0 ),
    .ADR3(rst),
    .ADR5(n0025),
    .O(GND_6_o_GND_6_o_mux_13_OUT[5])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y6" ),
    .INIT ( 1'b0 ))
  filter_cnt_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_4/CLK ),
    .I(GND_6_o_GND_6_o_mux_13_OUT[4]),
    .O(filter_cnt[4]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y6" ),
    .INIT ( 64'h0000A0F00000A000 ))
  Mmux_GND_6_o_GND_6_o_mux_13_OUT91 (
    .ADR1(1'b1),
    .ADR5(clk_cnt[6]),
    .ADR2(ena),
    .ADR0(\GND_6_o_GND_6_o_sub_12_OUT<4>_0 ),
    .ADR4(rst),
    .ADR3(n0025),
    .O(GND_6_o_GND_6_o_mux_13_OUT[4])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y6" ),
    .INIT ( 1'b0 ))
  filter_cnt_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_3/CLK ),
    .I(GND_6_o_GND_6_o_mux_13_OUT[3]),
    .O(filter_cnt[3]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y6" ),
    .INIT ( 64'h0000B0800000B080 ))
  Mmux_GND_6_o_GND_6_o_mux_13_OUT81 (
    .ADR5(1'b1),
    .ADR3(clk_cnt[5]),
    .ADR2(ena),
    .ADR0(\GND_6_o_GND_6_o_sub_12_OUT<3>_0 ),
    .ADR4(rst),
    .ADR1(n0025),
    .O(GND_6_o_GND_6_o_mux_13_OUT[3])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 1'b0 ))
  filter_cnt_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_2/CLK ),
    .I(GND_6_o_GND_6_o_mux_13_OUT[2]),
    .O(filter_cnt[2]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 64'h00F300C000000000 ))
  Mmux_GND_6_o_GND_6_o_mux_13_OUT71 (
    .ADR0(1'b1),
    .ADR4(clk_cnt[4]),
    .ADR5(ena),
    .ADR2(\GND_6_o_GND_6_o_sub_12_OUT<2>_0 ),
    .ADR3(rst),
    .ADR1(n0025),
    .O(GND_6_o_GND_6_o_mux_13_OUT[2])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 1'b0 ))
  filter_cnt_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_1/CLK ),
    .I(GND_6_o_GND_6_o_mux_13_OUT[1]),
    .O(filter_cnt[1]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 64'h00DD008800000000 ))
  Mmux_GND_6_o_GND_6_o_mux_13_OUT61 (
    .ADR2(1'b1),
    .ADR4(clk_cnt[3]),
    .ADR5(ena),
    .ADR1(\GND_6_o_GND_6_o_sub_12_OUT<1>_0 ),
    .ADR3(rst),
    .ADR0(n0025),
    .O(GND_6_o_GND_6_o_mux_13_OUT[1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 64'hFFFFFFFFFFFFFFCC ))
  out3 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR5(filter_cnt[10]),
    .ADR1(filter_cnt[11]),
    .ADR4(out1_1030),
    .ADR3(out),
    .O(n0025)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 1'b0 ))
  filter_cnt_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_0/CLK ),
    .I(GND_6_o_GND_6_o_mux_13_OUT[0]),
    .O(filter_cnt[0]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 64'h5000404050004040 ))
  Mmux_GND_6_o_GND_6_o_mux_13_OUT15 (
    .ADR5(1'b1),
    .ADR1(clk_cnt[2]),
    .ADR2(ena),
    .ADR3(\GND_6_o_GND_6_o_sub_12_OUT<0>_0 ),
    .ADR0(rst),
    .ADR4(n0025),
    .O(GND_6_o_GND_6_o_mux_13_OUT[0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y20" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  nReset_inv1_INV_0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR3(nReset),
    .O(nReset_inv)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 1'b0 ))
  filter_cnt_10 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_10/CLK ),
    .I(GND_6_o_GND_6_o_mux_13_OUT[10]),
    .O(filter_cnt[10]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 64'h00000000C0C08888 ))
  Mmux_GND_6_o_GND_6_o_mux_13_OUT21 (
    .ADR3(1'b1),
    .ADR0(clk_cnt[12]),
    .ADR1(ena),
    .ADR5(rst),
    .ADR2(\GND_6_o_GND_6_o_sub_12_OUT<10>_0 ),
    .ADR4(n0025),
    .O(GND_6_o_GND_6_o_mux_13_OUT[10])
  );
  X_FF #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 1'b0 ))
  filter_cnt_9 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_9/CLK ),
    .I(GND_6_o_GND_6_o_mux_13_OUT[9]),
    .O(filter_cnt[9]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 64'h2222303000000000 ))
  Mmux_GND_6_o_GND_6_o_mux_13_OUT141 (
    .ADR3(1'b1),
    .ADR2(clk_cnt[11]),
    .ADR5(ena),
    .ADR0(\GND_6_o_GND_6_o_sub_12_OUT<9>_0 ),
    .ADR1(rst),
    .ADR4(n0025),
    .O(GND_6_o_GND_6_o_mux_13_OUT[9])
  );
  X_FF #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 1'b0 ))
  filter_cnt_8 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_8/CLK ),
    .I(GND_6_o_GND_6_o_mux_13_OUT[8]),
    .O(filter_cnt[8]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 64'h0C0800080C080008 ))
  Mmux_GND_6_o_GND_6_o_mux_13_OUT131 (
    .ADR5(1'b1),
    .ADR0(clk_cnt[10]),
    .ADR1(ena),
    .ADR4(\GND_6_o_GND_6_o_sub_12_OUT<8>_0 ),
    .ADR2(rst),
    .ADR3(n0025),
    .O(GND_6_o_GND_6_o_mux_13_OUT[8])
  );
  X_FF #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 1'b0 ))
  filter_cnt_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_7/CLK ),
    .I(GND_6_o_GND_6_o_mux_13_OUT[7]),
    .O(filter_cnt[7]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 64'h00F000C0000000C0 ))
  Mmux_GND_6_o_GND_6_o_mux_13_OUT121 (
    .ADR0(1'b1),
    .ADR1(clk_cnt[9]),
    .ADR2(ena),
    .ADR5(\GND_6_o_GND_6_o_sub_12_OUT<7>_0 ),
    .ADR3(rst),
    .ADR4(n0025),
    .O(GND_6_o_GND_6_o_mux_13_OUT[7])
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>_DMUX_Delay  (
    .I(Result[3]),
    .O(\Result<3>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>_CMUX_Delay  (
    .I(Result[2]),
    .O(\Result<2>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>_BMUX_Delay  (
    .I(Result[1]),
    .O(\Result<1>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>_AMUX_Delay  (
    .I(Result[0]),
    .O(\Result<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y9" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \Mcount_cnt_lut<3>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(cnt[3]),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y9" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_19.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_19.D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X8Y9" ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/ProtoComp5.CYINITVCC  (
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/ProtoComp5.CYINITVCC.1 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X8Y9" ))
  \Mcount_cnt_cy<3>  (
    .CI(1'b0),
    .CYINIT(\i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/ProtoComp5.CYINITVCC.1 ),
    .CO({\Mcount_cnt_cy[3] , \NLW_Mcount_cnt_cy<3>_CO[2]_UNCONNECTED , \NLW_Mcount_cnt_cy<3>_CO[1]_UNCONNECTED , 
\NLW_Mcount_cnt_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b0}),
    .O({Result[3], Result[2], Result[1], Result[0]}),
    .S({Mcount_cnt_lut[3], Mcount_cnt_lut[2], Mcount_cnt_lut[1], \cnt<0>_rt_2 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y9" ),
    .INIT ( 64'h3333333333333333 ))
  \Mcount_cnt_lut<2>_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(cnt[2]),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y9" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_18.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_18.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y9" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \Mcount_cnt_lut<1>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(cnt[1]),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y9" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_17.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_17.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y9" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \cnt<0>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(cnt[0]),
    .ADR5(1'b1),
    .O(\cnt<0>_rt_2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y9" ),
    .INIT ( 32'h00000000 ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/i2c_scl_o_2.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/i2c_scl_o_2.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>_DMUX_Delay  (
    .I(Result[7]),
    .O(\Result<7>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>_CMUX_Delay  (
    .I(Result[6]),
    .O(\Result<6>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>_BMUX_Delay  (
    .I(Result[5]),
    .O(\Result<5>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>_AMUX_Delay  (
    .I(Result[4]),
    .O(\Result<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y10" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \Mcount_cnt_lut<7>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(cnt[7]),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y10" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_23.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_23.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X8Y10" ))
  \Mcount_cnt_cy<7>  (
    .CI(\Mcount_cnt_cy[3] ),
    .CYINIT(1'b0),
    .CO({\Mcount_cnt_cy[7] , \NLW_Mcount_cnt_cy<7>_CO[2]_UNCONNECTED , \NLW_Mcount_cnt_cy<7>_CO[1]_UNCONNECTED , 
\NLW_Mcount_cnt_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({Result[7], Result[6], Result[5], Result[4]}),
    .S({Mcount_cnt_lut[7], Mcount_cnt_lut[6], Mcount_cnt_lut[5], Mcount_cnt_lut[4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y10" ),
    .INIT ( 64'h3333333333333333 ))
  \Mcount_cnt_lut<6>_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(cnt[6]),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y10" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_22.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_22.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y10" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \Mcount_cnt_lut<5>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(cnt[5]),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y10" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_21.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_21.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y10" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Mcount_cnt_lut<4>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(cnt[4]),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y10" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_20.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_20.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>_DMUX_Delay  (
    .I(Result[11]),
    .O(\Result<11>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>_CMUX_Delay  (
    .I(Result[10]),
    .O(\Result<10>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>_BMUX_Delay  (
    .I(Result[9]),
    .O(\Result<9>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>_AMUX_Delay  (
    .I(Result[8]),
    .O(\Result<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y11" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \Mcount_cnt_lut<11>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(cnt[11]),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y11" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_27.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_27.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X8Y11" ))
  \Mcount_cnt_cy<11>  (
    .CI(\Mcount_cnt_cy[7] ),
    .CYINIT(1'b0),
    .CO({\Mcount_cnt_cy[11] , \NLW_Mcount_cnt_cy<11>_CO[2]_UNCONNECTED , \NLW_Mcount_cnt_cy<11>_CO[1]_UNCONNECTED , 
\NLW_Mcount_cnt_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({Result[11], Result[10], Result[9], Result[8]}),
    .S({Mcount_cnt_lut[11], Mcount_cnt_lut[10], Mcount_cnt_lut[9], Mcount_cnt_lut[8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y11" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \Mcount_cnt_lut<10>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(cnt[10]),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y11" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_26.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_26.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y11" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \Mcount_cnt_lut<9>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(cnt[9]),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y11" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_25.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_25.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y11" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Mcount_cnt_lut<8>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(cnt[8]),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y11" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_24.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_24.A5LUT_O_UNCONNECTED )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_DMUX_Delay  (
    .I(GND_6_o_GND_6_o_sub_12_OUT[11]),
    .O(\GND_6_o_GND_6_o_sub_12_OUT<11>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_CMUX_Delay  (
    .I(GND_6_o_GND_6_o_sub_12_OUT[10]),
    .O(\GND_6_o_GND_6_o_sub_12_OUT<10>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_BMUX_Delay  (
    .I(GND_6_o_GND_6_o_sub_12_OUT[9]),
    .O(\GND_6_o_GND_6_o_sub_12_OUT<9>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_AMUX_Delay  (
    .I(GND_6_o_GND_6_o_sub_12_OUT[8]),
    .O(\GND_6_o_GND_6_o_sub_12_OUT<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<11>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(filter_cnt[11]),
    .ADR5(1'b1),
    .O(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<11> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_13.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_13.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y7" ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>  (
    .CI(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_980 ),
    .CYINIT(1'b0),
    .CO({\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_989 , \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_CO[2]_UNCONNECTED , 
\NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_CO[1]_UNCONNECTED , \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({GND_6_o_GND_6_o_sub_12_OUT[11], GND_6_o_GND_6_o_sub_12_OUT[10], GND_6_o_GND_6_o_sub_12_OUT[9], GND_6_o_GND_6_o_sub_12_OUT[8]}),
    .S({\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<11> , \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<10> , 
\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<9> , \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<8> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<10>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(filter_cnt[10]),
    .ADR5(1'b1),
    .O(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<10> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_12.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_12.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<9>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(filter_cnt[9]),
    .ADR5(1'b1),
    .O(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<9> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_11.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_11.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<8>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(filter_cnt[8]),
    .ADR5(1'b1),
    .O(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<8> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_10.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_10.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Result<15>/i2c/byte_controller/bit_controller/Result<15>_DMUX_Delay  (
    .I(Result[15]),
    .O(\Result<15>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Result<15>/i2c/byte_controller/bit_controller/Result<15>_CMUX_Delay  (
    .I(Result[14]),
    .O(\Result<14>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Result<15>/i2c/byte_controller/bit_controller/Result<15>_BMUX_Delay  (
    .I(Result[13]),
    .O(\Result<13>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Result<15>/i2c/byte_controller/bit_controller/Result<15>_AMUX_Delay  (
    .I(Result[12]),
    .O(\Result<12>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y12" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \Mcount_cnt_lut<15>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(cnt[15]),
    .O(Mcount_cnt_lut[15])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X8Y12" ))
  \Mcount_cnt_xor<15>  (
    .CI(\Mcount_cnt_cy[11] ),
    .CYINIT(1'b0),
    .CO({\NLW_Mcount_cnt_xor<15>_CO[3]_UNCONNECTED , \NLW_Mcount_cnt_xor<15>_CO[2]_UNCONNECTED , \NLW_Mcount_cnt_xor<15>_CO[1]_UNCONNECTED , 
\NLW_Mcount_cnt_xor<15>_CO[0]_UNCONNECTED }),
    .DI({\NLW_Mcount_cnt_xor<15>_DI[3]_UNCONNECTED , 1'b1, 1'b1, 1'b1}),
    .O({Result[15], Result[14], Result[13], Result[12]}),
    .S({Mcount_cnt_lut[15], Mcount_cnt_lut[14], Mcount_cnt_lut[13], Mcount_cnt_lut[12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y12" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \Mcount_cnt_lut<14>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(cnt[14]),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y12" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_30.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_30.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y12" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \Mcount_cnt_lut<13>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(cnt[13]),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y12" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_29.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_29.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y12" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Mcount_cnt_lut<12>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(cnt[12]),
    .ADR5(1'b1),
    .O(Mcount_cnt_lut[12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y12" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_28.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_28.A5LUT_O_UNCONNECTED )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_DMUX_Delay  (
    .I(GND_6_o_GND_6_o_sub_12_OUT[7]),
    .O(\GND_6_o_GND_6_o_sub_12_OUT<7>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_CMUX_Delay  (
    .I(GND_6_o_GND_6_o_sub_12_OUT[6]),
    .O(\GND_6_o_GND_6_o_sub_12_OUT<6>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_BMUX_Delay  (
    .I(GND_6_o_GND_6_o_sub_12_OUT[5]),
    .O(\GND_6_o_GND_6_o_sub_12_OUT<5>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_AMUX_Delay  (
    .I(GND_6_o_GND_6_o_sub_12_OUT[4]),
    .O(\GND_6_o_GND_6_o_sub_12_OUT<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<7>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(filter_cnt[7]),
    .ADR5(1'b1),
    .O(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<7> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_9.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_9.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y6" ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>  (
    .CI(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_971 ),
    .CYINIT(1'b0),
    .CO({\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_980 , \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_CO[2]_UNCONNECTED , 
\NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_CO[1]_UNCONNECTED , \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({GND_6_o_GND_6_o_sub_12_OUT[7], GND_6_o_GND_6_o_sub_12_OUT[6], GND_6_o_GND_6_o_sub_12_OUT[5], GND_6_o_GND_6_o_sub_12_OUT[4]}),
    .S({\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<7> , \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<6> , \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<5> 
, \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<4> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<6>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(filter_cnt[6]),
    .ADR5(1'b1),
    .O(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<6> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_8.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_8.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<5>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(filter_cnt[5]),
    .ADR5(1'b1),
    .O(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<5> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_7.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_7.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<4>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(filter_cnt[4]),
    .ADR5(1'b1),
    .O(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<4> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y6" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_6.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_6.A5LUT_O_UNCONNECTED )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_DMUX_Delay  (
    .I(GND_6_o_GND_6_o_sub_12_OUT[3]),
    .O(\GND_6_o_GND_6_o_sub_12_OUT<3>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_CMUX_Delay  (
    .I(GND_6_o_GND_6_o_sub_12_OUT[2]),
    .O(\GND_6_o_GND_6_o_sub_12_OUT<2>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_BMUX_Delay  (
    .I(GND_6_o_GND_6_o_sub_12_OUT[1]),
    .O(\GND_6_o_GND_6_o_sub_12_OUT<1>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_AMUX_Delay  (
    .I(GND_6_o_GND_6_o_sub_12_OUT[0]),
    .O(\GND_6_o_GND_6_o_sub_12_OUT<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<3>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(filter_cnt[3]),
    .ADR5(1'b1),
    .O(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<3> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_5.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_5.D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X14Y5" ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/ProtoComp5.CYINITVCC.1  (
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/ProtoComp5.CYINITVCC.1_86 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X14Y5" ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>  (
    .CI(1'b0),
    .CYINIT(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/ProtoComp5.CYINITVCC.1_86 ),
    .CO({\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_971 , \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_CO[2]_UNCONNECTED , 
\NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_CO[1]_UNCONNECTED , \NLW_Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b0}),
    .O({GND_6_o_GND_6_o_sub_12_OUT[3], GND_6_o_GND_6_o_sub_12_OUT[2], GND_6_o_GND_6_o_sub_12_OUT[1], GND_6_o_GND_6_o_sub_12_OUT[0]}),
    .S({\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<3> , \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<2> , \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<1> 
, \filter_cnt<0>_rt_87 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 64'h3333333333333333 ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<2>_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(filter_cnt[2]),
    .ADR5(1'b1),
    .O(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_4.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_4.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<1>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(filter_cnt[1]),
    .ADR5(1'b1),
    .O(\Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 32'hFFFFFFFF ))
  \N0_3.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_N0_3.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 64'hCCCCCCCCCCCCCCCC ))
  \filter_cnt<0>_rt  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(filter_cnt[0]),
    .ADR5(1'b1),
    .O(\filter_cnt<0>_rt_87 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y5" ),
    .INIT ( 32'h00000000 ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/i2c_scl_o.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/i2c_scl_o.A5LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y9" ),
    .INIT ( 1'b0 ))
  cnt_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_6/CLK ),
    .I(cnt_6_rstpot_512),
    .O(cnt[6]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y9" ),
    .INIT ( 64'hFFEF0F2FF0E00020 ))
  cnt_6_rstpot (
    .ADR4(clk_cnt[6]),
    .ADR0(\Result<6>_0 ),
    .ADR1(N10),
    .ADR5(cnt[6]),
    .ADR3(rst_scl_sync_OR_29_o1_1014),
    .ADR2(_n0201_inv_0),
    .O(cnt_6_rstpot_512)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y9" ),
    .INIT ( 1'b0 ))
  cnt_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_5/CLK ),
    .I(cnt_5_rstpot_528),
    .O(cnt[5]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y9" ),
    .INIT ( 64'hF3C0F3C0F3C0BB88 ))
  cnt_5_rstpot (
    .ADR2(clk_cnt[5]),
    .ADR0(\Result<5>_0 ),
    .ADR5(N10),
    .ADR3(cnt[5]),
    .ADR4(rst_scl_sync_OR_29_o1_1014),
    .ADR1(_n0201_inv_0),
    .O(cnt_5_rstpot_528)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y9" ),
    .INIT ( 1'b0 ))
  cnt_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_4/CLK ),
    .I(cnt_4_rstpot_526),
    .O(cnt[4]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y9" ),
    .INIT ( 64'hAAAAB8B8FF00FF00 ))
  cnt_4_rstpot (
    .ADR0(clk_cnt[4]),
    .ADR2(\Result<4>_0 ),
    .ADR1(N10),
    .ADR3(cnt[4]),
    .ADR4(rst_scl_sync_OR_29_o1_1014),
    .ADR5(_n0201_inv_0),
    .O(cnt_4_rstpot_526)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y9" ),
    .INIT ( 1'b0 ))
  cnt_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_3/CLK ),
    .I(cnt_3_rstpot_525),
    .O(cnt[3]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y9" ),
    .INIT ( 64'hF0F0E4E4FF00FF00 ))
  cnt_3_rstpot (
    .ADR2(clk_cnt[3]),
    .ADR1(\Result<3>_0 ),
    .ADR0(N10),
    .ADR3(cnt[3]),
    .ADR4(rst_scl_sync_OR_29_o1_1014),
    .ADR5(_n0201_inv_0),
    .O(cnt_3_rstpot_525)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y11" ),
    .INIT ( 64'h0000000000000001 ))
  rst_scl_sync_OR_29_o3 (
    .ADR1(cnt[7]),
    .ADR5(cnt[6]),
    .ADR4(cnt[8]),
    .ADR2(cnt[9]),
    .ADR3(cnt[10]),
    .ADR0(cnt[11]),
    .O(rst_scl_sync_OR_29_o3_1017)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y12" ),
    .INIT ( 1'b0 ))
  dout_207 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/dout/CLK ),
    .I(dout_rstpot_589),
    .O(NlwRenamedSig_OI_dout),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y12" ),
    .INIT ( 64'hFFFFFF330000CC00 ))
  dout_rstpot (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(sSCL_1010),
    .ADR5(NlwRenamedSig_OI_dout),
    .ADR4(dSCL_0),
    .ADR3(sSDA_1012),
    .O(dout_rstpot_589)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 1'b0 ))
  cnt_10 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_10/CLK ),
    .I(cnt_10_rstpot_602),
    .O(cnt[10]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 64'hF0E4FFFFF0E40000 ))
  cnt_10_rstpot (
    .ADR2(clk_cnt[10]),
    .ADR1(\Result<10>_0 ),
    .ADR3(N10),
    .ADR5(cnt[10]),
    .ADR0(rst_scl_sync_OR_29_o1_1014),
    .ADR4(_n0201_inv_0),
    .O(cnt_10_rstpot_602)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 1'b0 ))
  cnt_9 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_9/CLK ),
    .I(cnt_9_rstpot_618),
    .O(cnt[9]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 64'hFFCCFACC00CC50CC ))
  cnt_9_rstpot (
    .ADR5(clk_cnt[9]),
    .ADR2(\Result<9>_0 ),
    .ADR0(N10),
    .ADR1(cnt[9]),
    .ADR4(rst_scl_sync_OR_29_o1_1014),
    .ADR3(_n0201_inv_0),
    .O(cnt_9_rstpot_618)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 1'b0 ))
  cnt_8 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_8/CLK ),
    .I(cnt_8_rstpot_616),
    .O(cnt[8]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 64'hCCCCAAAACCF0AAAA ))
  cnt_8_rstpot (
    .ADR1(clk_cnt[8]),
    .ADR2(\Result<8>_0 ),
    .ADR5(N10),
    .ADR0(cnt[8]),
    .ADR3(rst_scl_sync_OR_29_o1_1014),
    .ADR4(_n0201_inv_0),
    .O(cnt_8_rstpot_616)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 1'b0 ))
  cnt_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_7/CLK ),
    .I(cnt_7_rstpot_615),
    .O(cnt[7]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 64'hAAACFFFFAAAC0000 ))
  cnt_7_rstpot (
    .ADR0(clk_cnt[7]),
    .ADR1(\Result<7>_0 ),
    .ADR2(N10),
    .ADR5(cnt[7]),
    .ADR3(rst_scl_sync_OR_29_o1_1014),
    .ADR4(_n0201_inv_0),
    .O(cnt_7_rstpot_615)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y12" ),
    .INIT ( 1'b0 ))
  cnt_14 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_14/CLK ),
    .I(cnt_14_rstpot_676),
    .O(cnt[14]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y12" ),
    .INIT ( 64'hFFEF0F2FF0E00020 ))
  cnt_14_rstpot (
    .ADR4(clk_cnt[14]),
    .ADR0(\Result<14>_0 ),
    .ADR1(N10),
    .ADR5(cnt[14]),
    .ADR3(rst_scl_sync_OR_29_o1_1014),
    .ADR2(_n0201_inv_0),
    .O(cnt_14_rstpot_676)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y12" ),
    .INIT ( 1'b0 ))
  cnt_13 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_13/CLK ),
    .I(cnt_13_rstpot_692),
    .O(cnt[13]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y12" ),
    .INIT ( 64'hAFAFA0A0AFCFA0C0 ))
  cnt_13_rstpot (
    .ADR0(clk_cnt[13]),
    .ADR1(\Result<13>_0 ),
    .ADR5(N10),
    .ADR4(cnt[13]),
    .ADR3(rst_scl_sync_OR_29_o1_1014),
    .ADR2(_n0201_inv_0),
    .O(cnt_13_rstpot_692)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y12" ),
    .INIT ( 1'b0 ))
  cnt_12 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_12/CLK ),
    .I(cnt_12_rstpot_690),
    .O(cnt[12]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y12" ),
    .INIT ( 64'hDDDD8888DDF588A0 ))
  cnt_12_rstpot (
    .ADR1(clk_cnt[12]),
    .ADR2(\Result<12>_0 ),
    .ADR3(N10),
    .ADR4(cnt[12]),
    .ADR5(rst_scl_sync_OR_29_o1_1014),
    .ADR0(_n0201_inv_0),
    .O(cnt_12_rstpot_690)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y12" ),
    .INIT ( 1'b0 ))
  cnt_11 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_11/CLK ),
    .I(cnt_11_rstpot_689),
    .O(cnt[11]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y12" ),
    .INIT ( 64'hF0F0E4E4FF00FF00 ))
  cnt_11_rstpot (
    .ADR2(clk_cnt[11]),
    .ADR1(\Result<11>_0 ),
    .ADR0(N10),
    .ADR3(cnt[11]),
    .ADR4(rst_scl_sync_OR_29_o1_1014),
    .ADR5(_n0201_inv_0),
    .O(cnt_11_rstpot_689)
  );
  X_BUF   \i2c/byte_controller/bit_controller/dSDA/i2c/byte_controller/bit_controller/dSDA_DMUX_Delay  (
    .I(dSCL_555),
    .O(dSCL_0)
  );
  X_BUF   \i2c/byte_controller/bit_controller/dSDA/i2c/byte_controller/bit_controller/dSDA_CMUX_Delay  (
    .I(_n0201_inv),
    .O(_n0201_inv_0)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 1'b1 ))
  dSDA (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/dSDA/CLK ),
    .I(sSDA_PWR_4_o_MUX_60_o),
    .O(dSDA_1032),
    .SET(nReset_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 64'hFFFFAAAAFFFFAAAA ))
  Mmux_sSDA_PWR_4_o_MUX_60_o11 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(rst),
    .ADR0(sSDA_1012),
    .ADR5(1'b1),
    .O(sSDA_PWR_4_o_MUX_60_o)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 32'hFFFFF0F0 ))
  Mmux_sSCL_PWR_4_o_MUX_59_o11 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(sSCL_1010),
    .ADR4(rst),
    .ADR3(1'b1),
    .O(sSCL_PWR_4_o_MUX_59_o)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 1'b1 ))
  dSCL (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/dSCL/CLK ),
    .I(sSCL_PWR_4_o_MUX_59_o),
    .O(dSCL_555),
    .SET(nReset_inv),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 1'b1 ))
  clk_en (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/clk_en/CLK ),
    .I(rst_scl_sync_OR_29_o),
    .O(clk_en_920),
    .SET(nReset_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 64'hFFC0FF00FFC0FF00 ))
  rst_scl_sync_OR_29_o5 (
    .ADR0(1'b1),
    .ADR1(rst_scl_sync_OR_29_o3_1017),
    .ADR4(rst_scl_sync_OR_29_o4_1016),
    .ADR2(rst_scl_sync_OR_29_o2_1018),
    .ADR3(rst_scl_sync_OR_29_o1_1014),
    .ADR5(1'b1),
    .O(rst_scl_sync_OR_29_o)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 32'hFFD5FF55 ))
  _n0201_inv1 (
    .ADR0(slave_wait_1020),
    .ADR1(rst_scl_sync_OR_29_o3_1017),
    .ADR4(rst_scl_sync_OR_29_o4_1016),
    .ADR2(rst_scl_sync_OR_29_o2_1018),
    .ADR3(rst_scl_sync_OR_29_o1_1014),
    .O(_n0201_inv)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 64'hFF0FFF0FFFAFFF0F ))
  rst_scl_sync_OR_29_o1 (
    .ADR1(1'b1),
    .ADR4(dSCL_0),
    .ADR0(NlwRenamedSig_OI_scl_oen),
    .ADR5(sSCL_1010),
    .ADR2(ena),
    .ADR3(rst),
    .O(rst_scl_sync_OR_29_o1_1014)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 1'b0 ))
  cnt_15 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_15/CLK ),
    .I(cnt_15_rstpot_578),
    .O(cnt[15]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 64'hFF33FB3BCC00C808 ))
  cnt_15_rstpot (
    .ADR3(clk_cnt[15]),
    .ADR0(\Result<15>_0 ),
    .ADR2(N10),
    .ADR5(cnt[15]),
    .ADR4(rst_scl_sync_OR_29_o1_1014),
    .ADR1(_n0201_inv_0),
    .O(cnt_15_rstpot_578)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y10" ),
    .INIT ( 64'h0000000000000001 ))
  rst_scl_sync_OR_29_o2 (
    .ADR3(cnt[1]),
    .ADR2(cnt[0]),
    .ADR0(cnt[2]),
    .ADR1(cnt[3]),
    .ADR4(cnt[4]),
    .ADR5(cnt[5]),
    .O(rst_scl_sync_OR_29_o2_1018)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y10" ),
    .INIT ( 64'hAFAFA0A0AFAFA0A0 ))
  cnt_0_rstpot_SW0 (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(slave_wait_1020),
    .ADR4(\Result<0>_0 ),
    .ADR0(cnt[0]),
    .O(N38)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y10" ),
    .INIT ( 64'h0000000500000005 ))
  rst_scl_sync_OR_29_o4 (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR3(cnt[13]),
    .ADR4(cnt[12]),
    .ADR2(cnt[14]),
    .ADR0(cnt[15]),
    .O(rst_scl_sync_OR_29_o4_1016)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 1'b0 ))
  cnt_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_2/CLK ),
    .I(cnt_2_rstpot_636),
    .O(cnt[2]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 64'hAFBFAF8FA0B0A080 ))
  cnt_2_rstpot (
    .ADR0(clk_cnt[2]),
    .ADR4(\Result<2>_0 ),
    .ADR1(N10),
    .ADR5(cnt[2]),
    .ADR3(rst_scl_sync_OR_29_o1_1014),
    .ADR2(_n0201_inv_0),
    .O(cnt_2_rstpot_636)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 1'b0 ))
  cnt_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_1/CLK ),
    .I(cnt_1_rstpot_643),
    .O(cnt[1]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 64'hCCDDCC88CCD8CCD8 ))
  cnt_1_rstpot (
    .ADR1(clk_cnt[1]),
    .ADR5(slave_wait_1020),
    .ADR2(\Result<1>_0 ),
    .ADR4(cnt[1]),
    .ADR3(rst_scl_sync_OR_29_o1_1014),
    .ADR0(N10),
    .O(cnt_1_rstpot_643)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 64'h0000000001000000 ))
  Mcount_cnt_eqn_151_SW0 (
    .ADR1(cnt[15]),
    .ADR2(cnt[14]),
    .ADR0(cnt[12]),
    .ADR5(cnt[13]),
    .ADR3(rst_scl_sync_OR_29_o2_1018),
    .ADR4(rst_scl_sync_OR_29_o3_1017),
    .O(N10)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 1'b0 ))
  cnt_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_0/CLK ),
    .I(cnt_0_rstpot_659),
    .O(cnt[0]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 64'hAAAAB8F0AAAAF0F0 ))
  cnt_0_rstpot (
    .ADR0(clk_cnt[0]),
    .ADR5(rst_scl_sync_OR_29_o4_1016),
    .ADR1(rst_scl_sync_OR_29_o3_1017),
    .ADR3(rst_scl_sync_OR_29_o2_1018),
    .ADR2(N38),
    .ADR4(rst_scl_sync_OR_29_o1_1014),
    .O(cnt_0_rstpot_659)
  );
  X_BUF   \i2c/byte_controller/bit_controller/sSCL/i2c/byte_controller/bit_controller/sSCL_DMUX_Delay  (
    .I(N48),
    .O(N48_0)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 1'b1 ))
  sSCL (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/sSCL/CLK ),
    .I(\fSCL[2]_PWR_4_o_MUX_57_o ),
    .O(sSCL_1010),
    .SET(nReset_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 64'hFFFFE8E8FFFFE8E8 ))
  \Mmux_fSCL[2]_PWR_4_o_MUX_57_o11  (
    .ADR3(1'b1),
    .ADR2(fSCL[1]),
    .ADR0(fSCL[2]),
    .ADR1(fSCL[0]),
    .ADR4(rst),
    .ADR5(1'b1),
    .O(\fSCL[2]_PWR_4_o_MUX_57_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 32'hAAF0AAF0 ))
  _n0196_inv1_SW2 (
    .ADR3(filter_cnt[11]),
    .ADR2(fSCL[1]),
    .ADR0(fSCL[2]),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .O(N48)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 1'b1 ))
  fSCL_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_2/CLK ),
    .I(fSCL_2_rstpot_500),
    .O(fSCL[2]),
    .SET(nReset_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y5" ),
    .INIT ( 64'hFFFFFFFFF0F1F0E0 ))
  fSCL_2_rstpot (
    .ADR0(out1_1030),
    .ADR3(out),
    .ADR1(filter_cnt[10]),
    .ADR2(fSCL[2]),
    .ADR4(N48_0),
    .ADR5(rst),
    .O(fSCL_2_rstpot_500)
  );
  X_BUF   \i2c/byte_controller/bit_controller/cSDA<1>/i2c/byte_controller/bit_controller/cSDA<1>_DMUX_Delay  (
    .I(cSDA[0]),
    .O(\cSDA<0>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/cSDA<1>/i2c/byte_controller/bit_controller/cSDA<1>_CMUX_Delay  (
    .I(N52),
    .O(N52_0)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y6" ),
    .INIT ( 1'b0 ))
  cSDA_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSDA_1/CLK ),
    .I(\cSDA[0]_GND_6_o_mux_7_OUT<1> ),
    .O(cSDA[1]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y6" ),
    .INIT ( 64'h0000AAAA0000AAAA ))
  \Mmux_cSDA[0]_GND_6_o_mux_7_OUT21  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(rst),
    .ADR0(\cSDA<0>_0 ),
    .ADR5(1'b1),
    .O(\cSDA[0]_GND_6_o_mux_7_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y6" ),
    .INIT ( 32'h0000F0F0 ))
  \Mmux_cSDA[0]_GND_6_o_mux_7_OUT11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(sda_i),
    .ADR4(rst),
    .ADR3(1'b1),
    .O(\cSDA[0]_GND_6_o_mux_7_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y6" ),
    .INIT ( 1'b0 ))
  cSDA_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSDA_0/CLK ),
    .I(\cSDA[0]_GND_6_o_mux_7_OUT<0> ),
    .O(cSDA[0]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y6" ),
    .INIT ( 64'hACACACACACACACAC ))
  _n0196_inv1_SW3 (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(filter_cnt[11]),
    .ADR1(cSDA[1]),
    .ADR0(fSDA[0]),
    .ADR5(1'b1),
    .O(N50)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y6" ),
    .INIT ( 32'hFAFA0A0A ))
  _n0196_inv1_SW4 (
    .ADR1(1'b1),
    .ADR4(fSDA[1]),
    .ADR2(filter_cnt[11]),
    .ADR3(1'b1),
    .ADR0(fSDA[0]),
    .O(N52)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y6" ),
    .INIT ( 1'b1 ))
  fSDA_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_0/CLK ),
    .I(fSDA_0_rstpot_721),
    .O(fSDA[0]),
    .SET(nReset_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y6" ),
    .INIT ( 64'hFFFFFFFFFFFE0100 ))
  fSDA_0_rstpot (
    .ADR1(out1_1030),
    .ADR2(out),
    .ADR0(filter_cnt[10]),
    .ADR4(fSDA[0]),
    .ADR3(N50),
    .ADR5(rst),
    .O(fSDA_0_rstpot_721)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y6" ),
    .INIT ( 1'b1 ))
  fSDA_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_1/CLK ),
    .I(fSDA_1_rstpot_734),
    .O(fSDA[1]),
    .SET(nReset_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y6" ),
    .INIT ( 64'hFFFFFF00FFFFFE02 ))
  fSDA_1_rstpot (
    .ADR5(out1_1030),
    .ADR1(out),
    .ADR2(filter_cnt[10]),
    .ADR3(fSDA[1]),
    .ADR0(N52_0),
    .ADR4(rst),
    .O(fSDA_1_rstpot_734)
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd16/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd16/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd12/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd12/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd11/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd11/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd10/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd10/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd9/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd9/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd4/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd3/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd2/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd1/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cmd_stop/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cmd_stop/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/slave_wait/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/slave_wait/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/sda_oen/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/sda_oen/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd15/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd15/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cmd_ack/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cmd_ack/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/scl_oen/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/scl_oen/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd18/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd18/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/busy/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/busy/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/sta_condition/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/sta_condition/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/sto_condition/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/sto_condition/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/al/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/al/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd8/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd8/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd7/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd6/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd5/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd17/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd17/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd14/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd14/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd13/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd13/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/dscl_oen/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/dscl_oen/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/dscl_oen/IN  (
    .I(NlwRenamedSig_OI_scl_oen),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/dscl_oen/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cSCL_1/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSCL_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cSCL_0/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSCL_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/fSCL_0/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/fSCL_1/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_13/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_13/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_12/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_12/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_11/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_11/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/sSDA/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/sSDA/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/fSDA_2/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_6/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_5/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_4/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_3/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_2/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_1/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_0/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_10/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_10/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_9/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_9/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_8/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_8/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_7/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_6/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_5/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_4/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_3/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/dout/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/dout/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_10/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_10/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_9/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_9/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_8/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_8/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_7/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_14/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_14/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_13/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_13/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_12/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_12/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_11/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_11/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/dSDA/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/dSDA/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/dSCL/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/dSCL/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/clk_en/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/clk_en/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_15/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_15/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_2/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_1/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_0/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/sSCL/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/sSCL/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/fSCL_2/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cSDA_1/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSDA_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cSDA_0/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSDA_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/fSDA_0/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/fSDA_1/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_1/CLK )
  );
  X_ONE   NlwBlock_bit_controller_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_bit_controller_GND (
    .O(GND)
  );
endmodule

