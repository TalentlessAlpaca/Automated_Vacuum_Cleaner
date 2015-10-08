`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//    
//    Simulation Model
//    
//    This is the test bench used to simulate Top_Module
//    
//    
////////////////////////////////////////////////////////////////////////////////

module top_sim;

	// Inputs
	reg clk;
	reg rst;

	// Outputs
	wire SDA;
	wire SCL;

	// Instantiate the Unit Under Test (UUT)
	Top_Module uut (
		.clk(clk), 
		.rst(rst), 
		.SDA(SDA), 
		.SCL(SCL)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		#10 rst = 1;
	end
	
	always #10 clk = !clk;
      
endmodule
