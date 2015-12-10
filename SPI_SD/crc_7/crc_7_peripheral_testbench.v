`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:38:58 12/01/2015
// Design Name:   peripheral_crc_7
// Module Name:   /home/jorge/Documentos/SPI_SD/crc_7_peripheral_testbench.v
// Project Name:  SPI_SD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: peripheral_crc_7
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module crc_7_peripheral_testbench;

	// Inputs
	reg clk;
	reg rst;
	reg [15:0] d_in;
	reg cs;
	reg [3:0] addr;
	reg rd;
	reg wr;

	// Outputs
	wire [15:0] d_out;

	//parameters
	parameter PERIOD          = 10;
   parameter real DUTY_CYCLE = 0.5;
   parameter OFFSET          = 0;


	// Instantiate the Unit Under Test (UUT)
	peripheral_crc_7 uut (
		.clk(clk), 
		.rst(rst), 
		.d_in(d_in), 
		.cs(cs), 
		.addr(addr), 
		.rd(rd), 
		.wr(wr), 
		.d_out(d_out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 0;
		d_in = 0;
		cs = 1;
		addr = 0;
		rd = 0;
		wr = 0;
		
		//clk
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
			rst = 1;
	 	#10;		
			rst = 0;
		#10 
			// se coloca en la direccion data in la primera parte del dato a operar
			wr = 1;
			addr = 4'h0;
			d_in = 16'h3A5E;
		#10
			//se coloca start en 1 en la direccion de start
			wr = 1;
			addr = 4'h2;
			d_in [0] = 1;
		#10
			//se coloca start en 0 en la direccion de start
			wr = 1;
			addr = 4'h2;
			d_in [0] = 0;
		#10
			// se lee la direccion done 
			wr = 0;
			rd = 1;
			addr = 4'h4;
		#10
		@(*)begin
			if (d_out[0]) begin //si se tiene un nuevo dato se lee la direccion d_out y se resetea
				addr = 4'h6;
				#20
					rst=1;
					cs=0;
				#10
					rst=0;
			end
		end
	end
      
endmodule

