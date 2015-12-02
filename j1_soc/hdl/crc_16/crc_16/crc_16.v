`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//	CRC COMPLETO PARA 16 BITS :D (Polinomio), solo requiere modificar localparam
//
module crc_16(start, clk, rst, data_in, data_out, done);

	input start;
	input clk;
	input rst;
	input [datawidth-1:0] data_in;
	output [crcorder:0] data_out;
	output done;

	localparam datawidth = 32, crcorder = 16;

	localparam polinomio = 17'b10001000000100001 ;
	
	reg rdone;
	reg [datawidth:0] r_data;
	reg [crcorder:0] proceso;
	initial rdone = 1'b0;
	
	localparam INIT = 3'd0, GET = 3'd1, COMP = 3'd2, XOR = 3'd3, CORRER = 3'd4, SEND = 3'd5; 
	reg[2:0] state;
	initial state = INIT;
	
	reg[6:0] cont;
	
	assign data_out = proceso;
	assign done = rdone;
	
	//Maquina de Estados
	
	always @(posedge clk or negedge clk) begin
		if(rst)begin
			rdone <= 0;
			cont <= 0;
			proceso <= 0;
			rdone <= 0;
		end
		else begin
			case(state)
			
				INIT : begin
					cont <= 6'd0;
					rdone <= 1'b0; 
					if (start) begin
						r_data <= data_in;
						state = GET;
					end	
				end
				
				GET : begin
					proceso <= r_data[(datawidth-1):(datawidth-1)-(crcorder)];
					state = COMP;
				end
				
				COMP : begin
					
					cont <= cont + 1'b1;
					if(proceso[crcorder])
						state = XOR;
					else
						state = CORRER;
				end
				
				XOR : begin
					proceso <= proceso ^ polinomio;
					state = CORRER;
				end
				
				CORRER : begin
					r_data <= {proceso[crcorder:0], r_data[(datawidth-1)-crcorder-1:0], 1'b0};
					if (cont == datawidth)
						state = SEND;
					else
						state = GET;
				end
				
				SEND : begin
					rdone <= 1'b1;
					state = INIT;
				end
				
			endcase
		end
	end
endmodule 