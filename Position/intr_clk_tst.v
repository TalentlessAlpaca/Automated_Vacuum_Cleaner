`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:20:46 11/10/2015
// Design Name:   clk_interruptor
// Module Name:   C:/WINDOWS/system32/Timer/intr_clk_tst.v
// Project Name:  Timer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clk_interruptor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module intr_clk_tst;

	// Inputs
	reg clk;
	reg en;
	reg en_cnt;
	reg [31:0] limit;
	wire [31:0] count;
	reg rst;
	
	// Outputs
	wire int_0;

	// Instantiate the Unit Under Test (UUT)
	clk_interruptor uut (
		.clk(clk), 
		.en(en), 
		.limit(limit), 
		.count(count), 
		.int_0(int_0)
	);


	clk_counter counter(
		.clk(clk), 
		.en(en_cnt), 
		.rst(rst), 
		.count(count)
	);
	
	initial begin
		// Initialize Inputs
		clk = 0;
		en = 0;
		en_cnt = 0;
		limit = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		
		// Add stimulus here
		limit = 32'h000000FF;
		#13;
		en_cnt = 1;
		#100;
		en = 1;
		while(int_0 == 0) #5
		#100;
		en = 0;
	end
	
   always #5 clk = ~clk;
	
	
endmodule

