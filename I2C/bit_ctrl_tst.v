`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:57:48 11/11/2015
// Design Name:   bit_controller
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/I2C_Module/bit_ctrl_tst.v
// Project Name:  I2C_Module
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: bit_controller
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module bit_ctrl_tst;

	// Inputs
	reg clk;
	reg clk_frame;
	reg rst;
	reg en;
	reg start_cond;
	reg stop_cond;
	reg w_bit;
	reg rw;

	// Outputs
	wire r_bit;
	wire [1:0] frame;

	// Bidirs
	wire SDA;
	wire SCL;
	
	reg SDA_in, SDA_out, SDA_oen;
	reg SCL_in, SCL_out, SCL_oen;
	assign SCL = SCL_oen? 1'bz : SCL_out;
	assign SDA = SDA_oen? 1'bz : SDA_out;

	// Instantiate the Unit Under Test (UUT)
	bit_controller uut (
		.clk(clk), 
		.clk_frame(clk_frame), 
		.rst(rst), 
		.en(en), 
		.start_cond(start_cond), 
		.stop_cond(stop_cond), 
		.w_bit(w_bit), 
		.rw(rw), 
		.r_bit(r_bit), 
		.frame(frame), 
		.SDA(SDA), 
		.SCL(SCL)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		clk_frame = 0;
		rst = 1;
		en = 0;
		start_cond = 0;
		stop_cond = 0;
		w_bit = 0;
		rw = 0;
		SDA_oen = 1;
		SCL_oen = 1;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		// Add stimulus here
		while(frame != 0) begin // Wait to synch with frame
			en = 0;
			start_cond = 0;
			rw = 0;
			#1;
		end
		while(frame == 0) begin // Generate START Condition
			en = 1;
			start_cond = 1;
			rw = 0;
			#1;
		end
		while(frame != 3) begin // Keep Signal
			#1;
		end
		while(frame == 3) begin // Write Bit 1
			rw = 1;
			start_cond = 0;
			w_bit = 1;
			#1;
		end
		while(frame != 3) begin // Keep Signal
			#1;
		end
		while(frame == 3) begin // Write Bit 0
			rw = 1;
			start_cond = 0;
			w_bit = 0;
			#1;
		end
		while(frame != 3) begin // Keep Signal
			#1;
		end
		while(frame == 3) begin // Read Bit
			rw = 0;
			#1;
		end
		while(frame != 3) begin // Keep Signal
			SDA_oen = 0;
			SDA_out = 1;
			#1;
		end
		while(frame == 3) begin // Generate STOP Condition
			SDA_oen = 1;
			SDA_out = 1;
			stop_cond = 1;
			#1;
		end
		while(frame != 3) begin // Keep Signal
			#1;
		end
		// End Simulation
		en = 0;
		start_cond = 0;
		stop_cond = 0;
	end
	always #5 clk = ~clk;
	always #55 clk_frame = ~clk_frame;
      
endmodule

