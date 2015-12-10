`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:23:45 12/04/2015
// Design Name:   Integrador_theta
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/Position/theta_integ_tst.v
// Project Name:  Position
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Integrador_theta
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module theta_integ_tst;

	// Inputs
	reg [15:0] a;
	reg [15:0] dt;
	reg enable;
	reg rst;
	reg clk;

	// Outputs
	wire [31:0] v;
	wire busy;

	// Instantiate the Unit Under Test (UUT)
	Integrador_theta uut (
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
		a = 0;
		dt = 0;
		enable = 0;
		rst = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		// Add stimulus here
		#100;
		
		a = 16'h0001;
		dt = 16'd8835;
		#10;
		enable = 1;
		while(!busy) #10;
		enable = 0;
		while(busy) #10;
		
		a = 16'h0001;
		#10;
		enable = 1;
		while(!busy) #10;
		enable = 0;
		while(busy) #10;
		
		a = -16'h0001;
		#10;
		enable = 1;
		while(!busy) #10;
		enable = 0;
		
	end
	
	always #5 clk = !clk;
	
endmodule

