`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:13:59 12/01/2015
// Design Name:   spi_master
// Module Name:   /home/jorge/Documentos/SPI_SD/spi_master_testbench.v
// Project Name:  SPI_SD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: spi_master
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module spi_master_testbench;

	// Inputs
	reg clk;
	reg rst;
	reg sssd_in;
	reg start;
	reg miso;
	reg [7:0] data_in;

	// Outputs
	wire mosi;
	wire sck;
	wire ss;
	wire sssd_out;
	wire [7:0] data_out;
	wire busy;
	wire new_data;
	
	//parameters
	parameter PERIOD          = 10;
   parameter real DUTY_CYCLE = 0.5;
   parameter OFFSET          = 0;

	// Instantiate the Unit Under Test (UUT)
	spi_master uut (
		.clk(clk), 
		.rst(rst), 
		.sssd_in(sssd_in),
		.start(start), 
		.miso(miso), 
		.data_in(data_in), 
		.mosi(mosi), 
		.sck(sck), 
		.ss(ss), 
		.ss(sssd_out),
		.data_out(data_out), 
		.busy(busy), 
		.new_data(new_data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		sssd_in = 1;
		start = 0;
		miso = 0;
		data_in = 0;
			
	#OFFSET
     forever
			begin
				clk = 1'b1;
				#(PERIOD-(PERIOD*DUTY_CYCLE)) clk = 1'b0;
				#(PERIOD*DUTY_CYCLE);
			end	
	end
	
	initial begin
	#OFFSET
		forever
			begin
				miso = 1'b1;
				#(3*PERIOD) miso = 1'b0;
				#(3*PERIOD);
			end
	end
	
	initial begin
	
		// Wait 10 ns for global reset to finish
		#10;
			rst=0;
			start=1;
			sssd_in=0;
			data_in=01011100;
		#10
			start=0;
		@(*)begin
			if (new_data)begin
				#20
					rst=1;
				#10
					rst=0;
			end
		end
	end
      
endmodule


