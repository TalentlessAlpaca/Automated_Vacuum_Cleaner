`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:51:11 10/10/2015
// Design Name:   Top_Multiplier
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/Multiplier/multiplier_tst.v
// Project Name:  Multiplier
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top_Multiplier
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module multiplier_tst;

	// Inputs
	reg clk;
	reg rst_n;
	reg enable;
	reg [15:0] A;
	reg [15:0] B;

	// Outputs
	wire busy;
	wire [31:0] R;

	// Instantiate the Unit Under Test (UUT)
	Top_Multiplier uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.enable(enable), 
		.A(A), 
		.B(B), 
		.busy(busy), 
		.R(R)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;
		enable = 0;
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#100;
				rst_n = 1;
		// Add stimulus here
		#15; 	A = 16'hFFF6;
				B = 16'h0008;
		#20	enable = 1;
		#40	enable = 0;
		
		while(busy) begin
			#20;
		end
		
		#15; 	A = 16'h6;
				B = 16'hFF82;
		#20	enable = 1;
		#40	enable = 0;
		
		while(busy) begin
			#20;
		end
		
		#15; 	A = 16'hFC18;
				B = 16'h01D1;
		#20	enable = 1;
		#40	enable = 0;
		
		while(busy) begin
			#20;
		end
		
		#20;
	end
	
	always #10 clk = ~clk;
      
endmodule

