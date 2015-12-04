`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:49:29 11/17/2015
// Design Name:   bit_ctrl
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/I2C_Module/bit_ctr2l_tst.v
// Project Name:  I2C_Module
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bit_ctrl
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bit_ctr2l_tst;

	// Inputs
	reg clk;
	reg clk_frame;
	reg rst;
	reg en;
	reg rw;
	reg w_bit;
	reg start_cond;
	reg stop_cond;

	// Outputs
	wire r_bit;
	wire busy;
	wire SCL;

	// Bidirs
	wire SDA;
	
	reg SDA_in, SDA_out, SDA_oen;
	assign SDA = SDA_oen? 1'bz : SDA_out;

	// Instantiate the Unit Under Test (UUT)
	bit_ctrl uut (
		.clk(clk), 
		.clk_frame(clk_frame), 
		.rst(rst), 
		.en(en), 
		.rw(rw), 
		.w_bit(w_bit), 
		.start_cond(start_cond), 
		.stop_cond(stop_cond), 
		.r_bit(r_bit), 
		.busy(busy), 
		.SDA(SDA), 
		.SCL(SCL)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clk_frame = 0;
		rst = 1;
		en = 0;
		rw = 0;
		w_bit = 0;
		start_cond = 0;
		stop_cond = 0;
		SDA_oen = 1;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		// Add stimulus here
		#15;
		en = 1;
		start_cond = 1;
		while(!busy) #10;
		en = 0;
		start_cond = 0;
	end
	
   always #5 clk = ~clk;
	always #55 clk_frame = ~clk_frame;
	
endmodule

