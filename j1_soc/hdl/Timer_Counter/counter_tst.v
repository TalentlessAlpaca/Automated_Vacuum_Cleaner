`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:53:34 11/10/2015
// Design Name:   clk_counter
// Module Name:   C:/WINDOWS/system32/Timer/counter_tst.v
// Project Name:  Timer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clk_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module counter_tst;

	// Inputs
	reg clk;
	reg en;
	reg rst;

	// Outputs
	wire [31:0] counter;

	// Instantiate the Unit Under Test (UUT)
	clk_counter uut (
		.clk(clk), 
		.en(en), 
		.rst(rst), 
		.count(counter)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		en = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		// Add stimulus here
		#15 en = 1;
	end
   always #5 clk = ~clk;
endmodule

