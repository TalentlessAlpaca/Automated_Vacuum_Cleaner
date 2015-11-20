`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:30:28 11/17/2015
// Design Name:   I2C_Top
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/I2C_Module/top_tst.v
// Project Name:  I2C_Module
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: I2C_Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_tst;

	// Inputs
	reg clk;
	reg clk_frame;
	reg rst;
	reg en;
	reg start;
	reg stop;
	reg ack_o;
	reg rw;
	reg [7:0] out_byte;

	// Outputs
	wire busy;
	wire err;
	wire [7:0] in_byte;
	wire SCL;

	// Bidirs
	wire SDA;
	
	reg SDA_in, SDA_out, SDA_oen;
	assign SDA = SDA_oen? 1'bz : SDA_out;

	// Instantiate the Unit Under Test (UUT)
	I2C_Top uut (
		.clk(clk), 
		.clk_frame(clk_frame), 
		.rst(rst), 
		.en(en), 
		.start(start), 
		.stop(stop), 
		.ack_o(ack_o), 
		.rw(rw), 
		.out_byte(out_byte), 
		.busy(busy), 
		.err(err), 
		.in_byte(in_byte), 
		.SCL(SCL), 
		.SDA(SDA)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clk_frame = 0;
		rst = 1;
		en = 0;
		start = 0;
		stop = 0;
		ack_o = 1;
		rw = 0;
		out_byte = 0;
		SDA_oen = 1;
		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		// Add stimulus here
		out_byte = 8'hAA;
		#115;
		en = 1;
		start = 1;
		stop = 0;
		#150;
		en = 0;
		start = 0;
		out_byte = 8'h00;
		#3750;
		SDA_oen = 0;
		SDA_out = 0;
		#355;
		SDA_out = 1;
		en = 1;
		rw = 0;
		#3625;
		SDA_oen = 1;
		SDA_out = 0;
		
	end
	
	always #5 clk = ~clk;
	always #55 clk_frame = ~clk_frame;
	
endmodule

