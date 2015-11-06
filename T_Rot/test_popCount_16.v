`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:28:07 10/10/2015
// Design Name:   popCount_16b
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/Multiplier/test_popCount_16.v
// Project Name:  Multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: popCount_16b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_popCount_16;

	// Inputs
	reg en;
	reg [15:0] AA;
	
	// Outputs
	wire [4:0] O;

	// Instantiate the Unit Under Test (UUT)
	popCount_16b uut (
		.en(en), 
		.AA(AA), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		en = 0;
		AA = 0;

		// Wait 100 ns for global reset to finish
		#100;
				AA = 16'hAAAA;
		// Add stimulus here
		#20;
				en = 1;
		#20;
				AA = 16'h8001;
		#20;
				AA = 16'h8461;
	end
      
endmodule

