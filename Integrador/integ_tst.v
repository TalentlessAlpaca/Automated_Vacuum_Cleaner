`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:59:27 10/18/2015
// Design Name:   Integrator
// Module Name:   /home/miguel/Documents/Digital/Multiplicador/integ_tst.v
// Project Name:  Multiplicador
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Integrator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module integ_tst;

	// Inputs
	reg [15:0] acx;
	reg [15:0] acy;
	reg [15:0] acz;
	reg [15:0] dt;
	reg rst;
	reg clk;
	reg enable;

	// Outputs
	wire [15:0] vx;
	wire [15:0] vy;
	wire [15:0] vz;
	wire [15:0] px;
	wire [15:0] py;
	wire [15:0] pz;
	wire bussy;

	// Instantiate the Unit Under Test (UUT)
	Integrator uut (
		.acx(acx), 
		.acy(acy), 
		.acz(acz), 
		.dt(dt), 
		.rst(rst), 
		.clk(clk), 
		.enable(enable), 
		.vx(vx), 
		.vy(vy), 
		.vz(vz), 
		.px(px), 
		.py(py), 
		.pz(pz), 
		.bussy(bussy)
	);

	initial begin
		// Initialize Inputs
		acx = 16'hAA;
		acy = 16'h7A;
		acz = 16'h3A;
		dt = 16'h0A;
		rst = 1;
		clk = 0;
		enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
        enable = 1;
		  rst = 0;
		// Add stimulus here

	end
   always #5 clk <= !clk;
endmodule

