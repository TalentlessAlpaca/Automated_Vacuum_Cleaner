`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:58:27 12/03/2015
// Design Name:   div_64
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/Div64b/Div_tst.v
// Project Name:  Div64b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: div_64
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Div_tst;

	// Inputs
	reg clk;
	reg rst;
	reg init_in;
	reg [63:0] A;
	reg [63:0] B;

	// Outputs
	wire [63:0] Result;
	wire busy;

	// Instantiate the Unit Under Test (UUT)
	div_64 uut (
		.clk(clk), 
		.rst(rst), 
		.init_in(init_in), 
		.A(A), 
		.B(B), 
		.Result(Result), 
		.busy(busy)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		init_in = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		// Add stimulus here
		#100;
		A = 64'd8835 << 32;
		B = 64'd100000000;
		#20 init_in = 1;
		#40 init_in = 0;
		while(busy)#10;
		#50;
		A = 64'd289505280 << 32;
		B = 64'd100000000;
		#20 init_in = 1;
		#40 init_in = 0;
	end
	
	always #5 clk = !clk;
	
endmodule

