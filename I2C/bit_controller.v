`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:35:10 11/10/2015 
// Design Name: 
// Module Name:    bit_controller 
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
module bit_controller(
    input clk,
	 input clk_frame,
    input rst,
    input en,
    input start_cond,
	 input stop_cond,
	 input w_bit,
	 input rw,
	 output r_bit,
	 output reg [1:0] frame,
	 inout SDA,
	 inout SCL
    );
	/*////////////////////////////////
	 * INOUT
	 *  - clk: FPGA's clpck
	 *  - clk_frame: Frame Clock, it is 4 times the frequency of the SCL bus
	 *  - rst: Reset Signal
	 *  - en: Enable Signal
	 *  - start_cond: If set, it will generate an START condition
	 *  - stop_cond: If set, it will generate an STOP condition
	 *  - w_bit: Bit to be written on SDA bus
	 *  - rw: 0 = Read, 1 = Write
	 *  - r_bit: Read bit on the SDA bus
	 * 
	//////////////////////////////////
	 * 
	 * BUS Drivers
	 * SDA:
	 * 	SDA_in:	Input reading
	 *		SDA_out:	Output driver
	 *		SDA_oen:	Output enable
	 * 
	 * SCLA:
	 *		SCL_in: 	Input rading
	 * 	SCL_out:	Output driver
	 * 	SCL_oen:	Output enable
	 *
	//////////////////////////////////
	 *				|   |   |   |   |
	 * FRAME:	| A | B | C | D |
	 * SDA:		|<==|===|===|==>|
	 * SCL		|___|"""|"""|___|
	 *          |   |   |   |   |
	/*///////////////////////////////
	 
	 initial frame = A;
	 localparam 	A = 2'b00,
						B = 2'b01,
						C = 2'b10,
						D = 2'b11;
	 
	 // Internal Registers
	 wire SDA_in, SCL_in;
	 reg SDA_out, SDA_oen;
	 reg SCL_out, SCL_oen;
	 initial begin
		SDA_out 	= 1'bz;
		SDA_oen = 1'b0;
		SCL_out 	= 1'bz;
		SCL_oen 	= 1'b0;
	 end
	 assign SCL = SCL_oen ? SCL_out : 1'bz;
	 assign SDA = SDA_oen ? SDA_out : 1'bz;
	 
	 assign SDA_in = SDA;
	 assign SCL_in = SCL;
	 
	 reg w_bit_d;
	 initial w_bit_d = 0;
	 
	 reg r_bit_d;
	 initial r_bit_d = 0;
	 assign r_bit = r_bit_d;
	 
	 
	 always@(posedge clk_frame) begin
		// Frame Counter to Synchronize buses
		if(frame[0] && frame[1]) frame <= A;
		else frame <= frame +1;
		// Set Read Byte
		if(frame[0]^frame[1]) r_bit_d <= SDA_in;
	 end
	 
	 reg SDA_out_d,SCL_out_d;
	 
	 // Store w_bit
	 always@(negedge clk) begin
		if(frame[1]&&frame[0]) w_bit_d <= w_bit_d;
		else w_bit_d <= w_bit;
		
		SDA_out_d <= SDA_out;
		SCL_out_d <= SCL_out;
	 end
	 
	 always@(*) begin
		if(en) begin
			if(start_cond) begin
				// Write START condition on bus
				SDA_oen = 1'b1;
				SCL_oen = 1'b1;
				case(frame)
					A: begin
						SDA_out <= 1'bz;
						SCL_out <= 1'bz;
					end
					B: begin
						SDA_out <= 1'bz;
						SCL_out <= 1'bz;
					end
					C: begin
						SDA_out <= 1'b0;
						SCL_out <= 1'bz;
					end
					D: begin
						SDA_out <= SDA_out_d;
						SCL_out <= SCL_out_d;
					end
				endcase
			end
			else if(stop_cond) begin
				// Write STOP condition on bus
				SDA_oen = 1'b1;
				SCL_oen = 1'b1;
				case(frame)
					A: begin
						SDA_out <= 1'b0;
						SCL_out <= 1'b0;
					end
					B: begin
						SDA_out <= 1'b0;
						SCL_out <= 1'bz;
					end
					C: begin
						SDA_out <= 1'bz;
						SCL_out <= 1'bz;
					end
					D: begin
						SDA_out <= SDA_out_d;
						SCL_out <= SCL_out_d;
					end
				endcase
			end
			else if(rw) begin
				// Write Bit on bus w_bit_d
				SDA_oen = 1'b1;
				SCL_oen = 1'b1;
				case(frame)
					A: begin
						SDA_out <= w_bit ? 1'bz : 1'b0;
						SCL_out <= 1'b0;
					end
					B: begin
						SDA_out <= w_bit ? 1'bz : 1'b0;
						SCL_out <= 1'bz;
					end
					C: begin
						SDA_out <= w_bit ? 1'bz : 1'b0;
						SCL_out <= 1'bz;
					end
					D: begin
						SDA_out <= SDA_out_d;
						SCL_out <= SCL_out_d;
					end
				endcase
			end
			else begin
				// Reads Bit in bus
				SDA_oen = 1'b0;
				SCL_oen = 1'b1;
				case(frame)
					A: begin
						SDA_out <= 1'bz;
						SCL_out <= 1'b0;
					end
					B: begin
						SDA_out <= 1'bz;
						SCL_out <= 1'bz;
					end
					C: begin
						SDA_out <= 1'bz;
						SCL_out <= 1'bz;
					end
					D: begin
						SDA_out <= SDA_out_d;
						SCL_out <= SCL_out_d;
					end
				endcase
			end
		end
		else begin
			SDA_oen = 1'b0;
			SCL_oen = 1'b0;
			SDA_out <= 1'bz;
			SCL_out <= 1'bz;
		end
	 end
	 
endmodule
