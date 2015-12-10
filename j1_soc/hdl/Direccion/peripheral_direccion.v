
// Modulo sencillo que permite determinar la dirección en la que se mueven los motores
// En 0 los motores van hacia adelante, en 1 van hacia atras. Están determinados de manera independiente 
// para permitir el giro

module peripheral_uart (
	// Propias del periferico
	input 			clk,
	input 			rst,
	input [15:0]	d_in,	// Dato de entrada
	input 			cs,		// 
	input [3:0]		addr,	// 4 LSB from j1_io_addr
	input 			rd,		// Leer 
	input 			wr,		// Escribir
	
	output reg [15:0] d_out, // Dato de salida
	
	// Otras entradas y salidas
	output [1:0] adelante ,
	output [1:0] atras 
	);
	
//------------------------------------ regs and wires-------------------------------

	reg [1:0] s; 		// Selector
	reg [1:0] reversa;

//------------------------------------ regs and wires-------------------------------

	always @(*) begin // Selector
		case(addr)
			4'h0:		s = (cs && wr) ? 2'b01 : 2'b00 ; // Dirección motor 1;
			4'h2:		s = (cs && wr) ? 2'b10 : 2'b00 ; // Dirección motor 2;
			default: 	s = 2'b00 ;
		endcase
	end

	always @(negedge clk) begin // Multiplexa entradas al periferico
		case (s)
			2'b01: 	reversa[0] = d_in[0] ; 
			2'b10: 	reversa[1] = d_in[0] ; 
			default: begin
				reversa[0] = 0 ;
				reversa[1] = 0 ;
			end
		endcase
	end
	
	direccion direccion1 ( .reversa(reversa[0]) , .adelante(adelante[0]) , .atras(atras[0]) ) ;
	direccion direccion2 ( .reversa(reversa[1]) , .adelante(adelante[1]) , .atras(atras[1]) ) ;

endmodule
