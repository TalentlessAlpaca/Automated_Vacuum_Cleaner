`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:44:45 11/19/2015
// Design Name:   MPU_controller
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/I2C_Module/controller_tst.v
// Project Name:  I2C_Module
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MPU_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module controller_tst;

	// Inputs
	reg clk;
	reg clk_frame;
	reg rst;
	reg en;

	// Outputs
	wire busy;
	wire [15:0] AcX;
	wire [15:0] AcY;
	wire [15:0] AcZ;
	wire [15:0] GyX;
	wire [15:0] GyY;
	wire [15:0] GyZ;
	wire error_i2c;
	wire SCL;

	// Bidirs
	wire SDA;
	
	reg SDA_out, SDA_oen;
	wire SDA_in;
	assign SDA = SDA_oen? 1'bz : SDA_out;
	assign SDA_in = SDA;

	// Instantiate the Unit Under Test (UUT)
	MPU_controller uut (
		.clk(clk), 
		.clk_frame(clk_frame), 
		.rst(rst), 
		.en(en), 
		.busy(busy), 
		.AcX(AcX), 
		.AcY(AcY), 
		.AcZ(AcZ), 
		.GyX(GyX), 
		.GyY(GyY), 
		.GyZ(GyZ), 
		.error_i2c(error_i2c), 
		.SCL(SCL), 
		.SDA(SDA)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clk_frame = 0;
		rst = 1;
		en = 0;
		SDA_oen = 1;
		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		// Add stimulus here
		#150 en = 1;
		#150 en = 0;
		#3600;
		SDA_oen = 0;
		SDA_out = 0;
		#335;
		SDA_oen = 1;
		#3665 SDA_oen 	= 0;
		#335 SDA_oen 	= 1;
		#3630 SDA_oen 	= 0;
		#335 SDA_oen 	= 1;
		
		#4505 SDA_oen 	= 0;
		#335 SDA_oen 	= 1;
		#3628 SDA_oen 	= 0;
		#385 SDA_oen 	= 1;
		#3570 SDA_oen 	= 0;
		#385 SDA_oen 	= 1;
		
		#4460 SDA_oen 	= 0;
		#385 SDA_oen 	= 1;
		#3580 SDA_oen 	= 0;
		#385 SDA_oen 	= 1;
		#3570 SDA_oen 	= 0;
		#385 SDA_oen 	= 1;
		
		#4460 SDA_oen 	= 0;
		#385 SDA_oen 	= 1;
		#3570 SDA_oen 	= 0;
		#385 SDA_oen 	= 1;
		#3570 SDA_oen 	= 0;
		#385 SDA_oen 	= 1;
		
		#4460 SDA_oen 	= 0;
		#385 SDA_oen 	= 1;
		#3570 SDA_oen 	= 0;
		#385 SDA_oen 	= 1;
		#3570 SDA_oen 	= 0;
		#385 SDA_oen 	= 1;
		
		#4000 en = 1;
		#150 en  = 0;
		
		#3810 SDA_oen 	= 0;
		#385 SDA_oen 	= 1;
		#3570 SDA_oen 	= 0;
		#385 SDA_oen 	= 1;
		
		#4040 SDA_oen = 0;
		#440 SDA_out = 1; // b7
		#440 SDA_out = 1; // b6
		#440 SDA_out = 0; // b5
		#440 SDA_out = 0; // b4
		#440 SDA_out = 1; // b3
		#440 SDA_out = 0; // b2
		#440 SDA_out = 1; // b1
		#440 SDA_out = 0; // b0
		#440 SDA_oen = 1; // ACK
		#385 SDA_oen = 0;
		
			  SDA_out = 1; // b7
		#440 SDA_out = 1; // b6
		#440 SDA_out = 0; // b5
		#440 SDA_out = 0; // b4
		#440 SDA_out = 1; // b3
		#440 SDA_out = 0; // b2
		#440 SDA_out = 1; // b1
		#440 SDA_out = 0; // b0
		#495 SDA_oen = 1; // ACK
		#413 SDA_oen = 0;
		
			  SDA_out = 0; // b7
		#440 SDA_out = 1; // b6
		#440 SDA_out = 0; // b5
		#440 SDA_out = 1; // b4
		#440 SDA_out = 0; // b3
		#440 SDA_out = 1; // b2
		#440 SDA_out = 0; // b1
		#440 SDA_out = 1; // b0
		#495 SDA_oen = 1; // ACK
		#413 SDA_oen = 0;
		
			  SDA_out = 1; // b7
		#440 SDA_out = 1; // b6
		#440 SDA_out = 1; // b5
		#440 SDA_out = 1; // b4
		#440 SDA_out = 0; // b3
		#440 SDA_out = 0; // b2
		#440 SDA_out = 0; // b1
		#440 SDA_out = 0; // b0
		#495 SDA_oen = 1; // ACK
		#370 SDA_oen = 0;
		
			  SDA_out = 1;
		#3535 SDA_oen = 1;
		#425	SDA_oen = 0;
		#3535 SDA_oen = 1;
		#425	SDA_oen = 0;
		#3535 SDA_oen = 1;
		#425	SDA_oen = 0;
		#3535 SDA_oen = 1;
		#425	SDA_oen = 0;
		#3535 SDA_oen = 1;
		#425	SDA_oen = 0;
		#3535 SDA_oen = 1;
		#425	SDA_oen = 0;
		#3535 SDA_oen = 1;
		#425	SDA_oen = 0;
		#3535 SDA_oen = 1;
		#425	SDA_oen = 0;
		#3535 SDA_oen = 1;
		#425	SDA_oen = 0;
		#3535 SDA_oen = 1;
		//#425	SDA_oen = 0;
	end
	
	always #5 clk = ~clk;
	always #55 clk_frame = ~clk_frame;
endmodule

