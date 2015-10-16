`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:01:15 10/15/2015
// Design Name:   clk_generator
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/I2C/clk_gen_tst.v
// Project Name:  I2C
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clk_generator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clk_gen_tst;

	// Inputs
	reg clk;
	reg rst_n;
	reg f_state;
	reg [15:0] limit;
	// Outputs
	wire clk_out;
	wire en;
	// Instantiate the Unit Under Test (UUT)
	clk_generator uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.en(en), 
		.f_state(f_state), 
		.limit(limit), 
		.clk_out(clk_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;
		f_state = 1;
		limit = 0;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		rst_n 	= 1;
		f_state 	= 1;
		limit 	= 10;
		#20
		rst_n 	= 1;
		f_state 	= 1;
		limit 	= 10;
		#400
		rst_n 	= 0;
		f_state 	= 1;
		limit 	= 10;
		#20
		rst_n 	= 1;
		f_state 	= 1;
		limit 	= 20;
		#400
		rst_n 	= 0;
		f_state 	= 1;
		limit 	= 20;
		#20
		rst_n 	= 1;
		f_state 	= 1;
		limit 	= 16'd1000;
	end
	
	always #5 clk = ~clk;
      
endmodule

