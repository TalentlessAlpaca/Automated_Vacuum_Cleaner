`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:19:05 10/17/2015
// Design Name:   I2C
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/I2C/i2c_tst_2read.v
// Project Name:  I2C
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: I2C
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module i2c_tst_2read;

	// Inputs
	reg clk;
	reg rst_n;
	reg en;
	reg rw;
	reg [6:0] addr;
	reg [7:0] reg_addr;
	reg [15:0] data;
	reg burst;

	// Outputs
	wire busy;
	wire err;
	wire [15:0] data_o;
	wire scl;
	wire [5:0] state_o;

	// Bidirs
	wire sda;
	
	reg sda_buffer; // stores the input to be forced
	reg sda_io;     // 0 is input, 1 is output

	// Instantiate the Unit Under Test (UUT)
	I2C uut (
		.clk(clk), 
		.rst_n(rst_n), 
		.en(en), 
		.rw(rw), 
		.addr(addr), 
		.reg_addr(reg_addr), 
		.data(data), 
		.burst(burst), 
		.busy(busy), 
		.err(err), 
		.data_o(data_o), 
		.sda(sda), 
		.scl(scl), 
		.state_o(state_o)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;
		en = 1;
		rw = 1;
		addr = 7'h55;
		reg_addr = 8'hCC;
		data = 16'h3366;
		burst = 1;
		sda_io = 1;
		sda_buffer <= 0;
		// Wait 100 ns for global reset to finish
		#100;
		// Add stimulus here
		en = 1;
		rst_n = 1;
		while(!busy) begin
			#1;
		end
		#50 en = 0;
		// Device Address+W ACK
		while(state_o != 4) begin
			#1;
		end
		sda_io <= 0;
		sda_buffer <= 0;
		while(state_o != 20) begin
			#1;
		end
		sda_io <= 1;
		// Register Address ACK
		while(state_o != 4) begin
			#1;
		end
		sda_io <= 0;
		sda_buffer <= 0;
		while(state_o != 21) begin
			#1;
		end
		sda_io <= 1;
		// Device Address+R ACK
		while(state_o != 4) begin
			#1;
		end
		sda_io <= 0;
		sda_buffer <= 0;
		while(state_o != 23) begin
			#1;
		end
		sda_io <= 0; // Slave keeps reading
		sda_buffer <= 0;
		// DATA TO WRITE: 8'h99
		// 1 0 0 1 1 0 0 1
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 1;
		while(state_o == 33) begin
			#1;
		end
		
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 0;
		while(state_o == 33) begin
			#1;
		end
		
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 0;
		while(state_o == 33) begin
			#1;
		end
		
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 1;
		while(state_o == 33) begin
			#1;
		end
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 1;
		while(state_o == 33) begin
			#1;
		end
		
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 0;
		while(state_o == 33) begin
			#1;
		end
		
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 0;
		while(state_o == 33) begin
			#1;
		end
		
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 1;
		while(state_o == 33) begin
			#1;
		end
		
		// Master Writes ACK
		while(state_o != 6) begin
			#1;
		end
		sda_io <= 1;
		
		while(state_o != 24) begin
			#1;
		end
		sda_io <= 0; // Slave keeps reading
		sda_buffer <= 0;
		// DATA TO WRITE: 8'h5A
		// 1 0 0 1 1 0 0 1
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 0;
		while(state_o == 33) begin
			#1;
		end
		
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 1;
		while(state_o == 33) begin
			#1;
		end
		
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 0;
		while(state_o == 33) begin
			#1;
		end
		
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 1;
		while(state_o == 33) begin
			#1;
		end
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 1;
		while(state_o == 33) begin
			#1;
		end
		
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 0;
		while(state_o == 33) begin
			#1;
		end
		
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 1;
		while(state_o == 33) begin
			#1;
		end
		
		while(state_o != 33) begin
			#1;
		end
		sda_buffer <= 0;
		while(state_o == 33) begin
			#1;
		end
		
		// Master Writes NACK
		while(state_o != 8) begin
			#1;
		end
		sda_io <= 1;

	end
	
	assign sda = (sda_io) ? 1'bz : sda_buffer;
	always #5 clk = ~clk;
      
endmodule

