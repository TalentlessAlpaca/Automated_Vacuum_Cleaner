
// Periferico del modulo ultrasónico. El módulo transforma el tiempo que Signal permanece encendido en milímetros.
// Signal entra desde el modulo físico del ultrasonico, las demás señales pertenecen a la interaccion que tiene con el J1
// Solo hay lectura de datos. una vez se desactiva el estado de reset, el módulo se prepara para recibir la señal y hacer el conteo

module peripheral_ult(
	input 			clk,
	input 			rst,
	input [15:0]	d_in,	// Dato de entrada
	input 			cs,		// 
	input [3:0]		addr,	// 4 LSB from j1_io_addr
	input 			rd,		// Para leer 
	input 			wr,		// Comando para escribir
	input 			signal, // Del dispositivo físico
	
	output reg [15:0] d_out // Dato de salida
	);
	
//------------------------------------ regs and wires-------------------------------

	reg [1:0] 		s; 	// Selector

	wire 			rst_n = ~rst ;
    wire [15:0] 	value ; 
    wire 			done ;

//------------------------------------ regs and wires-------------------------------

	always @(*) begin// Selector de modo
		case (addr)
			4'h0:		s = (cs && rd) ? 2'b01 : 2'b00 ; // Done
			4'h2:		s = (cs && rd) ? 2'b10 : 2'b00 ; // Value[15:0]
			default: 	s = 2'b00 ;
		endcase
	end

	always @(negedge clk) begin // Multiplexa salidas del periferico
		case (s)
			2'b01:	 	d_out[0] 	= done ;
			2'b10: 		d_out    	= value[15:0] ;
			default:	d_out   	= 0 ;
		endcase
	end

	ultrasonic  ut ( .clk(clk), .rst_n(rst_n), .signal(signal) , .value(value) , .done(done) );

endmodule
