`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//	CRC COMPLETO PARA 7 BITS :D (Polinomio), solo requiere modificar localparam
//
//////////////////////////////////////////////////////////////////////////////////
module crc_7(start, clk, rst, data_in, data_out, done); 
	
	//inputs y outputs
	
	input start;
	input clk;
	input rst;
	input [datawidth-1:0] data_in;
	output [crcorder:0] data_out;
	output done;

	//parametros 

	localparam datawidth = 32, crcorder = 7; //tamaño del dato a operar, orden del polinomio crc

	localparam polinomio = 8'b10001001 ; //polinomio para crc
	
	//registros

	reg rdone; 				//registro done
	reg [datawidth-1:0] r_data;		//registro data
	reg [crcorder:0] proceso;		//proceso o resultado temporal de xor
	initial rdone = 1'b0;			//inicializa done en 0
	
	//estados

	localparam INIT = 3'd0, GET = 3'd1, COMP = 3'd2, XOR = 3'd3, CORRER = 3'd4, SEND = 3'd5; 
	reg[2:0] state;
	initial state = INIT; // se inicializa en el estado init
	
	reg[6:0] cont; // contador de corrimientos
	
	assign data_out = proceso; //se asigna proceso a la salida de crc (dout)
	assign done = rdone; // se asigna done a la salida
	
		
	always @(posedge clk or negedge clk) begin

		//reset

		if(rst)begin
			rdone <= 0; 
			cont <= 0;
			proceso <= 0;
			state = INIT;
		end	
			
		else begin	

		//Maquina de Estados	

			case(state)
		
				INIT : begin   				//estado init
					cont <= 6'd0;			//contador en 0
					rdone <= 1'b0; 			//done en 0
					if (start) begin
						r_data <= data_in;	//se coloca en rdata el dato a operar
						state = GET;		//cambio de estado
					end	
				end
			
				GET : begin								//estado get
					proceso <= r_data[(datawidth-1):(datawidth-1)-(crcorder)];	//a proceso entran los 
													//primeros crcorder bits 
					state = COMP;							//cambio de estado
				end
			
				COMP : begin				//estado comp 
				
					cont <= cont + 1'b1;		//aumenta el contador 
					if(proceso[crcorder])		//verifia si el primer bit de proceso es 1
						state = XOR;		//si es 1 cambia a estado XOR
					else
						state = CORRER;		//si es 0 cambia a estado correr
				end
			
				XOR : begin					//estado xor
					proceso <= proceso ^ polinomio;		//xor entre proceso y polinomio de crc
					state = CORRER;				//cambio de estado 
				end
			
				CORRER : begin				//estado correr
					r_data <= {proceso[crcorder:0], r_data[(datawidth-1)-crcorder-1:0], 1'b0}; 
									//se coloca proceso concatenado con el resto de rdata "anterior"
					if (cont == datawidth)		
						state = SEND;		//si ya se hicieron datawidh corrimientos cambia a send
					else
						state = GET;		//si no, vuelve a get 
				end
			
				SEND : begin				//estado send
					rdone <= 1'b1;			//done activo
					state = INIT;			//vuelve a estado inicial
				end
			
			endcase
		end
	end	

	
endmodule 
