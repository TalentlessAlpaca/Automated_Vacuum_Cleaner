`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:00:00 11/10/2015
// Design Name:   clk_generator
// Module Name:   C:/WINDOWS/system32/Timer/gen_clk_tst.v
// Project Name:  Timer
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

module gen_clk_tst;

	// Inputs
	reg clk;
	reg rst;
	reg en;
	reg [31:0] limit;
	wire [31:0] count;

	// Outputs
	wire clk_0;

	// Instantiate the Unit Under Test (UUT)
	clk_generator uut (
		.clk(clk), 
		.en(en), 
		.limit(limit), 
		.count(count), 
		.clk_0(clk_0)
	);
	
	clk_counter counter(
		.clk(clk), 
		.en(en), 
		.rst(rst), 
		.count(count)
	);
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		en = 0;
		limit = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		// Add stimulus here
		limit = 32'h000000FF;
		#100;
		en = 1;
	end
   always #5 clk = ~clk;
endmodule