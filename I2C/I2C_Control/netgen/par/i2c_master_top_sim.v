////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: i2c_master_top_sim.v
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
// Module Name: i2c_master_top
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

module i2c_master_top (
  wb_clk_i, wb_rst_i, arst_i, wb_we_i, wb_stb_i, wb_cyc_i, scl_pad_i, sda_pad_i, wb_ack_o, wb_inta_o, scl_pad_o, scl_padoen_o, sda_pad_o, sda_padoen_o
, wb_adr_i, wb_dat_i, wb_dat_o
);
  input wb_clk_i;
  input wb_rst_i;
  input arst_i;
  input wb_we_i;
  input wb_stb_i;
  input wb_cyc_i;
  input scl_pad_i;
  input sda_pad_i;
  output wb_ack_o;
  output wb_inta_o;
  output scl_pad_o;
  output scl_padoen_o;
  output sda_pad_o;
  output sda_padoen_o;
  input [2 : 0] wb_adr_i;
  input [7 : 0] wb_dat_i;
  output [7 : 0] wb_dat_o;
  wire NlwRenamedSig_OI_wb_ack_o;
  wire \prer<15>_0 ;
  wire \prer<14>_0 ;
  wire \prer<13>_0 ;
  wire \prer<12>_0 ;
  wire \prer<11>_0 ;
  wire \prer<10>_0 ;
  wire \prer<1>_0 ;
  wire \prer<0>_0 ;
  wire cr_7_1931;
  wire cr_6_0;
  wire cr_5_1933;
  wire cr_4_0;
  wire cr_3_1935;
  wire done;
  wire irxack;
  wire i2c_busy;
  wire i2c_al;
  wire _n0179_inv;
  wire arst_i_inv;
  wire irq_flag_1951;
  wire cr_0_1952;
  wire tip_1954;
  wire _n0179_inv_bdd0;
  wire al_1956;
  wire _n0171_inv;
  wire _n0165_inv;
  wire _n0159_inv;
  wire \ctr[7]_GND_4_o_mux_16_OUT<7> ;
  wire \ctr[7]_GND_4_o_mux_16_OUT<0>_0 ;
  wire \ctr[7]_GND_4_o_mux_16_OUT<1> ;
  wire \ctr[7]_GND_4_o_mux_16_OUT<2>_0 ;
  wire \cr[7]_GND_4_o_mux_24_OUT<3> ;
  wire \ctr[7]_GND_4_o_mux_16_OUT<4> ;
  wire \ctr[7]_GND_4_o_mux_16_OUT<5>_0 ;
  wire \ctr[7]_GND_4_o_mux_16_OUT<6> ;
  wire mux1111_1974;
  wire cr_1_0;
  wire rxack_1976;
  wire cr_2_1977;
  wire mux51;
  wire mux71;
  wire mux711_1980;
  wire mux611_1981;
  wire mux61;
  wire mux511_1983;
  wire mux1112_1984;
  wire mux31;
  wire mux41;
  wire _n0214_inv_0;
  wire mux21;
  wire rd_GND_4_o_MUX_116_o;
  wire cr_3_rstpot_1808;
  wire \ctr[7]_GND_4_o_mux_16_OUT<0> ;
  wire i2c_al_GND_4_o_MUX_114_o;
  wire _n0214_inv;
  wire cr_1_1753;
  wire \cr[7]_GND_4_o_mux_24_OUT<1> ;
  wire \cr[7]_GND_4_o_mux_24_OUT<0> ;
  wire \cr[7]_GND_4_o_mux_24_OUT<2> ;
  wire \wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<2> ;
  wire N01;
  wire N1;
  wire \wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<0> ;
  wire \wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<1> ;
  wire \i2c_data_out<1>/i2c_data_out<5> ;
  wire \wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<5> ;
  wire \ctr[7]_GND_4_o_mux_16_OUT<5> ;
  wire \ctr[7]_GND_4_o_mux_16_OUT<2> ;
  wire \i2c_data_out<6>/i2c_data_out<7> ;
  wire \wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<6> ;
  wire \wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<7> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<15> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<7> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<6> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<14> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<0> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<8> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<9> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<1> ;
  wire \cr[7]_GND_4_o_mux_24_OUT<5> ;
  wire cr_4_1584;
  wire \cr[7]_GND_4_o_mux_24_OUT<4> ;
  wire cr_6_1580;
  wire \cr[7]_GND_4_o_mux_24_OUT<6> ;
  wire \cr[7]_GND_4_o_mux_24_OUT<7> ;
  wire wb_cyc_i_wb_ack_o_AND_3_o;
  wire \wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<3> ;
  wire \wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<4> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<10> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<2> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<11> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<3> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<12> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<4> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<13> ;
  wire \prer[15]_PWR_2_o_mux_15_OUT<5> ;
  wire irq_flag_GND_4_o_MUX_118_o;
  wire \i2c/irq_flag/i2c_int ;
  wire irxack_GND_4_o_MUX_115_o;
  wire done_GND_4_o_MUX_117_o;
  wire NLW_byte_controller_scl_o_UNCONNECTED;
  wire NLW_byte_controller_sda_o_UNCONNECTED;
  wire \NlwBufferSignal_i2c/cr_3/CLK ;
  wire \NlwBufferSignal_i2c/tip/CLK ;
  wire \NlwBufferSignal_i2c/txr_3/CLK ;
  wire \NlwBufferSignal_i2c/txr_2/CLK ;
  wire \NlwBufferSignal_i2c/txr_2/IN ;
  wire \NlwBufferSignal_i2c/txr_1/CLK ;
  wire \NlwBufferSignal_i2c/txr_0/CLK ;
  wire \NlwBufferSignal_i2c/txr_0/IN ;
  wire \NlwBufferSignal_i2c/al/CLK ;
  wire \NlwBufferSignal_i2c/ctr_3/CLK ;
  wire \NlwBufferSignal_i2c/ctr_3/IN ;
  wire \NlwBufferSignal_i2c/ctr_2/CLK ;
  wire \NlwBufferSignal_i2c/ctr_2/IN ;
  wire \NlwBufferSignal_i2c/ctr_1/CLK ;
  wire \NlwBufferSignal_i2c/ctr_1/IN ;
  wire \NlwBufferSignal_i2c/ctr_0/CLK ;
  wire \NlwBufferSignal_i2c/ctr_0/IN ;
  wire \NlwBufferSignal_i2c/cr_2/CLK ;
  wire \NlwBufferSignal_i2c/cr_1/CLK ;
  wire \NlwBufferSignal_i2c/cr_0/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_0/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_2/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_1/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_5/CLK ;
  wire \NlwBufferSignal_i2c/ctr_7/CLK ;
  wire \NlwBufferSignal_i2c/ctr_7/IN ;
  wire \NlwBufferSignal_i2c/ctr_6/CLK ;
  wire \NlwBufferSignal_i2c/ctr_5/CLK ;
  wire \NlwBufferSignal_i2c/ctr_5/IN ;
  wire \NlwBufferSignal_i2c/ctr_4/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_6/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_7/CLK ;
  wire \NlwBufferSignal_i2c/prer_9/CLK ;
  wire \NlwBufferSignal_i2c/prer_1/CLK ;
  wire \NlwBufferSignal_i2c/prer_8/CLK ;
  wire \NlwBufferSignal_i2c/prer_0/CLK ;
  wire \NlwBufferSignal_i2c/prer_7/CLK ;
  wire \NlwBufferSignal_i2c/prer_15/CLK ;
  wire \NlwBufferSignal_i2c/prer_6/CLK ;
  wire \NlwBufferSignal_i2c/prer_14/CLK ;
  wire \NlwBufferSignal_i2c/cr_7/CLK ;
  wire \NlwBufferSignal_i2c/cr_6/CLK ;
  wire \NlwBufferSignal_i2c/cr_5/CLK ;
  wire \NlwBufferSignal_i2c/cr_4/CLK ;
  wire \NlwBufferSignal_i2c/txr_7/CLK ;
  wire \NlwBufferSignal_i2c/txr_6/CLK ;
  wire \NlwBufferSignal_i2c/txr_6/IN ;
  wire \NlwBufferSignal_i2c/txr_5/CLK ;
  wire \NlwBufferSignal_i2c/txr_5/IN ;
  wire \NlwBufferSignal_i2c/txr_4/CLK ;
  wire \NlwBufferSignal_i2c/txr_4/IN ;
  wire \NlwBufferSignal_i2c/wb_ack_o/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_4/CLK ;
  wire \NlwBufferSignal_i2c/wb_dat_o_3/CLK ;
  wire \NlwBufferSignal_i2c/prer_5/CLK ;
  wire \NlwBufferSignal_i2c/prer_13/CLK ;
  wire \NlwBufferSignal_i2c/prer_4/CLK ;
  wire \NlwBufferSignal_i2c/prer_12/CLK ;
  wire \NlwBufferSignal_i2c/prer_3/CLK ;
  wire \NlwBufferSignal_i2c/prer_11/CLK ;
  wire \NlwBufferSignal_i2c/prer_2/CLK ;
  wire \NlwBufferSignal_i2c/prer_10/CLK ;
  wire \NlwBufferSignal_i2c/irq_flag/CLK ;
  wire \NlwBufferSignal_i2c/rxack/CLK ;
  wire \NlwBufferSignal_i2c/wb_inta_o/CLK ;
  wire VCC;
  wire GND;
  wire [15 : 0] prer;
  wire [7 : 0] txr;
  wire [7 : 0] ctr;
  wire [7 : 0] rxr;
  assign
    wb_ack_o = NlwRenamedSig_OI_wb_ack_o;
  initial $sdf_annotate("netgen/par/i2c_master_top_sim.sdf");
  i2c_master_byte_ctrl   byte_controller (
    .clk(wb_clk_i),
    .rst(wb_rst_i),
    .nReset(arst_i),
    .ena(ctr[7]),
    .start(cr_7_1931),
    .stop(cr_6_0),
    .read(cr_5_1933),
    .write(cr_4_0),
    .ack_in(cr_3_1935),
    .scl_i(scl_pad_i),
    .sda_i(sda_pad_i),
    .cmd_ack(done),
    .ack_out(irxack),
    .i2c_busy(i2c_busy),
    .i2c_al(i2c_al),
    .scl_o(NLW_byte_controller_scl_o_UNCONNECTED),
    .scl_oen(scl_padoen_o),
    .sda_o(NLW_byte_controller_sda_o_UNCONNECTED),
    .sda_oen(sda_padoen_o),
    .clk_cnt({\prer<15>_0 , \prer<14>_0 , \prer<13>_0 , \prer<12>_0 , \prer<11>_0 , \prer<10>_0 , prer[9], prer[8], prer[7], prer[6], prer[5], prer[4]
, prer[3], prer[2], \prer<1>_0 , \prer<0>_0 }),
    .din({txr[7], txr[6], txr[5], txr[4], txr[3], txr[2], txr[1], txr[0]}),
    .dout({rxr[7], rxr[6], rxr[5], rxr[4], rxr[3], rxr[2], rxr[1], rxr[0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y19" ),
    .INIT ( 64'h5555555555555555 ))
  arst_i_inv1_INV_0 (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR0(arst_i),
    .O(arst_i_inv)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y20" ),
    .INIT ( 64'hEFECE3E02F2C2320 ))
  mux511 (
    .ADR1(wb_adr_i[1]),
    .ADR2(wb_adr_i[2]),
    .ADR4(ctr[5]),
    .ADR5(cr_5_1933),
    .ADR0(al_1956),
    .ADR3(prer[5]),
    .O(mux51)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y21" ),
    .INIT ( 1'b0 ))
  cr_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/cr_3/CLK ),
    .I(cr_3_rstpot_1808),
    .O(cr_3_1935),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y21" ),
    .INIT ( 64'h3323100033330000 ))
  cr_3_rstpot (
    .ADR1(wb_rst_i),
    .ADR0(_n0179_inv_bdd0),
    .ADR2(NlwRenamedSig_OI_wb_ack_o),
    .ADR4(cr_3_1935),
    .ADR5(wb_we_i),
    .ADR3(wb_dat_i[3]),
    .O(cr_3_rstpot_1808)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y21" ),
    .INIT ( 1'b0 ))
  tip (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/tip/CLK ),
    .I(rd_GND_4_o_MUX_116_o),
    .O(tip_1954),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y21" ),
    .INIT ( 64'h5555505055555050 ))
  Mmux_rd_GND_4_o_MUX_116_o11 (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR0(wb_rst_i),
    .ADR2(cr_4_0),
    .ADR4(cr_5_1933),
    .O(rd_GND_4_o_MUX_116_o)
  );
  X_BUF   \i2c/txr<3>/i2c/txr<3>_BMUX_Delay  (
    .I(\ctr[7]_GND_4_o_mux_16_OUT<0> ),
    .O(\ctr[7]_GND_4_o_mux_16_OUT<0>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 1'b0 ))
  txr_3 (
    .CE(_n0171_inv),
    .CLK(\NlwBufferSignal_i2c/txr_3/CLK ),
    .I(\cr[7]_GND_4_o_mux_24_OUT<3> ),
    .O(txr[3]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 64'h0000F0F00000F0F0 ))
  \cr[7]_GND_4_o_mux_24_OUT<3>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(wb_rst_i),
    .ADR2(wb_dat_i[3]),
    .O(\cr[7]_GND_4_o_mux_24_OUT<3> )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 1'b0 ))
  txr_2 (
    .CE(_n0171_inv),
    .CLK(\NlwBufferSignal_i2c/txr_2/CLK ),
    .I(\NlwBufferSignal_i2c/txr_2/IN ),
    .O(txr[2]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 1'b0 ))
  txr_1 (
    .CE(_n0171_inv),
    .CLK(\NlwBufferSignal_i2c/txr_1/CLK ),
    .I(\ctr[7]_GND_4_o_mux_16_OUT<1> ),
    .O(txr[1]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 64'h3300330033003300 ))
  \ctr[7]_GND_4_o_mux_16_OUT<1>1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(wb_rst_i),
    .ADR3(wb_dat_i[1]),
    .ADR5(1'b1),
    .O(\ctr[7]_GND_4_o_mux_16_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 32'h30303030 ))
  \ctr[7]_GND_4_o_mux_16_OUT<0>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR2(wb_dat_i[0]),
    .ADR1(wb_rst_i),
    .ADR4(1'b1),
    .O(\ctr[7]_GND_4_o_mux_16_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 1'b0 ))
  txr_0 (
    .CE(_n0171_inv),
    .CLK(\NlwBufferSignal_i2c/txr_0/CLK ),
    .I(\NlwBufferSignal_i2c/txr_0/IN ),
    .O(txr[0]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y22" ),
    .INIT ( 64'hAEAAAAAAAAAAAAAA ))
  _n0171_inv11 (
    .ADR1(wb_adr_i[1]),
    .ADR4(wb_adr_i[0]),
    .ADR2(wb_adr_i[2]),
    .ADR5(wb_we_i),
    .ADR3(NlwRenamedSig_OI_wb_ack_o),
    .ADR0(wb_rst_i),
    .O(_n0171_inv)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 1'b0 ))
  al (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/al/CLK ),
    .I(i2c_al_GND_4_o_MUX_114_o),
    .O(al_1956),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y20" ),
    .INIT ( 64'h0000AAFF0000AAAA ))
  Mmux_i2c_al_GND_4_o_MUX_114_o11 (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(wb_rst_i),
    .ADR5(al_1956),
    .ADR3(cr_7_1931),
    .ADR0(i2c_al),
    .O(i2c_al_GND_4_o_MUX_114_o)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 1'b0 ))
  ctr_3 (
    .CE(_n0165_inv),
    .CLK(\NlwBufferSignal_i2c/ctr_3/CLK ),
    .I(\NlwBufferSignal_i2c/ctr_3/IN ),
    .O(ctr[3]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 1'b0 ))
  ctr_2 (
    .CE(_n0165_inv),
    .CLK(\NlwBufferSignal_i2c/ctr_2/CLK ),
    .I(\NlwBufferSignal_i2c/ctr_2/IN ),
    .O(ctr[2]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 1'b0 ))
  ctr_1 (
    .CE(_n0165_inv),
    .CLK(\NlwBufferSignal_i2c/ctr_1/CLK ),
    .I(\NlwBufferSignal_i2c/ctr_1/IN ),
    .O(ctr[1]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y22" ),
    .INIT ( 1'b0 ))
  ctr_0 (
    .CE(_n0165_inv),
    .CLK(\NlwBufferSignal_i2c/ctr_0/CLK ),
    .I(\NlwBufferSignal_i2c/ctr_0/IN ),
    .O(ctr[0]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y21" ),
    .INIT ( 64'hFACF0ACFFAC00AC0 ))
  mux1111 (
    .ADR2(wb_adr_i[1]),
    .ADR3(wb_adr_i[2]),
    .ADR1(ctr[1]),
    .ADR4(cr_1_0),
    .ADR0(tip_1954),
    .ADR5(\prer<1>_0 ),
    .O(mux1111_1974)
  );
  X_BUF   \i2c/cr_2/i2c/cr_2_CMUX_Delay  (
    .I(cr_1_1753),
    .O(cr_1_0)
  );
  X_BUF   \i2c/cr_2/i2c/cr_2_BMUX_Delay  (
    .I(_n0214_inv),
    .O(_n0214_inv_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 64'hAAFEFFFEFEFEFEFE ))
  _n0179_inv11 (
    .ADR1(done),
    .ADR3(wb_we_i),
    .ADR5(NlwRenamedSig_OI_wb_ack_o),
    .ADR2(i2c_al),
    .ADR0(wb_rst_i),
    .ADR4(_n0179_inv_bdd0),
    .O(_n0179_inv)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 1'b0 ))
  cr_2 (
    .CE(_n0214_inv_0),
    .CLK(\NlwBufferSignal_i2c/cr_2/CLK ),
    .I(\cr[7]_GND_4_o_mux_24_OUT<2> ),
    .O(cr_2_1977),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 64'h0080008000800080 ))
  \cr[7]_GND_4_o_mux_24_OUT<2>1  (
    .ADR4(1'b1),
    .ADR2(wb_we_i),
    .ADR3(wb_rst_i),
    .ADR1(NlwRenamedSig_OI_wb_ack_o),
    .ADR0(wb_dat_i[2]),
    .ADR5(1'b1),
    .O(\cr[7]_GND_4_o_mux_24_OUT<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 32'h00C00000 ))
  \cr[7]_GND_4_o_mux_24_OUT<1>1  (
    .ADR4(wb_dat_i[1]),
    .ADR2(wb_we_i),
    .ADR3(wb_rst_i),
    .ADR1(NlwRenamedSig_OI_wb_ack_o),
    .ADR0(1'b1),
    .O(\cr[7]_GND_4_o_mux_24_OUT<1> )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 1'b0 ))
  cr_1 (
    .CE(_n0214_inv_0),
    .CLK(\NlwBufferSignal_i2c/cr_1/CLK ),
    .I(\cr[7]_GND_4_o_mux_24_OUT<1> ),
    .O(cr_1_1753),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 1'b0 ))
  cr_0 (
    .CE(_n0214_inv_0),
    .CLK(\NlwBufferSignal_i2c/cr_0/CLK ),
    .I(\cr[7]_GND_4_o_mux_24_OUT<0> ),
    .O(cr_0_1952),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 64'h0000808000008080 ))
  \cr[7]_GND_4_o_mux_24_OUT<0>1  (
    .ADR3(1'b1),
    .ADR1(wb_we_i),
    .ADR4(wb_rst_i),
    .ADR0(NlwRenamedSig_OI_wb_ack_o),
    .ADR2(wb_dat_i[0]),
    .ADR5(1'b1),
    .O(\cr[7]_GND_4_o_mux_24_OUT<0> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 32'hFFFF77FF ))
  _n0214_inv11 (
    .ADR3(_n0179_inv_bdd0),
    .ADR1(wb_we_i),
    .ADR4(wb_rst_i),
    .ADR0(NlwRenamedSig_OI_wb_ack_o),
    .ADR2(1'b1),
    .O(_n0214_inv)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y21" ),
    .INIT ( 64'hFFFFFFFFFF55FFFF ))
  _n0179_inv21 (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(ctr[7]),
    .ADR0(wb_adr_i[2]),
    .ADR3(wb_adr_i[1]),
    .ADR5(wb_adr_i[0]),
    .O(_n0179_inv_bdd0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X14Y22" ))
  mux114 (
    .IA(N01),
    .IB(N1),
    .O(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<0> ),
    .SEL(wb_adr_i[2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 64'hFBD97351EAC86240 ))
  mux114_F (
    .ADR0(wb_adr_i[0]),
    .ADR1(wb_adr_i[1]),
    .ADR3(prer[8]),
    .ADR4(rxr[0]),
    .ADR2(ctr[0]),
    .ADR5(\prer<0>_0 ),
    .O(N01)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 1'b0 ))
  wb_dat_o_0 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_0/CLK ),
    .I(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<0> ),
    .O(wb_dat_o[0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 64'h3300B8B83300B8B8 ))
  mux114_G (
    .ADR5(1'b1),
    .ADR1(wb_adr_i[0]),
    .ADR2(irq_flag_1951),
    .ADR4(wb_adr_i[1]),
    .ADR3(cr_0_1952),
    .ADR0(txr[0]),
    .O(N1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 64'hDF8FD585DA8AD080 ))
  mux211 (
    .ADR0(wb_adr_i[0]),
    .ADR2(wb_adr_i[1]),
    .ADR4(\prer<10>_0 ),
    .ADR1(rxr[2]),
    .ADR3(ctr[2]),
    .ADR5(prer[2]),
    .O(mux21)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 1'b0 ))
  wb_dat_o_2 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_2/CLK ),
    .I(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<2> ),
    .O(wb_dat_o[2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y22" ),
    .INIT ( 64'h3388F0F00088F0F0 ))
  mux212 (
    .ADR4(wb_adr_i[2]),
    .ADR3(wb_adr_i[1]),
    .ADR1(wb_adr_i[0]),
    .ADR5(cr_2_1977),
    .ADR0(txr[2]),
    .ADR2(mux21),
    .O(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<2> )
  );
  X_BUF   \i2c_data_out<1>/i2c_data_out<1>_CMUX_Delay  (
    .I(\i2c_data_out<1>/i2c_data_out<5> ),
    .O(wb_dat_o[5])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y20" ),
    .INIT ( 64'hFF00FF0AFF00FF00 ))
  _n0159_inv11 (
    .ADR1(1'b1),
    .ADR4(wb_adr_i[1]),
    .ADR2(wb_adr_i[2]),
    .ADR0(wb_we_i),
    .ADR5(NlwRenamedSig_OI_wb_ack_o),
    .ADR3(wb_rst_i),
    .O(_n0159_inv)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y20" ),
    .INIT ( 1'b0 ))
  wb_dat_o_1 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_1/CLK ),
    .I(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<1> ),
    .O(wb_dat_o[1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y20" ),
    .INIT ( 64'hFF00AAAAFF00AAAA ))
  mux1113 (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR4(wb_adr_i[0]),
    .ADR0(mux1111_1974),
    .ADR3(mux1112_1984),
    .ADR5(1'b1),
    .O(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<1> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y20" ),
    .INIT ( 32'hCCCCF0F0 ))
  mux513 (
    .ADR2(mux51),
    .ADR1(mux511_1983),
    .ADR4(wb_adr_i[0]),
    .ADR3(1'b1),
    .ADR0(1'b1),
    .O(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y20" ),
    .INIT ( 1'b0 ))
  wb_dat_o_5 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_5/CLK ),
    .I(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<5> ),
    .O(\i2c_data_out<1>/i2c_data_out<5> ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y20" ),
    .INIT ( 64'h5D585D580D080D08 ))
  mux1112 (
    .ADR4(1'b1),
    .ADR2(wb_adr_i[1]),
    .ADR3(prer[9]),
    .ADR0(wb_adr_i[2]),
    .ADR1(txr[1]),
    .ADR5(rxr[1]),
    .O(mux1112_1984)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y20" ),
    .INIT ( 64'h00AA00AAF0FFF000 ))
  mux512 (
    .ADR1(1'b1),
    .ADR3(wb_adr_i[1]),
    .ADR4(\prer<13>_0 ),
    .ADR5(wb_adr_i[2]),
    .ADR0(txr[5]),
    .ADR2(rxr[5]),
    .O(mux511_1983)
  );
  X_BUF   \i2c/ctr<7>/i2c/ctr<7>_CMUX_Delay  (
    .I(\ctr[7]_GND_4_o_mux_16_OUT<5> ),
    .O(\ctr[7]_GND_4_o_mux_16_OUT<5>_0 )
  );
  X_BUF   \i2c/ctr<7>/i2c/ctr<7>_AMUX_Delay  (
    .I(\ctr[7]_GND_4_o_mux_16_OUT<2> ),
    .O(\ctr[7]_GND_4_o_mux_16_OUT<2>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 1'b0 ))
  ctr_7 (
    .CE(_n0165_inv),
    .CLK(\NlwBufferSignal_i2c/ctr_7/CLK ),
    .I(\NlwBufferSignal_i2c/ctr_7/IN ),
    .O(ctr[7]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 1'b0 ))
  ctr_6 (
    .CE(_n0165_inv),
    .CLK(\NlwBufferSignal_i2c/ctr_6/CLK ),
    .I(\ctr[7]_GND_4_o_mux_16_OUT<6> ),
    .O(ctr[6]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 64'h3300330033003300 ))
  \ctr[7]_GND_4_o_mux_16_OUT<6>1  (
    .ADR0(1'b1),
    .ADR4(1'b1),
    .ADR2(1'b1),
    .ADR1(wb_rst_i),
    .ADR3(wb_dat_i[6]),
    .ADR5(1'b1),
    .O(\ctr[7]_GND_4_o_mux_16_OUT<6> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 32'h33330000 ))
  \ctr[7]_GND_4_o_mux_16_OUT<5>1  (
    .ADR0(1'b1),
    .ADR3(1'b1),
    .ADR4(wb_dat_i[5]),
    .ADR1(wb_rst_i),
    .ADR2(1'b1),
    .O(\ctr[7]_GND_4_o_mux_16_OUT<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 1'b0 ))
  ctr_5 (
    .CE(_n0165_inv),
    .CLK(\NlwBufferSignal_i2c/ctr_5/CLK ),
    .I(\NlwBufferSignal_i2c/ctr_5/IN ),
    .O(ctr[5]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 1'b0 ))
  ctr_4 (
    .CE(_n0165_inv),
    .CLK(\NlwBufferSignal_i2c/ctr_4/CLK ),
    .I(\ctr[7]_GND_4_o_mux_16_OUT<4> ),
    .O(ctr[4]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 64'h00F000F000F000F0 ))
  \ctr[7]_GND_4_o_mux_16_OUT<4>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR3(wb_rst_i),
    .ADR2(wb_dat_i[4]),
    .ADR5(1'b1),
    .O(\ctr[7]_GND_4_o_mux_16_OUT<4> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y19" ),
    .INIT ( 32'h00AA00AA ))
  \ctr[7]_GND_4_o_mux_16_OUT<2>1  (
    .ADR2(1'b1),
    .ADR1(1'b1),
    .ADR0(wb_dat_i[2]),
    .ADR3(wb_rst_i),
    .ADR4(1'b1),
    .O(\ctr[7]_GND_4_o_mux_16_OUT<2> )
  );
  X_BUF   \i2c_data_out<6>/i2c_data_out<6>_CMUX_Delay  (
    .I(\i2c_data_out<6>/i2c_data_out<7> ),
    .O(wb_dat_o[7])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y18" ),
    .INIT ( 64'hDDFADD5088FA8850 ))
  mux611 (
    .ADR0(wb_adr_i[1]),
    .ADR3(wb_adr_i[2]),
    .ADR4(ctr[6]),
    .ADR1(cr_6_0),
    .ADR5(i2c_busy),
    .ADR2(prer[6]),
    .O(mux61)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y18" ),
    .INIT ( 1'b0 ))
  wb_dat_o_6 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_6/CLK ),
    .I(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<6> ),
    .O(wb_dat_o[6]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y18" ),
    .INIT ( 64'hFFCC3300FFCC3300 ))
  mux613 (
    .ADR0(1'b1),
    .ADR2(1'b1),
    .ADR1(wb_adr_i[0]),
    .ADR3(mux61),
    .ADR4(mux611_1981),
    .ADR5(1'b1),
    .O(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<6> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y18" ),
    .INIT ( 32'hB8B8B8B8 ))
  mux713 (
    .ADR2(mux71),
    .ADR0(mux711_1980),
    .ADR1(wb_adr_i[0]),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<7> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y18" ),
    .INIT ( 1'b0 ))
  wb_dat_o_7 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_7/CLK ),
    .I(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<7> ),
    .O(\i2c_data_out<6>/i2c_data_out<7> ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y18" ),
    .INIT ( 64'h0A0AFFF00A0A0F00 ))
  mux612 (
    .ADR1(1'b1),
    .ADR2(wb_adr_i[1]),
    .ADR3(\prer<14>_0 ),
    .ADR4(wb_adr_i[2]),
    .ADR0(txr[6]),
    .ADR5(rxr[6]),
    .O(mux611_1981)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y18" ),
    .INIT ( 64'h0C0C0C0CAFA0AFA0 ))
  mux712 (
    .ADR4(1'b1),
    .ADR2(wb_adr_i[1]),
    .ADR3(\prer<15>_0 ),
    .ADR5(wb_adr_i[2]),
    .ADR1(txr[7]),
    .ADR0(rxr[7]),
    .O(mux711_1980)
  );
  X_BUF   \i2c/prer<9>/i2c/prer<9>_DMUX_Delay  (
    .I(prer[1]),
    .O(\prer<1>_0 )
  );
  X_BUF   \i2c/prer<9>/i2c/prer<9>_CMUX_Delay  (
    .I(prer[0]),
    .O(\prer<0>_0 )
  );
  X_BUF   \i2c/prer<9>/i2c/prer<9>_BMUX_Delay  (
    .I(prer[15]),
    .O(\prer<15>_0 )
  );
  X_BUF   \i2c/prer<9>/i2c/prer<9>_AMUX_Delay  (
    .I(prer[14]),
    .O(\prer<14>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 1'b1 ))
  prer_9 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_9/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<9> ),
    .O(prer[9]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 64'hFFFFCFC0FFFFCFC0 ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT161  (
    .ADR0(1'b1),
    .ADR2(wb_adr_i[0]),
    .ADR4(wb_rst_i),
    .ADR3(prer[9]),
    .ADR1(wb_dat_i[1]),
    .ADR5(1'b1),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<9> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 32'hFFFFACAC ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT81  (
    .ADR0(\prer<1>_0 ),
    .ADR2(wb_adr_i[0]),
    .ADR4(wb_rst_i),
    .ADR3(1'b1),
    .ADR1(wb_dat_i[1]),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<1> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 1'b1 ))
  prer_1 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_1/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<1> ),
    .O(prer[1]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 1'b1 ))
  prer_8 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_8/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<8> ),
    .O(prer[8]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 64'hFFCFFFC0FFCFFFC0 ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT151  (
    .ADR0(1'b1),
    .ADR2(wb_adr_i[0]),
    .ADR3(wb_rst_i),
    .ADR4(prer[8]),
    .ADR1(wb_dat_i[0]),
    .ADR5(1'b1),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<8> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 32'hFFACFFAC ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT11  (
    .ADR0(\prer<0>_0 ),
    .ADR2(wb_adr_i[0]),
    .ADR3(wb_rst_i),
    .ADR4(1'b1),
    .ADR1(wb_dat_i[0]),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<0> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 1'b1 ))
  prer_0 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_0/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<0> ),
    .O(prer[0]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 1'b1 ))
  prer_7 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_7/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<7> ),
    .O(prer[7]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 64'hFFFFF0CCFFFFF0CC ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT141  (
    .ADR0(1'b1),
    .ADR3(wb_adr_i[0]),
    .ADR1(wb_dat_i[7]),
    .ADR2(prer[7]),
    .ADR4(wb_rst_i),
    .ADR5(1'b1),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<7> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 32'hFFFFCCAA ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT71  (
    .ADR0(\prer<15>_0 ),
    .ADR3(wb_adr_i[0]),
    .ADR1(wb_dat_i[7]),
    .ADR2(1'b1),
    .ADR4(wb_rst_i),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<15> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 1'b1 ))
  prer_15 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_15/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<15> ),
    .O(prer[15]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 1'b1 ))
  prer_6 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_6/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<6> ),
    .O(prer[6]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 64'hFFFFFC0CFFFFFC0C ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT131  (
    .ADR0(1'b1),
    .ADR2(wb_adr_i[0]),
    .ADR1(wb_dat_i[6]),
    .ADR3(prer[6]),
    .ADR4(wb_rst_i),
    .ADR5(1'b1),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<6> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 32'hFFFFCACA ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT61  (
    .ADR0(\prer<14>_0 ),
    .ADR2(wb_adr_i[0]),
    .ADR1(wb_dat_i[6]),
    .ADR3(1'b1),
    .ADR4(wb_rst_i),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<14> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y12" ),
    .INIT ( 1'b1 ))
  prer_14 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_14/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<14> ),
    .O(prer[14]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_BUF   \i2c/cr_7/i2c/cr_7_BMUX_Delay  (
    .I(cr_6_1580),
    .O(cr_6_0)
  );
  X_BUF   \i2c/cr_7/i2c/cr_7_AMUX_Delay  (
    .I(cr_4_1584),
    .O(cr_4_0)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 1'b0 ))
  cr_7 (
    .CE(_n0179_inv),
    .CLK(\NlwBufferSignal_i2c/cr_7/CLK ),
    .I(\cr[7]_GND_4_o_mux_24_OUT<7> ),
    .O(cr_7_1931),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 64'h0808000008080000 ))
  \cr[7]_GND_4_o_mux_24_OUT<7>1  (
    .ADR3(1'b1),
    .ADR0(wb_we_i),
    .ADR2(wb_rst_i),
    .ADR1(NlwRenamedSig_OI_wb_ack_o),
    .ADR4(wb_dat_i[7]),
    .ADR5(1'b1),
    .O(\cr[7]_GND_4_o_mux_24_OUT<7> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 32'h08000800 ))
  \cr[7]_GND_4_o_mux_24_OUT<6>1  (
    .ADR3(wb_dat_i[6]),
    .ADR0(wb_we_i),
    .ADR2(wb_rst_i),
    .ADR1(NlwRenamedSig_OI_wb_ack_o),
    .ADR4(1'b1),
    .O(\cr[7]_GND_4_o_mux_24_OUT<6> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 1'b0 ))
  cr_6 (
    .CE(_n0179_inv),
    .CLK(\NlwBufferSignal_i2c/cr_6/CLK ),
    .I(\cr[7]_GND_4_o_mux_24_OUT<6> ),
    .O(cr_6_1580),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 1'b0 ))
  cr_5 (
    .CE(_n0179_inv),
    .CLK(\NlwBufferSignal_i2c/cr_5/CLK ),
    .I(\cr[7]_GND_4_o_mux_24_OUT<5> ),
    .O(cr_5_1933),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 64'h0000C0000000C000 ))
  \cr[7]_GND_4_o_mux_24_OUT<5>1  (
    .ADR0(1'b1),
    .ADR2(wb_we_i),
    .ADR4(wb_rst_i),
    .ADR1(NlwRenamedSig_OI_wb_ack_o),
    .ADR3(wb_dat_i[5]),
    .ADR5(1'b1),
    .O(\cr[7]_GND_4_o_mux_24_OUT<5> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 32'h00008080 ))
  \cr[7]_GND_4_o_mux_24_OUT<4>1  (
    .ADR0(wb_dat_i[4]),
    .ADR2(wb_we_i),
    .ADR4(wb_rst_i),
    .ADR1(NlwRenamedSig_OI_wb_ack_o),
    .ADR3(1'b1),
    .O(\cr[7]_GND_4_o_mux_24_OUT<4> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y21" ),
    .INIT ( 1'b0 ))
  cr_4 (
    .CE(_n0179_inv),
    .CLK(\NlwBufferSignal_i2c/cr_4/CLK ),
    .I(\cr[7]_GND_4_o_mux_24_OUT<4> ),
    .O(cr_4_1584),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y23" ),
    .INIT ( 64'hCFAFCFA0C0AFC0A0 ))
  mux711 (
    .ADR2(wb_adr_i[1]),
    .ADR3(wb_adr_i[2]),
    .ADR0(ctr[7]),
    .ADR1(cr_7_1931),
    .ADR5(rxack_1976),
    .ADR4(prer[7]),
    .O(mux71)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y19" ),
    .INIT ( 1'b0 ))
  txr_7 (
    .CE(_n0171_inv),
    .CLK(\NlwBufferSignal_i2c/txr_7/CLK ),
    .I(\ctr[7]_GND_4_o_mux_16_OUT<7> ),
    .O(txr[7]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y19" ),
    .INIT ( 64'h0000F0F00000F0F0 ))
  \ctr[7]_GND_4_o_mux_16_OUT<7>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR4(wb_rst_i),
    .ADR2(wb_dat_i[7]),
    .O(\ctr[7]_GND_4_o_mux_16_OUT<7> )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y19" ),
    .INIT ( 1'b0 ))
  txr_6 (
    .CE(_n0171_inv),
    .CLK(\NlwBufferSignal_i2c/txr_6/CLK ),
    .I(\NlwBufferSignal_i2c/txr_6/IN ),
    .O(txr[6]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y19" ),
    .INIT ( 1'b0 ))
  txr_5 (
    .CE(_n0171_inv),
    .CLK(\NlwBufferSignal_i2c/txr_5/CLK ),
    .I(\NlwBufferSignal_i2c/txr_5/IN ),
    .O(txr[5]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y19" ),
    .INIT ( 1'b0 ))
  txr_4 (
    .CE(_n0171_inv),
    .CLK(\NlwBufferSignal_i2c/txr_4/CLK ),
    .I(\NlwBufferSignal_i2c/txr_4/IN ),
    .O(txr[4]),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y22" ),
    .INIT ( 1'b0 ))
  wb_ack_o_456 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_ack_o/CLK ),
    .I(wb_cyc_i_wb_ack_o_AND_3_o),
    .O(NlwRenamedSig_OI_wb_ack_o),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y22" ),
    .INIT ( 64'h00000000F000F000 ))
  wb_cyc_i_wb_ack_o_AND_3_o1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR4(1'b1),
    .ADR5(NlwRenamedSig_OI_wb_ack_o),
    .ADR2(wb_stb_i),
    .ADR3(wb_cyc_i),
    .O(wb_cyc_i_wb_ack_o_AND_3_o)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y22" ),
    .INIT ( 64'hAAAAAAAAAAAAEAAA ))
  _n0165_inv21 (
    .ADR2(wb_adr_i[1]),
    .ADR4(wb_adr_i[0]),
    .ADR5(wb_adr_i[2]),
    .ADR3(wb_we_i),
    .ADR1(NlwRenamedSig_OI_wb_ack_o),
    .ADR0(wb_rst_i),
    .O(_n0165_inv)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y21" ),
    .INIT ( 64'hFCFCEE223030EE22 ))
  mux411 (
    .ADR1(wb_adr_i[0]),
    .ADR4(wb_adr_i[1]),
    .ADR3(\prer<12>_0 ),
    .ADR5(rxr[4]),
    .ADR2(ctr[4]),
    .ADR0(prer[4]),
    .O(mux41)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y21" ),
    .INIT ( 1'b0 ))
  wb_dat_o_4 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_4/CLK ),
    .I(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<4> ),
    .O(wb_dat_o[4]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y21" ),
    .INIT ( 64'h3BF33B3308C00800 ))
  mux412 (
    .ADR1(wb_adr_i[2]),
    .ADR2(wb_adr_i[1]),
    .ADR3(wb_adr_i[0]),
    .ADR4(cr_4_0),
    .ADR0(txr[4]),
    .ADR5(mux41),
    .O(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<4> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y21" ),
    .INIT ( 64'hF5F5A0A0EE44EE44 ))
  mux311 (
    .ADR5(wb_adr_i[0]),
    .ADR0(wb_adr_i[1]),
    .ADR4(\prer<11>_0 ),
    .ADR2(rxr[3]),
    .ADR3(ctr[3]),
    .ADR1(prer[3]),
    .O(mux31)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y21" ),
    .INIT ( 1'b0 ))
  wb_dat_o_3 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_dat_o_3/CLK ),
    .I(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<3> ),
    .O(wb_dat_o[3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y21" ),
    .INIT ( 64'h77B3448033B30080 ))
  mux312 (
    .ADR1(wb_adr_i[2]),
    .ADR3(wb_adr_i[1]),
    .ADR0(wb_adr_i[0]),
    .ADR5(cr_3_1935),
    .ADR2(txr[3]),
    .ADR4(mux31),
    .O(\wb_adr_i[2]_GND_4_o_wide_mux_2_OUT<3> )
  );
  X_BUF   \i2c/prer<5>/i2c/prer<5>_DMUX_Delay  (
    .I(prer[13]),
    .O(\prer<13>_0 )
  );
  X_BUF   \i2c/prer<5>/i2c/prer<5>_CMUX_Delay  (
    .I(prer[12]),
    .O(\prer<12>_0 )
  );
  X_BUF   \i2c/prer<5>/i2c/prer<5>_BMUX_Delay  (
    .I(prer[11]),
    .O(\prer<11>_0 )
  );
  X_BUF   \i2c/prer<5>/i2c/prer<5>_AMUX_Delay  (
    .I(prer[10]),
    .O(\prer<10>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  prer_5 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_5/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<5> ),
    .O(prer[5]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 64'hFFFFFC0CFFFFFC0C ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT121  (
    .ADR0(1'b1),
    .ADR2(wb_adr_i[0]),
    .ADR1(wb_dat_i[5]),
    .ADR3(prer[5]),
    .ADR4(wb_rst_i),
    .ADR5(1'b1),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<5> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 32'hFFFFCACA ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT51  (
    .ADR0(\prer<13>_0 ),
    .ADR2(wb_adr_i[0]),
    .ADR1(wb_dat_i[5]),
    .ADR3(1'b1),
    .ADR4(wb_rst_i),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<13> )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  prer_13 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_13/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<13> ),
    .O(prer[13]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  prer_4 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_4/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<4> ),
    .O(prer[4]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 64'hFFFCFF30FFFCFF30 ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT111  (
    .ADR0(1'b1),
    .ADR1(wb_adr_i[0]),
    .ADR2(wb_dat_i[4]),
    .ADR4(prer[4]),
    .ADR3(wb_rst_i),
    .ADR5(1'b1),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<4> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 32'hFFE2FFE2 ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT41  (
    .ADR0(\prer<12>_0 ),
    .ADR1(wb_adr_i[0]),
    .ADR2(wb_dat_i[4]),
    .ADR4(1'b1),
    .ADR3(wb_rst_i),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<12> )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  prer_12 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_12/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<12> ),
    .O(prer[12]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  prer_3 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_3/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<3> ),
    .O(prer[3]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 64'hFFFFFC0CFFFFFC0C ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT101  (
    .ADR0(1'b1),
    .ADR2(wb_adr_i[0]),
    .ADR1(wb_dat_i[3]),
    .ADR3(prer[3]),
    .ADR4(wb_rst_i),
    .ADR5(1'b1),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<3> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 32'hFFFFCACA ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT31  (
    .ADR0(\prer<11>_0 ),
    .ADR2(wb_adr_i[0]),
    .ADR1(wb_dat_i[3]),
    .ADR3(1'b1),
    .ADR4(wb_rst_i),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<11> )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  prer_11 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_11/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<11> ),
    .O(prer[11]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  prer_2 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_2/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<2> ),
    .O(prer[2]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 64'hFFFFCFC0FFFFCFC0 ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT91  (
    .ADR0(1'b1),
    .ADR2(wb_adr_i[0]),
    .ADR3(wb_dat_i[2]),
    .ADR1(prer[2]),
    .ADR4(wb_rst_i),
    .ADR5(1'b1),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 32'hFFFFFA0A ))
  \Mmux_prer[15]_PWR_2_o_mux_15_OUT21  (
    .ADR0(\prer<10>_0 ),
    .ADR2(wb_adr_i[0]),
    .ADR3(wb_dat_i[2]),
    .ADR1(1'b1),
    .ADR4(wb_rst_i),
    .O(\prer[15]_PWR_2_o_mux_15_OUT<10> )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b1 ))
  prer_10 (
    .CE(_n0159_inv),
    .CLK(\NlwBufferSignal_i2c/prer_10/CLK ),
    .I(\prer[15]_PWR_2_o_mux_15_OUT<10> ),
    .O(prer[10]),
    .SET(arst_i_inv),
    .RST(GND)
  );
  X_BUF   \i2c/irq_flag/i2c/irq_flag_AMUX_Delay  (
    .I(\i2c/irq_flag/i2c_int ),
    .O(wb_inta_o)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y22" ),
    .INIT ( 1'b0 ))
  irq_flag (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/irq_flag/CLK ),
    .I(done_GND_4_o_MUX_117_o),
    .O(irq_flag_1951),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y22" ),
    .INIT ( 64'h000000000000FFFC ))
  Mmux_done_GND_4_o_MUX_117_o11 (
    .ADR0(1'b1),
    .ADR5(cr_0_1952),
    .ADR4(wb_rst_i),
    .ADR2(irq_flag_1951),
    .ADR3(done),
    .ADR1(i2c_al),
    .O(done_GND_4_o_MUX_117_o)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y22" ),
    .INIT ( 1'b0 ))
  rxack (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/rxack/CLK ),
    .I(irxack_GND_4_o_MUX_115_o),
    .O(rxack_1976),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y22" ),
    .INIT ( 64'h0000F0F00000F0F0 ))
  Mmux_irxack_GND_4_o_MUX_115_o11 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR4(wb_rst_i),
    .ADR2(irxack),
    .ADR5(1'b1),
    .O(irxack_GND_4_o_MUX_115_o)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y22" ),
    .INIT ( 32'h00008888 ))
  Mmux_irq_flag_GND_4_o_MUX_118_o11 (
    .ADR2(1'b1),
    .ADR1(ctr[6]),
    .ADR0(irq_flag_1951),
    .ADR4(wb_rst_i),
    .ADR3(1'b1),
    .O(irq_flag_GND_4_o_MUX_118_o)
  );
  X_FF #(
    .LOC ( "SLICE_X9Y22" ),
    .INIT ( 1'b0 ))
  wb_inta_o_381 (
    .CE(VCC),
    .CLK(\NlwBufferSignal_i2c/wb_inta_o/CLK ),
    .I(irq_flag_GND_4_o_MUX_118_o),
    .O(\i2c/irq_flag/i2c_int ),
    .RST(arst_i_inv),
    .SET(GND)
  );
  X_BUF   \NlwBufferBlock_i2c/cr_3/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/cr_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/tip/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/tip/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_3/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/txr_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_2/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/txr_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_2/IN  (
    .I(\ctr[7]_GND_4_o_mux_16_OUT<2>_0 ),
    .O(\NlwBufferSignal_i2c/txr_2/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_1/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/txr_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_0/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/txr_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_0/IN  (
    .I(\ctr[7]_GND_4_o_mux_16_OUT<0>_0 ),
    .O(\NlwBufferSignal_i2c/txr_0/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/al/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/al/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_3/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/ctr_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_3/IN  (
    .I(\cr[7]_GND_4_o_mux_24_OUT<3> ),
    .O(\NlwBufferSignal_i2c/ctr_3/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_2/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/ctr_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_2/IN  (
    .I(\ctr[7]_GND_4_o_mux_16_OUT<2>_0 ),
    .O(\NlwBufferSignal_i2c/ctr_2/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_1/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/ctr_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_1/IN  (
    .I(\ctr[7]_GND_4_o_mux_16_OUT<1> ),
    .O(\NlwBufferSignal_i2c/ctr_1/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_0/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/ctr_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_0/IN  (
    .I(\ctr[7]_GND_4_o_mux_16_OUT<0>_0 ),
    .O(\NlwBufferSignal_i2c/ctr_0/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_2/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/cr_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_1/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/cr_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_0/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/cr_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_0/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/wb_dat_o_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_2/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/wb_dat_o_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_1/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/wb_dat_o_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_5/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/wb_dat_o_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_7/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/ctr_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_7/IN  (
    .I(\ctr[7]_GND_4_o_mux_16_OUT<7> ),
    .O(\NlwBufferSignal_i2c/ctr_7/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_6/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/ctr_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_5/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/ctr_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_5/IN  (
    .I(\ctr[7]_GND_4_o_mux_16_OUT<5>_0 ),
    .O(\NlwBufferSignal_i2c/ctr_5/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/ctr_4/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/ctr_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_6/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/wb_dat_o_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_7/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/wb_dat_o_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_9/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_9/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_1/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_1/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_8/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_8/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_0/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_0/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_7/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_15/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_15/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_6/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_14/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_14/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_7/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/cr_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_6/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/cr_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_5/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/cr_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/cr_4/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/cr_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_7/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/txr_7/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_6/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/txr_6/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_6/IN  (
    .I(\ctr[7]_GND_4_o_mux_16_OUT<6> ),
    .O(\NlwBufferSignal_i2c/txr_6/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_5/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/txr_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_5/IN  (
    .I(\ctr[7]_GND_4_o_mux_16_OUT<5>_0 ),
    .O(\NlwBufferSignal_i2c/txr_5/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_4/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/txr_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/txr_4/IN  (
    .I(\ctr[7]_GND_4_o_mux_16_OUT<4> ),
    .O(\NlwBufferSignal_i2c/txr_4/IN )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_ack_o/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/wb_ack_o/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_4/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/wb_dat_o_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_dat_o_3/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/wb_dat_o_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_5/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_5/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_13/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_13/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_4/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_4/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_12/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_12/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_3/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_3/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_11/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_11/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_2/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_2/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/prer_10/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/prer_10/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/irq_flag/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/irq_flag/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/rxack/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/rxack/CLK )
  );
  X_BUF   \NlwBufferBlock_i2c/wb_inta_o/CLK  (
    .I(wb_clk_i),
    .O(\NlwBufferSignal_i2c/wb_inta_o/CLK )
  );
  X_ONE   NlwBlock_i2c_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_i2c_GND (
    .O(GND)
  );
endmodule

