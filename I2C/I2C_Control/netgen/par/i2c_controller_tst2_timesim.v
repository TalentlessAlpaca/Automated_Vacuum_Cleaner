////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: i2c_controller_tst2_timesim.v
// /___/   /\     Timestamp: Wed Oct 21 20:46:51 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf i2c_controller_tst2.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim i2c_controller_tst2.ncd i2c_controller_tst2_timesim.v 
// Device	: 6slx9csg324-3 (PRODUCTION 1.23 2013-03-26)
// Input file	: i2c_controller_tst2.ncd
// Output file	: C:\Users\Camilo\Documents\Xilinx_Workspace\I2C_2\netgen\par\i2c_controller_tst2_timesim.v
// # of Modules	: 1
// Design Name	: i2c_controller_tst2
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

module i2c_controller_tst2 (
  clk, rst_n, sda, scl
);
  input clk;
  input rst_n;
  inout sda;
  inout scl;
  wire NlwRenamedSig_IO_rst_n;
  wire \i2c/_n0159_inv ;
  wire clk_BUFGP;
  wire i2c_rst_2786;
  wire \i2c/byte_controller/bit_controller/nReset_inv ;
  wire \i2c/byte_controller/bit_controller/_n0196_inv_0 ;
  wire \i2c/byte_controller/bit_controller/_n0201_inv ;
  wire i2c_scl_oe;
  wire \i2c/byte_controller/bit_controller/N8 ;
  wire \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o1_2796 ;
  wire \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o2_2797 ;
  wire \i2c/byte_controller/bit_controller/N17_0 ;
  wire \i2c/byte_controller/bit_controller/_n0207_inv ;
  wire \i2c/byte_controller/bit_controller/slave_wait_2800 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd2_2802 ;
  wire \i2c/i2c_al ;
  wire \i2c/byte_controller/bit_controller/sda_chk_2804 ;
  wire \i2c/byte_controller/bit_controller/fSDA<2>_0 ;
  wire \i2c/byte_controller/bit_controller/N13 ;
  wire \i2c/byte_controller/bit_controller/cmd_stop_2809 ;
  wire \i2c/byte_controller/bit_controller/sto_condition_2810 ;
  wire i2c_sda_oe;
  wire \i2c/byte_controller/bit_controller/sSDA_2812 ;
  wire \i2c/byte_controller/bit_controller/N14_0 ;
  wire \i2c/byte_controller/bit_controller/_n0204_inv ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd8_2815 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd7_2816 ;
  wire \i2c/byte_controller/bit_controller/clk_en_2817 ;
  wire \i2c/N44 ;
  wire \i2c/al_2821 ;
  wire \i2c/byte_controller/bit_controller/sSCL_2825 ;
  wire \i2c/byte_controller/bit_controller/dSCL_0 ;
  wire \i2c/byte_controller/bit_controller/dSDA_2827 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd10_2828 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd9_2829 ;
  wire \i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o13_0 ;
  wire \i2c/N42 ;
  wire \i2c/tip_2833 ;
  wire i2c_we_2838;
  wire i2c_ack_o;
  wire \i2c/cr_0_0 ;
  wire \i2c/cr_2_2841 ;
  wire N26_0;
  wire \i2c/irq_flag_2845 ;
  wire \i2c/irxack ;
  wire \i2c/rxack_2847 ;
  wire \i2c/byte_controller/bit_controller/sSCL_dSCL_AND_27_o ;
  wire \i2c/byte_controller/bit_controller/dscl_oen_2849 ;
  wire \i2c/_n0179_inv ;
  wire \i2c/cr_4_2853 ;
  wire \i2c/cr_6_2854 ;
  wire \i2c/byte_controller/c_state_FSM_FFd2_2855 ;
  wire \i2c/byte_controller/core_ack ;
  wire \i2c/byte_controller/c_state_FSM_FFd3_2857 ;
  wire \i2c/byte_controller/c_state_FSM_FFd3-In11 ;
  wire \i2c/byte_controller/shift_2859 ;
  wire \i2c/byte_controller/_n0150_inv ;
  wire \i2c/byte_controller/c_state_FSM_FFd1_2861 ;
  wire \i2c/cr_5_2864 ;
  wire \i2c/cr_7_2865 ;
  wire \i2c/byte_controller/_n0139_inv ;
  wire \i2c/byte_controller/core_rxd ;
  wire \i2c/byte_controller/ld_2869 ;
  wire \i2c/rxr<0>_0 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd4_2874 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd17-In1 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd18_2877 ;
  wire \i2c/byte_controller/bit_controller/sta_condition_0 ;
  wire \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT3 ;
  wire \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT41 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd5_2883 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd12_2884 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd13_2885 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd1_2886 ;
  wire \i2c/byte_controller/bit_controller/Mmux_sda_chk_GND_6_o_MUX_66_o1_0 ;
  wire Mmux_i2c_data_in_d611;
  wire Mmux_pointer_dummy1;
  wire Mmux_pointer_dummy15_0;
  wire Mmux_pointer_dummy12_0;
  wire \i2c/ctr[7]_GND_4_o_mux_16_OUT<1> ;
  wire \i2c/ctr[7]_GND_4_o_mux_16_OUT<0> ;
  wire N88;
  wire Mmux_pointer_dummy43_0;
  wire \i2c/ctr[7]_GND_4_o_mux_16_OUT<4> ;
  wire \i2c/ctr[7]_GND_4_o_mux_16_OUT<2>_0 ;
  wire N61;
  wire N60_0;
  wire N27_0;
  wire \i2c/N48 ;
  wire \i2c/ctr[7]_GND_4_o_mux_16_OUT<6> ;
  wire \i2c/ctr[7]_GND_4_o_mux_16_OUT<5> ;
  wire \i2c/N46 ;
  wire \i2c/i2c_busy ;
  wire \i2c/N40 ;
  wire \i2c/byte_controller/bit_controller/N10_0 ;
  wire \i2c/byte_controller/N2_0 ;
  wire \i2c/byte_controller/bit_controller/Result<0>_0 ;
  wire \i2c/byte_controller/bit_controller/Result<1>_0 ;
  wire \i2c/byte_controller/bit_controller/Result<2>_0 ;
  wire \i2c/byte_controller/bit_controller/Mcount_cnt_cy[3] ;
  wire \i2c/byte_controller/bit_controller/Result<3>_0 ;
  wire \i2c/byte_controller/bit_controller/Result<4>_0 ;
  wire \i2c/byte_controller/bit_controller/Result<5>_0 ;
  wire \i2c/byte_controller/bit_controller/Result<6>_0 ;
  wire \i2c/byte_controller/bit_controller/Mcount_cnt_cy[7] ;
  wire \i2c/byte_controller/bit_controller/Result<7>_0 ;
  wire \i2c/byte_controller/bit_controller/Result<8>_0 ;
  wire \i2c/byte_controller/bit_controller/Result<9>_0 ;
  wire \i2c/byte_controller/bit_controller/Result<10>_0 ;
  wire \i2c/byte_controller/bit_controller/Mcount_cnt_cy[11] ;
  wire \i2c/byte_controller/bit_controller/Result<11>_0 ;
  wire \i2c/byte_controller/bit_controller/Result<12>_0 ;
  wire \i2c/byte_controller/bit_controller/Result<13>_0 ;
  wire \i2c/byte_controller/bit_controller/Result<14>_0 ;
  wire \i2c/byte_controller/bit_controller/Result<15>_0 ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<0>_0 ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<1>_0 ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<2>_0 ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_2976 ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<3>_0 ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<4>_0 ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<5>_0 ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<6>_0 ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_2985 ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<7>_0 ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<8>_0 ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<9>_0 ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<10>_0 ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_2994 ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<11>_0 ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<12>_0 ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<13>_0 ;
  wire \clk_BUFGP/IBUFG_0 ;
  wire N38;
  wire _n0168;
  wire \state[5]_PWR_1_o_equal_20_o ;
  wire \state[5]_GND_1_o_equal_26_o ;
  wire \state[5]_GND_1_o_equal_21_o ;
  wire \state[5]_GND_1_o_equal_17_o ;
  wire N77_0;
  wire _n0169;
  wire \i2c/done ;
  wire i2c_cyc_d_0;
  wire i2c_cyc_3013;
  wire \state[5]_GND_1_o_equal_34_o ;
  wire \state[5]_GND_1_o_equal_19_o ;
  wire \state[5]_GND_1_o_equal_18_o ;
  wire N64_0;
  wire _n0176;
  wire \state[5]_GND_1_o_equal_22_o ;
  wire N44_0;
  wire i2c_cs_d4_0;
  wire \state[5]_GND_1_o_equal_27_o ;
  wire \state[5]_GND_1_o_equal_25_o ;
  wire \state[5]_GND_1_o_equal_24_o ;
  wire Mmux_i2c_lab_d32;
  wire N142_0;
  wire \state[5]_GND_1_o_equal_31_o ;
  wire \i2c/byte_controller/bit_controller/N11_0 ;
  wire N83_0;
  wire N66_0;
  wire \i2c/byte_controller/bit_controller/Mmux_scl_oen_PWR_4_o_MUX_91_o12 ;
  wire \i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o11 ;
  wire \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT11 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd11_3034 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd14_3035 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd15_3036 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd16_3037 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd17_3038 ;
  wire \i2c/byte_controller/bit_controller/n0025 ;
  wire \i2c/cr_1_3040 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd3_3041 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd6_3042 ;
  wire \i2c/byte_controller/core_txd_3051 ;
  wire \i2c/byte_controller/bit_controller/N6 ;
  wire \i2c/byte_controller/bit_controller/Mmux_scl_oen_PWR_4_o_MUX_91_o13 ;
  wire _n0177;
  wire N63;
  wire Mmux_i2c_data_in_d711;
  wire \state[5]_GND_1_o_equal_36_o ;
  wire N134;
  wire Mmux_i2c_data_in_d62;
  wire N58;
  wire N132;
  wire Mmux_i2c_data_in_d7;
  wire N156;
  wire \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ;
  wire i2c_cs_3065;
  wire \i2c/_n0209_inv1_3066 ;
  wire \i2c/_n0209_inv ;
  wire \i2c/_n0171_inv ;
  wire \i2c/_n0165_inv ;
  wire \i2c/cr_3_3070 ;
  wire _n0184;
  wire Mmux_nextState14;
  wire Mmux_nextState141_3073;
  wire Mmux_nextState82_3074;
  wire N51;
  wire _n0183;
  wire _n0170;
  wire N154;
  wire _n0171;
  wire N54;
  wire N94;
  wire N129;
  wire N121;
  wire N48;
  wire N49;
  wire _n0172;
  wire _n0190;
  wire \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT316 ;
  wire \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT32_3089 ;
  wire _n0185;
  wire _n0178;
  wire _n0179;
  wire _n0189;
  wire Mmux_nextState3;
  wire Mmux_nextState31_3095;
  wire \state[5]_GND_1_o_equal_28_o ;
  wire Mmux_nextState33_3097;
  wire Mmux_nextState71_3098;
  wire Mmux_nextState72_3099;
  wire \state[5]_GND_1_o_equal_29_o ;
  wire Mmux_nextState73_3101;
  wire \state[5]_GND_1_o_equal_35_o ;
  wire \state[5]_GND_1_o_equal_30_o ;
  wire Mmux_nextState74_3104;
  wire Mmux_nextState152;
  wire Mmux_nextState7;
  wire Mmux_nextState212;
  wire \state[5]_GND_1_o_equal_39_o ;
  wire Mmux_nextState75_3110;
  wire \i2c/N26 ;
  wire \i2c/N31 ;
  wire \i2c/N36 ;
  wire \i2c/cr[7]_GND_4_o_mux_24_OUT<3> ;
  wire N108;
  wire \state[5]_GND_1_o_equal_38_o ;
  wire i2c_we_d5_3120;
  wire i2c_we_d4_3121;
  wire \state[5]_state[5]_OR_207_o ;
  wire \i2c/byte_controller/N4 ;
  wire N103;
  wire N102;
  wire \state[5]_GND_1_o_equal_33_o ;
  wire Mmux_pointer_dummy41;
  wire Mmux_pointer_dummy5;
  wire \state[5]_GND_1_o_equal_37_o ;
  wire Mmux_pointer_dummy54_3132;
  wire Mmux_pointer_dummy61_3133;
  wire Mmux_nextState12;
  wire Mmux_nextState122_3136;
  wire Mmux_nextState111;
  wire Mmux_pointer_dummy25_3138;
  wire N130;
  wire Mmux_nextState32_3140;
  wire \i2c/byte_controller/N9 ;
  wire \i2c/ctr[7]_GND_4_o_mux_16_OUT<7> ;
  wire \state[5]_GND_1_o_equal_32_o ;
  wire N56;
  wire Mmux_i2c_data_in_d5122_3145;
  wire Mmux_i2c_data_in_d5121_3146;
  wire Mmux_nextState151;
  wire N40;
  wire N42;
  wire N136;
  wire \i2c/byte_controller/bit_controller/out1_3151 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In1_3152 ;
  wire Mmux_i2c_lab_d111;
  wire \i2c/byte_controller/c_state_FSM_FFd2-In2_3154 ;
  wire \i2c/byte_controller/c_state_FSM_FFd3-In3_3155 ;
  wire \i2c/byte_controller/c_state_FSM_FFd3-In2_3156 ;
  wire \i2c/N15 ;
  wire \i2c/N17 ;
  wire \i2c/N20 ;
  wire \i2c/N22 ;
  wire N30;
  wire i2c_rst_d_3166;
  wire N67;
  wire N76;
  wire \state[5]_GND_1_o_equal_43_o ;
  wire \i2c/byte_controller/bit_controller/N16 ;
  wire \i2c/byte_controller/bit_controller/out ;
  wire \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT31_3177 ;
  wire i2c_int_0;
  wire N127;
  wire N141;
  wire N43;
  wire Mmux_pointer_dummy51_3188;
  wire Mmux_pointer_dummy6;
  wire \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT42_3190 ;
  wire \i2c/byte_controller/c_state_FSM_FFd3-In1_3191 ;
  wire \i2c/N54 ;
  wire \i2c/N10 ;
  wire \i2c/N12 ;
  wire \i2c/_n0214_inv ;
  wire \state[5]_state[5]_OR_212_o ;
  wire i2c_we_d;
  wire Mmux_nextState39;
  wire Mmux_nextState76_3201;
  wire Mmux_nextState9;
  wire Mmux_nextState123_3203;
  wire N81;
  wire Mmux_pointer_dummy42_3205;
  wire Mmux_pointer_dummy17_3206;
  wire N87;
  wire Mmux_pointer_dummy2;
  wire \i2c/byte_controller/bit_controller/N2 ;
  wire \i2c/byte_controller/N01 ;
  wire \i2c/byte_controller/N6 ;
  wire \i2c/byte_controller/N8 ;
  wire \i2c/byte_controller/c_state_FSM_FFd2-In3_3213 ;
  wire \i2c/byte_controller/N11 ;
  wire \i2c/N01 ;
  wire \i2c/N2 ;
  wire \i2c/N5 ;
  wire \i2c/N7 ;
  wire \i2c/N50 ;
  wire \i2c/N52 ;
  wire N93;
  wire N125;
  wire \i2c/byte_controller/bit_controller/N4 ;
  wire N52;
  wire N123;
  wire Mmux_nextState121_3232;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In2_3233 ;
  wire N117;
  wire i2c_cs_d;
  wire i2c_cs_d6_3236;
  wire \ProtoComp29.CYINITVCC.1_15 ;
  wire \i2c/byte_controller/bit_controller/cnt<0>_rt_5 ;
  wire \i2c/ctr[7]_GND_4_o_mux_16_OUT<0>_pack_3 ;
  wire N152;
  wire N142;
  wire N153;
  wire N151;
  wire N150;
  wire N77;
  wire N168;
  wire N83;
  wire N159;
  wire N158;
  wire Mmux_pointer_dummy12;
  wire \i2c/byte_controller/bit_controller/slave_wait_pack_1 ;
  wire \i2c/byte_controller/bit_controller/scl_oen_slave_wait_OR_11_o ;
  wire \i2c/byte_controller/bit_controller/N10 ;
  wire \i2c/byte_controller/c_state[4]_GND_5_o_mux_54_OUT<2> ;
  wire \i2c/byte_controller/dcnt[2]_GND_5_o_mux_8_OUT<2> ;
  wire \i2c/byte_controller/dcnt<2>_pack_4 ;
  wire \i2c/byte_controller/dcnt[2]_GND_5_o_mux_8_OUT<1> ;
  wire \i2c/done_GND_4_o_MUX_117_o ;
  wire \i2c/byte_controller/c_state_FSM_FFd3-In ;
  wire \i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<0> ;
  wire \i2c/byte_controller/c_state[4]_GND_5_o_MUX_112_o ;
  wire \i2c/byte_controller/core_cmd<3>_pack_4 ;
  wire \i2c/byte_controller/c_state[4]_GND_5_o_mux_54_OUT<3> ;
  wire \i2c/byte_controller/N13 ;
  wire \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT42_pack_5 ;
  wire \i2c/byte_controller/N14 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd7-In ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd7_pack_6 ;
  wire \i2c/byte_controller/bit_controller/sda_chk_GND_6_o_MUX_66_o ;
  wire \i2c/byte_controller/bit_controller/N20 ;
  wire \i2c/byte_controller/bit_controller/N19 ;
  wire \i2c/byte_controller/bit_controller/N11 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd17-In1_pack_9 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd5-In ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd6-In ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd4-In ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd15-In ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd16-In ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd17-In ;
  wire \i2c/byte_controller/c_state[4]_GND_5_o_MUX_111_o ;
  wire \i2c/irq_flag_GND_4_o_MUX_118_o ;
  wire i2c_int;
  wire \i2c/irxack_GND_4_o_MUX_115_o ;
  wire \i2c/i2c_al_GND_4_o_MUX_114_o ;
  wire \i2c/cr_4_pack_4 ;
  wire \i2c/cr[7]_GND_4_o_mux_24_OUT<7> ;
  wire \i2c/cr[7]_GND_4_o_mux_24_OUT<5> ;
  wire \i2c/cr[7]_GND_4_o_mux_24_OUT<4> ;
  wire \i2c/cr_5_pack_6 ;
  wire \i2c/cr[7]_GND_4_o_mux_24_OUT<6> ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<5> ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<4> ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<6> ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<7> ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/ProtoComp29.CYINITVCC.1 ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<2> ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<1> ;
  wire \i2c/byte_controller/bit_controller/filter_cnt<0>_rt_90 ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<3> ;
  wire N27;
  wire \clk_BUFGP/IBUFG_160 ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<9> ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<8> ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<10> ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<11> ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<12> ;
  wire \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<13> ;
  wire N26;
  wire \i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<5> ;
  wire \i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<6> ;
  wire \i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<7> ;
  wire \i2c/byte_controller/bit_controller/cSDA<0>_pack_2 ;
  wire \i2c/byte_controller/bit_controller/cSDA[0]_GND_6_o_mux_7_OUT<1> ;
  wire \i2c/byte_controller/bit_controller/cSCL[0]_GND_6_o_mux_6_OUT<1> ;
  wire \i2c/byte_controller/bit_controller/cSCL<0>_pack_3 ;
  wire \i2c/byte_controller/bit_controller/cSDA[0]_GND_6_o_mux_7_OUT<0> ;
  wire \i2c/byte_controller/bit_controller/cSCL[0]_GND_6_o_mux_6_OUT<0> ;
  wire \i2c/byte_controller/bit_controller/fSDA[2]_PWR_4_o_MUX_58_o ;
  wire \i2c/byte_controller/dcnt<0>_pack_7 ;
  wire \i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<2> ;
  wire \i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<1> ;
  wire \i2c/byte_controller/dcnt[2]_GND_5_o_mux_8_OUT<0> ;
  wire \i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<3> ;
  wire \i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<4> ;
  wire \i2c/byte_controller/bit_controller/fSCL<0>_pack_3 ;
  wire \i2c/byte_controller/bit_controller/fSDA[2]_PWR_4_o_mux_19_OUT<2> ;
  wire \i2c/byte_controller/bit_controller/fSCL[2]_PWR_4_o_mux_18_OUT<0> ;
  wire \i2c/byte_controller/bit_controller/fSCL[2]_PWR_4_o_mux_18_OUT<1> ;
  wire \i2c/byte_controller/bit_controller/fSCL[2]_PWR_4_o_mux_18_OUT<2> ;
  wire \i2c/byte_controller/bit_controller/fSDA<0>_pack_5 ;
  wire \i2c/byte_controller/bit_controller/fSDA[2]_PWR_4_o_mux_19_OUT<0> ;
  wire \i2c/byte_controller/bit_controller/fSDA[2]_PWR_4_o_mux_19_OUT<1> ;
  wire N144;
  wire N44;
  wire N145;
  wire \i2c/byte_controller/bit_controller/nReset_inv_non_inverted ;
  wire \ProtoComp35.IINV.OUT ;
  wire \i2c/N17_pack_4 ;
  wire \i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<7> ;
  wire \i2c/N22_pack_6 ;
  wire \i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<6> ;
  wire N149;
  wire N148;
  wire N66;
  wire i2c_cyc_d;
  wire N167;
  wire \i2c/byte_controller/bit_controller/fSCL[2]_PWR_4_o_MUX_57_o ;
  wire \i2c/byte_controller/bit_controller/cnt_5_rstpot_456 ;
  wire \i2c/byte_controller/bit_controller/cnt_6_rstpot_455 ;
  wire \i2c/byte_controller/bit_controller/cnt_8_rstpot_445 ;
  wire \i2c/byte_controller/bit_controller/cnt_7_rstpot_432 ;
  wire \i2c/byte_controller/bit_controller/cnt_9_rstpot_493 ;
  wire \i2c/byte_controller/bit_controller/cnt_10_rstpot_492 ;
  wire \i2c/byte_controller/bit_controller/cnt_12_rstpot_482 ;
  wire \i2c/byte_controller/bit_controller/cnt_11_rstpot_469 ;
  wire \i2c/byte_controller/bit_controller/cnt_15_rstpot_518 ;
  wire \i2c/byte_controller/bit_controller/cnt_14_rstpot_516 ;
  wire \i2c/byte_controller/bit_controller/cnt_13_rstpot_498 ;
  wire \i2c/byte_controller/bit_controller/N16_pack_1 ;
  wire \i2c/byte_controller/bit_controller/sda_chk_GND_6_o_MUX_93_o ;
  wire \i2c/byte_controller/bit_controller/cnt_0_rstpot_728 ;
  wire \i2c/byte_controller/bit_controller/N22 ;
  wire \i2c/byte_controller/bit_controller/N21 ;
  wire \i2c/byte_controller/bit_controller/N17 ;
  wire \i2c/prer<1>_pack_13 ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<1> ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<9> ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<15> ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<14> ;
  wire \i2c/prer<15>_pack_9 ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<6> ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<7> ;
  wire \i2c/prer<14>_pack_7 ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<0> ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<8> ;
  wire \i2c/prer<0>_pack_11 ;
  wire \i2c/byte_controller/bit_controller/_n0196_inv ;
  wire \i2c/byte_controller/bit_controller/cnt_1_rstpot_699 ;
  wire \i2c/byte_controller/bit_controller/cnt_2_rstpot_698 ;
  wire \i2c/byte_controller/bit_controller/cnt_4_rstpot_688 ;
  wire \i2c/byte_controller/bit_controller/cnt_3_rstpot_675 ;
  wire \i2c/byte_controller/ack_out_GND_5_o_MUX_113_o ;
  wire \i2c/byte_controller/N2 ;
  wire \i2c/ctr[7]_GND_4_o_mux_16_OUT<5>_pack_3 ;
  wire \i2c/ctr[7]_GND_4_o_mux_16_OUT<2> ;
  wire \i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<4> ;
  wire \i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<5> ;
  wire \i2c/N12_pack_7 ;
  wire \i2c/cr[7]_GND_4_o_mux_24_OUT<1> ;
  wire \i2c/cr_0_1701 ;
  wire \i2c/cr[7]_GND_4_o_mux_24_OUT<2> ;
  wire \i2c/cr[7]_GND_4_o_mux_24_OUT<0> ;
  wire \i2c/_n0214_inv_pack_8 ;
  wire N160;
  wire Mmux_pointer_dummy15_1881;
  wire N161;
  wire N146;
  wire N64;
  wire N147;
  wire \i2c/byte_controller/c_state[4]_GND_5_o_MUX_110_o ;
  wire \i2c/byte_controller/N11_pack_4 ;
  wire \i2c/byte_controller/c_state[4]_GND_5_o_mux_54_OUT<0> ;
  wire \i2c/byte_controller/c_state[4]_GND_5_o_mux_54_OUT<1> ;
  wire \i2c/byte_controller/bit_controller/sda_oen_PWR_4_o_MUX_92_o ;
  wire \i2c/byte_controller/bit_controller/N14 ;
  wire \i2c/byte_controller/bit_controller/scl_oen_PWR_4_o_MUX_91_o ;
  wire \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_MUX_90_o ;
  wire \i2c/byte_controller/c_state[4]_GND_5_o_MUX_109_o ;
  wire \i2c/byte_controller/bit_controller/Mmux_sda_chk_GND_6_o_MUX_66_o1 ;
  wire Mmux_pointer_dummy17_pack_4;
  wire \i2c/byte_controller/c_state_FSM_FFd2-In ;
  wire \i2c/byte_controller/c_state_FSM_FFd1-In_2116 ;
  wire \i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o13 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd8-In ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd9-In ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd11-In ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd10-In ;
  wire \i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<1> ;
  wire \i2c/N7_pack_6 ;
  wire \i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<0> ;
  wire \i2c/N2_pack_4 ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<10> ;
  wire \i2c/prer<10>_pack_7 ;
  wire \i2c/prer<11>_pack_9 ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<3> ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<2> ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<11> ;
  wire \i2c/prer<12>_pack_11 ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<12> ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<4> ;
  wire \i2c/prer<13>_pack_13 ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<5> ;
  wire \i2c/prer[15]_PWR_2_o_mux_15_OUT<13> ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd12-In_2461 ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd14-In ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd13-In ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd1-In ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd2-In ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd3-In ;
  wire N60;
  wire Mmux_pointer_dummy43_2421;
  wire \i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<2> ;
  wire \i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<3> ;
  wire i2c_cs_d4_2533;
  wire N164;
  wire N165;
  wire \i2c/byte_controller/bit_controller/sSDA_PWR_4_o_MUX_60_o ;
  wire \i2c/byte_controller/bit_controller/dSCL_2516 ;
  wire \i2c/byte_controller/bit_controller/sSCL_PWR_4_o_MUX_59_o ;
  wire \i2c/byte_controller/bit_controller/cmd_stop_GND_6_o_MUX_65_o ;
  wire \i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In ;
  wire \i2c/rd_GND_4_o_MUX_116_o ;
  wire \i2c/byte_controller/bit_controller/sta_condition_GND_6_o_MUX_63_o ;
  wire \i2c/byte_controller/bit_controller/sSDA_GND_6_o_MUX_61_o ;
  wire \i2c/byte_controller/bit_controller/sta_condition_2652 ;
  wire \i2c/byte_controller/bit_controller/sSDA_GND_6_o_MUX_62_o ;
  wire \i2c/wb_cyc_i_wb_ack_o_AND_3_o ;
  wire N162;
  wire i2c_cs_d6_pack_9;
  wire i2c_cs_d_rt_2733;
  wire \NlwBufferSignal_i2c/ctr_3/CLK ;
  wire \NlwBufferSignal_i2c/ctr_3/IN ;
  wire \NlwBufferSignal_i2c/ctr_2/CLK ;
  wire \NlwBufferSignal_i2c/ctr_2/IN ;
  wire \NlwBufferSignal_i2c/ctr_1/CLK ;
  wire \NlwBufferSignal_i2c/ctr_0/CLK ;
  wire \NlwBufferSignal_i2c/ctr_0/IN ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/slave_wait/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/core_cmd_2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/dcnt_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/dcnt_2/CLK ;
  wire \NlwBufferSignal_i2c/irq_flag/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd3/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/cmd_ack/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/core_cmd_3/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/al/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd7/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/dout/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/dout/IN ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd6/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd5/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd4/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd17/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd16/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd15/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_5/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_4/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_3/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_2/CLK ;
  wire \NlwBufferSignal_i2c/txr_3/CLK ;
  wire \NlwBufferSignal_i2c/txr_3/IN ;
  wire \NlwBufferSignal_i2c/txr_2/CLK ;
  wire \NlwBufferSignal_i2c/txr_2/IN ;
  wire \NlwBufferSignal_i2c/txr_1/CLK ;
  wire \NlwBufferSignal_i2c/txr_1/IN ;
  wire \NlwBufferSignal_i2c/txr_0/CLK ;
  wire \NlwBufferSignal_i2c/txr_0/IN ;
  wire \NlwBufferSignal_i2c_data_in_7/CLK ;
  wire \NlwBufferSignal_i2c_data_in_7/IN ;
  wire \NlwBufferSignal_i2c_data_in_6/CLK ;
  wire \NlwBufferSignal_i2c_data_in_6/IN ;
  wire \NlwBufferSignal_i2c_data_in_5/CLK ;
  wire \NlwBufferSignal_i2c_data_in_5/IN ;
  wire \NlwBufferSignal_i2c_data_in_4/CLK ;
  wire \NlwBufferSignal_i2c_data_in_4/IN ;
  wire \NlwBufferSignal_i2c_data_in_1/CLK ;
  wire \NlwBufferSignal_i2c_data_in_1/IN ;
  wire \NlwBufferSignal_i2c_data_in_0/CLK ;
  wire \NlwBufferSignal_i2c_data_in_0/IN ;
  wire \NlwBufferSignal_i2c/byte_controller/ld/CLK ;
  wire \NlwBufferSignal_i2c/txr_7/CLK ;
  wire \NlwBufferSignal_i2c/txr_7/IN ;
  wire \NlwBufferSignal_i2c/txr_6/CLK ;
  wire \NlwBufferSignal_i2c/txr_6/IN ;
  wire \NlwBufferSignal_i2c/txr_5/CLK ;
  wire \NlwBufferSignal_i2c/txr_5/IN ;
  wire \NlwBufferSignal_i2c/txr_4/CLK ;
  wire \NlwBufferSignal_i2c/txr_4/IN ;
  wire \NlwBufferSignal_i2c/al/CLK ;
  wire \NlwBufferSignal_i2c/rxack/CLK ;
  wire \NlwBufferSignal_i2c/wb_inta_o/CLK ;
  wire \NlwBufferSignal_i2c/cr_7/CLK ;
  wire \NlwBufferSignal_i2c/cr_5/CLK ;
  wire \NlwBufferSignal_i2c/cr_6/CLK ;
  wire \NlwBufferSignal_i2c/cr_4/CLK ;
  wire \NlwBufferSignal_pointer_5/CLK ;
  wire \NlwBufferSignal_pointer_4/CLK ;
  wire \NlwBufferSignal_clk_BUFGP/BUFG/IN ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_7/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_6/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_5/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cSCL_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cSCL_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cSDA_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cSDA_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/sSDA/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_4/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_3/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/dcnt_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_0/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_7/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_6/CLK ;
  wire \NlwBufferSignal_i2c_cyc/CLK ;
  wire \NlwBufferSignal_i2c_rst/CLK ;
  wire \NlwBufferSignal_i2c_rst/IN ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/sSCL/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_8/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_7/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_6/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_5/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_13/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_12/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_11/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_10/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_12/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_11/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_10/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_9/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_15/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_14/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_13/CLK ;
  wire \NlwBufferSignal_i2c_lab_1/CLK ;
  wire \NlwBufferSignal_i2c_lab_1/IN ;
  wire \NlwBufferSignal_i2c_lab_0/CLK ;
  wire \NlwBufferSignal_i2c_lab_0/IN ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/dscl_oen/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/dscl_oen/IN ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/sda_chk/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/clk_en/CLK ;
  wire \NlwBufferSignal_i2c/prer_9/CLK ;
  wire \NlwBufferSignal_i2c/prer_1/CLK ;
  wire \NlwBufferSignal_i2c/prer_8/CLK ;
  wire \NlwBufferSignal_i2c/prer_0/CLK ;
  wire \NlwBufferSignal_i2c/prer_7/CLK ;
  wire \NlwBufferSignal_i2c/prer_15/CLK ;
  wire \NlwBufferSignal_i2c/prer_6/CLK ;
  wire \NlwBufferSignal_i2c/prer_14/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_4/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_3/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/ack_out/CLK ;
  wire \NlwBufferSignal_i2c/ctr_7/CLK ;
  wire \NlwBufferSignal_i2c/ctr_6/CLK ;
  wire \NlwBufferSignal_i2c/ctr_5/CLK ;
  wire \NlwBufferSignal_i2c/ctr_5/IN ;
  wire \NlwBufferSignal_i2c/ctr_4/CLK ;
  wire \NlwBufferSignal_i2c/cr_3/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_5/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_4/CLK ;
  wire \NlwBufferSignal_state_3/CLK ;
  wire \NlwBufferSignal_state_2/CLK ;
  wire \NlwBufferSignal_pointer_3/CLK ;
  wire \NlwBufferSignal_pointer_2/CLK ;
  wire \NlwBufferSignal_i2c/cr_2/CLK ;
  wire \NlwBufferSignal_i2c/cr_0/CLK ;
  wire \NlwBufferSignal_i2c/cr_1/CLK ;
  wire \NlwBufferSignal_state_1/CLK ;
  wire \NlwBufferSignal_state_0/CLK ;
  wire \NlwBufferSignal_i2c_we/CLK ;
  wire \NlwBufferSignal_i2c_we/IN ;
  wire \NlwBufferSignal_i2c/byte_controller/shift/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/core_cmd_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/core_cmd_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/scl_oen/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/sda_oen/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/core_txd/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cmd_ack/CLK ;
  wire \NlwBufferSignal_pointer_1/CLK ;
  wire \NlwBufferSignal_pointer_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd11/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd10/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd9/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd8/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_9/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_8/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_7/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_6/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_1/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_0/CLK ;
  wire \NlwBufferSignal_i2c/prer_5/CLK ;
  wire \NlwBufferSignal_i2c/prer_13/CLK ;
  wire \NlwBufferSignal_i2c/prer_4/CLK ;
  wire \NlwBufferSignal_i2c/prer_12/CLK ;
  wire \NlwBufferSignal_i2c/prer_3/CLK ;
  wire \NlwBufferSignal_i2c/prer_11/CLK ;
  wire \NlwBufferSignal_i2c/prer_2/CLK ;
  wire \NlwBufferSignal_i2c/prer_10/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd14/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd13/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd12/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd3/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_i2c_data_in_3/CLK ;
  wire \NlwBufferSignal_i2c_data_in_3/IN ;
  wire \NlwBufferSignal_i2c_data_in_2/CLK ;
  wire \NlwBufferSignal_i2c_data_in_2/IN ;
  wire \NlwBufferSignal_i2c/wb_dat_o_3/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_2/CLK ;
  wire \NlwBufferSignal_i2c_lab_2/CLK ;
  wire \NlwBufferSignal_i2c_lab_2/IN ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/dSDA/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/dSCL/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/cmd_stop/CLK ;
  wire \NlwBufferSignal_state_5/CLK ;
  wire \NlwBufferSignal_state_4/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd18/CLK ;
  wire \NlwBufferSignal_i2c/tip/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/busy/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/sto_condition/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/bit_controller/sta_condition/CLK ;
  wire \NlwBufferSignal_i2c/wb_ack_o/CLK ;
  wire \NlwBufferSignal_i2c_cs/CLK ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_19.D5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_18.C5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_17.B5LUT_O_UNCONNECTED ;
  wire \NLW_i2c_scl_o_2.A5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_27.D5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_26.C5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_25.B5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_24.A5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_23.D5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_22.C5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_21.B5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_20.A5LUT_O_UNCONNECTED ;
  wire GND;
  wire \NLW_N0_3.C6LUT_O_UNCONNECTED ;
  wire VCC;
  wire \NLW_i2c/byte_controller/bit_controller/N0_9.D5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_8.C5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_7.B5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_6.A5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_xor<15>_CO[0]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_xor<15>_CO[1]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_xor<15>_CO[2]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_xor<15>_CO[3]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_xor<15>_DI[3]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_30.C5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_29.B5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_28.A5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_5.D5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_4.C5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_3.B5LUT_O_UNCONNECTED ;
  wire \NLW_i2c_scl_o.A5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_13.D5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_12.C5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_11.B5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_10.A5LUT_O_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[0]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[1]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[2]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[3]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_DI[1]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_DI[2]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_DI[3]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_O[2]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_O[3]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_S[2]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_S[3]_UNCONNECTED ;
  wire \NLW_i2c/byte_controller/bit_controller/N0_14.A5LUT_O_UNCONNECTED ;
  wire \NLW_N0_2.D6LUT_O_UNCONNECTED ;
  wire \NLW_N0.C6LUT_O_UNCONNECTED ;
  wire [15 : 0] \i2c/prer ;
  wire [7 : 0] i2c_data_in;
  wire [2 : 0] i2c_lab;
  wire [1 : 0] \i2c/byte_controller/bit_controller/cSCL ;
  wire [2 : 0] \i2c/byte_controller/bit_controller/fSCL ;
  wire [7 : 0] \i2c/ctr ;
  wire [2 : 0] \i2c/byte_controller/bit_controller/fSDA ;
  wire [7 : 0] \i2c/txr ;
  wire [7 : 0] i2c_data_out;
  wire [1 : 0] \i2c/byte_controller/bit_controller/cSDA ;
  wire [3 : 0] \i2c/byte_controller/core_cmd ;
  wire [2 : 0] \i2c/byte_controller/dcnt ;
  wire [7 : 0] \i2c/rxr ;
  wire [5 : 0] pointer;
  wire [5 : 0] state;
  wire [15 : 0] \i2c/byte_controller/bit_controller/cnt ;
  wire [13 : 0] \i2c/byte_controller/bit_controller/filter_cnt ;
  wire [2 : 0] i2c_lab_d;
  wire [7 : 0] i2c_data_in_d;
  wire [15 : 0] \i2c/byte_controller/bit_controller/Result ;
  wire [15 : 1] \i2c/byte_controller/bit_controller/Mcount_cnt_lut ;
  wire [13 : 0] \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT ;
  wire [5 : 0] pointer_dummy;
  wire [13 : 0] \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT ;
  wire [5 : 0] nextState;
  assign
    NlwRenamedSig_IO_rst_n = rst_n;
  initial $sdf_annotate("netgen/par/i2c_controller_tst2_timesim.sdf");
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>_DMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [3]),
    .O(\i2c/byte_controller/bit_controller/Result<3>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>_CMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [2]),
    .O(\i2c/byte_controller/bit_controller/Result<2>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [1]),
    .O(\i2c/byte_controller/bit_controller/Result<1>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>_AMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [0]),
    .O(\i2c/byte_controller/bit_controller/Result<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y11" ),
    .INIT ( 64'h3333333333333333 ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<3>_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\i2c/byte_controller/bit_controller/cnt [3]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y11" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_19.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_19.D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X12Y11" ))
  \ProtoComp29.CYINITVCC  (
    .O(\ProtoComp29.CYINITVCC.1_15 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y11" ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp29.CYINITVCC.1_15 ),
    .CO({\i2c/byte_controller/bit_controller/Mcount_cnt_cy[3] , \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>_CO[2]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>_CO[1]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b0}),
    .O({\i2c/byte_controller/bit_controller/Result [3], \i2c/byte_controller/bit_controller/Result [2], \i2c/byte_controller/bit_controller/Result [1]
, \i2c/byte_controller/bit_controller/Result [0]}),
    .S({\i2c/byte_controller/bit_controller/Mcount_cnt_lut [3], \i2c/byte_controller/bit_controller/Mcount_cnt_lut [2], 
\i2c/byte_controller/bit_controller/Mcount_cnt_lut [1], \i2c/byte_controller/bit_controller/cnt<0>_rt_5 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y11" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<2>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\i2c/byte_controller/bit_controller/cnt [2]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y11" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_18.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_18.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y11" ),
    .INIT ( 64'h3333333333333333 ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<1>_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\i2c/byte_controller/bit_controller/cnt [1]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y11" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_17.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_17.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y11" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \i2c/byte_controller/bit_controller/cnt<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\i2c/byte_controller/bit_controller/cnt [0]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/cnt<0>_rt_5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y11" ),
    .INIT ( 32'h00000000 ))
  \i2c_scl_o_2.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c_scl_o_2.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>_DMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [11]),
    .O(\i2c/byte_controller/bit_controller/Result<11>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>_CMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [10]),
    .O(\i2c/byte_controller/bit_controller/Result<10>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [9]),
    .O(\i2c/byte_controller/bit_controller/Result<9>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>_AMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [8]),
    .O(\i2c/byte_controller/bit_controller/Result<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y13" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<11>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [11]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [11])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y13" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_27.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_27.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y13" ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>  (
    .CI(\i2c/byte_controller/bit_controller/Mcount_cnt_cy[7] ),
    .CYINIT(1'b0),
    .CO({\i2c/byte_controller/bit_controller/Mcount_cnt_cy[11] , \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>_CO[2]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>_CO[1]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({\i2c/byte_controller/bit_controller/Result [11], \i2c/byte_controller/bit_controller/Result [10], 
\i2c/byte_controller/bit_controller/Result [9], \i2c/byte_controller/bit_controller/Result [8]}),
    .S({\i2c/byte_controller/bit_controller/Mcount_cnt_lut [11], \i2c/byte_controller/bit_controller/Mcount_cnt_lut [10], 
\i2c/byte_controller/bit_controller/Mcount_cnt_lut [9], \i2c/byte_controller/bit_controller/Mcount_cnt_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y13" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<10>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [10]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [10])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y13" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_26.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_26.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y13" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<9>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\i2c/byte_controller/bit_controller/cnt [9]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [9])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y13" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_25.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_25.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y13" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<8>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\i2c/byte_controller/bit_controller/cnt [8]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [8])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y13" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_24.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_24.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>_DMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [7]),
    .O(\i2c/byte_controller/bit_controller/Result<7>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>_CMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [6]),
    .O(\i2c/byte_controller/bit_controller/Result<6>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [5]),
    .O(\i2c/byte_controller/bit_controller/Result<5>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>/i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>_AMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [4]),
    .O(\i2c/byte_controller/bit_controller/Result<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<7>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [7]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [7])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_23.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_23.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y12" ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>  (
    .CI(\i2c/byte_controller/bit_controller/Mcount_cnt_cy[3] ),
    .CYINIT(1'b0),
    .CO({\i2c/byte_controller/bit_controller/Mcount_cnt_cy[7] , \NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>_CO[2]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>_CO[1]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Mcount_cnt_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({\i2c/byte_controller/bit_controller/Result [7], \i2c/byte_controller/bit_controller/Result [6], \i2c/byte_controller/bit_controller/Result [5]
, \i2c/byte_controller/bit_controller/Result [4]}),
    .S({\i2c/byte_controller/bit_controller/Mcount_cnt_lut [7], \i2c/byte_controller/bit_controller/Mcount_cnt_lut [6], 
\i2c/byte_controller/bit_controller/Mcount_cnt_lut [5], \i2c/byte_controller/bit_controller/Mcount_cnt_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<6>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\i2c/byte_controller/bit_controller/cnt [6]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [6])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_22.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_22.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<5>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [5]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [5])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_21.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_21.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<4>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\i2c/byte_controller/bit_controller/cnt [4]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [4])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_20.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_20.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \i2c/ctr<3>/i2c/ctr<3>_BMUX_Delay  (
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<0>_pack_3 ),
    .O(\i2c/ctr[7]_GND_4_o_mux_16_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 1'b0 ))
  \i2c/ctr_3  (
    .CE(\i2c/_n0165_inv ),
    .CLK(\NlwBufferSignal_i2c/ctr_3/CLK ),
    .I(\NlwBufferSignal_i2c/ctr_3/IN ),
    .O(\i2c/ctr [3]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 64'hAAAAFFFF0A5F0A5F ))
  \i2c/mux111_SW4  (
    .ADR1(1'b1),
    .ADR3(\i2c/ctr [1]),
    .ADR2(\i2c/cr_1_3040 ),
    .ADR4(\i2c/rxr [1]),
    .ADR0(i2c_lab[2]),
    .ADR5(i2c_lab[0]),
    .O(\i2c/N42 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 1'b0 ))
  \i2c/ctr_2  (
    .CE(\i2c/_n0165_inv ),
    .CLK(\NlwBufferSignal_i2c/ctr_2/CLK ),
    .I(\NlwBufferSignal_i2c/ctr_2/IN ),
    .O(\i2c/ctr [2]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 64'hFF00CCCCFF00CCCC ))
  \i2c/mux31_SW1  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR1(\i2c/ctr [3]),
    .ADR3(\i2c/rxr [3]),
    .ADR4(i2c_lab[0]),
    .O(\i2c/N31 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 1'b0 ))
  \i2c/ctr_1  (
    .CE(\i2c/_n0165_inv ),
    .CLK(\NlwBufferSignal_i2c/ctr_1/CLK ),
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<1> ),
    .O(\i2c/ctr [1]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 64'h3333000033330000 ))
  \i2c/ctr[7]_GND_4_o_mux_16_OUT<1>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(i2c_data_in[1]),
    .ADR1(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/ctr[7]_GND_4_o_mux_16_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 32'h33003300 ))
  \i2c/ctr[7]_GND_4_o_mux_16_OUT<0>1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(i2c_data_in[0]),
    .ADR2(1'b1),
    .ADR1(i2c_rst_2786),
    .O(\i2c/ctr[7]_GND_4_o_mux_16_OUT<0>_pack_3 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 1'b0 ))
  \i2c/ctr_0  (
    .CE(\i2c/_n0165_inv ),
    .CLK(\NlwBufferSignal_i2c/ctr_0/CLK ),
    .I(\NlwBufferSignal_i2c/ctr_0/IN ),
    .O(\i2c/ctr [0]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 64'hF0FFF0FFF000F000 ))
  \i2c/mux21_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR5(\i2c/ctr [2]),
    .ADR2(\i2c/rxr [2]),
    .ADR3(i2c_lab[0]),
    .O(\i2c/N26 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y23" ),
    .INIT ( 64'h0000000000000200 ))
  \state[5]_GND_1_o_equal_32_o<5>1  (
    .ADR3(state[0]),
    .ADR4(state[5]),
    .ADR0(state[4]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR5(state[3]),
    .O(\state[5]_GND_1_o_equal_32_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y23" ),
    .INIT ( 64'hFFFFFFFFFFFFFFEE ))
  Mmux_i2c_data_in_d73_SW0 (
    .ADR2(1'b1),
    .ADR1(_n0178),
    .ADR0(\state[5]_GND_1_o_equal_32_o ),
    .ADR5(_n0177),
    .ADR4(\state[5]_GND_1_o_equal_36_o ),
    .ADR3(\state[5]_GND_1_o_equal_27_o ),
    .O(N156)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y23" ),
    .INIT ( 64'h0000000000880008 ))
  _n01771 (
    .ADR4(state[0]),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR0(state[3]),
    .O(_n0177)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 64'hFFFFFFFFFFFEFFFE ))
  Mmux_nextState73 (
    .ADR4(1'b1),
    .ADR0(\state[5]_GND_1_o_equal_28_o ),
    .ADR1(\state[5]_GND_1_o_equal_29_o ),
    .ADR3(\state[5]_GND_1_o_equal_25_o ),
    .ADR2(\state[5]_GND_1_o_equal_26_o ),
    .ADR5(\state[5]_GND_1_o_equal_27_o ),
    .O(Mmux_nextState72_3099)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 64'h0000000000030003 ))
  Mmux_nextState32 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR5(\state[5]_GND_1_o_equal_28_o ),
    .ADR3(\state[5]_GND_1_o_equal_25_o ),
    .ADR1(\state[5]_GND_1_o_equal_26_o ),
    .ADR2(\state[5]_GND_1_o_equal_27_o ),
    .O(Mmux_nextState31_3095)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y26" ),
    .INIT ( 64'h0000000000000008 ))
  \state[5]_GND_1_o_equal_28_o<5>1  (
    .ADR5(state[0]),
    .ADR2(state[5]),
    .ADR4(state[4]),
    .ADR0(state[2]),
    .ADR3(state[1]),
    .ADR1(state[3]),
    .O(\state[5]_GND_1_o_equal_28_o )
  );
  X_BUF   \_n0176/_n0176_CMUX_Delay  (
    .I(N142),
    .O(N142_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X14Y24" ))
  Mmux_i2c_data_in_d51_SW0_SW1 (
    .IA(N152),
    .IB(N153),
    .O(N142),
    .SEL(\state[5]_GND_1_o_equal_27_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 64'hFF00FF00CC00CD00 ))
  Mmux_i2c_data_in_d51_SW0_SW1_F (
    .ADR3(Mmux_i2c_lab_d32),
    .ADR0(_n0176),
    .ADR1(\state[5]_GND_1_o_equal_22_o ),
    .ADR2(\state[5]_GND_1_o_equal_31_o ),
    .ADR4(\state[5]_GND_1_o_equal_26_o ),
    .ADR5(\state[5]_GND_1_o_equal_21_o ),
    .O(N152)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 64'hFFFFF0F500000000 ))
  Mmux_i2c_data_in_d51_SW0_SW1_G (
    .ADR1(1'b1),
    .ADR5(Mmux_i2c_lab_d32),
    .ADR3(_n0176),
    .ADR2(\state[5]_GND_1_o_equal_22_o ),
    .ADR0(\state[5]_GND_1_o_equal_26_o ),
    .ADR4(\state[5]_GND_1_o_equal_21_o ),
    .O(N153)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 64'h0000001000140000 ))
  _n01761 (
    .ADR2(state[0]),
    .ADR0(state[5]),
    .ADR3(state[4]),
    .ADR4(state[2]),
    .ADR1(state[1]),
    .ADR5(state[3]),
    .O(_n0176)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y24" ),
    .INIT ( 64'h0000000400000000 ))
  \state[5]_GND_1_o_equal_26_o<5>1  (
    .ADR3(state[0]),
    .ADR2(state[5]),
    .ADR0(state[4]),
    .ADR4(state[2]),
    .ADR5(state[1]),
    .ADR1(state[3]),
    .O(\state[5]_GND_1_o_equal_26_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y27" ),
    .INIT ( 64'h00000000AA000000 ))
  Mmux_nextState1511 (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR5(state[5]),
    .ADR3(state[4]),
    .ADR4(state[2]),
    .ADR0(state[1]),
    .O(Mmux_nextState151)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y27" ),
    .INIT ( 64'h000000E0000000C0 ))
  _n01791 (
    .ADR5(state[0]),
    .ADR4(state[5]),
    .ADR2(state[4]),
    .ADR0(state[2]),
    .ADR3(state[1]),
    .ADR1(state[3]),
    .O(_n0179)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y27" ),
    .INIT ( 64'hFFFFFFFF00A00000 ))
  Mmux_i2c_data_in_d71 (
    .ADR1(1'b1),
    .ADR2(i2c_data_in[6]),
    .ADR4(state[3]),
    .ADR3(_n0179),
    .ADR0(Mmux_nextState151),
    .ADR5(\state[5]_GND_1_o_equal_37_o ),
    .O(Mmux_i2c_data_in_d7)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y27" ),
    .INIT ( 64'h0000008000000000 ))
  \state[5]_GND_1_o_equal_37_o<5>1  (
    .ADR2(state[0]),
    .ADR3(state[5]),
    .ADR1(state[4]),
    .ADR5(state[2]),
    .ADR0(state[1]),
    .ADR4(state[3]),
    .O(\state[5]_GND_1_o_equal_37_o )
  );
  X_BUF   \_n0168/_n0168_CMUX_Delay  (
    .I(N77),
    .O(N77_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X14Y25" ))
  Mmux_i2c_lab_d2211_SW1 (
    .IA(N150),
    .IB(N151),
    .O(N77),
    .SEL(_n0169)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 64'hFFFFFF00FFF5FF00 ))
  Mmux_i2c_lab_d2211_SW1_F (
    .ADR1(1'b1),
    .ADR4(N38),
    .ADR0(_n0168),
    .ADR2(\state[5]_PWR_1_o_equal_20_o ),
    .ADR5(\state[5]_GND_1_o_equal_21_o ),
    .ADR3(\state[5]_GND_1_o_equal_17_o ),
    .O(N150)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 64'hFFFFFFFFCCCCC0C8 ))
  Mmux_i2c_lab_d2211_SW1_G (
    .ADR1(N38),
    .ADR3(_n0168),
    .ADR2(\state[5]_PWR_1_o_equal_20_o ),
    .ADR0(\state[5]_GND_1_o_equal_26_o ),
    .ADR4(\state[5]_GND_1_o_equal_21_o ),
    .ADR5(\state[5]_GND_1_o_equal_17_o ),
    .O(N151)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 64'h0001000000100030 ))
  _n01681 (
    .ADR4(state[0]),
    .ADR3(state[5]),
    .ADR1(state[4]),
    .ADR2(state[2]),
    .ADR0(state[1]),
    .ADR5(state[3]),
    .O(_n0168)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y25" ),
    .INIT ( 64'hFFFFFFFFFFFEFFEF ))
  Mmux_i2c_lab_d2_SW0_SW0 (
    .ADR4(state[0]),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR0(state[3]),
    .O(N38)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 64'h0001000000010000 ))
  Mmux_i2c_data_in_d81121_SW1 (
    .ADR5(1'b1),
    .ADR1(_n0176),
    .ADR0(_n0177),
    .ADR2(\state[5]_GND_1_o_equal_31_o ),
    .ADR4(Mmux_i2c_data_in_d611),
    .ADR3(\state[5]_GND_1_o_equal_27_o ),
    .O(N136)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 64'hFFFAFFFFFFFFFFFF ))
  Mmux_i2c_data_in_d81121_SW0 (
    .ADR1(1'b1),
    .ADR5(i2c_data_in[2]),
    .ADR3(_n0177),
    .ADR0(\state[5]_GND_1_o_equal_31_o ),
    .ADR4(Mmux_i2c_data_in_d611),
    .ADR2(\state[5]_GND_1_o_equal_27_o ),
    .O(N134)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 64'hFFFF0000FFFFCFFF ))
  Mmux_i2c_data_in_d6_SW0_SW0 (
    .ADR0(1'b1),
    .ADR2(i2c_data_in[5]),
    .ADR5(\state[5]_GND_1_o_equal_31_o ),
    .ADR1(\state[5]_GND_1_o_equal_36_o ),
    .ADR3(Mmux_i2c_data_in_d611),
    .ADR4(\state[5]_GND_1_o_equal_17_o ),
    .O(N132)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 64'h0000000100000000 ))
  \state[5]_GND_1_o_equal_31_o<5>1  (
    .ADR3(state[0]),
    .ADR2(state[5]),
    .ADR5(state[4]),
    .ADR4(state[2]),
    .ADR0(state[1]),
    .ADR1(state[3]),
    .O(\state[5]_GND_1_o_equal_31_o )
  );
  X_BUF   \Mmux_nextState74/Mmux_nextState74_CMUX_Delay  (
    .I(N83),
    .O(N83_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X14Y28" ))
  Mmux_pointer_dummy63_SW0 (
    .IA(N168),
    .IB(1'b0),
    .O(N83),
    .SEL(\state[5]_GND_1_o_equal_34_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y28" ),
    .INIT ( 64'hFFFF9FD9FFFE14BB ))
  Mmux_pointer_dummy63_SW0_F (
    .ADR0(state[3]),
    .ADR2(state[0]),
    .ADR1(state[4]),
    .ADR3(state[2]),
    .ADR5(state[1]),
    .ADR4(state[5]),
    .O(N168)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y28" ),
    .INIT ( 64'h0000000000000000 ))
  \N0_3.C6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N0_3.C6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y28" ),
    .INIT ( 64'h0001008000110000 ))
  Mmux_nextState75 (
    .ADR5(state[0]),
    .ADR3(state[5]),
    .ADR4(state[4]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR0(state[3]),
    .O(Mmux_nextState74_3104)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y28" ),
    .INIT ( 64'h0000800000000000 ))
  Mmux_pointer_dummy62 (
    .ADR0(pointer[5]),
    .ADR4(state[5]),
    .ADR1(state[4]),
    .ADR5(state[2]),
    .ADR3(state[1]),
    .ADR2(state[3]),
    .O(Mmux_pointer_dummy61_3133)
  );
  X_BUF   \Mmux_pointer_dummy12/Mmux_pointer_dummy12_CMUX_Delay  (
    .I(Mmux_pointer_dummy12),
    .O(Mmux_pointer_dummy12_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X14Y30" ))
  Mmux_pointer_dummy121 (
    .IA(N158),
    .IB(N159),
    .O(Mmux_pointer_dummy12),
    .SEL(\state[5]_GND_1_o_equal_34_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y30" ),
    .INIT ( 64'h0000000100001200 ))
  Mmux_pointer_dummy121_F (
    .ADR1(state[2]),
    .ADR4(state[0]),
    .ADR0(state[3]),
    .ADR3(state[1]),
    .ADR2(state[4]),
    .ADR5(state[5]),
    .O(N158)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y30" ),
    .INIT ( 64'hFFFFFFFFA8A8B8A8 ))
  Mmux_pointer_dummy121_G (
    .ADR0(state[4]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR4(state[0]),
    .ADR3(state[3]),
    .ADR5(state[5]),
    .O(N159)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y29" ),
    .INIT ( 64'h00000000000C0000 ))
  _n01901 (
    .ADR0(1'b1),
    .ADR2(state[5]),
    .ADR4(state[4]),
    .ADR5(state[2]),
    .ADR3(state[1]),
    .ADR1(state[3]),
    .O(_n0190)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y29" ),
    .INIT ( 64'h0000002200000000 ))
  _n01891 (
    .ADR2(1'b1),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR4(state[2]),
    .ADR0(state[1]),
    .ADR1(state[3]),
    .O(_n0189)
  );
  X_BUF   \i2c/byte_controller/bit_controller/sSCL_dSCL_AND_27_o/i2c/byte_controller/bit_controller/sSCL_dSCL_AND_27_o_AMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/slave_wait_pack_1 ),
    .O(\i2c/byte_controller/bit_controller/slave_wait_2800 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y11" ),
    .INIT ( 64'h0000F0F00000F0F0 ))
  \i2c/byte_controller/bit_controller/sSCL_dSCL_AND_27_o1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/dSCL_0 ),
    .ADR2(\i2c/byte_controller/bit_controller/sSCL_2825 ),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/sSCL_dSCL_AND_27_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y11" ),
    .INIT ( 32'h0A0E0A0E ))
  \i2c/byte_controller/bit_controller/scl_oen_slave_wait_OR_11_o1  (
    .ADR3(\i2c/byte_controller/bit_controller/dscl_oen_2849 ),
    .ADR0(\i2c/byte_controller/bit_controller/slave_wait_2800 ),
    .ADR1(i2c_scl_oe),
    .ADR4(1'b1),
    .ADR2(\i2c/byte_controller/bit_controller/sSCL_2825 ),
    .O(\i2c/byte_controller/bit_controller/scl_oen_slave_wait_OR_11_o )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y11" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/slave_wait  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/slave_wait/CLK ),
    .I(\i2c/byte_controller/bit_controller/scl_oen_slave_wait_OR_11_o ),
    .O(\i2c/byte_controller/bit_controller/slave_wait_pack_1 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_BUF   \i2c/byte_controller/bit_controller/N8/i2c/byte_controller/bit_controller/N8_AMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/N10 ),
    .O(\i2c/byte_controller/bit_controller/N10_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y13" ),
    .INIT ( 64'hF5F5F5F5F5F5F5F5 ))
  \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o4_SW0  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/dSCL_0 ),
    .ADR2(\i2c/byte_controller/bit_controller/sSCL_2825 ),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/N8 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y13" ),
    .INIT ( 32'hCECCFFFF ))
  \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o3_SW0  (
    .ADR3(i2c_scl_oe),
    .ADR4(\i2c/ctr [7]),
    .ADR1(i2c_rst_2786),
    .ADR0(\i2c/byte_controller/bit_controller/dSCL_0 ),
    .ADR2(\i2c/byte_controller/bit_controller/sSCL_2825 ),
    .O(\i2c/byte_controller/bit_controller/N10 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y12" ),
    .INIT ( 64'h0000000000000001 ))
  \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o1  (
    .ADR5(\i2c/byte_controller/bit_controller/cnt [5]),
    .ADR2(\i2c/byte_controller/bit_controller/cnt [4]),
    .ADR1(\i2c/byte_controller/bit_controller/cnt [3]),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [2]),
    .ADR3(\i2c/byte_controller/bit_controller/cnt [0]),
    .ADR0(\i2c/byte_controller/bit_controller/cnt [1]),
    .O(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o1_2796 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y14" ),
    .INIT ( 64'h3500053000000000 ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT32  (
    .ADR0(\i2c/cr_5_2864 ),
    .ADR1(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .ADR2(\i2c/byte_controller/c_state_FSM_FFd2_2855 ),
    .ADR5(\i2c/byte_controller/core_ack ),
    .ADR3(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR4(\i2c/byte_controller/c_state_FSM_FFd3-In11 ),
    .O(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT31_3177 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y14" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/core_cmd_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/core_cmd_2/CLK ),
    .I(\i2c/byte_controller/c_state[4]_GND_5_o_mux_54_OUT<2> ),
    .O(\i2c/byte_controller/core_cmd [2]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y14" ),
    .INIT ( 64'hFFEAFFC000000000 ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT34  (
    .ADR1(\i2c/cr_4_2853 ),
    .ADR2(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT316 ),
    .ADR0(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT32_3089 ),
    .ADR4(\i2c/byte_controller/core_cmd [2]),
    .ADR5(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT3 ),
    .ADR3(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT31_3177 ),
    .O(\i2c/byte_controller/c_state[4]_GND_5_o_mux_54_OUT<2> )
  );
  X_BUF   \i2c/byte_controller/dcnt<1>/i2c/byte_controller/dcnt<1>_AMUX_Delay  (
    .I(\i2c/byte_controller/dcnt<2>_pack_4 ),
    .O(\i2c/byte_controller/dcnt [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y15" ),
    .INIT ( 64'hFFFFFFFFFFCCFFCC ))
  \i2c/byte_controller/c_state_FSM_FFd3-In111  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR5(\i2c/byte_controller/dcnt [2]),
    .ADR1(\i2c/byte_controller/dcnt [1]),
    .ADR3(\i2c/byte_controller/dcnt [0]),
    .O(\i2c/byte_controller/c_state_FSM_FFd3-In11 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y15" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/dcnt_1  (
    .CE(\i2c/byte_controller/_n0139_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/dcnt_1/CLK ),
    .I(\i2c/byte_controller/dcnt[2]_GND_5_o_mux_8_OUT<1> ),
    .O(\i2c/byte_controller/dcnt [1]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y15" ),
    .INIT ( 64'h3333300333333003 ))
  \i2c/byte_controller/Mmux_dcnt[2]_GND_5_o_mux_8_OUT21  (
    .ADR0(1'b1),
    .ADR3(\i2c/byte_controller/dcnt [0]),
    .ADR4(\i2c/byte_controller/ld_2869 ),
    .ADR2(\i2c/byte_controller/dcnt [1]),
    .ADR1(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/dcnt[2]_GND_5_o_mux_8_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y15" ),
    .INIT ( 32'h33332221 ))
  \i2c/byte_controller/Mmux_dcnt[2]_GND_5_o_mux_8_OUT31  (
    .ADR0(\i2c/byte_controller/dcnt [2]),
    .ADR3(\i2c/byte_controller/dcnt [0]),
    .ADR4(\i2c/byte_controller/ld_2869 ),
    .ADR2(\i2c/byte_controller/dcnt [1]),
    .ADR1(i2c_rst_2786),
    .O(\i2c/byte_controller/dcnt[2]_GND_5_o_mux_8_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y15" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/dcnt_2  (
    .CE(\i2c/byte_controller/_n0139_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/dcnt_2/CLK ),
    .I(\i2c/byte_controller/dcnt[2]_GND_5_o_mux_8_OUT<2> ),
    .O(\i2c/byte_controller/dcnt<2>_pack_4 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y19" ),
    .INIT ( 1'b0 ))
  \i2c/irq_flag  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/irq_flag/CLK ),
    .I(\i2c/done_GND_4_o_MUX_117_o ),
    .O(\i2c/irq_flag_2845 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y19" ),
    .INIT ( 64'h00000F0F00000F0C ))
  \i2c/Mmux_done_GND_4_o_MUX_117_o11  (
    .ADR0(1'b1),
    .ADR2(\i2c/cr_0_0 ),
    .ADR5(\i2c/done ),
    .ADR3(\i2c/irq_flag_2845 ),
    .ADR1(\i2c/i2c_al ),
    .ADR4(i2c_rst_2786),
    .O(\i2c/done_GND_4_o_MUX_117_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y16" ),
    .INIT ( 64'h0000000000000003 ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT3161  (
    .ADR0(1'b1),
    .ADR5(\i2c/cr_7_2865 ),
    .ADR2(\i2c/done ),
    .ADR3(\i2c/cr_5_2864 ),
    .ADR4(\i2c/byte_controller/c_state_FSM_FFd2_2855 ),
    .ADR1(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .O(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT316 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y16" ),
    .INIT ( 64'hA5A5252521A52125 ))
  \i2c/byte_controller/c_state_FSM_FFd1-In_SW1  (
    .ADR5(\i2c/cr_4_2853 ),
    .ADR1(\i2c/cr_6_2854 ),
    .ADR0(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .ADR2(\i2c/byte_controller/core_ack ),
    .ADR4(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR3(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT316 ),
    .O(\i2c/byte_controller/N9 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y16" ),
    .INIT ( 64'h2A2222222AAA22AA ))
  \i2c/byte_controller/c_state_FSM_FFd3-In1  (
    .ADR5(\i2c/cr_5_2864 ),
    .ADR2(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .ADR3(\i2c/byte_controller/c_state_FSM_FFd2_2855 ),
    .ADR1(\i2c/byte_controller/core_ack ),
    .ADR0(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR4(\i2c/byte_controller/c_state_FSM_FFd3-In11 ),
    .O(\i2c/byte_controller/c_state_FSM_FFd3-In1_3191 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y16" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/c_state_FSM_FFd3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd3/CLK ),
    .I(\i2c/byte_controller/c_state_FSM_FFd3-In ),
    .O(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y16" ),
    .INIT ( 64'h0000000033333310 ))
  \i2c/byte_controller/c_state_FSM_FFd3-In4  (
    .ADR0(\i2c/byte_controller/c_state_FSM_FFd2_2855 ),
    .ADR5(\i2c/i2c_al ),
    .ADR1(i2c_rst_2786),
    .ADR2(\i2c/byte_controller/c_state_FSM_FFd3-In3_3155 ),
    .ADR3(\i2c/byte_controller/c_state_FSM_FFd3-In2_3156 ),
    .ADR4(\i2c/byte_controller/c_state_FSM_FFd3-In1_3191 ),
    .O(\i2c/byte_controller/c_state_FSM_FFd3-In )
  );
  X_BUF   \i2c/byte_controller/_n0139_inv/i2c/byte_controller/_n0139_inv_AMUX_Delay  (
    .I(\i2c/rxr [0]),
    .O(\i2c/rxr<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y17" ),
    .INIT ( 64'hFFFFFAFAFFFFFAFA ))
  \i2c/byte_controller/_n0139_inv1  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR4(\i2c/byte_controller/shift_2859 ),
    .ADR0(\i2c/byte_controller/ld_2869 ),
    .ADR2(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/_n0139_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y17" ),
    .INIT ( 32'h0D080D08 ))
  \i2c/byte_controller/Mmux_sr[7]_GND_5_o_mux_3_OUT11  (
    .ADR1(\i2c/txr [0]),
    .ADR3(\i2c/byte_controller/core_rxd ),
    .ADR4(1'b1),
    .ADR0(\i2c/byte_controller/ld_2869 ),
    .ADR2(i2c_rst_2786),
    .O(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y17" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/sr_0  (
    .CE(\i2c/byte_controller/_n0139_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_0/CLK ),
    .I(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<0> ),
    .O(\i2c/rxr [0]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 64'h1033103310331000 ))
  \i2c/byte_controller/c_state_FSM_FFd3-In3  (
    .ADR2(\i2c/cr_7_2865 ),
    .ADR5(\i2c/cr_4_2853 ),
    .ADR3(\i2c/cr_5_2864 ),
    .ADR1(\i2c/done ),
    .ADR4(\i2c/cr_6_2854 ),
    .ADR0(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .O(\i2c/byte_controller/c_state_FSM_FFd3-In3_3155 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 64'hFFFFFEFAFFFF32FA ))
  \i2c/_n0179_inv1  (
    .ADR2(\i2c/done ),
    .ADR3(i2c_we_2838),
    .ADR1(i2c_ack_o),
    .ADR0(\i2c/i2c_al ),
    .ADR4(i2c_rst_2786),
    .ADR5(\i2c/_n0209_inv1_3066 ),
    .O(\i2c/_n0179_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 64'h0000000023232322 ))
  \i2c/byte_controller/c_state_FSM_FFd2-In2  (
    .ADR5(\i2c/cr_7_2865 ),
    .ADR3(\i2c/cr_5_2864 ),
    .ADR4(\i2c/cr_4_2853 ),
    .ADR1(\i2c/done ),
    .ADR0(\i2c/cr_6_2854 ),
    .ADR2(\i2c/byte_controller/c_state_FSM_FFd2_2855 ),
    .O(\i2c/byte_controller/c_state_FSM_FFd2-In2_3154 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/cmd_ack  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/cmd_ack/CLK ),
    .I(\i2c/byte_controller/c_state[4]_GND_5_o_MUX_112_o ),
    .O(\i2c/done ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 64'h000000C400000000 ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_MUX_112_o11  (
    .ADR0(\i2c/cr_6_2854 ),
    .ADR1(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .ADR5(\i2c/byte_controller/core_ack ),
    .ADR2(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR4(\i2c/i2c_al ),
    .ADR3(i2c_rst_2786),
    .O(\i2c/byte_controller/c_state[4]_GND_5_o_MUX_112_o )
  );
  X_BUF   \i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In1/i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In1_CMUX_Delay  (
    .I(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT42_pack_5 ),
    .O(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT42_3190 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In1/i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In1_AMUX_Delay  (
    .I(\i2c/byte_controller/core_cmd<3>_pack_4 ),
    .O(\i2c/byte_controller/core_cmd [3])
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y14" ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT42  (
    .IA(\i2c/byte_controller/N13 ),
    .IB(\i2c/byte_controller/N14 ),
    .O(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT42_pack_5 ),
    .SEL(\i2c/byte_controller/c_state_FSM_FFd2_2855 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y14" ),
    .INIT ( 64'hF0F0111100000000 ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT42_F  (
    .ADR3(1'b1),
    .ADR5(\i2c/cr_5_2864 ),
    .ADR4(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR0(\i2c/done ),
    .ADR1(\i2c/cr_7_2865 ),
    .ADR2(\i2c/byte_controller/core_ack ),
    .O(\i2c/byte_controller/N13 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y14" ),
    .INIT ( 64'h000A000A000A0208 ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT42_G  (
    .ADR2(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .ADR0(\i2c/byte_controller/core_ack ),
    .ADR3(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR4(\i2c/byte_controller/dcnt [0]),
    .ADR1(\i2c/byte_controller/dcnt [1]),
    .ADR5(\i2c/byte_controller/dcnt [2]),
    .O(\i2c/byte_controller/N14 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y14" ),
    .INIT ( 64'hF0E0E090F0F0F0F0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In1  (
    .ADR3(\i2c/byte_controller/core_cmd [1]),
    .ADR2(\i2c/byte_controller/bit_controller/c_state_FSM_FFd18_2877 ),
    .ADR0(\i2c/byte_controller/core_cmd [0]),
    .ADR4(\i2c/byte_controller/core_cmd [3]),
    .ADR1(\i2c/byte_controller/core_cmd [2]),
    .ADR5(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In1_3152 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y14" ),
    .INIT ( 64'h000F000F000F000F ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT31  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(\i2c/i2c_al ),
    .ADR3(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT3 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y14" ),
    .INIT ( 32'h000E000C ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT43  (
    .ADR0(\i2c/byte_controller/core_cmd [3]),
    .ADR1(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT42_3190 ),
    .ADR4(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT41 ),
    .ADR2(\i2c/i2c_al ),
    .ADR3(i2c_rst_2786),
    .O(\i2c/byte_controller/c_state[4]_GND_5_o_mux_54_OUT<3> )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y14" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/core_cmd_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/core_cmd_3/CLK ),
    .I(\i2c/byte_controller/c_state[4]_GND_5_o_mux_54_OUT<3> ),
    .O(\i2c/byte_controller/core_cmd<3>_pack_4 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_BUF   \i2c/i2c_al/i2c/i2c_al_CMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd7_pack_6 ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd7_2816 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y11" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/al  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/al/CLK ),
    .I(\i2c/byte_controller/bit_controller/sda_chk_GND_6_o_MUX_66_o ),
    .O(\i2c/i2c_al ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y11" ),
    .INIT ( 64'h0055005500550145 ))
  \i2c/byte_controller/bit_controller/Mmux_sda_chk_GND_6_o_MUX_66_o13  (
    .ADR5(\i2c/byte_controller/bit_controller/Mmux_sda_chk_GND_6_o_MUX_66_o1_0 ),
    .ADR3(\i2c/byte_controller/bit_controller/N14_0 ),
    .ADR2(\i2c/byte_controller/bit_controller/N13 ),
    .ADR1(\i2c/byte_controller/bit_controller/Mmux_scl_oen_PWR_4_o_MUX_91_o12 ),
    .ADR0(i2c_rst_2786),
    .ADR4(\i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o11 ),
    .O(\i2c/byte_controller/bit_controller/sda_chk_GND_6_o_MUX_66_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y11" ),
    .INIT ( 64'hFFF0FFF0FFF0FFF0 ))
  \i2c/byte_controller/bit_controller/_n0204_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR2(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR3(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/_n0204_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y11" ),
    .INIT ( 32'h00320002 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd7-In1  (
    .ADR4(\i2c/byte_controller/bit_controller/c_state_FSM_FFd8_2815 ),
    .ADR0(\i2c/byte_controller/bit_controller/c_state_FSM_FFd7_2816 ),
    .ADR1(\i2c/i2c_al ),
    .ADR2(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR3(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd7-In )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y11" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd7/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd7-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd7_pack_6 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y11" ),
    .INIT ( 64'hFFFFFFFFFFFFEEEE ))
  \i2c/byte_controller/bit_controller/Mmux_scl_oen_PWR_4_o_MUX_91_o131  (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/c_state_FSM_FFd16_3037 ),
    .ADR1(\i2c/byte_controller/bit_controller/c_state_FSM_FFd6_3042 ),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd7_2816 ),
    .ADR0(\i2c/byte_controller/bit_controller/c_state_FSM_FFd9_2829 ),
    .O(\i2c/byte_controller/bit_controller/Mmux_scl_oen_PWR_4_o_MUX_91_o13 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y11" ),
    .INIT ( 64'hFFFFFFFFFFFFFCFC ))
  \i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o111  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR1(\i2c/byte_controller/bit_controller/c_state_FSM_FFd8_2815 ),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd17_3038 ),
    .ADR2(\i2c/byte_controller/bit_controller/c_state_FSM_FFd5_2883 ),
    .ADR4(\i2c/byte_controller/bit_controller/Mmux_scl_oen_PWR_4_o_MUX_91_o13 ),
    .O(\i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o11 )
  );
  X_BUF   \i2c/byte_controller/core_rxd/i2c/byte_controller/core_rxd_CMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/N11 ),
    .O(\i2c/byte_controller/bit_controller/N11_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y13" ))
  \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o3_SW1  (
    .IA(\i2c/byte_controller/bit_controller/N19 ),
    .IB(\i2c/byte_controller/bit_controller/N20 ),
    .O(\i2c/byte_controller/bit_controller/N11 ),
    .SEL(\i2c/byte_controller/bit_controller/cnt [13])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y13" ),
    .INIT ( 64'hFFFF08FFFFFFFFFF ))
  \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o3_SW1_F  (
    .ADR3(\i2c/byte_controller/bit_controller/cnt [12]),
    .ADR1(\i2c/byte_controller/bit_controller/dSCL_0 ),
    .ADR0(i2c_scl_oe),
    .ADR2(\i2c/byte_controller/bit_controller/sSCL_2825 ),
    .ADR5(\i2c/ctr [7]),
    .ADR4(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/N19 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y13" ),
    .INIT ( 64'hFF0CFF00FFFFFFFF ))
  \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o3_SW1_G  (
    .ADR0(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/dSCL_0 ),
    .ADR1(i2c_scl_oe),
    .ADR2(\i2c/byte_controller/bit_controller/sSCL_2825 ),
    .ADR5(\i2c/ctr [7]),
    .ADR3(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/N20 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y13" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/dout  (
    .CE(\i2c/byte_controller/bit_controller/sSCL_dSCL_AND_27_o ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/dout/CLK ),
    .I(\NlwBufferSignal_i2c/byte_controller/bit_controller/dout/IN ),
    .O(\i2c/byte_controller/core_rxd ),
    .RST(GND),
    .SET(GND)
  );
  X_BUF   \i2c/byte_controller/bit_controller/c_state_FSM_FFd6/i2c/byte_controller/bit_controller/c_state_FSM_FFd6_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd17-In1_pack_9 ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd17-In1 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd6/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd6-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd6_3042 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y12" ),
    .INIT ( 64'h00000C0F00000C00 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd6-In1  (
    .ADR0(1'b1),
    .ADR1(\i2c/byte_controller/bit_controller/c_state_FSM_FFd7_2816 ),
    .ADR3(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd6_3042 ),
    .ADR4(\i2c/i2c_al ),
    .ADR2(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd6-In )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd5/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd5-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd5_2883 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y12" ),
    .INIT ( 64'h000D0008000D0008 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd5-In1  (
    .ADR5(1'b1),
    .ADR1(\i2c/byte_controller/bit_controller/c_state_FSM_FFd6_3042 ),
    .ADR0(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR4(\i2c/byte_controller/bit_controller/c_state_FSM_FFd5_2883 ),
    .ADR3(\i2c/i2c_al ),
    .ADR2(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd5-In )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y12" ),
    .INIT ( 64'hFFFFFFCCFFFFFFCC ))
  \i2c/byte_controller/bit_controller/_n0207_inv1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR3(\i2c/i2c_al ),
    .ADR1(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/_n0207_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y12" ),
    .INIT ( 32'h00020000 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd17-In11  (
    .ADR2(\i2c/byte_controller/core_cmd [1]),
    .ADR0(\i2c/byte_controller/bit_controller/c_state_FSM_FFd18_2877 ),
    .ADR4(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR3(\i2c/i2c_al ),
    .ADR1(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd17-In1_pack_9 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd4/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd4-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd4_2874 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y12" ),
    .INIT ( 64'h0040FFFF00400040 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd4-In1  (
    .ADR1(\i2c/byte_controller/core_cmd [2]),
    .ADR3(\i2c/byte_controller/core_cmd [0]),
    .ADR0(\i2c/byte_controller/core_cmd [3]),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd4_2874 ),
    .ADR4(\i2c/byte_controller/bit_controller/_n0207_inv ),
    .ADR2(\i2c/byte_controller/bit_controller/c_state_FSM_FFd17-In1 ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd4-In )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y10" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd17  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd17/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd17-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd17_3038 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y10" ),
    .INIT ( 64'h00AA0CAE00AA00AA ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd17-In2  (
    .ADR1(\i2c/byte_controller/core_cmd [0]),
    .ADR2(\i2c/byte_controller/core_cmd [2]),
    .ADR4(\i2c/byte_controller/core_cmd [3]),
    .ADR0(\i2c/byte_controller/bit_controller/c_state_FSM_FFd17_3038 ),
    .ADR3(\i2c/byte_controller/bit_controller/_n0207_inv ),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd17-In1 ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd17-In )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y10" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd16  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd16/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd16-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd16_3037 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y10" ),
    .INIT ( 64'h0303020201010000 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd16-In1  (
    .ADR3(1'b1),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd17_3038 ),
    .ADR0(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR4(\i2c/byte_controller/bit_controller/c_state_FSM_FFd16_3037 ),
    .ADR2(\i2c/i2c_al ),
    .ADR1(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd16-In )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y10" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd15  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd15/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd15-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd15_3036 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y10" ),
    .INIT ( 64'h0404050504040000 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd15-In1  (
    .ADR3(1'b1),
    .ADR1(\i2c/byte_controller/bit_controller/c_state_FSM_FFd16_3037 ),
    .ADR4(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd15_3036 ),
    .ADR2(\i2c/i2c_al ),
    .ADR0(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd15-In )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y15" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/filter_cnt_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_5/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [5]),
    .O(\i2c/byte_controller/bit_controller/filter_cnt [5]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y15" ),
    .INIT ( 64'h0000DD8800000000 ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_mux_13_OUT101  (
    .ADR2(1'b1),
    .ADR3(\i2c/prer [7]),
    .ADR5(\i2c/ctr [7]),
    .ADR1(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<5>_0 ),
    .ADR4(i2c_rst_2786),
    .ADR0(\i2c/byte_controller/bit_controller/n0025 ),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [5])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y15" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/filter_cnt_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_4/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [4]),
    .O(\i2c/byte_controller/bit_controller/filter_cnt [4]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y15" ),
    .INIT ( 64'h0C0C0F0000000000 ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_mux_13_OUT91  (
    .ADR0(1'b1),
    .ADR3(\i2c/prer [6]),
    .ADR5(\i2c/ctr [7]),
    .ADR1(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<4>_0 ),
    .ADR2(i2c_rst_2786),
    .ADR4(\i2c/byte_controller/bit_controller/n0025 ),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [4])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y15" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/filter_cnt_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_3/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [3]),
    .O(\i2c/byte_controller/bit_controller/filter_cnt [3]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y15" ),
    .INIT ( 64'h4050405040004000 ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_mux_13_OUT81  (
    .ADR4(1'b1),
    .ADR5(\i2c/prer [5]),
    .ADR2(\i2c/ctr [7]),
    .ADR1(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<3>_0 ),
    .ADR0(i2c_rst_2786),
    .ADR3(\i2c/byte_controller/bit_controller/n0025 ),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [3])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y15" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/filter_cnt_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_2/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [2]),
    .O(\i2c/byte_controller/bit_controller/filter_cnt [2]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y15" ),
    .INIT ( 64'h00F0003000C00000 ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_mux_13_OUT71  (
    .ADR0(1'b1),
    .ADR5(\i2c/prer [4]),
    .ADR2(\i2c/ctr [7]),
    .ADR4(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<2>_0 ),
    .ADR3(i2c_rst_2786),
    .ADR1(\i2c/byte_controller/bit_controller/n0025 ),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [2])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y21" ),
    .INIT ( 1'b0 ))
  \i2c/txr_3  (
    .CE(\i2c/_n0171_inv ),
    .CLK(\NlwBufferSignal_i2c/txr_3/CLK ),
    .I(\NlwBufferSignal_i2c/txr_3/IN ),
    .O(\i2c/txr [3]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y21" ),
    .INIT ( 1'b0 ))
  \i2c/txr_2  (
    .CE(\i2c/_n0171_inv ),
    .CLK(\NlwBufferSignal_i2c/txr_2/CLK ),
    .I(\NlwBufferSignal_i2c/txr_2/IN ),
    .O(\i2c/txr [2]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y21" ),
    .INIT ( 1'b0 ))
  \i2c/txr_1  (
    .CE(\i2c/_n0171_inv ),
    .CLK(\NlwBufferSignal_i2c/txr_1/CLK ),
    .I(\NlwBufferSignal_i2c/txr_1/IN ),
    .O(\i2c/txr [1]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y21" ),
    .INIT ( 64'hAAAABAAAAAAAAAAA ))
  \i2c/_n0165_inv1  (
    .ADR5(i2c_lab[1]),
    .ADR2(i2c_we_2838),
    .ADR3(i2c_ack_o),
    .ADR4(i2c_lab[2]),
    .ADR1(i2c_lab[0]),
    .ADR0(i2c_rst_2786),
    .O(\i2c/_n0165_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y21" ),
    .INIT ( 1'b0 ))
  \i2c/txr_0  (
    .CE(\i2c/_n0171_inv ),
    .CLK(\NlwBufferSignal_i2c/txr_0/CLK ),
    .I(\NlwBufferSignal_i2c/txr_0/IN ),
    .O(\i2c/txr [0]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y21" ),
    .INIT ( 64'hFFFFFFFF40000000 ))
  \i2c/_n0171_inv1  (
    .ADR4(i2c_lab[1]),
    .ADR2(i2c_we_2838),
    .ADR1(i2c_ack_o),
    .ADR0(i2c_lab[2]),
    .ADR3(i2c_lab[0]),
    .ADR5(i2c_rst_2786),
    .O(\i2c/_n0171_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y24" ),
    .INIT ( 1'b0 ))
  i2c_data_in_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_data_in_7/CLK ),
    .I(\NlwBufferSignal_i2c_data_in_7/IN ),
    .O(i2c_data_in[7]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y24" ),
    .INIT ( 64'hF3F3F0F2F3F3F0F2 ))
  Mmux_i2c_data_in_d8_SW0_SW1 (
    .ADR5(1'b1),
    .ADR3(\state[5]_PWR_1_o_equal_20_o ),
    .ADR4(\state[5]_GND_1_o_equal_19_o ),
    .ADR0(\state[5]_GND_1_o_equal_21_o ),
    .ADR1(\state[5]_GND_1_o_equal_18_o ),
    .ADR2(\state[5]_GND_1_o_equal_17_o ),
    .O(N43)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y24" ),
    .INIT ( 64'h00045515AAAEFFBF ))
  Mmux_i2c_data_in_d8 (
    .ADR0(\state[5]_GND_1_o_equal_22_o ),
    .ADR3(\state[5]_GND_1_o_equal_36_o ),
    .ADR1(N136),
    .ADR4(N42),
    .ADR5(N43),
    .ADR2(N44_0),
    .O(i2c_data_in_d[7])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y24" ),
    .INIT ( 64'h000000000C000E00 ))
  Mmux_i2c_data_in_d73 (
    .ADR5(\state[5]_GND_1_o_equal_18_o ),
    .ADR2(\state[5]_GND_1_o_equal_17_o ),
    .ADR0(Mmux_i2c_data_in_d7),
    .ADR4(N156),
    .ADR1(Mmux_i2c_data_in_d711),
    .ADR3(Mmux_i2c_data_in_d62),
    .O(i2c_data_in_d[6])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y24" ),
    .INIT ( 1'b0 ))
  i2c_data_in_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_data_in_6/CLK ),
    .I(\NlwBufferSignal_i2c_data_in_6/IN ),
    .O(i2c_data_in[6]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y24" ),
    .INIT ( 64'h0000000000000002 ))
  \state[5]_GND_1_o_equal_22_o<5>1  (
    .ADR2(state[0]),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR0(state[2]),
    .ADR4(state[1]),
    .ADR1(state[3]),
    .O(\state[5]_GND_1_o_equal_22_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y23" ),
    .INIT ( 64'h0000000000010000 ))
  Mmux_i2c_data_in_d6 (
    .ADR1(_n0177),
    .ADR2(\state[5]_GND_1_o_equal_26_o ),
    .ADR5(\state[5]_GND_1_o_equal_27_o ),
    .ADR0(\state[5]_GND_1_o_equal_18_o ),
    .ADR3(N132),
    .ADR4(Mmux_i2c_data_in_d62),
    .O(i2c_data_in_d[5])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y23" ),
    .INIT ( 1'b0 ))
  i2c_data_in_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_data_in_5/CLK ),
    .I(\NlwBufferSignal_i2c_data_in_5/IN ),
    .O(i2c_data_in[5]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y23" ),
    .INIT ( 64'h0800000000000000 ))
  Mmux_i2c_data_in_d5121 (
    .ADR1(i2c_data_in[4]),
    .ADR2(state[5]),
    .ADR3(state[4]),
    .ADR5(state[2]),
    .ADR0(state[1]),
    .ADR4(state[3]),
    .O(Mmux_i2c_data_in_d5121_3146)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y23" ),
    .INIT ( 1'b0 ))
  i2c_data_in_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_data_in_4/CLK ),
    .I(\NlwBufferSignal_i2c_data_in_4/IN ),
    .O(i2c_data_in[4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y23" ),
    .INIT ( 64'hAAA0AAA0AAA2AAA0 ))
  Mmux_i2c_data_in_d51_SW0_SW0 (
    .ADR0(Mmux_i2c_lab_d32),
    .ADR1(_n0176),
    .ADR3(\state[5]_GND_1_o_equal_22_o ),
    .ADR4(\state[5]_GND_1_o_equal_27_o ),
    .ADR2(\state[5]_GND_1_o_equal_21_o ),
    .ADR5(\state[5]_GND_1_o_equal_26_o ),
    .O(N141)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y23" ),
    .INIT ( 64'hFFFE0002FFFF0000 ))
  Mmux_i2c_data_in_d51 (
    .ADR2(\state[5]_GND_1_o_equal_28_o ),
    .ADR3(\state[5]_GND_1_o_equal_30_o ),
    .ADR1(\state[5]_GND_1_o_equal_29_o ),
    .ADR5(Mmux_i2c_data_in_d5122_3145),
    .ADR4(N141),
    .ADR0(N142_0),
    .O(i2c_data_in_d[4])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 1'b0 ))
  i2c_data_in_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_data_in_1/CLK ),
    .I(\NlwBufferSignal_i2c_data_in_1/IN ),
    .O(i2c_data_in[1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 64'hFF00FF00FF00FF02 ))
  Mmux_i2c_data_in_d7111 (
    .ADR2(\state[5]_GND_1_o_equal_28_o ),
    .ADR5(\state[5]_GND_1_o_equal_30_o ),
    .ADR1(\state[5]_GND_1_o_equal_29_o ),
    .ADR0(\state[5]_GND_1_o_equal_31_o ),
    .ADR3(\state[5]_GND_1_o_equal_26_o ),
    .ADR4(\state[5]_GND_1_o_equal_27_o ),
    .O(Mmux_i2c_data_in_d711)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 64'h3333330033023300 ))
  Mmux_i2c_data_in_d21 (
    .ADR2(_n0177),
    .ADR3(\state[5]_GND_1_o_equal_18_o ),
    .ADR1(\state[5]_GND_1_o_equal_17_o ),
    .ADR0(N56),
    .ADR4(Mmux_i2c_data_in_d62),
    .ADR5(Mmux_i2c_data_in_d711),
    .O(i2c_data_in_d[1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 64'h0303CFCF0302CFDF ))
  Mmux_i2c_data_in_d1 (
    .ADR0(_n0177),
    .ADR3(\state[5]_GND_1_o_equal_27_o ),
    .ADR5(N127),
    .ADR2(N63),
    .ADR1(Mmux_i2c_data_in_d711),
    .ADR4(N64_0),
    .O(i2c_data_in_d[0])
  );
  X_FF #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 1'b0 ))
  i2c_data_in_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_data_in_0/CLK ),
    .I(\NlwBufferSignal_i2c_data_in_0/IN ),
    .O(i2c_data_in[0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 64'hCCFFCCFFFFFFFFFF ))
  Mmux_i2c_data_in_d81111_SW0 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR5(i2c_data_in[0]),
    .ADR1(\state[5]_GND_1_o_equal_36_o ),
    .ADR3(Mmux_i2c_data_in_d611),
    .O(N127)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y17" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/ld  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/ld/CLK ),
    .I(\i2c/byte_controller/c_state[4]_GND_5_o_MUX_111_o ),
    .O(\i2c/byte_controller/ld_2869 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y17" ),
    .INIT ( 64'h0030003000110000 ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_MUX_111_o1  (
    .ADR0(\i2c/done ),
    .ADR2(\i2c/byte_controller/core_ack ),
    .ADR5(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR1(\i2c/i2c_al ),
    .ADR4(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT11 ),
    .ADR3(\i2c/byte_controller/N2_0 ),
    .O(\i2c/byte_controller/c_state[4]_GND_5_o_MUX_111_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y16" ),
    .INIT ( 64'h3030000000000000 ))
  \i2c/byte_controller/c_state_FSM_FFd3-In2  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR5(\i2c/cr_6_2854 ),
    .ADR4(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .ADR2(\i2c/byte_controller/core_ack ),
    .ADR1(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .O(\i2c/byte_controller/c_state_FSM_FFd3-In2_3156 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y20" ),
    .INIT ( 1'b0 ))
  \i2c/txr_7  (
    .CE(\i2c/_n0171_inv ),
    .CLK(\NlwBufferSignal_i2c/txr_7/CLK ),
    .I(\NlwBufferSignal_i2c/txr_7/IN ),
    .O(\i2c/txr [7]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y20" ),
    .INIT ( 1'b0 ))
  \i2c/txr_6  (
    .CE(\i2c/_n0171_inv ),
    .CLK(\NlwBufferSignal_i2c/txr_6/CLK ),
    .I(\NlwBufferSignal_i2c/txr_6/IN ),
    .O(\i2c/txr [6]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y20" ),
    .INIT ( 1'b0 ))
  \i2c/txr_5  (
    .CE(\i2c/_n0171_inv ),
    .CLK(\NlwBufferSignal_i2c/txr_5/CLK ),
    .I(\NlwBufferSignal_i2c/txr_5/IN ),
    .O(\i2c/txr [5]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y20" ),
    .INIT ( 1'b0 ))
  \i2c/txr_4  (
    .CE(\i2c/_n0171_inv ),
    .CLK(\NlwBufferSignal_i2c/txr_4/CLK ),
    .I(\NlwBufferSignal_i2c/txr_4/IN ),
    .O(\i2c/txr [4]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y20" ),
    .INIT ( 64'hFFFFCCCC0000CCCC ))
  \i2c/mux41_SW1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\i2c/ctr [4]),
    .ADR5(\i2c/rxr [4]),
    .ADR4(i2c_lab[0]),
    .O(\i2c/N36 )
  );
  X_BUF   \i2c/al/i2c/al_AMUX_Delay  (
    .I(i2c_int),
    .O(i2c_int_0)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 1'b0 ))
  \i2c/al  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/al/CLK ),
    .I(\i2c/i2c_al_GND_4_o_MUX_114_o ),
    .O(\i2c/al_2821 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 64'h00000000FF55FF00 ))
  \i2c/Mmux_i2c_al_GND_4_o_MUX_114_o11  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\i2c/cr_7_2865 ),
    .ADR4(\i2c/al_2821 ),
    .ADR3(\i2c/i2c_al ),
    .ADR5(i2c_rst_2786),
    .O(\i2c/i2c_al_GND_4_o_MUX_114_o )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 1'b0 ))
  \i2c/rxack  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/rxack/CLK ),
    .I(\i2c/irxack_GND_4_o_MUX_115_o ),
    .O(\i2c/rxack_2847 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 64'h0000F0F00000F0F0 ))
  \i2c/Mmux_irxack_GND_4_o_MUX_115_o11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\i2c/irxack ),
    .ADR4(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/irxack_GND_4_o_MUX_115_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 32'h0000AA00 ))
  \i2c/Mmux_irq_flag_GND_4_o_MUX_118_o11  (
    .ADR2(1'b1),
    .ADR3(\i2c/ctr [6]),
    .ADR0(\i2c/irq_flag_2845 ),
    .ADR1(1'b1),
    .ADR4(i2c_rst_2786),
    .O(\i2c/irq_flag_GND_4_o_MUX_118_o )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 1'b0 ))
  \i2c/wb_inta_o  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_inta_o/CLK ),
    .I(\i2c/irq_flag_GND_4_o_MUX_118_o ),
    .O(i2c_int),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_BUF   \i2c/cr_7/i2c/cr_7_BMUX_Delay  (
    .I(\i2c/cr_5_pack_6 ),
    .O(\i2c/cr_5_2864 )
  );
  X_BUF   \i2c/cr_7/i2c/cr_7_AMUX_Delay  (
    .I(\i2c/cr_4_pack_4 ),
    .O(\i2c/cr_4_2853 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y18" ),
    .INIT ( 64'hFFFFEEEEFFFFEEEE ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT111  (
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(\i2c/cr_5_2864 ),
    .ADR4(\i2c/cr_4_2853 ),
    .ADR0(\i2c/cr_6_2854 ),
    .O(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT11 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y18" ),
    .INIT ( 64'h0F0F3F0E3F3F3F3F ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT33  (
    .ADR3(\i2c/done ),
    .ADR0(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .ADR1(\i2c/byte_controller/c_state_FSM_FFd2_2855 ),
    .ADR2(\i2c/byte_controller/core_ack ),
    .ADR4(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR5(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT11 ),
    .O(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT32_3089 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y18" ),
    .INIT ( 1'b0 ))
  \i2c/cr_7  (
    .CE(\i2c/_n0179_inv ),
    .CLK(\NlwBufferSignal_i2c/cr_7/CLK ),
    .I(\i2c/cr[7]_GND_4_o_mux_24_OUT<7> ),
    .O(\i2c/cr_7_2865 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y18" ),
    .INIT ( 64'h0000A0000000A000 ))
  \i2c/Mmux_cr[7]_GND_4_o_mux_24_OUT<7>11  (
    .ADR1(1'b1),
    .ADR0(i2c_data_in[7]),
    .ADR2(i2c_we_2838),
    .ADR3(i2c_ack_o),
    .ADR4(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/cr[7]_GND_4_o_mux_24_OUT<7> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y18" ),
    .INIT ( 32'h0000C000 ))
  \i2c/Mmux_cr[7]_GND_4_o_mux_24_OUT<5>11  (
    .ADR1(i2c_data_in[5]),
    .ADR0(1'b1),
    .ADR2(i2c_we_2838),
    .ADR3(i2c_ack_o),
    .ADR4(i2c_rst_2786),
    .O(\i2c/cr[7]_GND_4_o_mux_24_OUT<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y18" ),
    .INIT ( 1'b0 ))
  \i2c/cr_5  (
    .CE(\i2c/_n0179_inv ),
    .CLK(\NlwBufferSignal_i2c/cr_5/CLK ),
    .I(\i2c/cr[7]_GND_4_o_mux_24_OUT<5> ),
    .O(\i2c/cr_5_pack_6 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y18" ),
    .INIT ( 1'b0 ))
  \i2c/cr_6  (
    .CE(\i2c/_n0179_inv ),
    .CLK(\NlwBufferSignal_i2c/cr_6/CLK ),
    .I(\i2c/cr[7]_GND_4_o_mux_24_OUT<6> ),
    .O(\i2c/cr_6_2854 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y18" ),
    .INIT ( 64'h4000400040004000 ))
  \i2c/Mmux_cr[7]_GND_4_o_mux_24_OUT<6>11  (
    .ADR4(1'b1),
    .ADR1(i2c_data_in[6]),
    .ADR2(i2c_we_2838),
    .ADR3(i2c_ack_o),
    .ADR0(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/cr[7]_GND_4_o_mux_24_OUT<6> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y18" ),
    .INIT ( 32'h50000000 ))
  \i2c/Mmux_cr[7]_GND_4_o_mux_24_OUT<4>11  (
    .ADR4(i2c_data_in[4]),
    .ADR1(1'b1),
    .ADR2(i2c_we_2838),
    .ADR3(i2c_ack_o),
    .ADR0(i2c_rst_2786),
    .O(\i2c/cr[7]_GND_4_o_mux_24_OUT<4> )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y18" ),
    .INIT ( 1'b0 ))
  \i2c/cr_4  (
    .CE(\i2c/_n0179_inv ),
    .CLK(\NlwBufferSignal_i2c/cr_4/CLK ),
    .I(\i2c/cr[7]_GND_4_o_mux_24_OUT<4> ),
    .O(\i2c/cr_4_pack_4 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y30" ),
    .INIT ( 64'hFDFFF4F7F2FEF4FC ))
  Mmux_pointer_dummy11 (
    .ADR5(state[4]),
    .ADR4(state[1]),
    .ADR1(state[3]),
    .ADR0(state[2]),
    .ADR3(state[0]),
    .ADR2(state[5]),
    .O(Mmux_pointer_dummy1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y28" ),
    .INIT ( 64'h000000FF000000FF ))
  Mmux_pointer_dummy61 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(1'b1),
    .ADR3(\state[5]_GND_1_o_equal_18_o ),
    .ADR4(\state[5]_GND_1_o_equal_17_o ),
    .O(Mmux_pointer_dummy6)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y28" ),
    .INIT ( 1'b0 ))
  pointer_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_pointer_5/CLK ),
    .I(pointer_dummy[5]),
    .O(pointer[5]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y28" ),
    .INIT ( 64'hF0F4F0F000000000 ))
  Mmux_pointer_dummy65 (
    .ADR4(Mmux_pointer_dummy61_3133),
    .ADR3(_n0190),
    .ADR2(\state[5]_GND_1_o_equal_19_o ),
    .ADR0(\state[5]_GND_1_o_equal_36_o ),
    .ADR1(N83_0),
    .ADR5(Mmux_pointer_dummy6),
    .O(pointer_dummy[5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y28" ),
    .INIT ( 64'hFFCCFF80FFCCA080 ))
  Mmux_pointer_dummy52 (
    .ADR0(pointer[4]),
    .ADR1(Mmux_pointer_dummy5),
    .ADR3(Mmux_pointer_dummy54_3132),
    .ADR5(_n0189),
    .ADR4(_n0190),
    .ADR2(Mmux_i2c_data_in_d611),
    .O(Mmux_pointer_dummy51_3188)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y28" ),
    .INIT ( 1'b0 ))
  pointer_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_pointer_4/CLK ),
    .I(pointer_dummy[4]),
    .O(pointer[4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y28" ),
    .INIT ( 64'hFFFF0000FFFF08A2 ))
  Mmux_pointer_dummy54 (
    .ADR0(state[4]),
    .ADR5(state[5]),
    .ADR3(state[3]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR4(Mmux_pointer_dummy51_3188),
    .O(pointer_dummy[4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y27" ),
    .INIT ( 64'hFF0F0000FF0F0000 ))
  Mmux_nextState142 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(pointer[4]),
    .ADR2(i2c_ack_o),
    .ADR4(Mmux_nextState152),
    .O(Mmux_nextState141_3073)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y25" ),
    .INIT ( 64'hFFFFFFFEFFFEFFFC ))
  Mmux_i2c_lab_d321 (
    .ADR4(state[0]),
    .ADR5(state[5]),
    .ADR1(state[4]),
    .ADR3(state[2]),
    .ADR0(state[1]),
    .ADR2(state[3]),
    .O(Mmux_i2c_lab_d32)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y25" ),
    .INIT ( 64'hFF5FFF5FFF55FF5F ))
  Mmux_i2c_lab_d312_SW1 (
    .ADR1(1'b1),
    .ADR4(_n0169),
    .ADR0(Mmux_i2c_lab_d32),
    .ADR2(_n0168),
    .ADR5(\state[5]_GND_1_o_equal_26_o ),
    .ADR3(\state[5]_GND_1_o_equal_21_o ),
    .O(N94)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y25" ),
    .INIT ( 64'h0000000000C80008 ))
  _n01691 (
    .ADR4(state[0]),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR0(state[2]),
    .ADR2(state[1]),
    .ADR1(state[3]),
    .O(_n0169)
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_DMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [7]),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<7>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_CMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [6]),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<6>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [5]),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<5>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_AMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [4]),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<4>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y16" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<7>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/filter_cnt [7]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<7> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y16" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_9.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_9.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y16" ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>  (
    .CI(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_2976 ),
    .CYINIT(1'b0),
    .CO({\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_2985 , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_CO[2]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_CO[1]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [7], \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [6], 
\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [5], \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [4]}),
    .S({\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<7> , 
\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<6> , 
\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<5> , 
\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<4> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y16" ),
    .INIT ( 64'h3333333333333333 ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<6>_INV_0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(\i2c/byte_controller/bit_controller/filter_cnt [6]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<6> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y16" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_8.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_8.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y16" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<5>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\i2c/byte_controller/bit_controller/filter_cnt [5]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<5> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y16" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_7.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_7.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y16" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<4>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/filter_cnt [4]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<4> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y16" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_6.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_6.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Result<15>/i2c/byte_controller/bit_controller/Result<15>_DMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [15]),
    .O(\i2c/byte_controller/bit_controller/Result<15>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Result<15>/i2c/byte_controller/bit_controller/Result<15>_CMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [14]),
    .O(\i2c/byte_controller/bit_controller/Result<14>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Result<15>/i2c/byte_controller/bit_controller/Result<15>_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [13]),
    .O(\i2c/byte_controller/bit_controller/Result<13>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/Result<15>/i2c/byte_controller/bit_controller/Result<15>_AMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Result [12]),
    .O(\i2c/byte_controller/bit_controller/Result<12>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y14" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<15>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [15]),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [15])
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y14" ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_xor<15>  (
    .CI(\i2c/byte_controller/bit_controller/Mcount_cnt_cy[11] ),
    .CYINIT(1'b0),
    .CO({\NLW_i2c/byte_controller/bit_controller/Mcount_cnt_xor<15>_CO[3]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Mcount_cnt_xor<15>_CO[2]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Mcount_cnt_xor<15>_CO[1]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Mcount_cnt_xor<15>_CO[0]_UNCONNECTED }),
    .DI({\NLW_i2c/byte_controller/bit_controller/Mcount_cnt_xor<15>_DI[3]_UNCONNECTED , 1'b1, 1'b1, 1'b1}),
    .O({\i2c/byte_controller/bit_controller/Result [15], \i2c/byte_controller/bit_controller/Result [14], 
\i2c/byte_controller/bit_controller/Result [13], \i2c/byte_controller/bit_controller/Result [12]}),
    .S({\i2c/byte_controller/bit_controller/Mcount_cnt_lut [15], \i2c/byte_controller/bit_controller/Mcount_cnt_lut [14], 
\i2c/byte_controller/bit_controller/Mcount_cnt_lut [13], \i2c/byte_controller/bit_controller/Mcount_cnt_lut [12]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y14" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<14>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [14]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [14])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y14" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_30.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_30.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y14" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<13>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\i2c/byte_controller/bit_controller/cnt [13]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [13])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y14" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_29.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_29.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y14" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \i2c/byte_controller/bit_controller/Mcount_cnt_lut<12>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\i2c/byte_controller/bit_controller/cnt [12]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Mcount_cnt_lut [12])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y14" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_28.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_28.A5LUT_O_UNCONNECTED )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_DMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [3]),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<3>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_CMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [2]),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<2>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [1]),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<1>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_AMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [0]),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<0>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y15" ),
    .INIT ( 64'h0000FFFF0000FFFF ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<3>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/filter_cnt [3]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<3> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y15" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_5.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_5.D5LUT_O_UNCONNECTED )
  );
  X_ONE #(
    .LOC ( "SLICE_X12Y15" ))
  \ProtoComp29.CYINITVCC.1  (
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/ProtoComp29.CYINITVCC.1 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y15" ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>  (
    .CI(1'b0),
    .CYINIT(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>/ProtoComp29.CYINITVCC.1 ),
    .CO({\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_2976 , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_CO[2]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_CO[1]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b0}),
    .O({\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [3], \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [2], 
\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [1], \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [0]}),
    .S({\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<3> , 
\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<2> , 
\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<1> , \i2c/byte_controller/bit_controller/filter_cnt<0>_rt_90 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y15" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<2>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\i2c/byte_controller/bit_controller/filter_cnt [2]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y15" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_4.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_4.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y15" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<1>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\i2c/byte_controller/bit_controller/filter_cnt [1]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y15" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_3.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_3.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y15" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \i2c/byte_controller/bit_controller/filter_cnt<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/filter_cnt [0]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/filter_cnt<0>_rt_90 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y15" ),
    .INIT ( 32'h00000000 ))
  \i2c_scl_o.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c_scl_o.A5LUT_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD130" ))
  scl_90 (
    .PAD(scl)
  );
  X_OBUFT #(
    .LOC ( "PAD130" ))
  \scl_IOBUF/OBUFT  (
    .I(1'b0),
    .O(scl),
    .CTL(i2c_scl_oe)
  );
  X_BUF #(
    .LOC ( "PAD130" ))
  \scl_IOBUF/IBUF  (
    .O(N27),
    .I(scl)
  );
  X_BUF #(
    .LOC ( "PAD130" ))
  \ProtoComp34.IMUX.1  (
    .I(N27),
    .O(N27_0)
  );
  X_IPAD #(
    .LOC ( "PAD120" ))
  clk_80 (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "PAD120" ))
  \clk_BUFGP/IBUFG  (
    .O(\clk_BUFGP/IBUFG_160 ),
    .I(clk)
  );
  X_BUF #(
    .LOC ( "PAD120" ))
  \ProtoComp33.IMUX  (
    .I(\clk_BUFGP/IBUFG_160 ),
    .O(\clk_BUFGP/IBUFG_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_DMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [11]),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<11>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_CMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [10]),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<10>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [9]),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<9>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>/i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_AMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [8]),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<8>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y17" ),
    .INIT ( 64'h5555555555555555 ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<11>_INV_0  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/filter_cnt [11]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<11> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y17" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_13.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_13.D5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y17" ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>  (
    .CI(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<7>_2985 ),
    .CYINIT(1'b0),
    .CO({\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_2994 , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_CO[2]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_CO[1]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b1, 1'b1, 1'b1, 1'b1}),
    .O({\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [11], \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [10], 
\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [9], \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [8]}),
    .S({\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<11> , 
\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<10> , 
\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<9> , 
\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<8> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y17" ),
    .INIT ( 64'h5555555555555555 ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<10>_INV_0  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/filter_cnt [10]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<10> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y17" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_12.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_12.C5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y17" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<9>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(\i2c/byte_controller/bit_controller/filter_cnt [9]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<9> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y17" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_11.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_11.B5LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y17" ),
    .INIT ( 64'h5555555555555555 ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<8>_INV_0  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/filter_cnt [8]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<8> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y17" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_10.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_10.A5LUT_O_UNCONNECTED )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<13>/i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<13>_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [13]),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<13>_0 )
  );
  X_BUF 
  \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<13>/i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<13>_AMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [12]),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<12>_0 )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X12Y18" ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>  (
    .CI(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_cy<11>_2994 ),
    .CYINIT(1'b0),
    .CO({\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[3]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[2]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[1]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_CO[0]_UNCONNECTED }),
    .DI({\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_DI[3]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_DI[2]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_DI[1]_UNCONNECTED , 1'b1}),
    .O({\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_O[3]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_O[2]_UNCONNECTED , 
\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [13], \i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT [12]}),
    .S({\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_S[3]_UNCONNECTED , 
\NLW_i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_xor<13>_S[2]_UNCONNECTED , 
\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<13> , 
\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<12> })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y18" ),
    .INIT ( 64'h0F0F0F0F0F0F0F0F ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<13>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(\i2c/byte_controller/bit_controller/filter_cnt [13]),
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<13> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y18" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<12>_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(\i2c/byte_controller/bit_controller/filter_cnt [12]),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/Msub_GND_6_o_GND_6_o_sub_12_OUT<13:0>_lut<12> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y18" ),
    .INIT ( 32'hFFFFFFFF ))
  \i2c/byte_controller/bit_controller/N0_14.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_i2c/byte_controller/bit_controller/N0_14.A5LUT_O_UNCONNECTED )
  );
  X_BPAD #(
    .LOC ( "PAD129" ))
  sda_85 (
    .PAD(sda)
  );
  X_OBUFT #(
    .LOC ( "PAD129" ))
  \sda_IOBUF/OBUFT  (
    .I(1'b0),
    .O(sda),
    .CTL(i2c_sda_oe)
  );
  X_BUF #(
    .LOC ( "PAD129" ))
  \sda_IOBUF/IBUF  (
    .O(N26),
    .I(sda)
  );
  X_BUF #(
    .LOC ( "PAD129" ))
  \ProtoComp34.IMUX  (
    .I(N26),
    .O(N26_0)
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \clk_BUFGP/BUFG  (
    .I(\NlwBufferSignal_clk_BUFGP/BUFG/IN ),
    .O(clk_BUFGP)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 64'hDDDDDDDD0C0C3F3F ))
  \i2c/mux51_SW4  (
    .ADR3(1'b1),
    .ADR4(\i2c/ctr [5]),
    .ADR0(\i2c/rxr [5]),
    .ADR2(\i2c/cr_5_2864 ),
    .ADR1(i2c_lab[2]),
    .ADR5(i2c_lab[0]),
    .O(\i2c/N44 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/sr_7  (
    .CE(\i2c/byte_controller/_n0139_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_7/CLK ),
    .I(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<7> ),
    .O(\i2c/rxr [7]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 64'h0A0C0A0C0A0C0A0C ))
  \i2c/byte_controller/Mmux_sr[7]_GND_5_o_mux_3_OUT81  (
    .ADR4(1'b1),
    .ADR5(1'b1),
    .ADR0(\i2c/txr [7]),
    .ADR1(\i2c/rxr [6]),
    .ADR3(\i2c/byte_controller/ld_2869 ),
    .ADR2(i2c_rst_2786),
    .O(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<7> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/sr_6  (
    .CE(\i2c/byte_controller/_n0139_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_6/CLK ),
    .I(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<6> ),
    .O(\i2c/rxr [6]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 64'h00000000EEEE4444 ))
  \i2c/byte_controller/Mmux_sr[7]_GND_5_o_mux_3_OUT71  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\i2c/txr [6]),
    .ADR1(\i2c/rxr [5]),
    .ADR0(\i2c/byte_controller/ld_2869 ),
    .ADR5(i2c_rst_2786),
    .O(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<6> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/sr_5  (
    .CE(\i2c/byte_controller/_n0139_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_5/CLK ),
    .I(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<5> ),
    .O(\i2c/rxr [5]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 64'h00000000ACACACAC ))
  \i2c/byte_controller/Mmux_sr[7]_GND_5_o_mux_3_OUT61  (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR0(\i2c/txr [5]),
    .ADR1(\i2c/rxr [4]),
    .ADR2(\i2c/byte_controller/ld_2869 ),
    .ADR5(i2c_rst_2786),
    .O(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<5> )
  );
  X_BUF   \i2c/byte_controller/bit_controller/cSCL<1>/i2c/byte_controller/bit_controller/cSCL<1>_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/cSCL<0>_pack_3 ),
    .O(\i2c/byte_controller/bit_controller/cSCL [0])
  );
  X_BUF   \i2c/byte_controller/bit_controller/cSCL<1>/i2c/byte_controller/bit_controller/cSCL<1>_AMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/cSDA<0>_pack_2 ),
    .O(\i2c/byte_controller/bit_controller/cSDA [0])
  );
  X_FF #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cSCL_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSCL_1/CLK ),
    .I(\i2c/byte_controller/bit_controller/cSCL[0]_GND_6_o_mux_6_OUT<1> ),
    .O(\i2c/byte_controller/bit_controller/cSCL [1]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 64'h2222222222222222 ))
  \i2c/byte_controller/bit_controller/Mmux_cSCL[0]_GND_6_o_mux_6_OUT21  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/cSCL [0]),
    .ADR1(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/cSCL[0]_GND_6_o_mux_6_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 32'h30303030 ))
  \i2c/byte_controller/bit_controller/Mmux_cSCL[0]_GND_6_o_mux_6_OUT11  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(N27_0),
    .ADR3(1'b1),
    .ADR1(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/cSCL[0]_GND_6_o_mux_6_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cSCL_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSCL_0/CLK ),
    .I(\i2c/byte_controller/bit_controller/cSCL[0]_GND_6_o_mux_6_OUT<0> ),
    .O(\i2c/byte_controller/bit_controller/cSCL<0>_pack_3 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cSDA_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSDA_1/CLK ),
    .I(\i2c/byte_controller/bit_controller/cSDA[0]_GND_6_o_mux_7_OUT<1> ),
    .O(\i2c/byte_controller/bit_controller/cSDA [1]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 64'h2222222222222222 ))
  \i2c/byte_controller/bit_controller/Mmux_cSDA[0]_GND_6_o_mux_7_OUT21  (
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/cSDA [0]),
    .ADR1(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/cSDA[0]_GND_6_o_mux_7_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 32'h30303030 ))
  \i2c/byte_controller/bit_controller/Mmux_cSDA[0]_GND_6_o_mux_7_OUT11  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(N26_0),
    .ADR3(1'b1),
    .ADR1(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/cSDA[0]_GND_6_o_mux_7_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X10Y5" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cSDA_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSDA_0/CLK ),
    .I(\i2c/byte_controller/bit_controller/cSDA[0]_GND_6_o_mux_7_OUT<0> ),
    .O(\i2c/byte_controller/bit_controller/cSDA<0>_pack_2 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X10Y10" ),
    .INIT ( 1'b1 ))
  \i2c/byte_controller/bit_controller/sSDA  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/sSDA/CLK ),
    .I(\i2c/byte_controller/bit_controller/fSDA[2]_PWR_4_o_MUX_58_o ),
    .O(\i2c/byte_controller/bit_controller/sSDA_2812 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y10" ),
    .INIT ( 64'hFFFFE8E8FFFFE8E8 ))
  \i2c/byte_controller/bit_controller/Mmux_fSDA[2]_PWR_4_o_MUX_58_o11  (
    .ADR3(1'b1),
    .ADR5(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/fSDA<2>_0 ),
    .ADR1(\i2c/byte_controller/bit_controller/fSDA [0]),
    .ADR2(\i2c/byte_controller/bit_controller/fSDA [1]),
    .ADR4(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/fSDA[2]_PWR_4_o_MUX_58_o )
  );
  X_BUF   \i2c/rxr<4>/i2c/rxr<4>_AMUX_Delay  (
    .I(\i2c/byte_controller/dcnt<0>_pack_7 ),
    .O(\i2c/byte_controller/dcnt [0])
  );
  X_FF #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/sr_4  (
    .CE(\i2c/byte_controller/_n0139_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_4/CLK ),
    .I(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<4> ),
    .O(\i2c/rxr [4]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 64'h0000F0F00000CCCC ))
  \i2c/byte_controller/Mmux_sr[7]_GND_5_o_mux_3_OUT51  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(\i2c/txr [4]),
    .ADR1(\i2c/rxr [3]),
    .ADR5(\i2c/byte_controller/ld_2869 ),
    .ADR4(i2c_rst_2786),
    .O(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<4> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/sr_3  (
    .CE(\i2c/byte_controller/_n0139_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_3/CLK ),
    .I(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<3> ),
    .O(\i2c/rxr [3]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 64'h00F000CC00F000CC ))
  \i2c/byte_controller/Mmux_sr[7]_GND_5_o_mux_3_OUT41  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(\i2c/txr [3]),
    .ADR1(\i2c/rxr [2]),
    .ADR4(\i2c/byte_controller/ld_2869 ),
    .ADR3(i2c_rst_2786),
    .O(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<3> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/sr_2  (
    .CE(\i2c/byte_controller/_n0139_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_2/CLK ),
    .I(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<2> ),
    .O(\i2c/rxr [2]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 64'h00AC00AC00AC00AC ))
  \i2c/byte_controller/Mmux_sr[7]_GND_5_o_mux_3_OUT31  (
    .ADR5(1'b1),
    .ADR4(1'b1),
    .ADR0(\i2c/txr [2]),
    .ADR1(\i2c/rxr [1]),
    .ADR2(\i2c/byte_controller/ld_2869 ),
    .ADR3(i2c_rst_2786),
    .O(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/sr_1  (
    .CE(\i2c/byte_controller/_n0139_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_1/CLK ),
    .I(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<1> ),
    .O(\i2c/rxr [1]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 64'h0000CCF00000CCF0 ))
  \i2c/byte_controller/Mmux_sr[7]_GND_5_o_mux_3_OUT21  (
    .ADR0(1'b1),
    .ADR1(\i2c/txr [1]),
    .ADR2(\i2c/rxr<0>_0 ),
    .ADR3(\i2c/byte_controller/ld_2869 ),
    .ADR4(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/sr[7]_GND_5_o_mux_3_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 32'h0000FF55 ))
  \i2c/byte_controller/Mmux_dcnt[2]_GND_5_o_mux_8_OUT11  (
    .ADR0(\i2c/byte_controller/dcnt [0]),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\i2c/byte_controller/ld_2869 ),
    .ADR4(i2c_rst_2786),
    .O(\i2c/byte_controller/dcnt[2]_GND_5_o_mux_8_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/dcnt_0  (
    .CE(\i2c/byte_controller/_n0139_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/dcnt_0/CLK ),
    .I(\i2c/byte_controller/dcnt[2]_GND_5_o_mux_8_OUT<0> ),
    .O(\i2c/byte_controller/dcnt<0>_pack_7 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_BUF   \i2c/byte_controller/bit_controller/fSDA<1>/i2c/byte_controller/bit_controller/fSDA<1>_DMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/fSDA<0>_pack_5 ),
    .O(\i2c/byte_controller/bit_controller/fSDA [0])
  );
  X_BUF   \i2c/byte_controller/bit_controller/fSDA<1>/i2c/byte_controller/bit_controller/fSDA<1>_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/fSDA [2]),
    .O(\i2c/byte_controller/bit_controller/fSDA<2>_0 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/fSDA<1>/i2c/byte_controller/bit_controller/fSDA<1>_AMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/fSCL<0>_pack_3 ),
    .O(\i2c/byte_controller/bit_controller/fSCL [0])
  );
  X_FF #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 1'b1 ))
  \i2c/byte_controller/bit_controller/fSDA_1  (
    .CE(\i2c/byte_controller/bit_controller/_n0196_inv_0 ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_1/CLK ),
    .I(\i2c/byte_controller/bit_controller/fSDA[2]_PWR_4_o_mux_19_OUT<1> ),
    .O(\i2c/byte_controller/bit_controller/fSDA [1]),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 64'hFFCCFFCCFFCCFFCC ))
  \i2c/byte_controller/bit_controller/Mmux_fSDA[2]_PWR_4_o_mux_19_OUT21  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\i2c/byte_controller/bit_controller/fSDA [0]),
    .ADR3(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/fSDA[2]_PWR_4_o_mux_19_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 32'hFFF0FFF0 ))
  \i2c/byte_controller/bit_controller/Mmux_fSDA[2]_PWR_4_o_mux_19_OUT11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\i2c/byte_controller/bit_controller/cSDA [1]),
    .ADR4(1'b1),
    .ADR3(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/fSDA[2]_PWR_4_o_mux_19_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 1'b1 ))
  \i2c/byte_controller/bit_controller/fSDA_0  (
    .CE(\i2c/byte_controller/bit_controller/_n0196_inv_0 ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_0/CLK ),
    .I(\i2c/byte_controller/bit_controller/fSDA[2]_PWR_4_o_mux_19_OUT<0> ),
    .O(\i2c/byte_controller/bit_controller/fSDA<0>_pack_5 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 1'b1 ))
  \i2c/byte_controller/bit_controller/fSCL_2  (
    .CE(\i2c/byte_controller/bit_controller/_n0196_inv_0 ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_2/CLK ),
    .I(\i2c/byte_controller/bit_controller/fSCL[2]_PWR_4_o_mux_18_OUT<2> ),
    .O(\i2c/byte_controller/bit_controller/fSCL [2]),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 64'hFFFFAAAAFFFFAAAA ))
  \i2c/byte_controller/bit_controller/Mmux_fSCL[2]_PWR_4_o_mux_18_OUT31  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/fSCL [1]),
    .ADR4(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/fSCL[2]_PWR_4_o_mux_18_OUT<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 32'hFFFFF0F0 ))
  \i2c/byte_controller/bit_controller/Mmux_fSDA[2]_PWR_4_o_mux_19_OUT31  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\i2c/byte_controller/bit_controller/fSDA [1]),
    .ADR3(1'b1),
    .ADR4(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/fSDA[2]_PWR_4_o_mux_19_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 1'b1 ))
  \i2c/byte_controller/bit_controller/fSDA_2  (
    .CE(\i2c/byte_controller/bit_controller/_n0196_inv_0 ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_2/CLK ),
    .I(\i2c/byte_controller/bit_controller/fSDA[2]_PWR_4_o_mux_19_OUT<2> ),
    .O(\i2c/byte_controller/bit_controller/fSDA [2]),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 1'b1 ))
  \i2c/byte_controller/bit_controller/fSCL_1  (
    .CE(\i2c/byte_controller/bit_controller/_n0196_inv_0 ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_1/CLK ),
    .I(\i2c/byte_controller/bit_controller/fSCL[2]_PWR_4_o_mux_18_OUT<1> ),
    .O(\i2c/byte_controller/bit_controller/fSCL [1]),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 64'hFFCCFFCCFFCCFFCC ))
  \i2c/byte_controller/bit_controller/Mmux_fSCL[2]_PWR_4_o_mux_18_OUT21  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(\i2c/byte_controller/bit_controller/fSCL [0]),
    .ADR3(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/fSCL[2]_PWR_4_o_mux_18_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 32'hFFFFFF00 ))
  \i2c/byte_controller/bit_controller/Mmux_fSCL[2]_PWR_4_o_mux_18_OUT11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/cSCL [1]),
    .ADR2(1'b1),
    .ADR3(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/fSCL[2]_PWR_4_o_mux_18_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 1'b1 ))
  \i2c/byte_controller/bit_controller/fSCL_0  (
    .CE(\i2c/byte_controller/bit_controller/_n0196_inv_0 ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_0/CLK ),
    .I(\i2c/byte_controller/bit_controller/fSCL[2]_PWR_4_o_mux_18_OUT<0> ),
    .O(\i2c/byte_controller/bit_controller/fSCL<0>_pack_3 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_BUF   \state[5]_GND_1_o_equal_18_o/state[5]_GND_1_o_equal_18_o_CMUX_Delay  (
    .I(N44),
    .O(N44_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X12Y23" ))
  Mmux_i2c_data_in_d8_SW0_SW2 (
    .IA(N144),
    .IB(N145),
    .O(N44),
    .SEL(\state[5]_PWR_1_o_equal_20_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 64'hFFFFFFFF55555551 ))
  Mmux_i2c_data_in_d8_SW0_SW2_F (
    .ADR1(i2c_data_in[7]),
    .ADR4(\state[5]_GND_1_o_equal_19_o ),
    .ADR3(\state[5]_GND_1_o_equal_26_o ),
    .ADR2(\state[5]_GND_1_o_equal_21_o ),
    .ADR0(\state[5]_GND_1_o_equal_18_o ),
    .ADR5(\state[5]_GND_1_o_equal_17_o ),
    .O(N144)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 64'hF0FAF0FAF0FAF0FA ))
  Mmux_i2c_data_in_d8_SW0_SW2_G (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR0(\state[5]_GND_1_o_equal_19_o ),
    .ADR3(\state[5]_GND_1_o_equal_18_o ),
    .ADR2(\state[5]_GND_1_o_equal_17_o ),
    .O(N145)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 64'h0000000100000000 ))
  \state[5]_GND_1_o_equal_18_o<5>1  (
    .ADR5(state[0]),
    .ADR0(state[5]),
    .ADR3(state[4]),
    .ADR4(state[2]),
    .ADR1(state[1]),
    .ADR2(state[3]),
    .O(\state[5]_GND_1_o_equal_18_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 64'h0000000000000100 ))
  \state[5]_GND_1_o_equal_19_o<5>1  (
    .ADR5(state[0]),
    .ADR2(state[5]),
    .ADR0(state[4]),
    .ADR4(state[2]),
    .ADR3(state[1]),
    .ADR1(state[3]),
    .O(\state[5]_GND_1_o_equal_19_o )
  );
  X_PU #(
    .LOC ( "PAD83" ))
  rst_n_PULLUP (
    .O(NlwRenamedSig_IO_rst_n)
  );
  X_IPAD #(
    .LOC ( "PAD83" ))
  rst_n_95 (
    .PAD(NlwRenamedSig_IO_rst_n)
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  rst_n_IBUF (
    .O(\i2c/byte_controller/bit_controller/nReset_inv_non_inverted ),
    .I(NlwRenamedSig_IO_rst_n)
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \ProtoComp35.IMUX  (
    .I(\ProtoComp35.IINV.OUT ),
    .O(\i2c/byte_controller/bit_controller/nReset_inv )
  );
  X_INV #(
    .LOC ( "PAD83" ))
  \ProtoComp35.IINV  (
    .I(\i2c/byte_controller/bit_controller/nReset_inv_non_inverted ),
    .O(\ProtoComp35.IINV.OUT )
  );
  X_BUF   \i2c_data_out<7>/i2c_data_out<7>_DMUX_Delay  (
    .I(\i2c/N22_pack_6 ),
    .O(\i2c/N22 )
  );
  X_BUF   \i2c_data_out<7>/i2c_data_out<7>_BMUX_Delay  (
    .I(\i2c/N17_pack_4 ),
    .O(\i2c/N17 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 64'hF0F0AAAAF0F0AAAA ))
  \i2c/mux71_SW0  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR0(\i2c/prer [7]),
    .ADR2(\i2c/prer [15]),
    .ADR4(i2c_lab[0]),
    .ADR5(1'b1),
    .O(\i2c/N20 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 32'h333300FF ))
  \i2c/mux71_SW2  (
    .ADR3(\i2c/rxack_2847 ),
    .ADR1(\i2c/txr [7]),
    .ADR2(1'b1),
    .ADR0(1'b1),
    .ADR4(i2c_lab[0]),
    .O(\i2c/N22_pack_6 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 1'b0 ))
  \i2c/wb_dat_o_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_7/CLK ),
    .I(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<7> ),
    .O(i2c_data_out[7]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 64'h1133DDFF0022CCEE ))
  \i2c/mux71  (
    .ADR2(1'b1),
    .ADR1(i2c_lab[1]),
    .ADR0(i2c_lab[2]),
    .ADR4(\i2c/N48 ),
    .ADR5(\i2c/N20 ),
    .ADR3(\i2c/N22 ),
    .O(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<7> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 64'hCCCCAAAACCCCAAAA ))
  \i2c/mux61_SW0  (
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR0(\i2c/prer [6]),
    .ADR1(\i2c/prer [14]),
    .ADR4(i2c_lab[0]),
    .ADR5(1'b1),
    .O(\i2c/N15 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 32'h00FF0F0F ))
  \i2c/mux61_SW2  (
    .ADR2(\i2c/i2c_busy ),
    .ADR3(\i2c/txr [6]),
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(i2c_lab[0]),
    .O(\i2c/N17_pack_4 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 1'b0 ))
  \i2c/wb_dat_o_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_6/CLK ),
    .I(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<6> ),
    .O(i2c_data_out[6]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 64'h353F303A353F303A ))
  \i2c/mux61  (
    .ADR5(1'b1),
    .ADR2(i2c_lab[1]),
    .ADR0(i2c_lab[2]),
    .ADR1(\i2c/N46 ),
    .ADR4(\i2c/N15 ),
    .ADR3(\i2c/N17 ),
    .O(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<6> )
  );
  X_BUF   \N42/N42_CMUX_Delay  (
    .I(N66),
    .O(N66_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X12Y24" ))
  Mmux_i2c_lab_d1_SW0_SW0 (
    .IA(N148),
    .IB(N149),
    .O(N66),
    .SEL(_n0168)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 64'hAAFAAAFFAAFAAAFE ))
  Mmux_i2c_lab_d1_SW0_SW0_F (
    .ADR4(\state[5]_PWR_1_o_equal_20_o ),
    .ADR2(\state[5]_GND_1_o_equal_19_o ),
    .ADR5(\state[5]_GND_1_o_equal_26_o ),
    .ADR1(\state[5]_GND_1_o_equal_21_o ),
    .ADR3(\state[5]_GND_1_o_equal_18_o ),
    .ADR0(\state[5]_GND_1_o_equal_17_o ),
    .O(N148)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 64'hFFFF00F5FFFF00F0 ))
  Mmux_i2c_lab_d1_SW0_SW0_G (
    .ADR1(1'b1),
    .ADR0(\state[5]_PWR_1_o_equal_20_o ),
    .ADR2(\state[5]_GND_1_o_equal_19_o ),
    .ADR5(\state[5]_GND_1_o_equal_21_o ),
    .ADR3(\state[5]_GND_1_o_equal_18_o ),
    .ADR4(\state[5]_GND_1_o_equal_17_o ),
    .O(N149)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 64'hCCCCFFFFCCCCCCFF ))
  Mmux_i2c_data_in_d8_SW0_SW0 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(\state[5]_PWR_1_o_equal_20_o ),
    .ADR5(\state[5]_GND_1_o_equal_19_o ),
    .ADR4(\state[5]_GND_1_o_equal_18_o ),
    .ADR1(\state[5]_GND_1_o_equal_17_o ),
    .O(N42)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y24" ),
    .INIT ( 64'h0000000000000100 ))
  \state[5]_PWR_1_o_equal_20_o<5>1  (
    .ADR4(state[0]),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR0(state[3]),
    .O(\state[5]_PWR_1_o_equal_20_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y27" ),
    .INIT ( 64'h0000555500000000 ))
  Mmux_pointer_dummy251 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR5(state[0]),
    .ADR4(state[5]),
    .ADR0(state[1]),
    .O(Mmux_pointer_dummy25_3138)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y19" ),
    .INIT ( 64'hBBBB0A5FBBBB0A5F ))
  \i2c/mux61_SW4  (
    .ADR5(1'b1),
    .ADR1(\i2c/rxr [6]),
    .ADR3(\i2c/ctr [6]),
    .ADR2(\i2c/cr_6_2854 ),
    .ADR0(i2c_lab[2]),
    .ADR4(i2c_lab[0]),
    .O(\i2c/N46 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y19" ),
    .INIT ( 64'hAAFF2222AAFF7777 ))
  \i2c/mux11_SW4  (
    .ADR2(1'b1),
    .ADR5(\i2c/ctr [0]),
    .ADR3(\i2c/rxr<0>_0 ),
    .ADR1(\i2c/cr_0_0 ),
    .ADR0(i2c_lab[2]),
    .ADR4(i2c_lab[0]),
    .O(\i2c/N40 )
  );
  X_BUF   \i2c_cyc/i2c_cyc_CMUX_Delay  (
    .I(i2c_cyc_d),
    .O(i2c_cyc_d_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X12Y25" ))
  i2c_cyc_d1 (
    .IA(1'b0),
    .IB(N167),
    .O(i2c_cyc_d),
    .SEL(Mmux_i2c_data_in_d611)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y25" ),
    .INIT ( 64'h0000000000000000 ))
  \N0_2.D6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N0_2.D6LUT_O_UNCONNECTED )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y25" ),
    .INIT ( 1'b0 ))
  i2c_cyc (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_cyc/CLK ),
    .I(i2c_cyc_d),
    .O(i2c_cyc_3013),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y25" ),
    .INIT ( 64'hFFFFFFFEF0280210 ))
  i2c_cyc_d1_G (
    .ADR5(state[5]),
    .ADR1(state[0]),
    .ADR0(state[2]),
    .ADR4(state[1]),
    .ADR3(state[4]),
    .ADR2(state[3]),
    .O(N167)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y25" ),
    .INIT ( 64'hFFFFFFFF00CF00CD ))
  Mmux_i2c_lab_d1111 (
    .ADR2(_n0171),
    .ADR3(_n0170),
    .ADR4(_n0172),
    .ADR5(\state[5]_GND_1_o_equal_31_o ),
    .ADR1(\state[5]_GND_1_o_equal_36_o ),
    .ADR0(Mmux_i2c_data_in_d611),
    .O(Mmux_i2c_lab_d111)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y25" ),
    .INIT ( 64'h0800000008000000 ))
  Mmux_i2c_data_in_d6111 (
    .ADR5(1'b1),
    .ADR2(state[5]),
    .ADR0(state[4]),
    .ADR4(state[2]),
    .ADR3(state[1]),
    .ADR1(state[3]),
    .O(Mmux_i2c_data_in_d611)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y26" ),
    .INIT ( 64'hFFABFFAAFF03FF00 ))
  i2c_rst_d (
    .ADR0(i2c_rst_2786),
    .ADR1(\state[5]_state[5]_OR_207_o ),
    .ADR2(\state[5]_GND_1_o_equal_39_o ),
    .ADR3(\state[5]_GND_1_o_equal_17_o ),
    .ADR4(N30),
    .ADR5(i2c_cyc_d_0),
    .O(i2c_rst_d_3166)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y26" ),
    .INIT ( 1'b0 ))
  i2c_rst (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_rst/CLK ),
    .I(\NlwBufferSignal_i2c_rst/IN ),
    .O(i2c_rst_2786),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y26" ),
    .INIT ( 64'hF2FFF3FDFFFFFFFF ))
  i2c_rst_d_SW1 (
    .ADR1(state[1]),
    .ADR4(state[0]),
    .ADR3(state[2]),
    .ADR0(state[3]),
    .ADR5(state[4]),
    .ADR2(state[5]),
    .O(N30)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y24" ),
    .INIT ( 64'hFFFFFFFF000F0000 ))
  Mmux_i2c_lab_d2_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(i2c_lab[1]),
    .ADR5(_n0171),
    .ADR3(_n0172),
    .ADR4(Mmux_i2c_data_in_d611),
    .O(N154)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y24" ),
    .INIT ( 64'h0003008800000000 ))
  _n01711 (
    .ADR0(state[0]),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR1(state[2]),
    .ADR2(state[1]),
    .ADR4(state[3]),
    .O(_n0171)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y13" ),
    .INIT ( 64'h0000000000000001 ))
  \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o2  (
    .ADR1(\i2c/byte_controller/bit_controller/cnt [11]),
    .ADR2(\i2c/byte_controller/bit_controller/cnt [10]),
    .ADR5(\i2c/byte_controller/bit_controller/cnt [9]),
    .ADR3(\i2c/byte_controller/bit_controller/cnt [8]),
    .ADR0(\i2c/byte_controller/bit_controller/cnt [6]),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [7]),
    .O(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o2_2797 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y10" ),
    .INIT ( 1'b1 ))
  \i2c/byte_controller/bit_controller/sSCL  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/sSCL/CLK ),
    .I(\i2c/byte_controller/bit_controller/fSCL[2]_PWR_4_o_MUX_57_o ),
    .O(\i2c/byte_controller/bit_controller/sSCL_2825 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y10" ),
    .INIT ( 64'hFFFFFFFFFFF0F000 ))
  \i2c/byte_controller/bit_controller/Mmux_fSCL[2]_PWR_4_o_MUX_57_o11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\i2c/byte_controller/bit_controller/fSCL [2]),
    .ADR2(\i2c/byte_controller/bit_controller/fSCL [0]),
    .ADR4(\i2c/byte_controller/bit_controller/fSCL [1]),
    .ADR5(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/fSCL[2]_PWR_4_o_MUX_57_o )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_8/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_8_rstpot_445 ),
    .O(\i2c/byte_controller/bit_controller/cnt [8]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y12" ),
    .INIT ( 64'hAFFFA0FFAF00A000 ))
  \i2c/byte_controller/bit_controller/cnt_8_rstpot  (
    .ADR1(1'b1),
    .ADR0(\i2c/prer [8]),
    .ADR4(\i2c/byte_controller/bit_controller/Result<8>_0 ),
    .ADR5(\i2c/byte_controller/bit_controller/cnt [8]),
    .ADR3(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR2(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_8_rstpot_445 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_7/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_7_rstpot_432 ),
    .O(\i2c/byte_controller/bit_controller/cnt [7]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y12" ),
    .INIT ( 64'hCFAFC0A0CFAFC0A0 ))
  \i2c/byte_controller/bit_controller/cnt_7_rstpot  (
    .ADR5(1'b1),
    .ADR1(\i2c/prer [7]),
    .ADR0(\i2c/byte_controller/bit_controller/Result<7>_0 ),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [7]),
    .ADR2(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR3(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_7_rstpot_432 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_6/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_6_rstpot_455 ),
    .O(\i2c/byte_controller/bit_controller/cnt [6]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y12" ),
    .INIT ( 64'hF0F0FF00AAAAFF00 ))
  \i2c/byte_controller/bit_controller/cnt_6_rstpot  (
    .ADR1(1'b1),
    .ADR2(\i2c/prer [6]),
    .ADR0(\i2c/byte_controller/bit_controller/Result<6>_0 ),
    .ADR3(\i2c/byte_controller/bit_controller/cnt [6]),
    .ADR4(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR5(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_6_rstpot_455 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_5/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_5_rstpot_456 ),
    .O(\i2c/byte_controller/bit_controller/cnt [5]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y12" ),
    .INIT ( 64'hF0CCF0CCFFFF0000 ))
  \i2c/byte_controller/bit_controller/cnt_5_rstpot  (
    .ADR0(1'b1),
    .ADR2(\i2c/prer [5]),
    .ADR1(\i2c/byte_controller/bit_controller/Result<5>_0 ),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [5]),
    .ADR5(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR3(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_5_rstpot_456 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y17" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/filter_cnt_13  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_13/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [13]),
    .O(\i2c/byte_controller/bit_controller/filter_cnt [13]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y17" ),
    .INIT ( 64'h00F500A000000000 ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_mux_13_OUT51  (
    .ADR1(1'b1),
    .ADR4(\i2c/prer [15]),
    .ADR5(\i2c/ctr [7]),
    .ADR3(i2c_rst_2786),
    .ADR2(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<13>_0 ),
    .ADR0(\i2c/byte_controller/bit_controller/n0025 ),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [13])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y17" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/filter_cnt_12  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_12/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [12]),
    .O(\i2c/byte_controller/bit_controller/filter_cnt [12]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y17" ),
    .INIT ( 64'h2020220020202200 ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_mux_13_OUT41  (
    .ADR5(1'b1),
    .ADR3(\i2c/prer [14]),
    .ADR0(\i2c/ctr [7]),
    .ADR1(i2c_rst_2786),
    .ADR2(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<12>_0 ),
    .ADR4(\i2c/byte_controller/bit_controller/n0025 ),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [12])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y17" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/filter_cnt_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_11/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [11]),
    .O(\i2c/byte_controller/bit_controller/filter_cnt [11]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y17" ),
    .INIT ( 64'h5000404050004040 ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_mux_13_OUT31  (
    .ADR5(1'b1),
    .ADR1(\i2c/prer [13]),
    .ADR2(\i2c/ctr [7]),
    .ADR3(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<11>_0 ),
    .ADR0(i2c_rst_2786),
    .ADR4(\i2c/byte_controller/bit_controller/n0025 ),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [11])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y17" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/filter_cnt_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_10/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [10]),
    .O(\i2c/byte_controller/bit_controller/filter_cnt [10]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y17" ),
    .INIT ( 64'h00F000A000500000 ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_mux_13_OUT21  (
    .ADR1(1'b1),
    .ADR4(\i2c/prer [12]),
    .ADR2(\i2c/ctr [7]),
    .ADR5(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<10>_0 ),
    .ADR3(i2c_rst_2786),
    .ADR0(\i2c/byte_controller/bit_controller/n0025 ),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [10])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y14" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_12  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_12/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_12_rstpot_482 ),
    .O(\i2c/byte_controller/bit_controller/cnt [12]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y14" ),
    .INIT ( 64'hCFAFCFAFC0A0C0A0 ))
  \i2c/byte_controller/bit_controller/cnt_12_rstpot  (
    .ADR4(1'b1),
    .ADR1(\i2c/prer [12]),
    .ADR0(\i2c/byte_controller/bit_controller/Result<12>_0 ),
    .ADR5(\i2c/byte_controller/bit_controller/cnt [12]),
    .ADR2(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR3(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_12_rstpot_482 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y14" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_11/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_11_rstpot_469 ),
    .O(\i2c/byte_controller/bit_controller/cnt [11]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y14" ),
    .INIT ( 64'hAFAFA0A0FF0FF000 ))
  \i2c/byte_controller/bit_controller/cnt_11_rstpot  (
    .ADR1(1'b1),
    .ADR0(\i2c/prer [11]),
    .ADR3(\i2c/byte_controller/bit_controller/Result<11>_0 ),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [11]),
    .ADR2(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR5(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_11_rstpot_469 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y14" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_10/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_10_rstpot_492 ),
    .O(\i2c/byte_controller/bit_controller/cnt [10]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y14" ),
    .INIT ( 64'hFD75A820FD75A820 ))
  \i2c/byte_controller/bit_controller/cnt_10_rstpot  (
    .ADR5(1'b1),
    .ADR3(\i2c/prer [10]),
    .ADR2(\i2c/byte_controller/bit_controller/Result<10>_0 ),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [10]),
    .ADR0(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR1(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_10_rstpot_492 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y14" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_9/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_9_rstpot_493 ),
    .O(\i2c/byte_controller/bit_controller/cnt [9]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y14" ),
    .INIT ( 64'hCCF0CCF0FFFF0000 ))
  \i2c/byte_controller/bit_controller/cnt_9_rstpot  (
    .ADR0(1'b1),
    .ADR1(\i2c/prer [9]),
    .ADR2(\i2c/byte_controller/bit_controller/Result<9>_0 ),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [9]),
    .ADR5(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR3(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_9_rstpot_493 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y15" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_15  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_15/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_15_rstpot_518 ),
    .O(\i2c/byte_controller/bit_controller/cnt [15]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y15" ),
    .INIT ( 64'hCFCFC0C0FF0FF000 ))
  \i2c/byte_controller/bit_controller/cnt_15_rstpot  (
    .ADR0(1'b1),
    .ADR1(\i2c/prer [15]),
    .ADR3(\i2c/byte_controller/bit_controller/Result<15>_0 ),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [15]),
    .ADR2(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR5(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_15_rstpot_518 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y15" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_14  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_14/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_14_rstpot_516 ),
    .O(\i2c/byte_controller/bit_controller/cnt [14]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y15" ),
    .INIT ( 64'hAAF0AAF0FFFF0000 ))
  \i2c/byte_controller/bit_controller/cnt_14_rstpot  (
    .ADR1(1'b1),
    .ADR0(\i2c/prer [14]),
    .ADR2(\i2c/byte_controller/bit_controller/Result<14>_0 ),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [14]),
    .ADR5(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR3(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_14_rstpot_516 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y15" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_13  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_13/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_13_rstpot_498 ),
    .O(\i2c/byte_controller/bit_controller/cnt [13]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y15" ),
    .INIT ( 64'hCFC0CFC0FFFF0000 ))
  \i2c/byte_controller/bit_controller/cnt_13_rstpot  (
    .ADR0(1'b1),
    .ADR1(\i2c/prer [13]),
    .ADR3(\i2c/byte_controller/bit_controller/Result<13>_0 ),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [13]),
    .ADR5(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR2(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_13_rstpot_498 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y26" ),
    .INIT ( 64'h0000002F00BE017F ))
  \state[5]_state[5]_OR_207_o1  (
    .ADR0(state[0]),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR2(state[2]),
    .ADR1(state[1]),
    .ADR4(state[3]),
    .O(\state[5]_state[5]_OR_207_o )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y25" ),
    .INIT ( 1'b0 ))
  i2c_lab_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_lab_1/CLK ),
    .I(\NlwBufferSignal_i2c_lab_1/IN ),
    .O(i2c_lab[1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y25" ),
    .INIT ( 64'hFFFDCCCCFFFCCCCC ))
  Mmux_i2c_lab_d2211_SW0 (
    .ADR4(N38),
    .ADR0(_n0168),
    .ADR2(\state[5]_PWR_1_o_equal_20_o ),
    .ADR5(\state[5]_GND_1_o_equal_26_o ),
    .ADR3(\state[5]_GND_1_o_equal_21_o ),
    .ADR1(\state[5]_GND_1_o_equal_17_o ),
    .O(N76)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y25" ),
    .INIT ( 64'hFF0FFF04F000FB00 ))
  Mmux_i2c_lab_d2 (
    .ADR4(_n0170),
    .ADR2(\state[5]_GND_1_o_equal_31_o ),
    .ADR0(\state[5]_GND_1_o_equal_36_o ),
    .ADR1(N154),
    .ADR5(N76),
    .ADR3(N77_0),
    .O(i2c_lab_d[1])
  );
  X_FF #(
    .LOC ( "SLICE_X13Y25" ),
    .INIT ( 1'b0 ))
  i2c_lab_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_lab_0/CLK ),
    .I(\NlwBufferSignal_i2c_lab_0/IN ),
    .O(i2c_lab[0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y25" ),
    .INIT ( 64'hF0F0F0F0FAFEFAFF ))
  Mmux_i2c_lab_d1_SW0_SW1 (
    .ADR4(_n0168),
    .ADR3(\state[5]_PWR_1_o_equal_20_o ),
    .ADR0(\state[5]_GND_1_o_equal_19_o ),
    .ADR1(\state[5]_GND_1_o_equal_21_o ),
    .ADR5(\state[5]_GND_1_o_equal_18_o ),
    .ADR2(\state[5]_GND_1_o_equal_17_o ),
    .O(N67)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y25" ),
    .INIT ( 64'hFFFFDDCD22320000 ))
  Mmux_i2c_lab_d1 (
    .ADR1(_n0169),
    .ADR3(_n0170),
    .ADR2(N40),
    .ADR0(Mmux_i2c_lab_d111),
    .ADR4(N67),
    .ADR5(N66_0),
    .O(i2c_lab_d[0])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y10" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/dscl_oen  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/dscl_oen/CLK ),
    .I(\NlwBufferSignal_i2c/byte_controller/bit_controller/dscl_oen/IN ),
    .O(\i2c/byte_controller/bit_controller/dscl_oen_2849 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y28" ),
    .INIT ( 64'hAAAAAAAA0A0AAAAA ))
  Mmux_pointer_dummy51 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR4(state[0]),
    .ADR0(state[4]),
    .ADR2(state[2]),
    .ADR5(state[3]),
    .O(Mmux_pointer_dummy5)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y28" ),
    .INIT ( 64'hF0FAF0F5FAF0F0A0 ))
  Mmux_pointer_dummy541 (
    .ADR1(1'b1),
    .ADR3(state[0]),
    .ADR2(state[5]),
    .ADR4(state[2]),
    .ADR0(state[1]),
    .ADR5(state[3]),
    .O(Mmux_pointer_dummy54_3132)
  );
  X_BUF   \i2c/byte_controller/bit_controller/sda_chk/i2c/byte_controller/bit_controller/sda_chk_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/N16_pack_1 ),
    .O(\i2c/byte_controller/bit_controller/N16 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y11" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/sda_chk  (
    .CE(\i2c/byte_controller/bit_controller/_n0207_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/sda_chk/CLK ),
    .I(\i2c/byte_controller/bit_controller/sda_chk_GND_6_o_MUX_93_o ),
    .O(\i2c/byte_controller/bit_controller/sda_chk_2804 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y11" ),
    .INIT ( 64'h0033000000330000 ))
  \i2c/byte_controller/bit_controller/c_state_sda_chk_GND_6_o_MUX_93_o1  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/c_state_FSM_FFd2_2802 ),
    .ADR3(\i2c/i2c_al ),
    .ADR1(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/sda_chk_GND_6_o_MUX_93_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y11" ),
    .INIT ( 32'hDFDFDFDF ))
  \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o3_SW2  (
    .ADR0(\i2c/byte_controller/bit_controller/slave_wait_2800 ),
    .ADR2(\i2c/ctr [7]),
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR1(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/N16_pack_1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y11" ),
    .INIT ( 64'hFBFAF3F07350F3F0 ))
  \i2c/byte_controller/bit_controller/_n0201_inv1  (
    .ADR3(i2c_scl_oe),
    .ADR1(\i2c/byte_controller/bit_controller/N8 ),
    .ADR0(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o1_2796 ),
    .ADR4(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o2_2797 ),
    .ADR2(\i2c/byte_controller/bit_controller/N16 ),
    .ADR5(\i2c/byte_controller/bit_controller/N17_0 ),
    .O(\i2c/byte_controller/bit_controller/_n0201_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y15" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \i2c/byte_controller/bit_controller/out2  (
    .ADR0(\i2c/byte_controller/bit_controller/filter_cnt [2]),
    .ADR4(\i2c/byte_controller/bit_controller/filter_cnt [3]),
    .ADR3(\i2c/byte_controller/bit_controller/filter_cnt [0]),
    .ADR1(\i2c/byte_controller/bit_controller/filter_cnt [1]),
    .ADR2(\i2c/byte_controller/bit_controller/filter_cnt [12]),
    .ADR5(\i2c/byte_controller/bit_controller/filter_cnt [13]),
    .O(\i2c/byte_controller/bit_controller/out1_3151 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/cnt<0>/i2c/byte_controller/bit_controller/cnt<0>_CMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/N17 ),
    .O(\i2c/byte_controller/bit_controller/N17_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X14Y13" ))
  \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o3_SW3  (
    .IA(\i2c/byte_controller/bit_controller/N21 ),
    .IB(\i2c/byte_controller/bit_controller/N22 ),
    .O(\i2c/byte_controller/bit_controller/N17 ),
    .SEL(\i2c/byte_controller/bit_controller/cnt [12])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y13" ),
    .INIT ( 64'hF0FFFFFFF1FFFFFF ))
  \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o3_SW3_F  (
    .ADR4(\i2c/byte_controller/bit_controller/slave_wait_2800 ),
    .ADR5(\i2c/byte_controller/bit_controller/cnt [14]),
    .ADR1(\i2c/byte_controller/bit_controller/cnt [15]),
    .ADR0(\i2c/byte_controller/bit_controller/cnt [13]),
    .ADR3(\i2c/ctr [7]),
    .ADR2(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/N21 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y13" ),
    .INIT ( 64'hF5F5FFFFF5F5FFFF ))
  \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o3_SW3_G  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/slave_wait_2800 ),
    .ADR0(\i2c/ctr [7]),
    .ADR2(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/N22 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y13" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_0/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_0_rstpot_728 ),
    .O(\i2c/byte_controller/bit_controller/cnt [0]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y13" ),
    .INIT ( 64'hCCF0CCF0FFFF0000 ))
  \i2c/byte_controller/bit_controller/cnt_0_rstpot  (
    .ADR0(1'b1),
    .ADR1(\i2c/prer [0]),
    .ADR2(\i2c/byte_controller/bit_controller/Result<0>_0 ),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [0]),
    .ADR5(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR3(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_0_rstpot_728 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y13" ),
    .INIT ( 1'b1 ))
  \i2c/byte_controller/bit_controller/clk_en  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/clk_en/CLK ),
    .I(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y13" ),
    .INIT ( 64'hFF00FF20FF00DF00 ))
  \i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o4  (
    .ADR1(\i2c/byte_controller/bit_controller/cnt [14]),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [15]),
    .ADR2(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o1_2796 ),
    .ADR0(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o2_2797 ),
    .ADR3(\i2c/byte_controller/bit_controller/N10_0 ),
    .ADR5(\i2c/byte_controller/bit_controller/N11_0 ),
    .O(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o )
  );
  X_BUF   \i2c/prer<9>/i2c/prer<9>_DMUX_Delay  (
    .I(\i2c/prer<1>_pack_13 ),
    .O(\i2c/prer [1])
  );
  X_BUF   \i2c/prer<9>/i2c/prer<9>_CMUX_Delay  (
    .I(\i2c/prer<0>_pack_11 ),
    .O(\i2c/prer [0])
  );
  X_BUF   \i2c/prer<9>/i2c/prer<9>_BMUX_Delay  (
    .I(\i2c/prer<15>_pack_9 ),
    .O(\i2c/prer [15])
  );
  X_BUF   \i2c/prer<9>/i2c/prer<9>_AMUX_Delay  (
    .I(\i2c/prer<14>_pack_7 ),
    .O(\i2c/prer [14])
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  \i2c/prer_9  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_9/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<9> ),
    .O(\i2c/prer [9]),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 64'hFFF3FFC0FFF3FFC0 ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT161  (
    .ADR0(1'b1),
    .ADR2(i2c_data_in[1]),
    .ADR1(i2c_lab[0]),
    .ADR4(\i2c/prer [9]),
    .ADR3(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<9> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 32'hFFB8FFB8 ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT81  (
    .ADR0(\i2c/prer [1]),
    .ADR2(i2c_data_in[1]),
    .ADR1(i2c_lab[0]),
    .ADR4(1'b1),
    .ADR3(i2c_rst_2786),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<1> )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  \i2c/prer_1  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_1/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<1> ),
    .O(\i2c/prer<1>_pack_13 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  \i2c/prer_8  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_8/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<8> ),
    .O(\i2c/prer [8]),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 64'hFFF0FCFCFFF0FCFC ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT151  (
    .ADR0(1'b1),
    .ADR3(i2c_data_in[0]),
    .ADR4(i2c_lab[0]),
    .ADR1(\i2c/prer [8]),
    .ADR2(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<8> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 32'hFAFAFFF0 ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT11  (
    .ADR0(\i2c/prer [0]),
    .ADR3(i2c_data_in[0]),
    .ADR4(i2c_lab[0]),
    .ADR1(1'b1),
    .ADR2(i2c_rst_2786),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  \i2c/prer_0  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_0/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<0> ),
    .O(\i2c/prer<0>_pack_11 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  \i2c/prer_7  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_7/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<7> ),
    .O(\i2c/prer [7]),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 64'hFFFCCCFCFFFCCCFC ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT141  (
    .ADR0(1'b1),
    .ADR2(i2c_data_in[7]),
    .ADR3(i2c_lab[0]),
    .ADR4(\i2c/prer [7]),
    .ADR1(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<7> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 32'hFCEEFCEE ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT71  (
    .ADR0(\i2c/prer [15]),
    .ADR2(i2c_data_in[7]),
    .ADR3(i2c_lab[0]),
    .ADR4(1'b1),
    .ADR1(i2c_rst_2786),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<15> )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  \i2c/prer_15  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_15/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<15> ),
    .O(\i2c/prer<15>_pack_9 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  \i2c/prer_6  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_6/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<6> ),
    .O(\i2c/prer [6]),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 64'hFFFCCCFCFFFCCCFC ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT131  (
    .ADR0(1'b1),
    .ADR2(i2c_data_in[6]),
    .ADR3(i2c_lab[0]),
    .ADR4(\i2c/prer [6]),
    .ADR1(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<6> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 32'hFCEEFCEE ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT61  (
    .ADR0(\i2c/prer [14]),
    .ADR2(i2c_data_in[6]),
    .ADR3(i2c_lab[0]),
    .ADR4(1'b1),
    .ADR1(i2c_rst_2786),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<14> )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  \i2c/prer_14  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_14/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<14> ),
    .O(\i2c/prer<14>_pack_7 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_BUF   \i2c/byte_controller/bit_controller/filter_cnt<1>/i2c/byte_controller/bit_controller/filter_cnt<1>_CMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/_n0196_inv ),
    .O(\i2c/byte_controller/bit_controller/_n0196_inv_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y16" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/filter_cnt_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_1/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [1]),
    .O(\i2c/byte_controller/bit_controller/filter_cnt [1]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y16" ),
    .INIT ( 64'h4444550000000000 ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_mux_13_OUT61  (
    .ADR2(1'b1),
    .ADR3(\i2c/prer [3]),
    .ADR5(\i2c/ctr [7]),
    .ADR1(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<1>_0 ),
    .ADR0(i2c_rst_2786),
    .ADR4(\i2c/byte_controller/bit_controller/n0025 ),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y16" ),
    .INIT ( 64'hFFFEFFFEFFFEFFFE ))
  \i2c/byte_controller/bit_controller/out3  (
    .ADR4(1'b1),
    .ADR1(\i2c/byte_controller/bit_controller/filter_cnt [10]),
    .ADR3(\i2c/byte_controller/bit_controller/filter_cnt [11]),
    .ADR2(\i2c/byte_controller/bit_controller/out1_3151 ),
    .ADR0(\i2c/byte_controller/bit_controller/out ),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/n0025 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y16" ),
    .INIT ( 32'hFFFF0001 ))
  \i2c/byte_controller/bit_controller/_n0196_inv1  (
    .ADR4(i2c_rst_2786),
    .ADR1(\i2c/byte_controller/bit_controller/filter_cnt [10]),
    .ADR3(\i2c/byte_controller/bit_controller/filter_cnt [11]),
    .ADR2(\i2c/byte_controller/bit_controller/out1_3151 ),
    .ADR0(\i2c/byte_controller/bit_controller/out ),
    .O(\i2c/byte_controller/bit_controller/_n0196_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y16" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/filter_cnt_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_0/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [0]),
    .O(\i2c/byte_controller/bit_controller/filter_cnt [0]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y16" ),
    .INIT ( 64'h00F0000000A000A0 ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_mux_13_OUT15  (
    .ADR1(1'b1),
    .ADR0(\i2c/prer [2]),
    .ADR2(\i2c/ctr [7]),
    .ADR4(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<0>_0 ),
    .ADR3(i2c_rst_2786),
    .ADR5(\i2c/byte_controller/bit_controller/n0025 ),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y16" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \i2c/byte_controller/bit_controller/out1  (
    .ADR4(\i2c/byte_controller/bit_controller/filter_cnt [8]),
    .ADR3(\i2c/byte_controller/bit_controller/filter_cnt [9]),
    .ADR5(\i2c/byte_controller/bit_controller/filter_cnt [6]),
    .ADR1(\i2c/byte_controller/bit_controller/filter_cnt [7]),
    .ADR0(\i2c/byte_controller/bit_controller/filter_cnt [4]),
    .ADR2(\i2c/byte_controller/bit_controller/filter_cnt [5]),
    .O(\i2c/byte_controller/bit_controller/out )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_4/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_4_rstpot_688 ),
    .O(\i2c/byte_controller/bit_controller/cnt [4]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y12" ),
    .INIT ( 64'hCFCFFF0FC0C0F000 ))
  \i2c/byte_controller/bit_controller/cnt_4_rstpot  (
    .ADR0(1'b1),
    .ADR1(\i2c/prer [4]),
    .ADR3(\i2c/byte_controller/bit_controller/Result<4>_0 ),
    .ADR5(\i2c/byte_controller/bit_controller/cnt [4]),
    .ADR2(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR4(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_4_rstpot_688 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_3/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_3_rstpot_675 ),
    .O(\i2c/byte_controller/bit_controller/cnt [3]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y12" ),
    .INIT ( 64'hAFCFA0C0AFCFA0C0 ))
  \i2c/byte_controller/bit_controller/cnt_3_rstpot  (
    .ADR5(1'b1),
    .ADR0(\i2c/prer [3]),
    .ADR1(\i2c/byte_controller/bit_controller/Result<3>_0 ),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [3]),
    .ADR2(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR3(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_3_rstpot_675 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_2/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_2_rstpot_698 ),
    .O(\i2c/byte_controller/bit_controller/cnt [2]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y12" ),
    .INIT ( 64'hF0CCF0CCFFFF0000 ))
  \i2c/byte_controller/bit_controller/cnt_2_rstpot  (
    .ADR0(1'b1),
    .ADR2(\i2c/prer [2]),
    .ADR1(\i2c/byte_controller/bit_controller/Result<2>_0 ),
    .ADR4(\i2c/byte_controller/bit_controller/cnt [2]),
    .ADR5(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR3(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_2_rstpot_698 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cnt_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_1/CLK ),
    .I(\i2c/byte_controller/bit_controller/cnt_1_rstpot_699 ),
    .O(\i2c/byte_controller/bit_controller/cnt [1]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y12" ),
    .INIT ( 64'hAFAFFF0FA0A0F000 ))
  \i2c/byte_controller/bit_controller/cnt_1_rstpot  (
    .ADR1(1'b1),
    .ADR0(\i2c/prer [1]),
    .ADR3(\i2c/byte_controller/bit_controller/Result<1>_0 ),
    .ADR5(\i2c/byte_controller/bit_controller/cnt [1]),
    .ADR2(\i2c/byte_controller/bit_controller/_n0201_inv ),
    .ADR4(\i2c/byte_controller/bit_controller/rst_scl_sync_OR_29_o ),
    .O(\i2c/byte_controller/bit_controller/cnt_1_rstpot_699 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y14" ),
    .INIT ( 64'hEEEEFFFFEEEFFFFF ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT1_SW0  (
    .ADR4(\i2c/cr_7_2865 ),
    .ADR2(\i2c/cr_5_2864 ),
    .ADR3(\i2c/cr_4_2853 ),
    .ADR5(\i2c/cr_6_2854 ),
    .ADR0(\i2c/byte_controller/c_state_FSM_FFd2_2855 ),
    .ADR1(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .O(\i2c/byte_controller/N4 )
  );
  X_BUF   \i2c/irxack/i2c/irxack_AMUX_Delay  (
    .I(\i2c/byte_controller/N2 ),
    .O(\i2c/byte_controller/N2_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y17" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/ack_out  (
    .CE(\i2c/byte_controller/_n0150_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/ack_out/CLK ),
    .I(\i2c/byte_controller/ack_out_GND_5_o_MUX_113_o ),
    .O(\i2c/irxack ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y17" ),
    .INIT ( 64'h000000CC000000CC ))
  \i2c/byte_controller/Mmux_ack_out_GND_5_o_MUX_113_o11  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\i2c/byte_controller/core_rxd ),
    .ADR4(\i2c/i2c_al ),
    .ADR3(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/ack_out_GND_5_o_MUX_113_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y17" ),
    .INIT ( 32'hFFAAFFAA ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_MUX_111_o1_SW0  (
    .ADR1(1'b1),
    .ADR0(\i2c/byte_controller/c_state_FSM_FFd2_2855 ),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(i2c_rst_2786),
    .O(\i2c/byte_controller/N2 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y27" ),
    .INIT ( 64'h0020000000000000 ))
  \state[5]_GND_1_o_equal_43_o<5>1  (
    .ADR1(state[0]),
    .ADR3(state[5]),
    .ADR4(state[4]),
    .ADR2(state[2]),
    .ADR0(state[1]),
    .ADR5(state[3]),
    .O(\state[5]_GND_1_o_equal_43_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y27" ),
    .INIT ( 64'h0500000000000000 ))
  _n01721 (
    .ADR1(1'b1),
    .ADR2(state[5]),
    .ADR4(state[4]),
    .ADR3(state[2]),
    .ADR0(state[1]),
    .ADR5(state[3]),
    .O(_n0172)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y27" ),
    .INIT ( 64'h00FC00FF00CC00CC ))
  Mmux_nextState76 (
    .ADR0(1'b1),
    .ADR2(pointer[1]),
    .ADR4(i2c_ack_o),
    .ADR1(\state[5]_GND_1_o_equal_43_o ),
    .ADR3(_n0172),
    .ADR5(Mmux_nextState152),
    .O(Mmux_nextState75_3110)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y27" ),
    .INIT ( 64'h0000800000000000 ))
  Mmux_nextState1521 (
    .ADR3(state[0]),
    .ADR4(state[5]),
    .ADR1(state[4]),
    .ADR5(state[2]),
    .ADR0(state[1]),
    .ADR2(state[3]),
    .O(Mmux_nextState152)
  );
  X_BUF   \i2c/ctr<7>/i2c/ctr<7>_CMUX_Delay  (
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<5>_pack_3 ),
    .O(\i2c/ctr[7]_GND_4_o_mux_16_OUT<5> )
  );
  X_BUF   \i2c/ctr<7>/i2c/ctr<7>_AMUX_Delay  (
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<2> ),
    .O(\i2c/ctr[7]_GND_4_o_mux_16_OUT<2>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y20" ),
    .INIT ( 1'b0 ))
  \i2c/ctr_7  (
    .CE(\i2c/_n0165_inv ),
    .CLK(\NlwBufferSignal_i2c/ctr_7/CLK ),
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<7> ),
    .O(\i2c/ctr [7]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y20" ),
    .INIT ( 64'h0000FFFF00000000 ))
  \i2c/ctr[7]_GND_4_o_mux_16_OUT<7>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR5(i2c_data_in[7]),
    .ADR4(i2c_rst_2786),
    .O(\i2c/ctr[7]_GND_4_o_mux_16_OUT<7> )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y20" ),
    .INIT ( 1'b0 ))
  \i2c/ctr_6  (
    .CE(\i2c/_n0165_inv ),
    .CLK(\NlwBufferSignal_i2c/ctr_6/CLK ),
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<6> ),
    .O(\i2c/ctr [6]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y20" ),
    .INIT ( 64'h00AA00AA00AA00AA ))
  \i2c/ctr[7]_GND_4_o_mux_16_OUT<6>1  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR0(i2c_data_in[6]),
    .ADR3(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/ctr[7]_GND_4_o_mux_16_OUT<6> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y20" ),
    .INIT ( 32'h00FF0000 ))
  \i2c/ctr[7]_GND_4_o_mux_16_OUT<5>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(i2c_data_in[5]),
    .ADR2(1'b1),
    .ADR3(i2c_rst_2786),
    .O(\i2c/ctr[7]_GND_4_o_mux_16_OUT<5>_pack_3 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y20" ),
    .INIT ( 1'b0 ))
  \i2c/ctr_5  (
    .CE(\i2c/_n0165_inv ),
    .CLK(\NlwBufferSignal_i2c/ctr_5/CLK ),
    .I(\NlwBufferSignal_i2c/ctr_5/IN ),
    .O(\i2c/ctr [5]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y20" ),
    .INIT ( 64'hDDDD0303DDDDCFCF ))
  \i2c/mux71_SW4  (
    .ADR3(1'b1),
    .ADR0(\i2c/rxr [7]),
    .ADR5(\i2c/cr_7_2865 ),
    .ADR1(i2c_lab[2]),
    .ADR2(\i2c/ctr [7]),
    .ADR4(i2c_lab[0]),
    .O(\i2c/N48 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y20" ),
    .INIT ( 1'b0 ))
  \i2c/ctr_4  (
    .CE(\i2c/_n0165_inv ),
    .CLK(\NlwBufferSignal_i2c/ctr_4/CLK ),
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<4> ),
    .O(\i2c/ctr [4]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y20" ),
    .INIT ( 64'h0000CCCC0000CCCC ))
  \i2c/ctr[7]_GND_4_o_mux_16_OUT<4>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(i2c_data_in[4]),
    .ADR4(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/ctr[7]_GND_4_o_mux_16_OUT<4> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y20" ),
    .INIT ( 32'h0000AAAA ))
  \i2c/ctr[7]_GND_4_o_mux_16_OUT<2>1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(i2c_data_in[2]),
    .ADR3(1'b1),
    .ADR4(i2c_rst_2786),
    .O(\i2c/ctr[7]_GND_4_o_mux_16_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 1'b0 ))
  \i2c/cr_3  (
    .CE(\i2c/_n0209_inv ),
    .CLK(\NlwBufferSignal_i2c/cr_3/CLK ),
    .I(\i2c/cr[7]_GND_4_o_mux_24_OUT<3> ),
    .O(\i2c/cr_3_3070 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 64'h00000000FFFF0000 ))
  \i2c/cr[7]_GND_4_o_mux_24_OUT<3>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(i2c_data_in[3]),
    .ADR5(i2c_rst_2786),
    .O(\i2c/cr[7]_GND_4_o_mux_24_OUT<3> )
  );
  X_BUF   \i2c_data_out<5>/i2c_data_out<5>_DMUX_Delay  (
    .I(\i2c/N12_pack_7 ),
    .O(\i2c/N12 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 64'hFA0AFA0AFA0AFA0A ))
  \i2c/mux51_SW0  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR0(\i2c/prer [5]),
    .ADR3(\i2c/prer [13]),
    .ADR2(i2c_lab[0]),
    .ADR5(1'b1),
    .O(\i2c/N10 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 32'h30303F3F ))
  \i2c/mux51_SW2  (
    .ADR4(\i2c/al_2821 ),
    .ADR1(\i2c/txr [5]),
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(i2c_lab[0]),
    .O(\i2c/N12_pack_7 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 1'b0 ))
  \i2c/wb_dat_o_5  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_5/CLK ),
    .I(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<5> ),
    .O(i2c_data_out[5]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 64'h303F3F3F303F3030 ))
  \i2c/mux51  (
    .ADR0(1'b1),
    .ADR2(i2c_lab[1]),
    .ADR4(i2c_lab[2]),
    .ADR1(\i2c/N44 ),
    .ADR5(\i2c/N10 ),
    .ADR3(\i2c/N12 ),
    .O(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<5> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 64'h5F5F303F5F5F303F ))
  \i2c/mux41_SW4  (
    .ADR5(1'b1),
    .ADR0(\i2c/txr [4]),
    .ADR1(\i2c/prer [12]),
    .ADR3(\i2c/prer [4]),
    .ADR4(i2c_lab[2]),
    .ADR2(i2c_lab[0]),
    .O(\i2c/N54 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 1'b0 ))
  \i2c/wb_dat_o_4  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_4/CLK ),
    .I(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<4> ),
    .O(i2c_data_out[4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 64'h0CAA0CAA0000FFFF ))
  \i2c/mux41  (
    .ADR5(i2c_lab[1]),
    .ADR3(i2c_lab[2]),
    .ADR0(\i2c/N36 ),
    .ADR4(\i2c/N54 ),
    .ADR1(\i2c/cr_4_2853 ),
    .ADR2(i2c_lab[0]),
    .O(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<4> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y27" ),
    .INIT ( 64'hFFFFFFDDFFFFCFCD ))
  Mmux_nextState124 (
    .ADR5(i2c_data_out[1]),
    .ADR0(Mmux_nextState212),
    .ADR4(_n0185),
    .ADR1(\state[5]_GND_1_o_equal_30_o ),
    .ADR2(\state[5]_GND_1_o_equal_34_o ),
    .ADR3(Mmux_nextState122_3136),
    .O(Mmux_nextState123_3203)
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y27" ),
    .INIT ( 1'b0 ))
  state_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_state_3/CLK ),
    .I(nextState[3]),
    .O(state[3]),
    .SRST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y27" ),
    .INIT ( 64'h00F500FF00F000F0 ))
  Mmux_nextState125 (
    .ADR1(1'b1),
    .ADR0(i2c_data_out[7]),
    .ADR3(\state[5]_GND_1_o_equal_17_o ),
    .ADR2(Mmux_nextState12),
    .ADR4(Mmux_nextState111),
    .ADR5(Mmux_nextState123_3203),
    .O(nextState[3])
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y27" ),
    .INIT ( 1'b0 ))
  state_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_state_2/CLK ),
    .I(nextState[2]),
    .O(state[2]),
    .SRST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y27" ),
    .INIT ( 64'h5555111155550511 ))
  Mmux_nextState93 (
    .ADR4(_n0183),
    .ADR0(\state[5]_GND_1_o_equal_17_o ),
    .ADR2(N49),
    .ADR1(N48),
    .ADR3(Mmux_nextState82_3074),
    .ADR5(Mmux_nextState9),
    .O(nextState[2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y27" ),
    .INIT ( 64'hFFFFFFFBFFFFFFAA ))
  Mmux_nextState91 (
    .ADR2(pointer[2]),
    .ADR1(i2c_ack_o),
    .ADR5(Mmux_nextState152),
    .ADR4(\state[5]_GND_1_o_equal_28_o ),
    .ADR0(\state[5]_GND_1_o_equal_27_o ),
    .ADR3(\state[5]_GND_1_o_equal_26_o ),
    .O(Mmux_nextState9)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y29" ),
    .INIT ( 64'hFFFFFF00FFFFC000 ))
  Mmux_pointer_dummy43 (
    .ADR0(1'b1),
    .ADR1(pointer[3]),
    .ADR3(Mmux_pointer_dummy41),
    .ADR5(_n0190),
    .ADR4(\state[5]_GND_1_o_equal_37_o ),
    .ADR2(Mmux_i2c_data_in_d611),
    .O(Mmux_pointer_dummy42_3205)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y29" ),
    .INIT ( 1'b0 ))
  pointer_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_pointer_3/CLK ),
    .I(pointer_dummy[3]),
    .O(pointer[3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y29" ),
    .INIT ( 64'h3000755530003000 ))
  Mmux_pointer_dummy45 (
    .ADR1(state[5]),
    .ADR3(state[3]),
    .ADR4(\state[5]_GND_1_o_equal_33_o ),
    .ADR0(\state[5]_GND_1_o_equal_34_o ),
    .ADR2(Mmux_pointer_dummy43_0),
    .ADR5(Mmux_pointer_dummy42_3205),
    .O(pointer_dummy[3])
  );
  X_FF #(
    .LOC ( "SLICE_X16Y29" ),
    .INIT ( 1'b0 ))
  pointer_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_pointer_2/CLK ),
    .I(pointer_dummy[2]),
    .O(pointer[2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y29" ),
    .INIT ( 64'h03030303030305FF ))
  Mmux_pointer_dummy37 (
    .ADR2(state[5]),
    .ADR0(N60_0),
    .ADR1(N61),
    .ADR4(\state[5]_GND_1_o_equal_33_o ),
    .ADR5(\state[5]_GND_1_o_equal_34_o ),
    .ADR3(N81),
    .O(pointer_dummy[2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y29" ),
    .INIT ( 64'hFF7FFFFFFFFFFFFF ))
  Mmux_pointer_dummy37_SW0 (
    .ADR0(state[1]),
    .ADR3(state[5]),
    .ADR2(state[4]),
    .ADR5(state[2]),
    .ADR4(state[3]),
    .ADR1(pointer[2]),
    .O(N81)
  );
  X_BUF   \i2c/cr_2/i2c/cr_2_DMUX_Delay  (
    .I(\i2c/_n0214_inv_pack_8 ),
    .O(\i2c/_n0214_inv )
  );
  X_BUF   \i2c/cr_2/i2c/cr_2_BMUX_Delay  (
    .I(\i2c/cr_0_1701 ),
    .O(\i2c/cr_0_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y21" ),
    .INIT ( 64'hEECCCCCCEECCCCCC ))
  \i2c/_n0209_inv1  (
    .ADR2(1'b1),
    .ADR3(i2c_we_2838),
    .ADR0(i2c_ack_o),
    .ADR1(i2c_rst_2786),
    .ADR4(\i2c/_n0209_inv1_3066 ),
    .ADR5(1'b1),
    .O(\i2c/_n0209_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y21" ),
    .INIT ( 32'hFFFFDDFF ))
  \i2c/_n0214_inv1  (
    .ADR2(1'b1),
    .ADR3(i2c_we_2838),
    .ADR0(i2c_ack_o),
    .ADR1(i2c_rst_2786),
    .ADR4(\i2c/_n0209_inv1_3066 ),
    .O(\i2c/_n0214_inv_pack_8 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y21" ),
    .INIT ( 64'h000000000000CC00 ))
  \i2c/_n0209_inv11  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR5(i2c_lab[1]),
    .ADR3(i2c_lab[2]),
    .ADR1(\i2c/ctr [7]),
    .ADR4(i2c_lab[0]),
    .O(\i2c/_n0209_inv1_3066 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y21" ),
    .INIT ( 1'b0 ))
  \i2c/cr_2  (
    .CE(\i2c/_n0214_inv ),
    .CLK(\NlwBufferSignal_i2c/cr_2/CLK ),
    .I(\i2c/cr[7]_GND_4_o_mux_24_OUT<2> ),
    .O(\i2c/cr_2_2841 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y21" ),
    .INIT ( 64'h4400000044000000 ))
  \i2c/Mmux_cr[7]_GND_4_o_mux_24_OUT<2>11  (
    .ADR2(1'b1),
    .ADR3(i2c_data_in[2]),
    .ADR1(i2c_we_2838),
    .ADR4(i2c_ack_o),
    .ADR0(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/cr[7]_GND_4_o_mux_24_OUT<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y21" ),
    .INIT ( 32'h40400000 ))
  \i2c/Mmux_cr[7]_GND_4_o_mux_24_OUT<0>11  (
    .ADR2(i2c_data_in[0]),
    .ADR3(1'b1),
    .ADR1(i2c_we_2838),
    .ADR4(i2c_ack_o),
    .ADR0(i2c_rst_2786),
    .O(\i2c/cr[7]_GND_4_o_mux_24_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y21" ),
    .INIT ( 1'b0 ))
  \i2c/cr_0  (
    .CE(\i2c/_n0214_inv ),
    .CLK(\NlwBufferSignal_i2c/cr_0/CLK ),
    .I(\i2c/cr[7]_GND_4_o_mux_24_OUT<0> ),
    .O(\i2c/cr_0_1701 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y21" ),
    .INIT ( 1'b0 ))
  \i2c/cr_1  (
    .CE(\i2c/_n0214_inv ),
    .CLK(\NlwBufferSignal_i2c/cr_1/CLK ),
    .I(\i2c/cr[7]_GND_4_o_mux_24_OUT<1> ),
    .O(\i2c/cr_1_3040 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y21" ),
    .INIT ( 64'h0000808000008080 ))
  \i2c/Mmux_cr[7]_GND_4_o_mux_24_OUT<1>11  (
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(i2c_data_in[1]),
    .ADR1(i2c_we_2838),
    .ADR0(i2c_ack_o),
    .ADR4(i2c_rst_2786),
    .O(\i2c/cr[7]_GND_4_o_mux_24_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y26" ),
    .INIT ( 64'hEEEFEEFFEAEAEEFF ))
  Mmux_nextState77 (
    .ADR1(i2c_data_out[1]),
    .ADR0(Mmux_nextState74_3104),
    .ADR4(Mmux_nextState212),
    .ADR2(\state[5]_GND_1_o_equal_39_o ),
    .ADR3(\state[5]_GND_1_o_equal_34_o ),
    .ADR5(Mmux_nextState75_3110),
    .O(Mmux_nextState76_3201)
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y26" ),
    .INIT ( 1'b0 ))
  state_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_state_1/CLK ),
    .I(nextState[1]),
    .O(state[1]),
    .SRST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y26" ),
    .INIT ( 64'h5555504055554040 ))
  Mmux_nextState78 (
    .ADR0(\state[5]_GND_1_o_equal_17_o ),
    .ADR4(Mmux_nextState7),
    .ADR2(Mmux_nextState71_3098),
    .ADR3(Mmux_nextState73_3101),
    .ADR1(Mmux_nextState72_3099),
    .ADR5(Mmux_nextState76_3201),
    .O(nextState[1])
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y26" ),
    .INIT ( 1'b0 ))
  state_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_state_0/CLK ),
    .I(nextState[0]),
    .O(state[0]),
    .SRST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y26" ),
    .INIT ( 64'hFFFF0E0EFFFF0E0A ))
  Mmux_nextState311 (
    .ADR2(_n0183),
    .ADR4(\state[5]_GND_1_o_equal_17_o ),
    .ADR3(Mmux_nextState32_3140),
    .ADR0(Mmux_nextState3),
    .ADR1(Mmux_nextState31_3095),
    .ADR5(Mmux_nextState39),
    .O(nextState[0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y26" ),
    .INIT ( 64'h0088AA8A00A8AAAA ))
  Mmux_nextState310 (
    .ADR3(i2c_data_out[1]),
    .ADR2(Mmux_pointer_dummy25_3138),
    .ADR0(Mmux_nextState33_3097),
    .ADR1(\state[5]_GND_1_o_equal_34_o ),
    .ADR4(N129),
    .ADR5(N130),
    .O(Mmux_nextState39)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y25" ),
    .INIT ( 64'h0010000000000000 ))
  \state[5]_GND_1_o_equal_35_o<5>1  (
    .ADR5(state[0]),
    .ADR3(state[5]),
    .ADR2(state[4]),
    .ADR4(state[2]),
    .ADR0(state[1]),
    .ADR1(state[3]),
    .O(\state[5]_GND_1_o_equal_35_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y25" ),
    .INIT ( 64'h0000000000020000 ))
  \state[5]_GND_1_o_equal_25_o<5>1  (
    .ADR4(state[0]),
    .ADR1(state[5]),
    .ADR2(state[4]),
    .ADR3(state[2]),
    .ADR5(state[1]),
    .ADR0(state[3]),
    .O(\state[5]_GND_1_o_equal_25_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y25" ),
    .INIT ( 64'hFFFFCCEEFFFF00AA ))
  i2c_we_d6 (
    .ADR2(1'b1),
    .ADR1(i2c_we_2838),
    .ADR0(i2c_we_d5_3120),
    .ADR4(i2c_we_d4_3121),
    .ADR3(\state[5]_state[5]_OR_212_o ),
    .ADR5(i2c_cyc_d_0),
    .O(i2c_we_d)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y25" ),
    .INIT ( 1'b0 ))
  i2c_we (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_we/CLK ),
    .I(\NlwBufferSignal_i2c_we/IN ),
    .O(i2c_we_2838),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y25" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \state[5]_state[5]_OR_212_o1  (
    .ADR3(N108),
    .ADR2(\state[5]_GND_1_o_equal_35_o ),
    .ADR4(\state[5]_GND_1_o_equal_38_o ),
    .ADR1(\state[5]_GND_1_o_equal_39_o ),
    .ADR0(\state[5]_GND_1_o_equal_25_o ),
    .ADR5(\state[5]_GND_1_o_equal_24_o ),
    .O(\state[5]_state[5]_OR_212_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 64'h0012000000100000 ))
  _n01781 (
    .ADR5(state[0]),
    .ADR1(state[5]),
    .ADR4(state[4]),
    .ADR0(state[2]),
    .ADR2(state[1]),
    .ADR3(state[3]),
    .O(_n0178)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 64'h0C0C00000C0E000A ))
  Mmux_i2c_data_in_d41_SW0 (
    .ADR1(i2c_data_in[3]),
    .ADR3(_n0178),
    .ADR5(\state[5]_GND_1_o_equal_32_o ),
    .ADR0(\state[5]_GND_1_o_equal_36_o ),
    .ADR4(Mmux_i2c_data_in_d611),
    .ADR2(\state[5]_GND_1_o_equal_27_o ),
    .O(N58)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 64'hF0F0F0F0F4F5F4F4 ))
  Mmux_i2c_data_in_d5122 (
    .ADR4(Mmux_i2c_data_in_d5121_3146),
    .ADR3(_n0179),
    .ADR0(_n0178),
    .ADR1(\state[5]_GND_1_o_equal_37_o ),
    .ADR2(\state[5]_GND_1_o_equal_32_o ),
    .ADR5(\state[5]_GND_1_o_equal_36_o ),
    .O(Mmux_i2c_data_in_d5122_3145)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y23" ),
    .INIT ( 64'h0002000000000000 ))
  \state[5]_GND_1_o_equal_36_o<5>1  (
    .ADR3(state[0]),
    .ADR2(state[5]),
    .ADR0(state[4]),
    .ADR4(state[2]),
    .ADR5(state[1]),
    .ADR1(state[3]),
    .O(\state[5]_GND_1_o_equal_36_o )
  );
  X_BUF   \Mmux_nextState111/Mmux_nextState111_CMUX_Delay  (
    .I(Mmux_pointer_dummy15_1881),
    .O(Mmux_pointer_dummy15_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y28" ))
  Mmux_pointer_dummy15 (
    .IA(N160),
    .IB(N161),
    .O(Mmux_pointer_dummy15_1881),
    .SEL(\state[5]_GND_1_o_equal_34_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y28" ),
    .INIT ( 64'h0000400500004450 ))
  Mmux_pointer_dummy15_F (
    .ADR0(state[1]),
    .ADR4(state[5]),
    .ADR1(state[3]),
    .ADR3(state[0]),
    .ADR5(state[2]),
    .ADR2(state[4]),
    .O(N160)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y28" ),
    .INIT ( 64'h0C0C4CCD0C0C4C4E ))
  Mmux_pointer_dummy15_G (
    .ADR4(state[1]),
    .ADR3(state[5]),
    .ADR2(state[0]),
    .ADR0(state[2]),
    .ADR5(state[4]),
    .ADR1(state[3]),
    .O(N161)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y28" ),
    .INIT ( 64'hFFFFFFFF00300030 ))
  Mmux_nextState1111 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR1(_n0185),
    .ADR2(\state[5]_GND_1_o_equal_35_o ),
    .ADR5(\state[5]_GND_1_o_equal_30_o ),
    .ADR3(\state[5]_GND_1_o_equal_34_o ),
    .O(Mmux_nextState111)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y28" ),
    .INIT ( 64'h0000002000000000 ))
  \state[5]_GND_1_o_equal_34_o<5>1  (
    .ADR5(state[0]),
    .ADR4(state[5]),
    .ADR2(state[4]),
    .ADR1(state[2]),
    .ADR0(state[1]),
    .ADR3(state[3]),
    .O(\state[5]_GND_1_o_equal_34_o )
  );
  X_BUF   \state[5]_GND_1_o_equal_17_o/state[5]_GND_1_o_equal_17_o_CMUX_Delay  (
    .I(N64),
    .O(N64_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X16Y24" ))
  Mmux_i2c_data_in_d1_SW0_SW1 (
    .IA(N146),
    .IB(N147),
    .O(N64),
    .SEL(_n0176)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y24" ),
    .INIT ( 64'hAAAFAAAFAAAFAAAE ))
  Mmux_i2c_data_in_d1_SW0_SW1_F (
    .ADR4(\state[5]_GND_1_o_equal_22_o ),
    .ADR1(\state[5]_PWR_1_o_equal_20_o ),
    .ADR3(\state[5]_GND_1_o_equal_19_o ),
    .ADR5(\state[5]_GND_1_o_equal_21_o ),
    .ADR2(\state[5]_GND_1_o_equal_18_o ),
    .ADR0(\state[5]_GND_1_o_equal_17_o ),
    .O(N146)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y24" ),
    .INIT ( 64'hFFFFFFFF000F000F ))
  Mmux_i2c_data_in_d1_SW0_SW1_G (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(\state[5]_GND_1_o_equal_19_o ),
    .ADR2(\state[5]_GND_1_o_equal_18_o ),
    .ADR5(\state[5]_GND_1_o_equal_17_o ),
    .O(N147)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y24" ),
    .INIT ( 64'h0000000000000001 ))
  \state[5]_GND_1_o_equal_17_o<5>1  (
    .ADR4(state[0]),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR2(state[2]),
    .ADR1(state[1]),
    .ADR0(state[3]),
    .O(\state[5]_GND_1_o_equal_17_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y24" ),
    .INIT ( 64'hFFFF0505FFFF030F ))
  Mmux_nextState143_SW0 (
    .ADR1(i2c_data_out[7]),
    .ADR0(i2c_data_out[1]),
    .ADR2(_n0183),
    .ADR3(\state[5]_GND_1_o_equal_25_o ),
    .ADR5(\state[5]_GND_1_o_equal_24_o ),
    .ADR4(\state[5]_GND_1_o_equal_17_o ),
    .O(N51)
  );
  X_BUF   \i2c/byte_controller/shift/i2c/byte_controller/shift_BMUX_Delay  (
    .I(\i2c/byte_controller/N11_pack_4 ),
    .O(\i2c/byte_controller/N11 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y17" ),
    .INIT ( 64'hFFFFCCECFFFFCCEC ))
  \i2c/byte_controller/_n0150_inv1  (
    .ADR2(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .ADR0(\i2c/byte_controller/core_ack ),
    .ADR3(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR1(\i2c/i2c_al ),
    .ADR4(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/_n0150_inv )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y17" ),
    .INIT ( 32'hFFFFF0F0 ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_MUX_110_o1_SW0  (
    .ADR2(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .ADR1(1'b1),
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(i2c_rst_2786),
    .O(\i2c/byte_controller/N11_pack_4 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y17" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/shift  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/shift/CLK ),
    .I(\i2c/byte_controller/c_state[4]_GND_5_o_MUX_110_o ),
    .O(\i2c/byte_controller/shift_2859 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y17" ),
    .INIT ( 64'h000A000200000000 ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_MUX_110_o1  (
    .ADR0(\i2c/byte_controller/c_state_FSM_FFd2_2855 ),
    .ADR5(\i2c/byte_controller/core_ack ),
    .ADR1(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR3(\i2c/i2c_al ),
    .ADR4(\i2c/byte_controller/c_state_FSM_FFd3-In11 ),
    .ADR2(\i2c/byte_controller/N11 ),
    .O(\i2c/byte_controller/c_state[4]_GND_5_o_MUX_110_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y14" ),
    .INIT ( 64'h00C0FFFF00C000C0 ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT2_SW0  (
    .ADR0(1'b1),
    .ADR4(\i2c/cr_4_2853 ),
    .ADR1(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .ADR2(\i2c/byte_controller/core_ack ),
    .ADR3(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR5(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT316 ),
    .O(\i2c/byte_controller/N6 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y14" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/core_cmd_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/core_cmd_1/CLK ),
    .I(\i2c/byte_controller/c_state[4]_GND_5_o_mux_54_OUT<1> ),
    .O(\i2c/byte_controller/core_cmd [1]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y14" ),
    .INIT ( 64'h000000EA000000C0 ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT2  (
    .ADR0(\i2c/cr_6_2854 ),
    .ADR4(\i2c/i2c_al ),
    .ADR3(i2c_rst_2786),
    .ADR2(\i2c/byte_controller/core_cmd [1]),
    .ADR1(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT41 ),
    .ADR5(\i2c/byte_controller/N6 ),
    .O(\i2c/byte_controller/c_state[4]_GND_5_o_mux_54_OUT<1> )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y14" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/core_cmd_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/core_cmd_0/CLK ),
    .I(\i2c/byte_controller/c_state[4]_GND_5_o_mux_54_OUT<0> ),
    .O(\i2c/byte_controller/core_cmd [0]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y14" ),
    .INIT ( 64'h0000000033010101 ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT1  (
    .ADR2(\i2c/done ),
    .ADR1(\i2c/i2c_al ),
    .ADR5(i2c_rst_2786),
    .ADR3(\i2c/byte_controller/core_cmd [0]),
    .ADR0(\i2c/byte_controller/N4 ),
    .ADR4(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT41 ),
    .O(\i2c/byte_controller/c_state[4]_GND_5_o_mux_54_OUT<0> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y14" ),
    .INIT ( 64'h00510051FFFFFFFB ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT411  (
    .ADR2(\i2c/done ),
    .ADR4(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .ADR3(\i2c/byte_controller/c_state_FSM_FFd2_2855 ),
    .ADR5(\i2c/byte_controller/core_ack ),
    .ADR0(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR1(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT11 ),
    .O(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT41 )
  );
  X_BUF   \i2c_scl_oe/i2c_scl_oe_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/N14 ),
    .O(\i2c/byte_controller/bit_controller/N14_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y10" ),
    .INIT ( 1'b1 ))
  \i2c/byte_controller/bit_controller/scl_oen  (
    .CE(\i2c/byte_controller/bit_controller/_n0207_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/scl_oen/CLK ),
    .I(\i2c/byte_controller/bit_controller/scl_oen_PWR_4_o_MUX_91_o ),
    .O(i2c_scl_oe),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y10" ),
    .INIT ( 64'hFFFFFFFEFFFAFFFA ))
  \i2c/byte_controller/bit_controller/Mmux_scl_oen_PWR_4_o_MUX_91_o11  (
    .ADR4(\i2c/byte_controller/bit_controller/c_state_FSM_FFd17_3038 ),
    .ADR1(\i2c/byte_controller/bit_controller/c_state_FSM_FFd18_2877 ),
    .ADR3(\i2c/byte_controller/bit_controller/Mmux_scl_oen_PWR_4_o_MUX_91_o13 ),
    .ADR5(i2c_scl_oe),
    .ADR0(\i2c/byte_controller/bit_controller/Mmux_scl_oen_PWR_4_o_MUX_91_o12 ),
    .ADR2(\i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o13_0 ),
    .O(\i2c/byte_controller/bit_controller/scl_oen_PWR_4_o_MUX_91_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y10" ),
    .INIT ( 64'hFFFF5F5FFFFF5F5F ))
  \i2c/byte_controller/bit_controller/Mmux_sda_chk_GND_6_o_MUX_66_o12_SW0  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(\i2c/byte_controller/bit_controller/sda_chk_2804 ),
    .ADR0(i2c_sda_oe),
    .ADR4(\i2c/byte_controller/bit_controller/sSDA_2812 ),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/N13 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y10" ),
    .INIT ( 32'hFF335F13 ))
  \i2c/byte_controller/bit_controller/Mmux_sda_chk_GND_6_o_MUX_66_o12_SW1  (
    .ADR3(\i2c/byte_controller/bit_controller/cmd_stop_2809 ),
    .ADR1(\i2c/byte_controller/bit_controller/sto_condition_2810 ),
    .ADR2(\i2c/byte_controller/bit_controller/sda_chk_2804 ),
    .ADR0(i2c_sda_oe),
    .ADR4(\i2c/byte_controller/bit_controller/sSDA_2812 ),
    .O(\i2c/byte_controller/bit_controller/N14 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y10" ),
    .INIT ( 1'b1 ))
  \i2c/byte_controller/bit_controller/sda_oen  (
    .CE(\i2c/byte_controller/bit_controller/_n0207_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/sda_oen/CLK ),
    .I(\i2c/byte_controller/bit_controller/sda_oen_PWR_4_o_MUX_92_o ),
    .O(i2c_sda_oe),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y10" ),
    .INIT ( 64'hFFFFFFEAFFFFFFC0 ))
  \i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o1  (
    .ADR1(\i2c/byte_controller/core_txd_3051 ),
    .ADR0(\i2c/byte_controller/bit_controller/c_state_FSM_FFd18_2877 ),
    .ADR2(\i2c/byte_controller/bit_controller/N6 ),
    .ADR5(i2c_sda_oe),
    .ADR3(\i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o11 ),
    .ADR4(\i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o13_0 ),
    .O(\i2c/byte_controller/bit_controller/sda_oen_PWR_4_o_MUX_92_o )
  );
  X_BUF   \i2c/byte_controller/core_txd/i2c/byte_controller/core_txd_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Mmux_sda_chk_GND_6_o_MUX_66_o1 ),
    .O(\i2c/byte_controller/bit_controller/Mmux_sda_chk_GND_6_o_MUX_66_o1_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y12" ),
    .INIT ( 64'h0011005533DD1155 ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_MUX_109_o1_SW0  (
    .ADR2(1'b1),
    .ADR5(\i2c/cr_3_3070 ),
    .ADR0(\i2c/rxr [7]),
    .ADR3(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .ADR4(\i2c/byte_controller/c_state_FSM_FFd2_2855 ),
    .ADR1(\i2c/byte_controller/core_ack ),
    .O(\i2c/byte_controller/N01 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/core_txd  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/core_txd/CLK ),
    .I(\i2c/byte_controller/c_state[4]_GND_5_o_MUX_109_o ),
    .O(\i2c/byte_controller/core_txd_3051 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y12" ),
    .INIT ( 64'h00000C0000000C0F ))
  \i2c/byte_controller/Mmux_c_state[4]_GND_5_o_MUX_109_o1  (
    .ADR0(1'b1),
    .ADR1(\i2c/rxr [7]),
    .ADR3(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR4(\i2c/i2c_al ),
    .ADR2(i2c_rst_2786),
    .ADR5(\i2c/byte_controller/N01 ),
    .O(\i2c/byte_controller/c_state[4]_GND_5_o_MUX_109_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y12" ),
    .INIT ( 64'h000F000F000F000F ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_MUX_90_o1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(\i2c/byte_controller/bit_controller/c_state_FSM_FFd13_2885 ),
    .ADR2(\i2c/byte_controller/bit_controller/c_state_FSM_FFd1_2886 ),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/N2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y12" ),
    .INIT ( 32'hFFFFFFFA ))
  \i2c/byte_controller/bit_controller/Mmux_sda_chk_GND_6_o_MUX_66_o11  (
    .ADR1(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/c_state_FSM_FFd12_2884 ),
    .ADR4(\i2c/byte_controller/bit_controller/c_state_FSM_FFd4_2874 ),
    .ADR3(\i2c/byte_controller/bit_controller/c_state_FSM_FFd13_2885 ),
    .ADR2(\i2c/byte_controller/bit_controller/c_state_FSM_FFd1_2886 ),
    .O(\i2c/byte_controller/bit_controller/Mmux_sda_chk_GND_6_o_MUX_66_o1 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cmd_ack  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cmd_ack/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_MUX_90_o ),
    .O(\i2c/byte_controller/core_ack ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y12" ),
    .INIT ( 64'h0000000000AA008A ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_MUX_90_o1  (
    .ADR1(\i2c/byte_controller/bit_controller/c_state_FSM_FFd5_2883 ),
    .ADR4(\i2c/byte_controller/bit_controller/c_state_FSM_FFd9_2829 ),
    .ADR0(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR3(\i2c/i2c_al ),
    .ADR2(\i2c/byte_controller/bit_controller/N2 ),
    .ADR5(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_MUX_90_o )
  );
  X_BUF   \pointer<1>/pointer<1>_BMUX_Delay  (
    .I(Mmux_pointer_dummy17_pack_4),
    .O(Mmux_pointer_dummy17_3206)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y30" ),
    .INIT ( 1'b0 ))
  pointer_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_pointer_1/CLK ),
    .I(pointer_dummy[1]),
    .O(pointer[1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y30" ),
    .INIT ( 64'hFFFFF3F3FFFFF5F5 ))
  Mmux_pointer_dummy25 (
    .ADR3(1'b1),
    .ADR5(state[4]),
    .ADR0(N87),
    .ADR1(N88),
    .ADR2(Mmux_pointer_dummy2),
    .ADR4(Mmux_pointer_dummy12_0),
    .O(pointer_dummy[1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y30" ),
    .INIT ( 64'h0000000054575457 ))
  Mmux_pointer_dummy21 (
    .ADR4(1'b1),
    .ADR5(state[3]),
    .ADR0(N103),
    .ADR3(N102),
    .ADR2(\state[5]_GND_1_o_equal_33_o ),
    .ADR1(\state[5]_GND_1_o_equal_34_o ),
    .O(Mmux_pointer_dummy2)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y30" ),
    .INIT ( 64'hFFDDFFFFFFDDFFFF ))
  Mmux_pointer_dummy25_SW0 (
    .ADR2(1'b1),
    .ADR4(state[0]),
    .ADR3(state[5]),
    .ADR0(state[2]),
    .ADR1(state[1]),
    .ADR5(1'b1),
    .O(N87)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y30" ),
    .INIT ( 32'h00000008 ))
  Mmux_pointer_dummy17 (
    .ADR2(state[3]),
    .ADR4(state[0]),
    .ADR3(state[5]),
    .ADR0(state[2]),
    .ADR1(state[1]),
    .O(Mmux_pointer_dummy17_pack_4)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y30" ),
    .INIT ( 1'b0 ))
  pointer_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_pointer_0/CLK ),
    .I(pointer_dummy[0]),
    .O(pointer[0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y30" ),
    .INIT ( 64'hFFFFFFEAFFFFFFAA ))
  Mmux_pointer_dummy18 (
    .ADR2(Mmux_i2c_data_in_d611),
    .ADR1(Mmux_pointer_dummy1),
    .ADR3(Mmux_pointer_dummy17_3206),
    .ADR5(pointer[0]),
    .ADR0(Mmux_pointer_dummy15_0),
    .ADR4(Mmux_pointer_dummy12_0),
    .O(pointer_dummy[0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y16" ),
    .INIT ( 64'h7A7A7A7AFFFFEA2A ))
  \i2c/byte_controller/c_state_FSM_FFd2-In3  (
    .ADR3(\i2c/cr_6_2854 ),
    .ADR1(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .ADR0(\i2c/byte_controller/c_state_FSM_FFd2_2855 ),
    .ADR2(\i2c/byte_controller/core_ack ),
    .ADR5(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR4(\i2c/byte_controller/c_state_FSM_FFd2-In2_3154 ),
    .O(\i2c/byte_controller/c_state_FSM_FFd2-In3_3213 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y16" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/c_state_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd2/CLK ),
    .I(\i2c/byte_controller/c_state_FSM_FFd2-In ),
    .O(\i2c/byte_controller/c_state_FSM_FFd2_2855 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y16" ),
    .INIT ( 64'h0000555500000000 ))
  \i2c/byte_controller/c_state_FSM_FFd2-In4  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\i2c/i2c_al ),
    .ADR0(i2c_rst_2786),
    .ADR5(\i2c/byte_controller/c_state_FSM_FFd2-In3_3213 ),
    .O(\i2c/byte_controller/c_state_FSM_FFd2-In )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y16" ),
    .INIT ( 64'hB0BBBBBB30BB33BB ))
  \i2c/byte_controller/c_state_FSM_FFd1-In_SW0  (
    .ADR2(\i2c/cr_4_2853 ),
    .ADR3(\i2c/cr_6_2854 ),
    .ADR1(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .ADR0(\i2c/byte_controller/core_ack ),
    .ADR5(\i2c/byte_controller/c_state_FSM_FFd3_2857 ),
    .ADR4(\i2c/byte_controller/Mmux_c_state[4]_GND_5_o_mux_54_OUT316 ),
    .O(\i2c/byte_controller/N8 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y16" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/c_state_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd1/CLK ),
    .I(\i2c/byte_controller/c_state_FSM_FFd1-In_2116 ),
    .O(\i2c/byte_controller/c_state_FSM_FFd1_2861 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y16" ),
    .INIT ( 64'h0000020301000303 ))
  \i2c/byte_controller/c_state_FSM_FFd1-In  (
    .ADR3(\i2c/byte_controller/c_state_FSM_FFd2_2855 ),
    .ADR1(\i2c/i2c_al ),
    .ADR0(\i2c/byte_controller/c_state_FSM_FFd3-In11 ),
    .ADR2(i2c_rst_2786),
    .ADR5(\i2c/byte_controller/N9 ),
    .ADR4(\i2c/byte_controller/N8 ),
    .O(\i2c/byte_controller/c_state_FSM_FFd1-In_2116 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/c_state_FSM_FFd11/i2c/byte_controller/bit_controller/c_state_FSM_FFd11_BMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o13 ),
    .O(\i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o13_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y11" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd11  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd11/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd11-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd11_3034 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y11" ),
    .INIT ( 64'h0045004500400040 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd11-In1  (
    .ADR4(1'b1),
    .ADR1(\i2c/byte_controller/bit_controller/c_state_FSM_FFd12_2884 ),
    .ADR2(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd11_3034 ),
    .ADR0(\i2c/i2c_al ),
    .ADR3(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd11-In )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y11" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd10  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd10/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd10-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd10_2828 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y11" ),
    .INIT ( 64'h000000000000AAF0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd10-In1  (
    .ADR1(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/c_state_FSM_FFd11_3034 ),
    .ADR3(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR2(\i2c/byte_controller/bit_controller/c_state_FSM_FFd10_2828 ),
    .ADR5(\i2c/i2c_al ),
    .ADR4(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd10-In )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y11" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd9/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd9-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd9_2829 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y11" ),
    .INIT ( 64'h0000232000002320 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd9-In1  (
    .ADR0(\i2c/byte_controller/bit_controller/c_state_FSM_FFd10_2828 ),
    .ADR2(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR1(\i2c/i2c_al ),
    .ADR3(\i2c/byte_controller/bit_controller/c_state_FSM_FFd9_2829 ),
    .ADR4(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd9-In )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y11" ),
    .INIT ( 32'hFFFFCCCC ))
  \i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o131  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\i2c/i2c_al ),
    .ADR3(1'b1),
    .ADR4(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o13 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y11" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd8/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd8-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd8_2815 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y11" ),
    .INIT ( 64'h0F4F0F0F00440000 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd8-In1  (
    .ADR1(\i2c/byte_controller/core_cmd [3]),
    .ADR3(\i2c/byte_controller/core_cmd [0]),
    .ADR0(\i2c/byte_controller/core_cmd [2]),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd8_2815 ),
    .ADR2(\i2c/byte_controller/bit_controller/_n0207_inv ),
    .ADR4(\i2c/byte_controller/bit_controller/c_state_FSM_FFd17-In1 ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd8-In )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y15" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/filter_cnt_9  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_9/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [9]),
    .O(\i2c/byte_controller/bit_controller/filter_cnt [9]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y15" ),
    .INIT ( 64'h3330000000300000 ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_mux_13_OUT141  (
    .ADR0(1'b1),
    .ADR2(\i2c/prer [11]),
    .ADR4(\i2c/ctr [7]),
    .ADR5(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<9>_0 ),
    .ADR1(i2c_rst_2786),
    .ADR3(\i2c/byte_controller/bit_controller/n0025 ),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [9])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y15" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/filter_cnt_8  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_8/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [8]),
    .O(\i2c/byte_controller/bit_controller/filter_cnt [8]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y15" ),
    .INIT ( 64'h00AA00CC00000000 ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_mux_13_OUT131  (
    .ADR2(1'b1),
    .ADR1(\i2c/prer [10]),
    .ADR5(\i2c/ctr [7]),
    .ADR0(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<8>_0 ),
    .ADR3(i2c_rst_2786),
    .ADR4(\i2c/byte_controller/bit_controller/n0025 ),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [8])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y15" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/filter_cnt_7  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_7/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [7]),
    .O(\i2c/byte_controller/bit_controller/filter_cnt [7]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y15" ),
    .INIT ( 64'h08080C0C08080000 ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_mux_13_OUT121  (
    .ADR3(1'b1),
    .ADR5(\i2c/prer [9]),
    .ADR1(\i2c/ctr [7]),
    .ADR0(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<7>_0 ),
    .ADR2(i2c_rst_2786),
    .ADR4(\i2c/byte_controller/bit_controller/n0025 ),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [7])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y15" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/filter_cnt_6  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_6/CLK ),
    .I(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [6]),
    .O(\i2c/byte_controller/bit_controller/filter_cnt [6]),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y15" ),
    .INIT ( 64'h0000E0E000004040 ))
  \i2c/byte_controller/bit_controller/Mmux_GND_6_o_GND_6_o_mux_13_OUT111  (
    .ADR3(1'b1),
    .ADR1(\i2c/prer [8]),
    .ADR2(\i2c/ctr [7]),
    .ADR5(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_sub_12_OUT<6>_0 ),
    .ADR4(i2c_rst_2786),
    .ADR0(\i2c/byte_controller/bit_controller/n0025 ),
    .O(\i2c/byte_controller/bit_controller/GND_6_o_GND_6_o_mux_13_OUT [6])
  );
  X_BUF   \i2c_data_out<1>/i2c_data_out<1>_DMUX_Delay  (
    .I(\i2c/N7_pack_6 ),
    .O(\i2c/N7 )
  );
  X_BUF   \i2c_data_out<1>/i2c_data_out<1>_BMUX_Delay  (
    .I(\i2c/N2_pack_4 ),
    .O(\i2c/N2 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y19" ),
    .INIT ( 64'hFAFA0A0AFAFA0A0A ))
  \i2c/mux111_SW0  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR0(\i2c/prer [1]),
    .ADR4(\i2c/prer [9]),
    .ADR2(i2c_lab[0]),
    .ADR5(1'b1),
    .O(\i2c/N5 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y19" ),
    .INIT ( 32'h303F303F ))
  \i2c/mux111_SW2  (
    .ADR3(\i2c/tip_2833 ),
    .ADR1(\i2c/txr [1]),
    .ADR4(1'b1),
    .ADR0(1'b1),
    .ADR2(i2c_lab[0]),
    .O(\i2c/N7_pack_6 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y19" ),
    .INIT ( 1'b0 ))
  \i2c/wb_dat_o_1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_1/CLK ),
    .I(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<1> ),
    .O(i2c_data_out[1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y19" ),
    .INIT ( 64'h0A5F5F5F0A5F0A0A ))
  \i2c/mux111  (
    .ADR1(1'b1),
    .ADR0(i2c_lab[1]),
    .ADR4(i2c_lab[2]),
    .ADR2(\i2c/N42 ),
    .ADR5(\i2c/N5 ),
    .ADR3(\i2c/N7 ),
    .O(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y19" ),
    .INIT ( 64'hCFC0CFC0CFC0CFC0 ))
  \i2c/mux11_SW0  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR3(\i2c/prer [0]),
    .ADR1(\i2c/prer [8]),
    .ADR2(i2c_lab[0]),
    .ADR5(1'b1),
    .O(\i2c/N01 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y19" ),
    .INIT ( 32'h50505F5F ))
  \i2c/mux11_SW2  (
    .ADR0(\i2c/txr [0]),
    .ADR4(\i2c/irq_flag_2845 ),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(i2c_lab[0]),
    .O(\i2c/N2_pack_4 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y19" ),
    .INIT ( 1'b0 ))
  \i2c/wb_dat_o_0  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_0/CLK ),
    .I(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<0> ),
    .O(i2c_data_out[0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y19" ),
    .INIT ( 64'h030F000CF3FFF0FC ))
  \i2c/mux11  (
    .ADR0(1'b1),
    .ADR2(i2c_lab[1]),
    .ADR1(i2c_lab[2]),
    .ADR5(\i2c/N40 ),
    .ADR4(\i2c/N01 ),
    .ADR3(\i2c/N2 ),
    .O(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<0> )
  );
  X_BUF   \i2c/prer<5>/i2c/prer<5>_DMUX_Delay  (
    .I(\i2c/prer<13>_pack_13 ),
    .O(\i2c/prer [13])
  );
  X_BUF   \i2c/prer<5>/i2c/prer<5>_CMUX_Delay  (
    .I(\i2c/prer<12>_pack_11 ),
    .O(\i2c/prer [12])
  );
  X_BUF   \i2c/prer<5>/i2c/prer<5>_BMUX_Delay  (
    .I(\i2c/prer<11>_pack_9 ),
    .O(\i2c/prer [11])
  );
  X_BUF   \i2c/prer<5>/i2c/prer<5>_AMUX_Delay  (
    .I(\i2c/prer<10>_pack_7 ),
    .O(\i2c/prer [10])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 1'b1 ))
  \i2c/prer_5  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_5/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<5> ),
    .O(\i2c/prer [5]),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 64'hFFFFFA0AFFFFFA0A ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT121  (
    .ADR1(1'b1),
    .ADR0(i2c_data_in[5]),
    .ADR2(i2c_lab[0]),
    .ADR3(\i2c/prer [5]),
    .ADR4(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<5> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 32'hFFFFACAC ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT51  (
    .ADR1(\i2c/prer [13]),
    .ADR0(i2c_data_in[5]),
    .ADR2(i2c_lab[0]),
    .ADR3(1'b1),
    .ADR4(i2c_rst_2786),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<13> )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 1'b1 ))
  \i2c/prer_13  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_13/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<13> ),
    .O(\i2c/prer<13>_pack_13 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 1'b1 ))
  \i2c/prer_4  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_4/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<4> ),
    .O(\i2c/prer [4]),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 64'hFFFAFF0AFFFAFF0A ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT111  (
    .ADR1(1'b1),
    .ADR0(i2c_data_in[4]),
    .ADR2(i2c_lab[0]),
    .ADR4(\i2c/prer [4]),
    .ADR3(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<4> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 32'hFFACFFAC ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT41  (
    .ADR1(\i2c/prer [12]),
    .ADR0(i2c_data_in[4]),
    .ADR2(i2c_lab[0]),
    .ADR4(1'b1),
    .ADR3(i2c_rst_2786),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<12> )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 1'b1 ))
  \i2c/prer_12  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_12/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<12> ),
    .O(\i2c/prer<12>_pack_11 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 1'b1 ))
  \i2c/prer_3  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_3/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<3> ),
    .O(\i2c/prer [3]),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 64'hFFF5FFA0FFF5FFA0 ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT101  (
    .ADR1(1'b1),
    .ADR4(i2c_data_in[3]),
    .ADR0(i2c_lab[0]),
    .ADR2(\i2c/prer [3]),
    .ADR3(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<3> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 32'hFFEEFF44 ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT31  (
    .ADR1(\i2c/prer [11]),
    .ADR4(i2c_data_in[3]),
    .ADR0(i2c_lab[0]),
    .ADR2(1'b1),
    .ADR3(i2c_rst_2786),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<11> )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 1'b1 ))
  \i2c/prer_11  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_11/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<11> ),
    .O(\i2c/prer<11>_pack_9 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 1'b1 ))
  \i2c/prer_2  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_2/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<2> ),
    .O(\i2c/prer [2]),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 64'hFFFAAFAAFFFAAFAA ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT91  (
    .ADR1(1'b1),
    .ADR3(i2c_data_in[2]),
    .ADR2(i2c_lab[0]),
    .ADR4(\i2c/prer [2]),
    .ADR0(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 32'hFEAEFEAE ))
  \i2c/Mmux_prer[15]_PWR_2_o_mux_15_OUT21  (
    .ADR1(\i2c/prer [10]),
    .ADR3(i2c_data_in[2]),
    .ADR2(i2c_lab[0]),
    .ADR4(1'b1),
    .ADR0(i2c_rst_2786),
    .O(\i2c/prer[15]_PWR_2_o_mux_15_OUT<10> )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 1'b1 ))
  \i2c/prer_10  (
    .CE(\i2c/_n0159_inv ),
    .CLK(\NlwBufferSignal_i2c/prer_10/CLK ),
    .I(\i2c/prer[15]_PWR_2_o_mux_15_OUT<10> ),
    .O(\i2c/prer<10>_pack_7 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y28" ),
    .INIT ( 64'h0000080000000000 ))
  \state[5]_GND_1_o_equal_30_o<5>1  (
    .ADR3(state[0]),
    .ADR4(state[5]),
    .ADR2(state[4]),
    .ADR5(state[2]),
    .ADR0(state[1]),
    .ADR1(state[3]),
    .O(\state[5]_GND_1_o_equal_30_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y28" ),
    .INIT ( 64'hCCFFCCFFCCEFCCEF ))
  Mmux_nextState74 (
    .ADR4(1'b1),
    .ADR1(i2c_data_out[7]),
    .ADR5(_n0185),
    .ADR2(\state[5]_GND_1_o_equal_35_o ),
    .ADR3(\state[5]_GND_1_o_equal_30_o ),
    .ADR0(\state[5]_GND_1_o_equal_34_o ),
    .O(Mmux_nextState73_3101)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y28" ),
    .INIT ( 64'h0001000500000000 ))
  _n01851 (
    .ADR4(state[0]),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR0(state[2]),
    .ADR1(state[1]),
    .ADR2(state[3]),
    .O(_n0185)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd14  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd14/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd14-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd14_3035 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 64'h000F0005000A0000 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd14-In1  (
    .ADR1(1'b1),
    .ADR4(\i2c/byte_controller/bit_controller/c_state_FSM_FFd15_3036 ),
    .ADR0(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd14_3035 ),
    .ADR3(\i2c/i2c_al ),
    .ADR2(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd14-In )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd13  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd13/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd13-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd13_2885 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 64'h0405040004050400 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd13-In1  (
    .ADR5(1'b1),
    .ADR1(\i2c/byte_controller/bit_controller/c_state_FSM_FFd14_3035 ),
    .ADR3(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR4(\i2c/byte_controller/bit_controller/c_state_FSM_FFd13_2885 ),
    .ADR0(\i2c/i2c_al ),
    .ADR2(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd13-In )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 64'hFFDDFFDDFFFFFFFF ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd12-In_SW0  (
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/c_state_FSM_FFd18_2877 ),
    .ADR5(\i2c/byte_controller/core_cmd [1]),
    .ADR3(\i2c/byte_controller/core_cmd [2]),
    .ADR1(\i2c/byte_controller/core_cmd [0]),
    .O(\i2c/byte_controller/bit_controller/N4 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd12  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd12/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd12-In_2461 ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd12_2884 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y11" ),
    .INIT ( 64'h0000000011001504 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd12-In  (
    .ADR2(\i2c/byte_controller/core_cmd [3]),
    .ADR1(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR0(\i2c/i2c_al ),
    .ADR3(\i2c/byte_controller/bit_controller/c_state_FSM_FFd12_2884 ),
    .ADR4(\i2c/byte_controller/bit_controller/N4 ),
    .ADR5(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd12-In_2461 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y26" ),
    .INIT ( 64'hFFFEFF17FFFFFFFF ))
  Mmux_nextState2121 (
    .ADR2(state[0]),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR1(state[2]),
    .ADR0(state[1]),
    .ADR4(state[3]),
    .O(Mmux_nextState212)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y26" ),
    .INIT ( 64'hD5FFF5FFFFFFFFFF ))
  Mmux_nextState310_SW1 (
    .ADR1(state[5]),
    .ADR5(state[4]),
    .ADR2(state[2]),
    .ADR3(state[3]),
    .ADR4(N121),
    .ADR0(Mmux_nextState212),
    .O(N130)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \i2c/byte_controller/bit_controller/Mmux_scl_oen_PWR_4_o_MUX_91_o121  (
    .ADR0(\i2c/byte_controller/bit_controller/c_state_FSM_FFd14_3035 ),
    .ADR2(\i2c/byte_controller/bit_controller/c_state_FSM_FFd15_3036 ),
    .ADR4(\i2c/byte_controller/bit_controller/c_state_FSM_FFd10_2828 ),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd11_3034 ),
    .ADR1(\i2c/byte_controller/bit_controller/c_state_FSM_FFd3_3041 ),
    .ADR3(\i2c/byte_controller/bit_controller/c_state_FSM_FFd2_2802 ),
    .O(\i2c/byte_controller/bit_controller/Mmux_scl_oen_PWR_4_o_MUX_91_o12 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd3/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd3-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd3_3041 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 64'h000000EE00000022 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd3-In1  (
    .ADR2(1'b1),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd4_2874 ),
    .ADR1(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR0(\i2c/byte_controller/bit_controller/c_state_FSM_FFd3_3041 ),
    .ADR4(\i2c/i2c_al ),
    .ADR3(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd3-In )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd2/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd2-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd2_2802 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 64'h0000332200001100 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd2-In1  (
    .ADR2(1'b1),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd3_3041 ),
    .ADR0(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR3(\i2c/byte_controller/bit_controller/c_state_FSM_FFd2_2802 ),
    .ADR4(\i2c/i2c_al ),
    .ADR1(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd2-In )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd1  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd1/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd1-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd1_2886 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y12" ),
    .INIT ( 64'h0000232300002020 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd1-In1  (
    .ADR3(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/c_state_FSM_FFd2_2802 ),
    .ADR2(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd1_2886 ),
    .ADR1(\i2c/i2c_al ),
    .ADR4(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd1-In )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y22" ),
    .INIT ( 64'h0000FFF20000F0F0 ))
  Mmux_i2c_data_in_d41 (
    .ADR1(_n0177),
    .ADR2(\state[5]_GND_1_o_equal_18_o ),
    .ADR4(\state[5]_GND_1_o_equal_17_o ),
    .ADR0(N58),
    .ADR5(Mmux_i2c_data_in_d62),
    .ADR3(Mmux_i2c_data_in_d711),
    .O(i2c_data_in_d[3])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y22" ),
    .INIT ( 1'b0 ))
  i2c_data_in_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_data_in_3/CLK ),
    .I(\NlwBufferSignal_i2c_data_in_3/IN ),
    .O(i2c_data_in[3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y22" ),
    .INIT ( 64'h3322332222222322 ))
  Mmux_i2c_data_in_d31 (
    .ADR4(\state[5]_GND_1_o_equal_36_o ),
    .ADR5(\state[5]_GND_1_o_equal_26_o ),
    .ADR0(\state[5]_GND_1_o_equal_18_o ),
    .ADR1(\state[5]_GND_1_o_equal_17_o ),
    .ADR2(N134),
    .ADR3(Mmux_i2c_data_in_d62),
    .O(i2c_data_in_d[2])
  );
  X_FF #(
    .LOC ( "SLICE_X17Y22" ),
    .INIT ( 1'b0 ))
  i2c_data_in_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_data_in_2/CLK ),
    .I(\NlwBufferSignal_i2c_data_in_2/IN ),
    .O(i2c_data_in[2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y22" ),
    .INIT ( 64'hAAAAAAFFAAAAAAFF ))
  Mmux_i2c_data_in_d1_SW0_SW0 (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(\state[5]_GND_1_o_equal_19_o ),
    .ADR3(\state[5]_GND_1_o_equal_18_o ),
    .ADR0(\state[5]_GND_1_o_equal_17_o ),
    .O(N63)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y25" ),
    .INIT ( 64'h00000EB7000106B7 ))
  \state[5]_state[5]_OR_207_o1_SW0  (
    .ADR5(state[0]),
    .ADR4(state[5]),
    .ADR2(state[4]),
    .ADR1(state[2]),
    .ADR0(state[1]),
    .ADR3(state[3]),
    .O(N108)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y25" ),
    .INIT ( 64'h0500000500010F15 ))
  i2c_we_d4 (
    .ADR2(state[5]),
    .ADR0(state[3]),
    .ADR3(state[1]),
    .ADR5(state[4]),
    .ADR1(state[0]),
    .ADR4(state[2]),
    .O(i2c_we_d4_3121)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y25" ),
    .INIT ( 64'hFF77FFFFFFFFFFFF ))
  i2c_we_d5 (
    .ADR2(1'b1),
    .ADR1(state[3]),
    .ADR0(state[1]),
    .ADR5(state[4]),
    .ADR4(state[2]),
    .ADR3(state[5]),
    .O(i2c_we_d5_3120)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y27" ),
    .INIT ( 64'h35353F3F35353F3F ))
  Mmux_nextState92_SW1 (
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR0(i2c_data_out[7]),
    .ADR1(i2c_data_out[1]),
    .ADR4(\state[5]_GND_1_o_equal_25_o ),
    .ADR2(\state[5]_GND_1_o_equal_24_o ),
    .O(N49)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y27" ),
    .INIT ( 64'h03CF00CC03CF00CC ))
  Mmux_nextState92_SW0 (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(i2c_data_out[7]),
    .ADR3(i2c_data_out[1]),
    .ADR4(\state[5]_GND_1_o_equal_25_o ),
    .ADR1(\state[5]_GND_1_o_equal_24_o ),
    .O(N48)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y27" ),
    .INIT ( 64'hFFFFFF00FFFF0000 ))
  Mmux_nextState71 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(i2c_data_out[1]),
    .ADR4(_n0183),
    .ADR5(\state[5]_GND_1_o_equal_24_o ),
    .O(Mmux_nextState7)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y27" ),
    .INIT ( 64'h0000000001000000 ))
  \state[5]_GND_1_o_equal_24_o<5>1  (
    .ADR5(state[0]),
    .ADR2(state[5]),
    .ADR0(state[4]),
    .ADR4(state[2]),
    .ADR3(state[1]),
    .ADR1(state[3]),
    .O(\state[5]_GND_1_o_equal_24_o )
  );
  X_BUF   \state[5]_GND_1_o_equal_33_o/state[5]_GND_1_o_equal_33_o_AMUX_Delay  (
    .I(N60),
    .O(N60_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y29" ),
    .INIT ( 64'h0001000000000000 ))
  \state[5]_GND_1_o_equal_33_o<5>1  (
    .ADR2(state[0]),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR1(state[2]),
    .ADR4(state[1]),
    .ADR0(state[3]),
    .O(\state[5]_GND_1_o_equal_33_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y29" ),
    .INIT ( 64'h3333FFFF222277FF ))
  Mmux_pointer_dummy21_SW1 (
    .ADR2(1'b1),
    .ADR4(state[0]),
    .ADR5(state[5]),
    .ADR3(state[4]),
    .ADR1(state[2]),
    .ADR0(state[1]),
    .O(N103)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y29" ),
    .INIT ( 64'hFAF5FDF5FAF5FDF5 ))
  Mmux_pointer_dummy34_SW1 (
    .ADR4(state[0]),
    .ADR2(state[4]),
    .ADR0(state[2]),
    .ADR3(state[1]),
    .ADR1(state[3]),
    .ADR5(1'b1),
    .O(N61)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y29" ),
    .INIT ( 32'hFA75DD75 ))
  Mmux_pointer_dummy34_SW0 (
    .ADR4(state[0]),
    .ADR2(state[4]),
    .ADR0(state[2]),
    .ADR3(state[1]),
    .ADR1(state[3]),
    .O(N60)
  );
  X_BUF   \N102/N102_BMUX_Delay  (
    .I(Mmux_pointer_dummy43_2421),
    .O(Mmux_pointer_dummy43_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y30" ),
    .INIT ( 64'hFFFFEE7FFFFFEE7F ))
  Mmux_pointer_dummy21_SW0 (
    .ADR5(1'b1),
    .ADR3(state[0]),
    .ADR4(state[5]),
    .ADR2(state[4]),
    .ADR0(state[2]),
    .ADR1(state[1]),
    .O(N102)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y30" ),
    .INIT ( 64'h33FFFFFF33FFFFFF ))
  Mmux_pointer_dummy25_SW1_SW0 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(pointer[1]),
    .ADR4(state[2]),
    .ADR3(state[1]),
    .ADR5(1'b1),
    .O(N125)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y30" ),
    .INIT ( 32'h00AF5550 ))
  Mmux_pointer_dummy44 (
    .ADR0(state[4]),
    .ADR2(state[0]),
    .ADR1(1'b1),
    .ADR4(state[2]),
    .ADR3(state[1]),
    .O(Mmux_pointer_dummy43_2421)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y30" ),
    .INIT ( 64'hFFFFFF2AFFFFFFAA ))
  Mmux_pointer_dummy25_SW1 (
    .ADR0(state[0]),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR1(state[1]),
    .ADR2(state[3]),
    .ADR4(N125),
    .O(N88)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y23" ),
    .INIT ( 64'hF7FFFFFFFFFFFFFF ))
  Mmux_i2c_lab_d312_SW2 (
    .ADR3(state[3]),
    .ADR2(state[5]),
    .ADR5(state[1]),
    .ADR4(state[4]),
    .ADR0(state[2]),
    .ADR1(i2c_lab[2]),
    .O(N54)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y21" ),
    .INIT ( 64'h0055FF55FF33FF33 ))
  \i2c/mux31_SW4  (
    .ADR2(1'b1),
    .ADR4(\i2c/txr [3]),
    .ADR0(\i2c/prer [11]),
    .ADR1(\i2c/prer [3]),
    .ADR3(i2c_lab[2]),
    .ADR5(i2c_lab[0]),
    .O(\i2c/N52 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y21" ),
    .INIT ( 1'b0 ))
  \i2c/wb_dat_o_3  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_3/CLK ),
    .I(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<3> ),
    .O(i2c_data_out[3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y21" ),
    .INIT ( 64'h4040CC007373FF33 ))
  \i2c/mux31  (
    .ADR1(i2c_lab[1]),
    .ADR4(i2c_lab[2]),
    .ADR3(\i2c/N31 ),
    .ADR5(\i2c/N52 ),
    .ADR2(\i2c/cr_3_3070 ),
    .ADR0(i2c_lab[0]),
    .O(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<3> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y21" ),
    .INIT ( 64'h0F0F03F3FFFF03F3 ))
  \i2c/mux21_SW4  (
    .ADR0(1'b1),
    .ADR5(\i2c/txr [2]),
    .ADR3(\i2c/prer [10]),
    .ADR1(\i2c/prer [2]),
    .ADR4(i2c_lab[2]),
    .ADR2(i2c_lab[0]),
    .O(\i2c/N50 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y21" ),
    .INIT ( 1'b0 ))
  \i2c/wb_dat_o_2  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_2/CLK ),
    .I(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<2> ),
    .O(i2c_data_out[2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y21" ),
    .INIT ( 64'h4E444E440000FFFF ))
  \i2c/mux21  (
    .ADR5(i2c_lab[1]),
    .ADR0(i2c_lab[2]),
    .ADR1(\i2c/N26 ),
    .ADR4(\i2c/N50 ),
    .ADR3(\i2c/cr_2_2841 ),
    .ADR2(i2c_lab[0]),
    .O(\i2c/wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<2> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y24" ),
    .INIT ( 64'h0000000000000040 ))
  \state[5]_GND_1_o_equal_21_o<5>1  (
    .ADR1(state[0]),
    .ADR4(state[5]),
    .ADR0(state[4]),
    .ADR3(state[2]),
    .ADR2(state[1]),
    .ADR5(state[3]),
    .O(\state[5]_GND_1_o_equal_21_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y24" ),
    .INIT ( 64'h0000000000000003 ))
  Mmux_i2c_data_in_d621 (
    .ADR0(1'b1),
    .ADR5(_n0176),
    .ADR4(\state[5]_GND_1_o_equal_22_o ),
    .ADR2(\state[5]_PWR_1_o_equal_20_o ),
    .ADR1(\state[5]_GND_1_o_equal_19_o ),
    .ADR3(\state[5]_GND_1_o_equal_21_o ),
    .O(Mmux_i2c_data_in_d62)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y24" ),
    .INIT ( 1'b0 ))
  i2c_lab_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_lab_2/CLK ),
    .I(\NlwBufferSignal_i2c_lab_2/IN ),
    .O(i2c_lab[2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y24" ),
    .INIT ( 64'hCFCFFFFFCDCCFFFF ))
  Mmux_i2c_lab_d312_SW0 (
    .ADR0(_n0169),
    .ADR4(Mmux_i2c_lab_d32),
    .ADR2(_n0168),
    .ADR3(\state[5]_GND_1_o_equal_31_o ),
    .ADR5(\state[5]_GND_1_o_equal_26_o ),
    .ADR1(\state[5]_GND_1_o_equal_21_o ),
    .O(N93)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y24" ),
    .INIT ( 64'h0051FF5D0050FF5F ))
  Mmux_i2c_lab_d31 (
    .ADR1(_n0171),
    .ADR3(_n0170),
    .ADR2(\state[5]_GND_1_o_equal_36_o ),
    .ADR5(N54),
    .ADR0(N94),
    .ADR4(N93),
    .O(i2c_lab_d[2])
  );
  X_BUF   \state[5]_GND_1_o_equal_27_o/state[5]_GND_1_o_equal_27_o_CMUX_Delay  (
    .I(i2c_cs_d4_2533),
    .O(i2c_cs_d4_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X18Y23" ))
  i2c_cs_d4 (
    .IA(N164),
    .IB(N165),
    .O(i2c_cs_d4_2533),
    .SEL(\state[5]_GND_1_o_equal_27_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y23" ),
    .INIT ( 64'h0009000F0007001A ))
  i2c_cs_d4_F (
    .ADR3(state[4]),
    .ADR2(state[5]),
    .ADR5(state[2]),
    .ADR1(state[3]),
    .ADR0(state[0]),
    .ADR4(state[1]),
    .O(N164)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y23" ),
    .INIT ( 64'h0001000401050514 ))
  i2c_cs_d4_G (
    .ADR0(state[4]),
    .ADR2(state[5]),
    .ADR5(state[3]),
    .ADR4(state[1]),
    .ADR3(state[2]),
    .ADR1(state[0]),
    .O(N165)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y23" ),
    .INIT ( 64'h0000000000200000 ))
  \state[5]_GND_1_o_equal_27_o<5>1  (
    .ADR4(state[0]),
    .ADR1(state[5]),
    .ADR5(state[4]),
    .ADR3(state[2]),
    .ADR0(state[1]),
    .ADR2(state[3]),
    .O(\state[5]_GND_1_o_equal_27_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y23" ),
    .INIT ( 64'h00CC000000DC0050 ))
  Mmux_i2c_data_in_d21_SW0 (
    .ADR1(i2c_data_in[1]),
    .ADR5(_n0178),
    .ADR0(\state[5]_GND_1_o_equal_32_o ),
    .ADR2(\state[5]_GND_1_o_equal_36_o ),
    .ADR4(Mmux_i2c_data_in_d611),
    .ADR3(\state[5]_GND_1_o_equal_27_o ),
    .O(N56)
  );
  X_BUF   \i2c/byte_controller/bit_controller/dSDA/i2c/byte_controller/bit_controller/dSDA_AMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/dSCL_2516 ),
    .O(\i2c/byte_controller/bit_controller/dSCL_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 1'b1 ))
  \i2c/byte_controller/bit_controller/dSDA  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/dSDA/CLK ),
    .I(\i2c/byte_controller/bit_controller/sSDA_PWR_4_o_MUX_60_o ),
    .O(\i2c/byte_controller/bit_controller/dSDA_2827 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 64'hFFFFF0F0FFFFF0F0 ))
  \i2c/byte_controller/bit_controller/Mmux_sSDA_PWR_4_o_MUX_60_o11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(\i2c/byte_controller/bit_controller/sSDA_2812 ),
    .ADR4(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/sSDA_PWR_4_o_MUX_60_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 32'hFFFFCCCC ))
  \i2c/byte_controller/bit_controller/Mmux_sSCL_PWR_4_o_MUX_59_o11  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(\i2c/byte_controller/bit_controller/sSCL_2825 ),
    .ADR3(1'b1),
    .ADR4(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/sSCL_PWR_4_o_MUX_59_o )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 1'b1 ))
  \i2c/byte_controller/bit_controller/dSCL  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/dSCL/CLK ),
    .I(\i2c/byte_controller/bit_controller/sSCL_PWR_4_o_MUX_59_o ),
    .O(\i2c/byte_controller/bit_controller/dSCL_2516 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y11" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/cmd_stop  (
    .CE(\i2c/byte_controller/bit_controller/_n0204_inv ),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/cmd_stop/CLK ),
    .I(\i2c/byte_controller/bit_controller/cmd_stop_GND_6_o_MUX_65_o ),
    .O(\i2c/byte_controller/bit_controller/cmd_stop_2809 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y11" ),
    .INIT ( 64'h0000000000020002 ))
  \i2c/byte_controller/bit_controller/Mmux_cmd_stop_GND_6_o_MUX_65_o11  (
    .ADR4(1'b1),
    .ADR0(\i2c/byte_controller/core_cmd [1]),
    .ADR1(\i2c/byte_controller/core_cmd [0]),
    .ADR3(\i2c/byte_controller/core_cmd [2]),
    .ADR2(\i2c/byte_controller/core_cmd [3]),
    .ADR5(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/cmd_stop_GND_6_o_MUX_65_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y27" ),
    .INIT ( 64'hF0000000F0F00000 ))
  Mmux_nextState15_SW0_SW0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(pointer[5]),
    .ADR2(i2c_ack_o),
    .ADR3(state[3]),
    .ADR5(Mmux_nextState151),
    .O(N123)
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y27" ),
    .INIT ( 1'b0 ))
  state_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_state_5/CLK ),
    .I(nextState[5]),
    .O(state[5]),
    .SRST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y27" ),
    .INIT ( 64'h0001000000000000 ))
  Mmux_nextState15 (
    .ADR2(_n0184),
    .ADR0(_n0185),
    .ADR5(Mmux_nextState152),
    .ADR3(\state[5]_GND_1_o_equal_38_o ),
    .ADR1(_n0183),
    .ADR4(N123),
    .O(nextState[5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y27" ),
    .INIT ( 64'hFFFFFFFF11110300 ))
  Mmux_nextState143_SW1 (
    .ADR2(i2c_data_out[7]),
    .ADR0(i2c_data_out[1]),
    .ADR1(_n0183),
    .ADR3(\state[5]_GND_1_o_equal_25_o ),
    .ADR4(\state[5]_GND_1_o_equal_24_o ),
    .ADR5(\state[5]_GND_1_o_equal_17_o ),
    .O(N52)
  );
  X_SFF #(
    .LOC ( "SLICE_X18Y27" ),
    .INIT ( 1'b0 ))
  state_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_state_4/CLK ),
    .I(nextState[4]),
    .O(state[4]),
    .SRST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y27" ),
    .INIT ( 64'h0F0F0F0F0D002FFF ))
  Mmux_nextState144 (
    .ADR5(_n0184),
    .ADR3(Mmux_nextState14),
    .ADR1(Mmux_nextState141_3073),
    .ADR0(Mmux_nextState82_3074),
    .ADR4(N51),
    .ADR2(N52),
    .O(nextState[4])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y12" ),
    .INIT ( 64'hFFFF0000FFFA0000 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In2  (
    .ADR1(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/c_state_FSM_FFd9_2829 ),
    .ADR3(\i2c/byte_controller/bit_controller/c_state_FSM_FFd13_2885 ),
    .ADR2(\i2c/byte_controller/bit_controller/c_state_FSM_FFd5_2883 ),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd1_2886 ),
    .ADR4(\i2c/byte_controller/bit_controller/clk_en_2817 ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In2_3233 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y12" ),
    .INIT ( 1'b1 ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd18  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd18/CLK ),
    .I(\i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd18_2877 ),
    .SET(\i2c/byte_controller/bit_controller/nReset_inv ),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y12" ),
    .INIT ( 64'hFFFFFFFFFFFFFFAA ))
  \i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In3  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(\i2c/i2c_al ),
    .ADR3(\i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In1_3152 ),
    .ADR5(i2c_rst_2786),
    .ADR4(\i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In2_3233 ),
    .O(\i2c/byte_controller/bit_controller/c_state_FSM_FFd18-In )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y19" ),
    .INIT ( 1'b0 ))
  \i2c/tip  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/tip/CLK ),
    .I(\i2c/rd_GND_4_o_MUX_116_o ),
    .O(\i2c/tip_2833 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y19" ),
    .INIT ( 64'h00000000FFFFFF00 ))
  \i2c/Mmux_rd_GND_4_o_MUX_116_o11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\i2c/cr_5_2864 ),
    .ADR4(\i2c/cr_4_2853 ),
    .ADR5(i2c_rst_2786),
    .O(\i2c/rd_GND_4_o_MUX_116_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y24" ),
    .INIT ( 64'h0004050400000000 ))
  _n01701 (
    .ADR1(state[0]),
    .ADR2(state[5]),
    .ADR5(state[4]),
    .ADR4(state[2]),
    .ADR3(state[1]),
    .ADR0(state[3]),
    .O(_n0170)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y25" ),
    .INIT ( 64'h0000000000000008 ))
  \state[5]_GND_1_o_equal_38_o<5>1  (
    .ADR2(state[0]),
    .ADR5(state[5]),
    .ADR1(state[4]),
    .ADR3(state[2]),
    .ADR4(state[1]),
    .ADR0(state[3]),
    .O(\state[5]_GND_1_o_equal_38_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y25" ),
    .INIT ( 64'h0000000000000044 ))
  Mmux_i2c_lab_d1211_SW0 (
    .ADR2(1'b1),
    .ADR1(i2c_lab[0]),
    .ADR5(\state[5]_GND_1_o_equal_37_o ),
    .ADR0(\state[5]_GND_1_o_equal_35_o ),
    .ADR3(\state[5]_GND_1_o_equal_38_o ),
    .ADR4(\state[5]_GND_1_o_equal_39_o ),
    .O(N40)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y25" ),
    .INIT ( 64'h0010000000000000 ))
  \state[5]_GND_1_o_equal_39_o<5>1  (
    .ADR4(state[0]),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR0(state[2]),
    .ADR1(state[1]),
    .ADR2(state[3]),
    .O(\state[5]_GND_1_o_equal_39_o )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y13" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/busy  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/busy/CLK ),
    .I(\i2c/byte_controller/bit_controller/sta_condition_GND_6_o_MUX_63_o ),
    .O(\i2c/i2c_busy ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y13" ),
    .INIT ( 64'h0505050005050500 ))
  \i2c/byte_controller/bit_controller/Mmux_sta_condition_GND_6_o_MUX_63_o11  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR3(\i2c/byte_controller/bit_controller/sta_condition_0 ),
    .ADR4(\i2c/i2c_busy ),
    .ADR0(\i2c/byte_controller/bit_controller/sto_condition_2810 ),
    .ADR2(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/sta_condition_GND_6_o_MUX_63_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y13" ),
    .INIT ( 64'hFFFFFFFFFFFFFFF0 ))
  \i2c/byte_controller/bit_controller/Mmux_sda_oen_PWR_4_o_MUX_92_o1_SW0_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(\i2c/byte_controller/bit_controller/c_state_FSM_FFd3_3041 ),
    .ADR2(\i2c/byte_controller/bit_controller/c_state_FSM_FFd4_2874 ),
    .ADR5(\i2c/byte_controller/bit_controller/c_state_FSM_FFd1_2886 ),
    .ADR4(\i2c/byte_controller/bit_controller/c_state_FSM_FFd2_2802 ),
    .O(\i2c/byte_controller/bit_controller/N6 )
  );
  X_BUF   \i2c/byte_controller/bit_controller/sto_condition/i2c/byte_controller/bit_controller/sto_condition_AMUX_Delay  (
    .I(\i2c/byte_controller/bit_controller/sta_condition_2652 ),
    .O(\i2c/byte_controller/bit_controller/sta_condition_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y13" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/sto_condition  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/sto_condition/CLK ),
    .I(\i2c/byte_controller/bit_controller/sSDA_GND_6_o_MUX_62_o ),
    .O(\i2c/byte_controller/bit_controller/sto_condition_2810 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y13" ),
    .INIT ( 64'h0050000000500000 ))
  \i2c/byte_controller/bit_controller/Mmux_sSDA_GND_6_o_MUX_62_o11  (
    .ADR1(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/dSDA_2827 ),
    .ADR2(\i2c/byte_controller/bit_controller/sSDA_2812 ),
    .ADR4(\i2c/byte_controller/bit_controller/sSCL_2825 ),
    .ADR3(i2c_rst_2786),
    .ADR5(1'b1),
    .O(\i2c/byte_controller/bit_controller/sSDA_GND_6_o_MUX_62_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X19Y13" ),
    .INIT ( 32'h000A0000 ))
  \i2c/byte_controller/bit_controller/Mmux_sSDA_GND_6_o_MUX_61_o11  (
    .ADR1(1'b1),
    .ADR0(\i2c/byte_controller/bit_controller/dSDA_2827 ),
    .ADR2(\i2c/byte_controller/bit_controller/sSDA_2812 ),
    .ADR4(\i2c/byte_controller/bit_controller/sSCL_2825 ),
    .ADR3(i2c_rst_2786),
    .O(\i2c/byte_controller/bit_controller/sSDA_GND_6_o_MUX_61_o )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y13" ),
    .INIT ( 1'b0 ))
  \i2c/byte_controller/bit_controller/sta_condition  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/bit_controller/sta_condition/CLK ),
    .I(\i2c/byte_controller/bit_controller/sSDA_GND_6_o_MUX_61_o ),
    .O(\i2c/byte_controller/bit_controller/sta_condition_2652 ),
    .RST(\i2c/byte_controller/bit_controller/nReset_inv ),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y26" ),
    .INIT ( 64'h0000000033FF33FF ))
  Mmux_nextState72 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(i2c_data_out[7]),
    .ADR3(\state[5]_GND_1_o_equal_25_o ),
    .ADR5(\state[5]_GND_1_o_equal_24_o ),
    .O(Mmux_nextState71_3098)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y26" ),
    .INIT ( 64'h3333333300000000 ))
  Mmux_nextState31 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(i2c_data_out[1]),
    .ADR5(\state[5]_GND_1_o_equal_24_o ),
    .O(Mmux_nextState3)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y25" ),
    .INIT ( 64'hF0F0F0F0F0FCF0F0 ))
  \i2c/_n0159_inv1  (
    .ADR0(1'b1),
    .ADR5(i2c_lab[1]),
    .ADR4(i2c_we_2838),
    .ADR1(i2c_ack_o),
    .ADR3(i2c_lab[2]),
    .ADR2(i2c_rst_2786),
    .O(\i2c/_n0159_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y25" ),
    .INIT ( 1'b0 ))
  \i2c/wb_ack_o  (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_ack_o/CLK ),
    .I(\i2c/wb_cyc_i_wb_ack_o_AND_3_o ),
    .O(i2c_ack_o),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y25" ),
    .INIT ( 64'h0000AA000000AA00 ))
  \i2c/wb_cyc_i_wb_ack_o_AND_3_o1  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(i2c_ack_o),
    .ADR3(i2c_cyc_3013),
    .ADR0(i2c_cs_3065),
    .O(\i2c/wb_cyc_i_wb_ack_o_AND_3_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y25" ),
    .INIT ( 64'hFFFFFF0033FFFF00 ))
  Mmux_nextState39_SW1 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR5(pointer[0]),
    .ADR1(i2c_ack_o),
    .ADR4(state[0]),
    .ADR3(state[1]),
    .O(N121)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y25" ),
    .INIT ( 64'hCFFFFFFFFFFFFFFF ))
  Mmux_nextState310_SW0 (
    .ADR0(1'b1),
    .ADR1(state[5]),
    .ADR5(state[4]),
    .ADR4(state[2]),
    .ADR2(state[3]),
    .ADR3(N121),
    .O(N129)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y28" ),
    .INIT ( 64'hC000C800C000C000 ))
  Mmux_nextState122 (
    .ADR5(i2c_data_out[1]),
    .ADR0(state[0]),
    .ADR1(state[4]),
    .ADR2(state[2]),
    .ADR4(state[1]),
    .ADR3(state[3]),
    .O(Mmux_nextState121_3232)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y28" ),
    .INIT ( 64'h5155000055550000 ))
  Mmux_nextState123 (
    .ADR2(pointer[3]),
    .ADR3(i2c_ack_o),
    .ADR1(state[0]),
    .ADR0(state[5]),
    .ADR5(state[1]),
    .ADR4(Mmux_nextState121_3232),
    .O(Mmux_nextState122_3136)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y29" ),
    .INIT ( 64'hFFE4FFBAFFE0FEEA ))
  Mmux_pointer_dummy42 (
    .ADR4(state[0]),
    .ADR3(state[5]),
    .ADR2(state[4]),
    .ADR5(state[2]),
    .ADR1(state[1]),
    .ADR0(state[3]),
    .O(Mmux_pointer_dummy41)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y26" ),
    .INIT ( 64'hFF33FF33FF33FF33 ))
  Mmux_nextState141 (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(i2c_data_out[1]),
    .ADR1(\state[5]_GND_1_o_equal_29_o ),
    .O(Mmux_nextState14)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y26" ),
    .INIT ( 64'h3333333300000000 ))
  Mmux_nextState33 (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR1(i2c_data_out[1]),
    .ADR5(\state[5]_GND_1_o_equal_29_o ),
    .O(Mmux_nextState32_3140)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y26" ),
    .INIT ( 64'h0004000000000000 ))
  \state[5]_GND_1_o_equal_29_o<5>1  (
    .ADR5(state[0]),
    .ADR3(state[5]),
    .ADR0(state[4]),
    .ADR4(state[2]),
    .ADR2(state[1]),
    .ADR1(state[3]),
    .O(\state[5]_GND_1_o_equal_29_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y27" ),
    .INIT ( 64'h0000010101010110 ))
  _n01831 (
    .ADR3(state[0]),
    .ADR2(state[5]),
    .ADR1(state[4]),
    .ADR5(state[2]),
    .ADR4(state[1]),
    .ADR0(state[3]),
    .O(_n0183)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y27" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFC ))
  Mmux_nextState121 (
    .ADR0(1'b1),
    .ADR5(_n0184),
    .ADR1(_n0183),
    .ADR2(\state[5]_GND_1_o_equal_29_o ),
    .ADR3(\state[5]_GND_1_o_equal_25_o ),
    .ADR4(\state[5]_GND_1_o_equal_24_o ),
    .O(Mmux_nextState12)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y27" ),
    .INIT ( 64'h0000000010001040 ))
  _n01841 (
    .ADR4(state[0]),
    .ADR5(state[5]),
    .ADR0(state[4]),
    .ADR1(state[2]),
    .ADR3(state[1]),
    .ADR2(state[3]),
    .O(_n0184)
  );
  X_BUF   \i2c_cs/i2c_cs_CMUX_Delay  (
    .I(i2c_cs_d6_pack_9),
    .O(i2c_cs_d6_3236)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X20Y25" ))
  i2c_cs_d6 (
    .IA(N162),
    .IB(1'b0),
    .O(i2c_cs_d6_pack_9),
    .SEL(\state[5]_GND_1_o_equal_25_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y25" ),
    .INIT ( 64'h0000000000020800 ))
  i2c_cs_d6_F (
    .ADR2(\state[5]_GND_1_o_equal_24_o ),
    .ADR5(state[5]),
    .ADR0(state[4]),
    .ADR3(state[2]),
    .ADR4(state[3]),
    .ADR1(state[1]),
    .O(N162)
  );
  X_FF #(
    .LOC ( "SLICE_X20Y25" ),
    .INIT ( 1'b0 ))
  i2c_cs (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c_cs/CLK ),
    .I(i2c_cs_d_rt_2733),
    .O(i2c_cs_3065),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y25" ),
    .INIT ( 64'h0000000000000000 ))
  \N0.C6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_N0.C6LUT_O_UNCONNECTED )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X20Y25" ),
    .INIT ( 32'hFF00FF00 ))
  i2c_cs_d_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(1'b1),
    .ADR3(i2c_cs_d),
    .O(i2c_cs_d_rt_2733)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y25" ),
    .INIT ( 64'hFFFFFFFFFFF4FF44 ))
  i2c_cs_d7 (
    .ADR4(i2c_cs_3065),
    .ADR0(\state[5]_GND_1_o_equal_17_o ),
    .ADR3(N117),
    .ADR5(i2c_cs_d6_3236),
    .ADR2(i2c_cyc_d_0),
    .ADR1(i2c_cs_d4_0),
    .O(i2c_cs_d)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y25" ),
    .INIT ( 64'h0004000000550080 ))
  i2c_cs_d5_SW0 (
    .ADR3(state[5]),
    .ADR4(state[4]),
    .ADR0(state[3]),
    .ADR1(state[0]),
    .ADR2(state[1]),
    .ADR5(state[2]),
    .O(N117)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y26" ),
    .INIT ( 64'hFFFEFFFAFF7FFFBF ))
  Mmux_nextState34 (
    .ADR4(state[0]),
    .ADR3(state[5]),
    .ADR5(state[4]),
    .ADR2(state[2]),
    .ADR1(state[1]),
    .ADR0(state[3]),
    .O(Mmux_nextState33_3097)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y27" ),
    .INIT ( 64'hFFFFB004FFFF7F7F ))
  Mmux_nextState82 (
    .ADR5(state[4]),
    .ADR1(state[2]),
    .ADR2(state[3]),
    .ADR0(state[0]),
    .ADR3(state[1]),
    .ADR4(state[5]),
    .O(Mmux_nextState82_3074)
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/ctr_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_3/IN  (
    .I(\i2c/cr[7]_GND_4_o_mux_24_OUT<3> ),
    .O(\NlwBufferSignal_i2c/ctr_3/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/ctr_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_2/IN  (
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<2>_0 ),
    .O(\NlwBufferSignal_i2c/ctr_2/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/ctr_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/ctr_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_0/IN  (
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<0> ),
    .O(\NlwBufferSignal_i2c/ctr_0/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/slave_wait/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/slave_wait/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/core_cmd_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/core_cmd_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/dcnt_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/dcnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/dcnt_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/dcnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/irq_flag/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/irq_flag/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/c_state_FSM_FFd3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/cmd_ack/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/cmd_ack/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/core_cmd_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/core_cmd_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/al/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/al/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/dout/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/dout/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/dout/IN  (
    .I(\i2c/byte_controller/bit_controller/sSDA_2812 ),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/dout/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd17/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd17/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd16/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd16/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd15/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/txr_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_3/IN  (
    .I(\i2c/cr[7]_GND_4_o_mux_24_OUT<3> ),
    .O(\NlwBufferSignal_i2c/txr_3/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/txr_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_2/IN  (
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<2>_0 ),
    .O(\NlwBufferSignal_i2c/txr_2/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/txr_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_1/IN  (
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<1> ),
    .O(\NlwBufferSignal_i2c/txr_1/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/txr_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_0/IN  (
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<0> ),
    .O(\NlwBufferSignal_i2c/txr_0/IN )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_data_in_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_7/IN  (
    .I(i2c_data_in_d[7]),
    .O(\NlwBufferSignal_i2c_data_in_7/IN )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_data_in_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_6/IN  (
    .I(i2c_data_in_d[6]),
    .O(\NlwBufferSignal_i2c_data_in_6/IN )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_data_in_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_5/IN  (
    .I(i2c_data_in_d[5]),
    .O(\NlwBufferSignal_i2c_data_in_5/IN )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_data_in_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_4/IN  (
    .I(i2c_data_in_d[4]),
    .O(\NlwBufferSignal_i2c_data_in_4/IN )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_data_in_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_1/IN  (
    .I(i2c_data_in_d[1]),
    .O(\NlwBufferSignal_i2c_data_in_1/IN )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_data_in_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_0/IN  (
    .I(i2c_data_in_d[0]),
    .O(\NlwBufferSignal_i2c_data_in_0/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/ld/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/ld/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/txr_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_7/IN  (
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<7> ),
    .O(\NlwBufferSignal_i2c/txr_7/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/txr_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_6/IN  (
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<6> ),
    .O(\NlwBufferSignal_i2c/txr_6/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/txr_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_5/IN  (
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<5> ),
    .O(\NlwBufferSignal_i2c/txr_5/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/txr_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_4/IN  (
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<4> ),
    .O(\NlwBufferSignal_i2c/txr_4/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/al/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/al/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/rxack/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/rxack/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_inta_o/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/wb_inta_o/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/cr_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/cr_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/cr_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/cr_4/CLK )
  );
  X_BUF   \NlwBufferBlock_pointer_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_pointer_5/CLK )
  );
  X_BUF   \NlwBufferBlock_pointer_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_pointer_4/CLK )
  );
  X_BUF   \NlwBufferBlock_clk_BUFGP/BUFG/IN  (
    .I(\clk_BUFGP/IBUFG_0 ),
    .O(\NlwBufferSignal_clk_BUFGP/BUFG/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cSCL_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSCL_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cSCL_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSCL_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cSDA_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSDA_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cSDA_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cSDA_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/sSDA/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/sSDA/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/dcnt_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/dcnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/fSDA_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/fSDA_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/fSCL_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/fSDA_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSDA_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/fSCL_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/fSCL_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/fSCL_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/wb_dat_o_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/wb_dat_o_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_cyc/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_cyc/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_rst/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_rst/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_rst/IN  (
    .I(i2c_rst_d_3166),
    .O(\NlwBufferSignal_i2c_rst/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/sSCL/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/sSCL/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_8/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_13/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_12/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_11/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_10/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_12/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_11/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_10/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_9/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_15/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_14/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_13/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_lab_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_lab_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_lab_1/IN  (
    .I(i2c_lab_d[1]),
    .O(\NlwBufferSignal_i2c_lab_1/IN )
  );
  X_BUF   \NlwBufferBlock_i2c_lab_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_lab_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_lab_0/IN  (
    .I(i2c_lab_d[0]),
    .O(\NlwBufferSignal_i2c_lab_0/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/dscl_oen/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/dscl_oen/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/dscl_oen/IN  (
    .I(i2c_scl_oe),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/dscl_oen/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/sda_chk/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/sda_chk/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/clk_en/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/clk_en/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_9/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_8/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_15/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_15/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_14/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cnt_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/ack_out/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/ack_out/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/ctr_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/ctr_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/ctr_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_5/IN  (
    .I(\i2c/ctr[7]_GND_4_o_mux_16_OUT<5> ),
    .O(\NlwBufferSignal_i2c/ctr_5/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/ctr_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/cr_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/wb_dat_o_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/wb_dat_o_4/CLK )
  );
  X_BUF   \NlwBufferBlock_state_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_state_3/CLK )
  );
  X_BUF   \NlwBufferBlock_state_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_state_2/CLK )
  );
  X_BUF   \NlwBufferBlock_pointer_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_pointer_3/CLK )
  );
  X_BUF   \NlwBufferBlock_pointer_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_pointer_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/cr_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/cr_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/cr_1/CLK )
  );
  X_BUF   \NlwBufferBlock_state_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_state_1/CLK )
  );
  X_BUF   \NlwBufferBlock_state_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_state_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_we/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_we/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_we/IN  (
    .I(i2c_we_d),
    .O(\NlwBufferSignal_i2c_we/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/shift/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/shift/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/core_cmd_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/core_cmd_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/core_cmd_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/core_cmd_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/scl_oen/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/scl_oen/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/sda_oen/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/sda_oen/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/core_txd/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/core_txd/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cmd_ack/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cmd_ack/CLK )
  );
  X_BUF   \NlwBufferBlock_pointer_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_pointer_1/CLK )
  );
  X_BUF   \NlwBufferBlock_pointer_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_pointer_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/c_state_FSM_FFd2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/c_state_FSM_FFd1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd11/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd10/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd9/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd8/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_9/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_9/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_8/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_8/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_7/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/filter_cnt_6/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/filter_cnt_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/wb_dat_o_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_0/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/wb_dat_o_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_13/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_12/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_11/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_11/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_10/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/prer_10/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd14/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd14/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd13/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd13/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd12/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd12/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd1/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_data_in_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_3/IN  (
    .I(i2c_data_in_d[3]),
    .O(\NlwBufferSignal_i2c_data_in_3/IN )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_data_in_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_data_in_2/IN  (
    .I(i2c_data_in_d[2]),
    .O(\NlwBufferSignal_i2c_data_in_2/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_3/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/wb_dat_o_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/wb_dat_o_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_lab_2/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_lab_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_lab_2/IN  (
    .I(i2c_lab_d[2]),
    .O(\NlwBufferSignal_i2c_lab_2/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/dSDA/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/dSDA/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/dSCL/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/dSCL/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/cmd_stop/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/cmd_stop/CLK )
  );
  X_BUF   \NlwBufferBlock_state_5/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_state_5/CLK )
  );
  X_BUF   \NlwBufferBlock_state_4/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_state_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/c_state_FSM_FFd18/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/c_state_FSM_FFd18/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/tip/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/tip/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/busy/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/busy/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/sto_condition/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/sto_condition/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/bit_controller/sta_condition/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/byte_controller/bit_controller/sta_condition/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_ack_o/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c/wb_ack_o/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c_cs/CLK  (
    .I(clk_BUFGP),
    .O(\NlwBufferSignal_i2c_cs/CLK )
  );
  X_ZERO   NlwBlock_i2c_controller_tst2_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_i2c_controller_tst2_VCC (
    .O(VCC)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

