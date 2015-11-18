`timescale 1ns / 1ps

module CRC(
	input 				clk,	//reloj
	input 				reset,	//reset
	input [15:0]		crc_dat_i,	//dato de entrada + 6 ceros
	input 				init_crc,	//iniciar proceso	
	output [6:0]		crc_dat_o, 	//salida crc calculado
	output 				acknowl 		// done/calculo terminado 
	
);

	reg [21:0] proceso;	//registro para calculo
	reg [6:0] divisor, xorreg;	// clave para calculo crc
	integer a, b, cont;
	initial divisor = 7'b1000011;	//se asigna la clave/divisor
	reg done, regack;
	
	assign acknowl = regack;
	assign crc_dat_o = proceso[6:0];
	
	always @(posedge clk) begin
		
		if (reset == 1'b1) begin
			regack <= 0;
			done <= 0;			// se dejan en 0 los registros 
			proceso <= 4'h00;
			cont = 0;
			a = 0;
			b = 0;
		end 								// fin reset
		else begin
			if (init_crc & ~regack) begin			// verifica inicio y ack

				if (cont == 0) begin		// se verifica si contador está en cero
					a <= 21;
					b <= 14;
					done <= 0;
					proceso[21:7] <= crc_dat_i;
					proceso[6:0] <= 6'b000000;
				end

				if (proceso[a]==1) begin
					xorreg = proceso[a:b]^divisor;
					if (a==15) begin
						proceso = {xorreg, proceso[b-1:0]};
					end else begin
						proceso = {proceso[15:a+1], xorreg, proceso[b-1:0]};
					end
				end
				if (1==1) begin
					a = a-1;
					b = b-1;
					cont = cont + 1;
					
					if (b==6) begin
						done <= 1;
					end
					
				end

				if (done) begin
					regack <= 1'b0;
					cont = 0;
				end

			end 
						
		end

	end
endmodule