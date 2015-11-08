`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:51:28 11/07/2015
// Design Name:   TopModuleTransfLineal
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/Transflineal/Rot_tst.v
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

module Rot_tst;

	// Inputs
	reg clk;
	reg rst;
	reg enable;
	reg [15:0] AcX;
	reg [15:0] AcY;
	reg [15:0] AcZ;
	reg [15:0] sdseno;
	reg [15:0] sdcoseno;

	// Outputs
	wire [31:0] XAc;
	wire [31:0] YAc;
	wire [31:0] ZAc;
	wire Busy;

	// Instantiate the Unit Under Test (UUT)
	TopModuleTransfLineal uut (
		.clk(clk), 
		.rst(rst), 
		.enable(enable), 
		.AcX(AcX), 
		.AcY(AcY), 
		.AcZ(AcZ), 
		.sdseno(sdseno), 
		.sdcoseno(sdcoseno), 
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
		AcY = 1000;
		AcZ = 0;
		sdseno = 144;
		sdcoseno = 8191;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		#10 enable = 1;
		// Add stimulus here

	end
	
	always #5 clk = !clk;
	
endmodule

