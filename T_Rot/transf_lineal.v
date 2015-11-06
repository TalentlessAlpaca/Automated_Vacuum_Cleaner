`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:05:51 11/04/2015
// Design Name:   TopModuleTransfLineal
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/Transflineal/transf_lineal.v
// Project Name:  Transflineal
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TopModuleTransfLineal
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module transf_lineal;

	// Inputs
	reg clk;
	reg rst;
	reg enable;
	reg [15:0] AcX;
	reg [15:0] AcY;
	reg [15:0] AcZ;
	reg Theta;

	// Outputs
	wire [31:0] XAc;
	wire [31:0] YAc;
	wire [31:0] ZAc;
	wire  Busy;

	// Instantiate the Unit Under Test (UUT)
	TopModuleTransfLineal uut (
		.clk(clk), 
		.rst(rst), 
		.enable(enable), 
		.AcX(AcX), 
		.AcY(AcY), 
		.AcZ(AcZ), 
		.Theta(Theta), 
		.XAc(XAc), 
		.YAc(YAc), 
		.ZAc(ZAc), 
		.Busy(Busy)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		enable = 0;
		AcX = 1000;
		AcY = 527;
		AcZ = 0;
		Theta = 45;

		// Wait 100 ns for global reset to finish
		#100;
      #11 rst <= 0;
		#12 enable <= 1;
		// Add stimulus here
	end
	
	always #5 clk <= !clk;
	
endmodule

