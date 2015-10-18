`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:40:45 10/10/2015
// Design Name:   Complement
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/Multiplier/comp_tst.v
// Project Name:  Multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Complement
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module comp_tst;

	// Inputs
	reg [15:0] in;

	// Outputs
	wire [15:0] out;

	// Instantiate the Unit Under Test (UUT)
	Complement uut (
		.in(in), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		#10 in = 16'h1;
		#10 in = 16'hFFFF;
		#10 in = 16'h7FFF;
		#10 in = 16'h8001;
		#10 in = 16'h5556;
		#10 in = 16'hAAAA;
		#10 in = 16'h0777;
		#10 in = 16'hF889;
	end
      
endmodule

