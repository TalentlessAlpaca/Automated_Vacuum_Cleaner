`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:34:40 11/07/2015
// Design Name:   Encoder
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/Transflineal/enconder_tst.v
// Project Name:  Transflineal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Encoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module enconder_tst;

	// Inputs
	reg [15:0] Theta;
	reg [15:0] Ref;
	reg [31:0] DataIn;

	// Outputs
	wire [7:0] Address;
	wire [31:0] DataOut;

	// Instantiate the Unit Under Test (UUT)
	Encoder uut (
		.Theta(Theta), 
		.Ref(Ref), 
		.DataIn(DataIn), 
		.Address(Address), 
		.DataOut(DataOut)
	);

	initial begin
		// Initialize Inputs
		Theta = 45;
		Ref = 45;
		DataIn = 1234;

		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		
		#10;
		Theta = 47;
		#10;
		Theta = 48;
		#10;
		Theta = 43;
		#10;
		Theta = 40;
		
	end
      
endmodule

