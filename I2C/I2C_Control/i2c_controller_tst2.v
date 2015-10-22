`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:00 10/19/2015 
// Design Name: 
// Module Name:    i2c_controller_tst2 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module i2c_controller_tst2(
    input clk,
    input rst_n,
    inout sda,
    inout scl
    );
	 
	 
	 // I2C Module Declaration
	 // Control Signals
	 (* KEEP = "TRUE" *) reg i2c_rst;
	 (* KEEP = "TRUE" *) reg [2:0] i2c_lab;
	 (* KEEP = "TRUE" *) reg [7:0] i2c_data_in;
	 (* KEEP = "TRUE" *) reg i2c_we;
	 (* KEEP = "TRUE" *) reg i2c_cs;
	 (* KEEP = "TRUE" *) reg i2c_cyc;
	 (* KEEP = "TRUE" *) wire [7:0] i2c_data_out;
	 (* KEEP = "TRUE" *) wire i2c_ack_o;
	 (* KEEP = "TRUE" *)  wire i2c_int;
	 // Control Signals Dummys
	 (* KEEP = "TRUE" *) reg i2c_rst_d;
	 (* KEEP = "TRUE" *) reg [2:0] i2c_lab_d;
	 (* KEEP = "TRUE" *) reg [7:0] i2c_data_in_d;
	 (* KEEP = "TRUE" *) reg i2c_we_d;
	 (* KEEP = "TRUE" *) reg i2c_cs_d;
	 (* KEEP = "TRUE" *) reg i2c_cyc_d;
	 // I2C Signals
	 wire i2c_scl_i;
	 wire i2c_scl_o;
	 wire i2c_scl_oe;
	 wire i2c_sda_i;
	 wire i2c_sda_o;
	 wire i2c_sda_oe;
	 
	 // INOUT Buffer Assigns
	 assign scl = i2c_scl_oe? 1'bz : i2c_scl_o;
	 assign sda = i2c_sda_oe? 1'bz : i2c_sda_o;
	 assign i2c_scl_i = scl;
	 assign i2c_sda_i = sda;
	 
	 i2c_master_top i2c(	.wb_clk_i(clk),
								.wb_rst_i(i2c_rst),
								.arst_i(rst_n),
								.wb_adr_i(i2c_lab),
								.wb_dat_i(i2c_data_in),
								.wb_dat_o(i2c_data_out),
								.wb_we_i(i2c_we),
								.wb_stb_i(i2c_cs),
								.wb_cyc_i(i2c_cyc),
								.wb_ack_o(i2c_ack_o),
								.wb_inta_o(i2c_int),
								.scl_pad_i(i2c_scl_i),
								.scl_pad_o(i2c_scl_o),
								.scl_padoen_o(i2c_scl_oe),
								.sda_pad_i(i2c_sda_i),
								.sda_pad_o(i2c_sda_o),
								.sda_padoen_o(i2c_sda_oe)
								);
	 
	 // MODULE
	 localparam reset = 6'd00,
				// Setup
					Wr_ps1 = 6'd01,
					wr_ps2 = 6'd02,
					wr_ps3 = 6'd32,
				// Write Address
					wr_Add = 6'd03,
					wr_st = 6'd04,
					r_t1 = 6'd05,
					r_t2 = 6'd06,
					r_aca1 = 6'd08,
					r_acb1 = 6'd09,
				// Wrike 'O'
					wr_d1 = 6'd10,
					wr_wr1 = 6'd11,
					r_t3 = 6'd12,
					r_t4 = 6'd13,
					r_aca2 = 6'd14,
					r_acb2 = 6'd15,
				// Write 'k'
					wr_d2 = 6'd16,
					wr_wr2 = 6'd17,
					r_t5 = 6'd18,
					r_t6 = 6'd19,
					r_aca3 = 6'd20,
					r_acb3 = 6'd21,
				// Write '\n'
					wr_d3 = 6'd22,
					wr_wr3 = 6'd23,
					r_t7 = 6'd24,
					r_t8 = 6'd25,
					r_aca4 = 6'd26,
					r_acb4 = 6'd27,
				// End States
					err = 6'd28,
					fnsh = 6'd29,
				// Wishbone IP cycles
					wb_set = 6'd30,
					wb_back = 6'd31;
					
					
	 
	 reg[5:0] state, nextState;
	 initial state = reset;
	 initial nextState = reset;
	 
	 reg[5:0] pointer,pointer_dummy,pointer2,pointer2_dummy;
	 
	 
	 always@(posedge clk) begin
		
		if(rst_n) state <= nextState;
		else state <= reset;
		
		pointer <= pointer_dummy;
		pointer2 <= pointer2_dummy;
		i2c_rst <= i2c_rst_d;
		i2c_lab <= i2c_lab_d;
		i2c_data_in <= i2c_data_in_d;
		i2c_we <= i2c_we_d;
		i2c_cs <= i2c_cs_d;
		i2c_cyc <= i2c_cyc_d;
		
	 end
	 
	 always@(*) begin
		 case(state)
			reset: begin
				// Control Signals
				i2c_rst_d <= 1'b1;
				i2c_lab_d <= 3'h3;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b0;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= Wr_ps1;
				pointer_dummy <= reset;
			end
		// Setup
			Wr_ps1: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h0;
				i2c_data_in_d <= 8'h8F;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= wr_ps2;
			end
			wr_ps2: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h1;
				i2c_data_in_d <= 8'h01;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= wr_ps3;
			end
			wr_ps3: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h2;
				i2c_data_in_d <= 8'h80;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= wr_Add;
			end
		// Write Address
			wr_Add: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h3;
				i2c_data_in_d <= 8'h10;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= wr_st;
			end
			wr_st: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h90;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= r_t1;
			end
			r_t1: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b0;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= r_t2;
			end
			r_t2: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b0;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				pointer_dummy <= r_t1;
				if(!i2c_data_out[1]) nextState <= r_acb1;
				else nextState <= wb_set;
			end
			r_acb1: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b0;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				pointer_dummy <= r_acb1;
				if(!i2c_data_out[7]) nextState <= wr_d1;
				else nextState <= err;
			end
		// Wrike 'O'//////////////////////////////////////
			wr_d1: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h3;
				i2c_data_in_d <= 8'h4F;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= wr_wr1;
			end
			wr_wr1: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h10;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= r_t3;
			end
			r_t3: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b0;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= r_t4;
			end
			r_t4: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b0;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				pointer_dummy <= r_t2;
				if(!i2c_data_out[1]) nextState <= r_acb2;
				else nextState <= wb_set;
			end
			r_acb2: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b0;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				pointer_dummy <= reset;
				if(i2c_data_out[7]) nextState <= wr_d3;
				else nextState <= err;
			end
		// Write 'k' ////////////////////////////////////
			wr_d2: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h3;
				i2c_data_in_d <= 8'h6B;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= wr_wr2;
			end
			wr_wr2: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h10;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= r_t5;
			end
			r_t5: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b0;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= r_t6;
			end
			r_t6: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b0;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				pointer_dummy <= r_t6;
				if(!i2c_data_out[1]) nextState <= r_acb3;
				else nextState <= wb_set;
			end
			r_acb3: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b0;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				pointer_dummy <= reset;
				if(i2c_data_out[7]) nextState <= wr_d3;
				else nextState <= err;
			end
		// Write '\n' ////////////////////////////////////////
			wr_d3: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h3;
				i2c_data_in_d <= 8'h0A;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= wr_wr3;
			end
			wr_wr3: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h50;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= r_t7;
			end
			r_t7: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b0;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= wb_set;
				pointer_dummy <= r_t8;
			end
			r_t8: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b0;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				pointer_dummy <= r_t8;
				if(!i2c_data_out[1]) nextState <= r_acb3;
				else nextState <= wb_set;
			end
			r_acb3: begin
				// Control Signals
				i2c_rst_d <= 1'b0;
				i2c_lab_d <= 3'h4;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b0;
				i2c_cs_d <= 1'b1;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				pointer_dummy <= reset;
				if(i2c_data_out[7]) nextState <= fnsh;
				else nextState <= err;
			end
		// End States
			err: begin
				// Control Signals
				i2c_rst_d <= 1'b1;
				i2c_lab_d <= 3'h3;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b0;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= err;
				pointer_dummy <= err;
			end
			fnsh: begin
				// Control Signals
				i2c_rst_d <= 1'b1;
				i2c_lab_d <= 3'h3;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b0;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= fnsh;
				pointer_dummy <= fnsh;
			end
			wb_set: begin
				// Control Signals
				i2c_rst_d <= i2c_rst;
				i2c_lab_d <= i2c_lab;
				i2c_data_in_d <= i2c_data_in;
				i2c_we_d <= i2c_we;
				i2c_cs_d <= i2c_cs;
				i2c_cyc_d <= 1'b1;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				pointer_dummy <= pointer;
				nextState <= wb_back;
			end
			wb_back: begin
				// Control Signals
				i2c_rst_d <= i2c_rst;
				i2c_lab_d <= i2c_lab;
				i2c_data_in_d <= i2c_data_in;
				i2c_we_d <= i2c_we;
				i2c_cs_d <= i2c_cs;
				i2c_cyc_d <= 1'b1;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				pointer_dummy <= pointer;
				if(i2c_ack_o) nextState <= pointer;
				else nextState <= wb_back;
			end
			default: begin
				// Control Signals
				i2c_rst_d <= 1'b1;
				i2c_lab_d <= 3'h3;
				i2c_data_in_d <= 8'h00;
				i2c_we_d <= 1'b1;
				i2c_cs_d <= 1'b0;
				i2c_cyc_d <= 1'b0;
				/*
				i2c_data_out;
				i2c_ack_o;
				i2c_int;
				*/
				nextState <= reset;
				pointer_dummy <= reset;
			end
		 endcase
	 end
	 
	 
endmodule
