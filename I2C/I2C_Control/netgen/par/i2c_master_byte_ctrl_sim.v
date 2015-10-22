////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: i2c_master_byte_ctrl_sim.v
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
// Module Name: i2c_master_byte_ctrl
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

module i2c_master_byte_ctrl (
  clk, rst, nReset, ena, start, stop, read, write, ack_in, scl_i, sda_i, cmd_ack, ack_out, i2c_busy, i2c_al, scl_o, scl_oen, sda_o, sda_oen, clk_cnt, 
din, dout
);
  input clk;
  input rst;
  input nReset;
  input ena;
  input start;
  input stop;
  input read;
  input write;
  input ack_in;
  input scl_i;
  input sda_i;
  output cmd_ack;
  output ack_out;
  output i2c_busy;
  output i2c_al;
  output scl_o;
  output scl_oen;
  output sda_o;
  output sda_oen;
  input [15 : 0] clk_cnt;
  input [7 : 0] din;
  output [7 : 0] dout;
  wire NlwRenamedSig_OI_cmd_ack;
  wire NlwRenamedSig_OI_ack_out;
  wire NlwRenamedSig_OI_i2c_al;
  wire core_txd_1423;
  wire core_ack;
  wire core_rxd;
  wire N2;
  wire c_state_FSM_FFd2_1427;
  wire c_state_FSM_FFd1_1428;
  wire N8_0;
  wire c_state_FSM_FFd3_1431;
  wire \Mmux_c_state[4]_GND_5_o_mux_54_OUT11 ;
  wire ld_1433;
  wire nReset_inv;
  wire _n0139_inv;
  wire \c_state_FSM_FFd3-In11 ;
  wire shift_1437;
  wire \Mmux_c_state[4]_GND_5_o_mux_54_OUT3_0 ;
  wire \Mmux_c_state[4]_GND_5_o_mux_54_OUT316 ;
  wire \Mmux_c_state[4]_GND_5_o_mux_54_OUT32_1440 ;
  wire \Mmux_c_state[4]_GND_5_o_mux_54_OUT42_1441 ;
  wire \Mmux_c_state[4]_GND_5_o_mux_54_OUT4_0 ;
  wire \Mmux_c_state[4]_GND_5_o_mux_54_OUT41_1443 ;
  wire N6_0;
  wire N11;
  wire \c_state_FSM_FFd2-In2_1446 ;
  wire \dcnt<0>_0 ;
  wire \dcnt<2>_0 ;
  wire \c_state_FSM_FFd3-In2_0 ;
  wire \c_state_FSM_FFd1-In3_1451 ;
  wire \c_state_FSM_FFd3-In3_1452 ;
  wire \c_state_FSM_FFd3-In1_1453 ;
  wire N10;
  wire N4_0;
  wire \Mmux_c_state[4]_GND_5_o_mux_54_OUT31 ;
  wire \c_state_FSM_FFd2-In3_1457 ;
  wire \c_state_FSM_FFd2-In1_1458 ;
  wire N01;
  wire \c_state_FSM_FFd1-In2_1460 ;
  wire N13;
  wire N6;
  wire \c_state_FSM_FFd3-In ;
  wire \c_state[4]_GND_5_o_MUX_112_o ;
  wire \c_state[4]_GND_5_o_MUX_110_o ;
  wire \c_state[4]_GND_5_o_MUX_111_o ;
  wire \c_state_FSM_FFd3-In2_1129 ;
  wire N8;
  wire \dcnt[2]_GND_5_o_mux_8_OUT<2> ;
  wire \dcnt[2]_GND_5_o_mux_8_OUT<1> ;
  wire \sr[7]_GND_5_o_mux_3_OUT<4> ;
  wire \dcnt[2]_GND_5_o_mux_8_OUT<0> ;
  wire \sr[7]_GND_5_o_mux_3_OUT<3> ;
  wire \sr[7]_GND_5_o_mux_3_OUT<1> ;
  wire \sr[7]_GND_5_o_mux_3_OUT<2> ;
  wire \Mmux_c_state[4]_GND_5_o_mux_54_OUT3 ;
  wire \c_state[4]_GND_5_o_MUX_109_o ;
  wire \c_state_FSM_FFd1-In ;
  wire ack_out_rstpot_1290;
  wire \sr[7]_GND_5_o_mux_3_OUT<7> ;
  wire \i2c/rxr<7>/i2c/rxr<0> ;
  wire \sr[7]_GND_5_o_mux_3_OUT<5> ;
  wire \sr[7]_GND_5_o_mux_3_OUT<0> ;
  wire \sr[7]_GND_5_o_mux_3_OUT<6> ;
  wire \c_state[4]_GND_5_o_mux_54_OUT<2> ;
  wire \c_state[4]_GND_5_o_mux_54_OUT<3> ;
  wire \c_state_FSM_FFd2-In ;
  wire \Mmux_c_state[4]_GND_5_o_mux_54_OUT4 ;
  wire \c_state[4]_GND_5_o_mux_54_OUT<0> ;
  wire \c_state[4]_GND_5_o_mux_54_OUT<1> ;
  wire N4;
  wire NLW_bit_controller_scl_o_UNCONNECTED;
  wire NLW_bit_controller_sda_o_UNCONNECTED;
  wire \NlwBufferSignal_i2c/byte_controller/cmd_ack/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd3/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/ld/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/shift/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/dcnt_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/dcnt_2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_4/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_3/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/dcnt_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/core_txd/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/ack_out/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_7/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_6/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_5/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/sr_0/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/core_cmd_3/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/core_cmd_2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd2/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/core_cmd_1/CLK ;
  wire \NlwBufferSignal_i2c/byte_controller/core_cmd_0/CLK ;
  wire VCC;
  wire GND;
  wire [7 : 0] NlwRenamedSig_OI_sr;
  wire [3 : 0] core_cmd;
  wire [2 : 0] dcnt;
  assign
    dout[7] = NlwRenamedSig_OI_sr[7],
    dout[6] = NlwRenamedSig_OI_sr[6],
    dout[5] = NlwRenamedSig_OI_sr[5],
    dout[4] = NlwRenamedSig_OI_sr[4],
    dout[3] = NlwRenamedSig_OI_sr[3],
    dout[2] = NlwRenamedSig_OI_sr[2],
    dout[1] = NlwRenamedSig_OI_sr[1],
    dout[0] = NlwRenamedSig_OI_sr[0],
    cmd_ack = NlwRenamedSig_OI_cmd_ack,
    ack_out = NlwRenamedSig_OI_ack_out,
    i2c_al = NlwRenamedSig_OI_i2c_al;
  initial $sdf_annotate("netgen/par/i2c_master_byte_ctrl_sim.sdf");
  i2c_master_bit_ctrl   bit_controller (
    .clk(clk),
    .rst(rst),
    .nReset(nReset),
    .ena(ena),
    .din(core_txd_1423),
    .scl_i(scl_i),
    .sda_i(sda_i),
    .cmd_ack(core_ack),
    .busy(i2c_busy),
    .al(NlwRenamedSig_OI_i2c_al),
    .dout(core_rxd),
    .scl_o(NLW_bit_controller_scl_o_UNCONNECTED),
    .scl_oen(scl_oen),
    .sda_o(NLW_bit_controller_sda_o_UNCONNECTED),
    .sda_oen(sda_oen),
    .clk_cnt({clk_cnt[15], clk_cnt[14], clk_cnt[13], clk_cnt[12], clk_cnt[11], clk_cnt[10], clk_cnt[9], clk_cnt[8], clk_cnt[7], clk_cnt[6], clk_cnt[5]
, clk_cnt[4], clk_cnt[3], clk_cnt[2], clk_cnt[1], clk_cnt[0]}),
    .cmd({core_cmd[3], core_cmd[2], core_cmd[1], core_cmd[0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y22" ),
    .INIT ( 64'hFFFFFFFFFFFFCCCC ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT111  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR5(write),
    .ADR4(read),
    .ADR1(stop),
    .O(\Mmux_c_state[4]_GND_5_o_mux_54_OUT11 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y22" ),
    .INIT ( 64'h555555DC55FF55FF ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT33  (
    .ADR0(core_ack),
    .ADR3(c_state_FSM_FFd2_1427),
    .ADR4(c_state_FSM_FFd3_1431),
    .ADR2(c_state_FSM_FFd1_1428),
    .ADR1(NlwRenamedSig_OI_cmd_ack),
    .ADR5(\Mmux_c_state[4]_GND_5_o_mux_54_OUT11 ),
    .O(\Mmux_c_state[4]_GND_5_o_mux_54_OUT32_1440 )
  );
  X_BUF   \i2c/done/i2c/done_DMUX_Delay  (
    .I(N6),
    .O(N6_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 64'h0000000100000001 ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT3161  (
    .ADR2(start),
    .ADR3(read),
    .ADR1(NlwRenamedSig_OI_cmd_ack),
    .ADR4(c_state_FSM_FFd2_1427),
    .ADR0(c_state_FSM_FFd3_1431),
    .ADR5(1'b1),
    .O(\Mmux_c_state[4]_GND_5_o_mux_54_OUT316 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 32'hFFFFEFEF ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT1_SW0  (
    .ADR2(start),
    .ADR3(1'b1),
    .ADR1(NlwRenamedSig_OI_cmd_ack),
    .ADR4(c_state_FSM_FFd2_1427),
    .ADR0(c_state_FSM_FFd3_1431),
    .O(N6)
  );
  X_FF #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 1'b0 ))
  cmd_ack_302 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/cmd_ack/CLK ),
    .I(\c_state[4]_GND_5_o_MUX_112_o ),
    .O(NlwRenamedSig_OI_cmd_ack),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 64'h0000000020220000 ))
  \Mmux_c_state[4]_GND_5_o_MUX_112_o11  (
    .ADR4(c_state_FSM_FFd1_1428),
    .ADR0(core_ack),
    .ADR1(NlwRenamedSig_OI_i2c_al),
    .ADR5(rst),
    .ADR3(stop),
    .ADR2(c_state_FSM_FFd3_1431),
    .O(\c_state[4]_GND_5_o_MUX_112_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 64'h0C0C4C4C8C0CCC4C ))
  \c_state_FSM_FFd3-In1  (
    .ADR1(c_state_FSM_FFd3_1431),
    .ADR0(c_state_FSM_FFd2_1427),
    .ADR4(read),
    .ADR2(core_ack),
    .ADR5(c_state_FSM_FFd1_1428),
    .ADR3(\c_state_FSM_FFd3-In11 ),
    .O(\c_state_FSM_FFd3-In1_1453 )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd3/CLK ),
    .I(\c_state_FSM_FFd3-In ),
    .O(c_state_FSM_FFd3_1431),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y23" ),
    .INIT ( 64'h0000000033333310 ))
  \c_state_FSM_FFd3-In4  (
    .ADR5(NlwRenamedSig_OI_i2c_al),
    .ADR1(rst),
    .ADR3(\c_state_FSM_FFd3-In2_0 ),
    .ADR2(\c_state_FSM_FFd3-In3_1452 ),
    .ADR0(c_state_FSM_FFd2_1427),
    .ADR4(\c_state_FSM_FFd3-In1_1453 ),
    .O(\c_state_FSM_FFd3-In )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y22" ),
    .INIT ( 1'b0 ))
  ld (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/ld/CLK ),
    .I(\c_state[4]_GND_5_o_MUX_111_o ),
    .O(ld_1433),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y22" ),
    .INIT ( 64'h0008000D00080008 ))
  \Mmux_c_state[4]_GND_5_o_MUX_111_o1  (
    .ADR2(NlwRenamedSig_OI_i2c_al),
    .ADR3(N8_0),
    .ADR4(NlwRenamedSig_OI_cmd_ack),
    .ADR0(c_state_FSM_FFd3_1431),
    .ADR5(\Mmux_c_state[4]_GND_5_o_mux_54_OUT11 ),
    .ADR1(core_ack),
    .O(\c_state[4]_GND_5_o_MUX_111_o )
  );
  X_FF #(
    .LOC ( "SLICE_X4Y22" ),
    .INIT ( 1'b0 ))
  shift (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/shift/CLK ),
    .I(\c_state[4]_GND_5_o_MUX_110_o ),
    .O(shift_1437),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y22" ),
    .INIT ( 64'h000000000C000400 ))
  \Mmux_c_state[4]_GND_5_o_MUX_110_o1  (
    .ADR3(core_ack),
    .ADR1(c_state_FSM_FFd2_1427),
    .ADR5(NlwRenamedSig_OI_i2c_al),
    .ADR2(N2),
    .ADR0(c_state_FSM_FFd3_1431),
    .ADR4(\c_state_FSM_FFd3-In11 ),
    .O(\c_state[4]_GND_5_o_MUX_110_o )
  );
  X_BUF   \i2c/byte_controller/N2/i2c/byte_controller/N2_DMUX_Delay  (
    .I(N8),
    .O(N8_0)
  );
  X_BUF   \i2c/byte_controller/N2/i2c/byte_controller/N2_AMUX_Delay  (
    .I(\c_state_FSM_FFd3-In2_1129 ),
    .O(\c_state_FSM_FFd3-In2_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y23" ),
    .INIT ( 64'hFFFFF0F0FFFFF0F0 ))
  \Mmux_c_state[4]_GND_5_o_MUX_110_o1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(c_state_FSM_FFd1_1428),
    .ADR2(rst),
    .ADR5(1'b1),
    .O(N2)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y23" ),
    .INIT ( 32'hFFF0FFF0 ))
  \Mmux_c_state[4]_GND_5_o_MUX_111_o1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(c_state_FSM_FFd2_1427),
    .ADR4(1'b1),
    .ADR2(rst),
    .O(N8)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y23" ),
    .INIT ( 64'hF0000000F0000000 ))
  \c_state_FSM_FFd2-In2  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(c_state_FSM_FFd1_1428),
    .ADR2(core_ack),
    .ADR3(stop),
    .ADR5(1'b1),
    .O(\c_state_FSM_FFd2-In2_1446 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y23" ),
    .INIT ( 32'h30000000 ))
  \c_state_FSM_FFd3-In2  (
    .ADR0(1'b1),
    .ADR1(c_state_FSM_FFd3_1431),
    .ADR4(c_state_FSM_FFd1_1428),
    .ADR2(core_ack),
    .ADR3(stop),
    .O(\c_state_FSM_FFd3-In2_1129 )
  );
  X_BUF   \i2c/byte_controller/dcnt<1>/i2c/byte_controller/dcnt<1>_DMUX_Delay  (
    .I(dcnt[2]),
    .O(\dcnt<2>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 1'b0 ))
  dcnt_1 (
    .CE(_n0139_inv),
    .CLK(\NlwBufferSignal_i2c/byte_controller/dcnt_1/CLK ),
    .I(\dcnt[2]_GND_5_o_mux_8_OUT<1> ),
    .O(dcnt[1]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 64'h0F0A0A0F0F0A0A0F ))
  \Mmux_dcnt[2]_GND_5_o_mux_8_OUT21  (
    .ADR1(1'b1),
    .ADR2(rst),
    .ADR4(\dcnt<0>_0 ),
    .ADR3(dcnt[1]),
    .ADR0(ld_1433),
    .ADR5(1'b1),
    .O(\dcnt[2]_GND_5_o_mux_8_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 32'h0E0E0E0B ))
  \Mmux_dcnt[2]_GND_5_o_mux_8_OUT31  (
    .ADR1(\dcnt<2>_0 ),
    .ADR2(rst),
    .ADR4(\dcnt<0>_0 ),
    .ADR3(dcnt[1]),
    .ADR0(ld_1433),
    .O(\dcnt[2]_GND_5_o_mux_8_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 1'b0 ))
  dcnt_2 (
    .CE(_n0139_inv),
    .CLK(\NlwBufferSignal_i2c/byte_controller/dcnt_2/CLK ),
    .I(\dcnt[2]_GND_5_o_mux_8_OUT<2> ),
    .O(dcnt[2]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y22" ),
    .INIT ( 64'h4040000040500010 ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT42  (
    .ADR0(c_state_FSM_FFd2_1427),
    .ADR2(read),
    .ADR1(c_state_FSM_FFd3_1431),
    .ADR5(start),
    .ADR3(NlwRenamedSig_OI_cmd_ack),
    .ADR4(core_ack),
    .O(\Mmux_c_state[4]_GND_5_o_mux_54_OUT42_1441 )
  );
  X_BUF   \i2c/rxr<4>/i2c/rxr<4>_AMUX_Delay  (
    .I(dcnt[0]),
    .O(\dcnt<0>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 1'b0 ))
  sr_4 (
    .CE(_n0139_inv),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_4/CLK ),
    .I(\sr[7]_GND_5_o_mux_3_OUT<4> ),
    .O(NlwRenamedSig_OI_sr[4]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 64'h0000F0F00000CCCC ))
  \Mmux_sr[7]_GND_5_o_mux_3_OUT51  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(rst),
    .ADR5(ld_1433),
    .ADR1(NlwRenamedSig_OI_sr[3]),
    .ADR2(din[4]),
    .O(\sr[7]_GND_5_o_mux_3_OUT<4> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 1'b0 ))
  sr_3 (
    .CE(_n0139_inv),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_3/CLK ),
    .I(\sr[7]_GND_5_o_mux_3_OUT<3> ),
    .O(NlwRenamedSig_OI_sr[3]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 64'h00FF000000CC00CC ))
  \Mmux_sr[7]_GND_5_o_mux_3_OUT41  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR3(rst),
    .ADR5(ld_1433),
    .ADR1(NlwRenamedSig_OI_sr[2]),
    .ADR4(din[3]),
    .O(\sr[7]_GND_5_o_mux_3_OUT<3> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 1'b0 ))
  sr_2 (
    .CE(_n0139_inv),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_2/CLK ),
    .I(\sr[7]_GND_5_o_mux_3_OUT<2> ),
    .O(NlwRenamedSig_OI_sr[2]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 64'h0000ACAC0000ACAC ))
  \Mmux_sr[7]_GND_5_o_mux_3_OUT31  (
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(rst),
    .ADR2(ld_1433),
    .ADR1(NlwRenamedSig_OI_sr[1]),
    .ADR0(din[2]),
    .O(\sr[7]_GND_5_o_mux_3_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 1'b0 ))
  sr_1 (
    .CE(_n0139_inv),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_1/CLK ),
    .I(\sr[7]_GND_5_o_mux_3_OUT<1> ),
    .O(NlwRenamedSig_OI_sr[1]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 64'h0000CFC00000CFC0 ))
  \Mmux_sr[7]_GND_5_o_mux_3_OUT21  (
    .ADR0(1'b1),
    .ADR4(rst),
    .ADR2(ld_1433),
    .ADR3(NlwRenamedSig_OI_sr[0]),
    .ADR1(din[1]),
    .ADR5(1'b1),
    .O(\sr[7]_GND_5_o_mux_3_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 32'h0000F5F5 ))
  \Mmux_dcnt[2]_GND_5_o_mux_8_OUT11  (
    .ADR0(\dcnt<0>_0 ),
    .ADR4(rst),
    .ADR2(ld_1433),
    .ADR3(1'b1),
    .ADR1(1'b1),
    .O(\dcnt[2]_GND_5_o_mux_8_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y22" ),
    .INIT ( 1'b0 ))
  dcnt_0 (
    .CE(_n0139_inv),
    .CLK(\NlwBufferSignal_i2c/byte_controller/dcnt_0/CLK ),
    .I(\dcnt[2]_GND_5_o_mux_8_OUT<0> ),
    .O(dcnt[0]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_BUF   \i2c/byte_controller/c_state_FSM_FFd1/i2c/byte_controller/c_state_FSM_FFd1_BMUX_Delay  (
    .I(\Mmux_c_state[4]_GND_5_o_mux_54_OUT3 ),
    .O(\Mmux_c_state[4]_GND_5_o_mux_54_OUT3_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd1/CLK ),
    .I(\c_state_FSM_FFd1-In ),
    .O(c_state_FSM_FFd1_1428),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 64'hCCCCCC40CCCC0000 ))
  \c_state_FSM_FFd1-In4  (
    .ADR1(\Mmux_c_state[4]_GND_5_o_mux_54_OUT3_0 ),
    .ADR5(stop),
    .ADR3(\c_state_FSM_FFd1-In3_1451 ),
    .ADR2(\Mmux_c_state[4]_GND_5_o_mux_54_OUT316 ),
    .ADR0(write),
    .ADR4(\c_state_FSM_FFd1-In2_1460 ),
    .O(\c_state_FSM_FFd1-In )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 64'h0A0A0A0A0A0A0A4A ))
  \c_state_FSM_FFd1-In2  (
    .ADR0(c_state_FSM_FFd1_1428),
    .ADR2(core_ack),
    .ADR4(\dcnt<0>_0 ),
    .ADR5(dcnt[1]),
    .ADR3(\dcnt<2>_0 ),
    .ADR1(c_state_FSM_FFd2_1427),
    .O(\c_state_FSM_FFd1-In2_1460 )
  );
  X_FF #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 1'b0 ))
  core_txd (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/core_txd/CLK ),
    .I(\c_state[4]_GND_5_o_MUX_109_o ),
    .O(core_txd_1423),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 64'h0000080B0000080B ))
  \Mmux_c_state[4]_GND_5_o_MUX_109_o1  (
    .ADR4(NlwRenamedSig_OI_i2c_al),
    .ADR2(rst),
    .ADR1(c_state_FSM_FFd3_1431),
    .ADR0(NlwRenamedSig_OI_sr[7]),
    .ADR3(N01),
    .ADR5(1'b1),
    .O(\c_state[4]_GND_5_o_MUX_109_o )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 32'h00000F0F ))
  \c_state_FSM_FFd1-In1  (
    .ADR4(NlwRenamedSig_OI_i2c_al),
    .ADR2(rst),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR0(1'b1),
    .O(\Mmux_c_state[4]_GND_5_o_mux_54_OUT3 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y23" ),
    .INIT ( 64'h001155111111BB33 ))
  \Mmux_c_state[4]_GND_5_o_MUX_109_o1_SW0  (
    .ADR2(1'b1),
    .ADR0(c_state_FSM_FFd1_1428),
    .ADR1(NlwRenamedSig_OI_sr[7]),
    .ADR5(core_ack),
    .ADR3(c_state_FSM_FFd2_1427),
    .ADR4(ack_in),
    .O(N01)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y20" ),
    .INIT ( 64'hAAAAAAAACCCCCCCC ))
  ack_out_rstpot_SW0 (
    .ADR4(1'b1),
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR5(core_ack),
    .ADR1(NlwRenamedSig_OI_ack_out),
    .ADR0(core_rxd),
    .O(N13)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y20" ),
    .INIT ( 1'b0 ))
  ack_out_353 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/ack_out/CLK ),
    .I(ack_out_rstpot_1290),
    .O(NlwRenamedSig_OI_ack_out),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y20" ),
    .INIT ( 64'h0505040501000000 ))
  ack_out_rstpot (
    .ADR2(NlwRenamedSig_OI_i2c_al),
    .ADR0(rst),
    .ADR1(c_state_FSM_FFd3_1431),
    .ADR5(NlwRenamedSig_OI_ack_out),
    .ADR3(c_state_FSM_FFd1_1428),
    .ADR4(N13),
    .O(ack_out_rstpot_1290)
  );
  X_BUF   \i2c/rxr<7>/i2c/rxr<7>_AMUX_Delay  (
    .I(\i2c/rxr<7>/i2c/rxr<0> ),
    .O(NlwRenamedSig_OI_sr[0])
  );
  X_FF #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 1'b0 ))
  sr_7 (
    .CE(_n0139_inv),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_7/CLK ),
    .I(\sr[7]_GND_5_o_mux_3_OUT<7> ),
    .O(NlwRenamedSig_OI_sr[7]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 64'h0000FFCC000000CC ))
  \Mmux_sr[7]_GND_5_o_mux_3_OUT81  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(rst),
    .ADR3(ld_1433),
    .ADR1(NlwRenamedSig_OI_sr[6]),
    .ADR5(din[7]),
    .O(\sr[7]_GND_5_o_mux_3_OUT<7> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 1'b0 ))
  sr_6 (
    .CE(_n0139_inv),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_6/CLK ),
    .I(\sr[7]_GND_5_o_mux_3_OUT<6> ),
    .O(NlwRenamedSig_OI_sr[6]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 64'h00FC000C00FC000C ))
  \Mmux_sr[7]_GND_5_o_mux_3_OUT71  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR3(rst),
    .ADR2(ld_1433),
    .ADR1(NlwRenamedSig_OI_sr[5]),
    .ADR4(din[6]),
    .O(\sr[7]_GND_5_o_mux_3_OUT<6> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 1'b0 ))
  sr_5 (
    .CE(_n0139_inv),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_5/CLK ),
    .I(\sr[7]_GND_5_o_mux_3_OUT<5> ),
    .O(NlwRenamedSig_OI_sr[5]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 64'h0000FCFC00003030 ))
  \Mmux_sr[7]_GND_5_o_mux_3_OUT61  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(rst),
    .ADR1(ld_1433),
    .ADR2(NlwRenamedSig_OI_sr[4]),
    .ADR5(din[5]),
    .O(\sr[7]_GND_5_o_mux_3_OUT<5> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 64'hFFFFEEEEFFFFEEEE ))
  _n0139_inv1 (
    .ADR3(1'b1),
    .ADR2(1'b1),
    .ADR1(ld_1433),
    .ADR4(rst),
    .ADR0(shift_1437),
    .ADR5(1'b1),
    .O(_n0139_inv)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 32'h0000F3C0 ))
  \Mmux_sr[7]_GND_5_o_mux_3_OUT11  (
    .ADR3(core_rxd),
    .ADR2(din[0]),
    .ADR1(ld_1433),
    .ADR4(rst),
    .ADR0(1'b1),
    .O(\sr[7]_GND_5_o_mux_3_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y20" ),
    .INIT ( 1'b0 ))
  sr_0 (
    .CE(_n0139_inv),
    .CLK(\NlwBufferSignal_i2c/byte_controller/sr_0/CLK ),
    .I(\sr[7]_GND_5_o_mux_3_OUT<0> ),
    .O(\i2c/rxr<7>/i2c/rxr<0> ),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 64'h1F1F0F1F1F1F0E1F ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT411  (
    .ADR2(core_ack),
    .ADR0(c_state_FSM_FFd2_1427),
    .ADR1(c_state_FSM_FFd3_1431),
    .ADR5(c_state_FSM_FFd1_1428),
    .ADR4(NlwRenamedSig_OI_cmd_ack),
    .ADR3(\Mmux_c_state[4]_GND_5_o_mux_54_OUT11 ),
    .O(\Mmux_c_state[4]_GND_5_o_mux_54_OUT41_1443 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 1'b0 ))
  core_cmd_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/core_cmd_3/CLK ),
    .I(\c_state[4]_GND_5_o_mux_54_OUT<3> ),
    .O(core_cmd[3]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 64'h1111111011101110 ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT43  (
    .ADR1(NlwRenamedSig_OI_i2c_al),
    .ADR0(rst),
    .ADR3(\Mmux_c_state[4]_GND_5_o_mux_54_OUT4_0 ),
    .ADR4(core_cmd[3]),
    .ADR2(\Mmux_c_state[4]_GND_5_o_mux_54_OUT42_1441 ),
    .ADR5(\Mmux_c_state[4]_GND_5_o_mux_54_OUT41_1443 ),
    .O(\c_state[4]_GND_5_o_mux_54_OUT<3> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 64'h00C04444000C0000 ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT32  (
    .ADR1(core_ack),
    .ADR5(c_state_FSM_FFd3_1431),
    .ADR2(\c_state_FSM_FFd3-In11 ),
    .ADR4(c_state_FSM_FFd2_1427),
    .ADR3(c_state_FSM_FFd1_1428),
    .ADR0(read),
    .O(\Mmux_c_state[4]_GND_5_o_mux_54_OUT31 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 1'b0 ))
  core_cmd_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/core_cmd_2/CLK ),
    .I(\c_state[4]_GND_5_o_mux_54_OUT<2> ),
    .O(core_cmd[2]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y22" ),
    .INIT ( 64'hCCCCCC80CCCC8080 ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT34  (
    .ADR1(\Mmux_c_state[4]_GND_5_o_mux_54_OUT3_0 ),
    .ADR2(\Mmux_c_state[4]_GND_5_o_mux_54_OUT316 ),
    .ADR0(write),
    .ADR5(core_cmd[2]),
    .ADR3(\Mmux_c_state[4]_GND_5_o_mux_54_OUT32_1440 ),
    .ADR4(\Mmux_c_state[4]_GND_5_o_mux_54_OUT31 ),
    .O(\c_state[4]_GND_5_o_mux_54_OUT<2> )
  );
  X_BUF   \i2c/byte_controller/c_state_FSM_FFd2/i2c/byte_controller/c_state_FSM_FFd2_CMUX_Delay  (
    .I(\Mmux_c_state[4]_GND_5_o_mux_54_OUT4 ),
    .O(\Mmux_c_state[4]_GND_5_o_mux_54_OUT4_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 64'h0033003300110010 ))
  \c_state_FSM_FFd2-In3  (
    .ADR3(NlwRenamedSig_OI_cmd_ack),
    .ADR1(start),
    .ADR0(c_state_FSM_FFd2_1427),
    .ADR4(write),
    .ADR2(read),
    .ADR5(stop),
    .O(\c_state_FSM_FFd2-In3_1457 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 64'h4A4AEAEA4A4AEAEA ))
  \c_state_FSM_FFd2-In1  (
    .ADR3(1'b1),
    .ADR0(c_state_FSM_FFd2_1427),
    .ADR2(core_ack),
    .ADR4(c_state_FSM_FFd1_1428),
    .ADR1(c_state_FSM_FFd3_1431),
    .ADR5(1'b1),
    .O(\c_state_FSM_FFd2-In1_1458 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 32'h00002080 ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT41  (
    .ADR3(\c_state_FSM_FFd3-In11 ),
    .ADR0(c_state_FSM_FFd2_1427),
    .ADR2(core_ack),
    .ADR4(c_state_FSM_FFd1_1428),
    .ADR1(c_state_FSM_FFd3_1431),
    .O(\Mmux_c_state[4]_GND_5_o_mux_54_OUT4 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 64'hFFFFFFF0FFFFFFF0 ))
  \c_state_FSM_FFd3-In111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(\dcnt<0>_0 ),
    .ADR2(dcnt[1]),
    .ADR4(\dcnt<2>_0 ),
    .O(\c_state_FSM_FFd3-In11 )
  );
  X_FF #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 1'b0 ))
  c_state_FSM_FFd2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd2/CLK ),
    .I(\c_state_FSM_FFd2-In ),
    .O(c_state_FSM_FFd2_1427),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y23" ),
    .INIT ( 64'h0405040504050404 ))
  \c_state_FSM_FFd2-In4  (
    .ADR0(NlwRenamedSig_OI_i2c_al),
    .ADR2(rst),
    .ADR3(c_state_FSM_FFd3_1431),
    .ADR5(\c_state_FSM_FFd2-In3_1457 ),
    .ADR4(\c_state_FSM_FFd2-In2_1446 ),
    .ADR1(\c_state_FSM_FFd2-In1_1458 ),
    .O(\c_state_FSM_FFd2-In )
  );
  X_BUF   \i2c/byte_controller/core_cmd<1>/i2c/byte_controller/core_cmd<1>_DMUX_Delay  (
    .I(N4),
    .O(N4_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 64'h00AA00AA00AA00AA ))
  \c_state_FSM_FFd1-In3  (
    .ADR4(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(c_state_FSM_FFd3_1431),
    .ADR0(c_state_FSM_FFd1_1428),
    .ADR5(1'b1),
    .O(\c_state_FSM_FFd1-In3_1451 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 32'hCF45CFCF ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT2_SW0  (
    .ADR1(write),
    .ADR4(core_ack),
    .ADR2(\Mmux_c_state[4]_GND_5_o_mux_54_OUT316 ),
    .ADR3(c_state_FSM_FFd3_1431),
    .ADR0(c_state_FSM_FFd1_1428),
    .O(N4)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 1'b0 ))
  core_cmd_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/core_cmd_1/CLK ),
    .I(\c_state[4]_GND_5_o_mux_54_OUT<1> ),
    .O(core_cmd[1]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 64'h0000000030320022 ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT2  (
    .ADR0(stop),
    .ADR5(NlwRenamedSig_OI_i2c_al),
    .ADR1(rst),
    .ADR4(core_cmd[1]),
    .ADR2(\Mmux_c_state[4]_GND_5_o_mux_54_OUT41_1443 ),
    .ADR3(N4_0),
    .O(\c_state[4]_GND_5_o_mux_54_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 64'hFFFF3333FF333333 ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT411_SW0  (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR4(core_ack),
    .ADR3(c_state_FSM_FFd2_1427),
    .ADR5(c_state_FSM_FFd3_1431),
    .ADR1(core_cmd[0]),
    .O(N10)
  );
  X_FF #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 1'b0 ))
  core_cmd_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/byte_controller/core_cmd_0/CLK ),
    .I(\c_state[4]_GND_5_o_mux_54_OUT<0> ),
    .O(core_cmd[0]),
    .RST(nReset_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y21" ),
    .INIT ( 64'h0010001500500055 ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT1  (
    .ADR0(rst),
    .ADR3(NlwRenamedSig_OI_i2c_al),
    .ADR2(\Mmux_c_state[4]_GND_5_o_mux_54_OUT11 ),
    .ADR1(N6_0),
    .ADR5(N11),
    .ADR4(N10),
    .O(\c_state[4]_GND_5_o_mux_54_OUT<0> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y21" ),
    .INIT ( 64'hFFFF5555FF775557 ))
  \Mmux_c_state[4]_GND_5_o_mux_54_OUT411_SW1  (
    .ADR4(core_ack),
    .ADR5(c_state_FSM_FFd3_1431),
    .ADR3(c_state_FSM_FFd2_1427),
    .ADR1(NlwRenamedSig_OI_cmd_ack),
    .ADR2(c_state_FSM_FFd1_1428),
    .ADR0(core_cmd[0]),
    .O(N11)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y23" ),
    .INIT ( 64'h005500FC000000FC ))
  \c_state_FSM_FFd3-In3  (
    .ADR3(NlwRenamedSig_OI_cmd_ack),
    .ADR4(read),
    .ADR1(stop),
    .ADR2(write),
    .ADR0(c_state_FSM_FFd3_1431),
    .ADR5(start),
    .O(\c_state_FSM_FFd3-In3_1452 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y23" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  nReset_inv1_INV_0 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(nReset),
    .O(nReset_inv)
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/cmd_ack/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/cmd_ack/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/c_state_FSM_FFd3/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/ld/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/ld/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/shift/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/shift/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/dcnt_1/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/dcnt_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/dcnt_2/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/dcnt_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_4/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_3/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_2/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_1/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/dcnt_0/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/dcnt_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/c_state_FSM_FFd1/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/core_txd/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/core_txd/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/ack_out/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/ack_out/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_7/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_6/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_5/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/sr_0/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/sr_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/core_cmd_3/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/core_cmd_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/core_cmd_2/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/core_cmd_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/c_state_FSM_FFd2/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/c_state_FSM_FFd2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/core_cmd_1/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/core_cmd_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/byte_controller/core_cmd_0/CLK  (
    .I(clk),
    .O(\NlwBufferSignal_i2c/byte_controller/core_cmd_0/CLK )
  );
  X_ONE   NlwBlock_byte_controller_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_byte_controller_GND (
    .O(GND)
  );
endmodule

