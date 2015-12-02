`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:26:33 12/01/2015
// Design Name:   crc_16
// Module Name:   /home/jorge/Documentos/SPI_SD/crc_16_testbench.v
// Project Name:  SPI_SD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: crc_16
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module crc_16_testbench;

	// Inputs
	reg start;
	reg clk;
	reg rst;
	reg [31:0] data_in;

	// Outputs
	wire [16:0] data_out;
	wire done;
	
	//parameters
	parameter PERIOD          = 10;
   parameter real DUTY_CYCLE = 0.5;
   parameter OFFSET          = 0;

	// Instantiate the Unit Under Test (UUT)
	crc_16 uut (
		.start(start), 
		.clk(clk), 
		.rst(rst), 
		.data_in(data_in), 
		.data_out(data_out), 
		.done(done)
	);

	initial begin
		// Initialize Inputs
		start = 0;
		clk = 0;
		rst = 1;
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
		// Wait 10 ns for global reset to finish
		#10;
        rst=0;
		  start=1;
		  data_in=32'h00A2E015;
		#10; 
			start=0;
		@(*)begin
			if (done) begin
				#10
					rst=1;
				#10
					rst=0;
			end
		end
	end
      
endmodule

