`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:22:06 10/19/2015
// Design Name:   i2c_controller_tst2
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/I2C_2/i2c_write3byte_tf.v
// Project Name:  I2C_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: i2c_controller_tst2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module i2c_write3byte_tf;

	// Inputs
	reg clk;
	reg rst_n;

	// Bidirs
	wire sda;
	wire scl;
	
	reg sda_buffer; // stores the input to be forced
	reg sda_io;     // 0 is input, 1 is output
	reg scl_buffer; // stores the input to be forced
	reg scl_io;     // 0 is input, 1 is output
	
	reg [3:0]tiks;
	initial tiks = 0;
	// Instantiate the Unit Under Test (UUT)
	i2c_controller_tst2 uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.sda(sda), 
		.scl(scl)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;
		sda_io = 1;
		sda_buffer <= 0;
		scl_io = 1;
		scl_buffer <= 0;
		// Wait 100 ns for global reset to finish
		#100;
		rst_n = 1;
		// Add stimulus here

	end
	
	always #5 clk = !clk;
	assign sda = (sda_io) ? 1'bz : sda_buffer;
	assign scl = (scl_io) ? 1'bz : scl_buffer;
	
	always@(negedge scl)begin
		if(tiks == 8) begin
			tiks <= 0;
			sda_io <= 0;
			# 22050
			sda_io <= 1;
		end
		else tiks <= tiks+1;
	end
      
endmodule

