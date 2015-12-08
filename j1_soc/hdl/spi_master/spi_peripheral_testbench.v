`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:17:23 12/01/2015
// Design Name:   peripheral_spi_master
// Module Name:   /home/jorge/Documentos/SPI_SD/spi_peripheral_testbench.v
// Project Name:  SPI_SD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: peripheral_spi_master
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module spi_master_peripheral_testbench;

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
	
	//c fisicas
	reg rmiso;
	wire mosi, ss, sck;
		
	//parameters
	parameter PERIOD          = 10;
   parameter real DUTY_CYCLE = 0.5;
   parameter OFFSET          = 0;

	// Instantiate the Unit Under Test (UUT)
	peripheral_spi_master uut (
		.clk(clk), 
		.rst(rst), 
		.d_in(d_in), 
		.cs(cs), 
		.addr(addr), 
		.rd(rd), 
		.wr(wr), 
		.d_out(d_out),
		.miso(rmiso),
		.mosi(mosi),
		.ss(ss),
		.sck(sck)
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
		rmiso = 0;
		
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
		//se simula miso como un reloj de mayor periodo
		#OFFSET
		forever
			begin
				rmiso = 1'b1;
				#(3*PERIOD) rmiso = 1'b0;
				#(3*PERIOD);
			end
	end

	
	initial begin
		// Wait 10 ns for global reset to finish
		#10;
			wr = 1;
			addr= 4'h4;
			d_in[0]= 1'b1;
	  	#10;		
			wr = 1;
			addr= 4'h4;
			d_in[0]= 1'b0;
		#10
			//se coloca el dato a transmitir en la direccion deescritura MOSI
			wr = 1; 
			addr = 4'h0;
			d_in[7:0] = 8'b10111001;
		#10
			//se coloca start en 1 en la direccion de start
			wr=1;
			addr = 4'h2;
			d_in[0]= 1'b1;
		#10
			//se coloca start en 1 en la direccion de start
			wr=1;
			addr = 4'h2;
			d_in[0]= 1'b0;
		#10
			//se lee la direccion new data 
			wr=0;
			rd=1;
			addr = 4'hA;
		#10
		@(*)begin
			if (d_out[0]) begin //si se tiene un nuevo dato se lee la direccion de MISO y se resetea
				addr = 4'h6;
				#20
					wr = 1;
					addr= 4'h4;
					d_in[0]= 1'b1;
					cs=0;
				#10
					wr = 1;
					addr= 4'h4;
					d_in[0]= 1'b0;
			end
		end
	end
     
		
endmodule

