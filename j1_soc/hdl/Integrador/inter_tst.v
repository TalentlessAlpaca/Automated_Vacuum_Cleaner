`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:41:03 11/08/2015
// Design Name:   Integradorv2
// Module Name:   /home/rafa/Descargas/Digital/IntegradorV2/inter_tst.v
// Project Name:  IntegradorV2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Integradorv2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module inter_tst;

	// Inputs
	reg [15:0] a;
	reg [15:0] dt;
	reg enable;
	reg rst;
	reg clk;

	// Outputs
	wire [15:0] v;
	wire busy;

	// Instantiate the Unit Under Test (UUT)
	Integradorv2 uut (
		.a(a), 
		.dt(dt), 
		.enable(enable), 
		.rst(rst), 
		.clk(clk), 
		.v(v), 
		.busy(busy)
	);

	initial begin
		// Initialize Inputs
		a = 16'hAA;
		dt = 5'd10;
		enable = 0;
		rst = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
     	  
		// Add stimulus here
		
		   enable = 1;
			rst = 0;
	end
	
	always #5 clk <= !clk;
      
endmodule

