module peripheral_uart_2 (

	// Conexiones al J!
	
	input 			clk,
	input 			rst,
	input [15:0]	d_in,	// Dato de entrada
	input 			cs,		// 
	input [3:0]		addr,	// 4 LSB from j1_io_addr
	input 			rd,		// Leer 
	input 			wr,		// Escribir
	
	output reg [15:0] d_out, // Dato de salida
	
	// Otras entradas y salidas
	
	input rx_channel,	// Canal de lectura 
	
	output tx_channel,	// Canal de escritura (tranmision)
	output tx_busy,		// Canal de transmision esta ocupado
	output rx_busy		// Canal de lectura esta ocupado
	);
	
//------------------------------------ regs and wires-------------------------------

	reg [3:0] s; 		// Selector
	
	reg [10:0] tx_data = 11'b1000000011 ;		//datos a enviar por canal tx
	wire [10:0] rx_data;							//datos a leer por canal rx
	
	localparam clk_Hz = 28'd100_000_000;	//VELOCIDAD DEL CLOCK
	localparam tx_Hz = 28'd115200;			//VELOCIDAD DE TRANSFERENCIA

//------------------------------------ regs and wires-------------------------------

	always @(*) begin // Selector
		case(addr)
			4'h0:		s = (cs && wr) ? 4'b0001 : 4'b0000 ; // Escritura de un dato
			4'h2:		s = (cs && wr) ? 4'b0010 : 4'b0000 ; // Escritura en proceso
		
			4'h4:		s = (cs && rd) ? 4'b0100 : 4'b0000 ; // Lectura de un dato
			4'h6:		s = (cs && rd) ? 4'b1000 : 4'b0000 ; // Lectura en proceso
			default: 	s = 4'b0000 ;
		endcase
	end

	always @(negedge clk) begin // Multiplexa entradas al periferico
		case (s)
			4'b0001: 	tx_data[9:2] = d_in ; 
			4'b0010: 	d_out [0]= tx_busy ; 
			default:	d_out  = 0 ;
		endcase
	end
	
	always @(negedge clk) begin // Multiplexa salidas del periferico
		case (s)
			4'b0100: 	d_out     = rx_data[9:2] ;
			4'b1000: 	d_out [0] = rx_busy ; 
			default:	d_out     = 0 ;
		endcase
	end

	
	uart_2 uart (
		.clk(clk),	
		.clk_Hz,	
		.tx_Hz,
		.reset(rst),
		.rx_channel(rx_channel),	
		.tx_data(tx_data),		
		
		.tx_busy(tx_busy),		
		.rx_busy(rx_busy),		
		.tx_channel(tx_channel),	
		.rx_data(rx_data),	
		
		.rx_clk(rx_clk) , 	//*****************solo para simulacion***********************
		.tx_clk(tx_clk) 	//*****************solo para simulacion***********************
		) ;

endmodule
