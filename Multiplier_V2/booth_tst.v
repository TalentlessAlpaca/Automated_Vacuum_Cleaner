`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:37:10 11/02/2015
// Design Name:   booth_mult
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/Multiplier_V2/booth_tst.v
// Project Name:  Multiplier_V2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: booth_mult
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module booth_tst;

	// Inputs
	reg clk;
	reg rst;
	reg en;
	reg [15:0] A;
	reg [15:0] B;

	// Outputs
	wire busy;
	wire [31:0] R;

	// Instantiate the Unit Under Test (UUT)
	booth_mult uut (
		.clk(clk), 
		.rst(rst), 
		.en(en), 
		.A(A), 
		.B(B), 
		.busy(busy), 
		.R(R)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		en = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
			rst = 0;
			A = 16'd4;
			B = 16'd4;
		// Add stimulus here
		#15 en = 1;
		while(!busy)begin #1; end
		#10 en = 0;
		while(busy)begin #1; end
		#20 en = 1;
			A = -16'd4;
			B = -16'd4;
		while(!busy)begin #1; end
		#10 en = 0;
		while(busy)begin #1; end
		#20 en = 1;
			A = -16'd4;
			B = 16'd4;
		while(!busy)begin #1; end
		#10 en = 0;
		while(busy)begin #1; end
		#20 en = 1;
			A = 16'd4;
			B = -16'd4;
		while(!busy)begin #1; end
		#10 en = 0;
	end
      always #5 clk = !clk;
endmodule

