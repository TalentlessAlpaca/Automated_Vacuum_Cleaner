
// Periferico del modulo ultrasónico. El módulo transforma el tiempo que Signal permanece encendido en milímetros.
// Signal entra desde el modulo físico del ultrasonico, las demás señales pertenecen a la interaccion que tiene con el J1
// Solo hay lectura de datos. una vez se desactiva el estado de reset, el módulo se prepara para recibir la señal y hacer el conteo

module peripheral_mult(
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
    wire [15:0] 	value ; 
    wire 			done ;
	
	reg enable ;

//------------------------------------ regs and wires-------------------------------

	always @(*) begin// Selector de modo
		case (addr)
			4'h0:		s = (cs && wr) ? 4'b0001 : 4'b000 ; // Enable
		
			4'h2:		s = (cs && rd) ? 4'b0010 : 4'b000 ; // Busy
			4'h4:		s = (cs && rd) ? 4'b0100 : 4'b000 ; // Value [7:0]
			4'h6:		s = (cs && rd) ? 4'b1000 : 4'b000 ; // Value [15:8]
			default: 	s = 4'b000 ;
		endcase
	end

	always @(negedge clk) begin // Multiplexa entradas del periferico
		case (s)
			4'b0001:	 	enable 		= 1 ;
			default:	d_out   	= 0 ;
		endcase
	end
	
	always @(negedge clk) begin // Multiplexa salidas del periferico
		case (s)
			4'b0010:	d_out[0] 	= done ;
			4'b0100: 	d_out    	= value[7:0] ;
			4'b1000: 	d_out    	= value[15:8] ;
			default:	d_out   	= 0 ;
		endcase
	end

	ultrasonic ult ( 
		.clk(clk), 
		.enable(enable), 
		.signal(signal) , 
		.value(value) , 
		.done(done) 
		);

endmodule
