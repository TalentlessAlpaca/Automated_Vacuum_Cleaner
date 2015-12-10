module ultrasonic_control (
	input 		clk ,
	input 		enable ,
	input 		signal ,
	
	output 	[15:0]	value ,
	output reg	busy
    ) ;
	
	reg [2:0] 	state ;
	
	reg 		rst_clk_n ;
	reg 		rst_ult_n ;
	reg 		enableClk ;
	reg			enable_fisico ;

	
	wire	[31:0] 	clkValue ;
	wire	 		start ;
	wire 			done_ult ;
	
	// Definición de estados
	localparam S0 = 3'b000 ; // Estado reset
	localparam S1 = 3'b001 ; // Envia señal al físico
	localparam S2 = 3'b010 ; // Espera nuevo ciclo

	
	always @ ( negedge clk )
		if ( enable )
			case ( state )
				S0:
					state <= S1 ;
				S1:
					if ( !busy )
						state <= S2 ;
					else
						state <= S1 ;
				S2:	
					state <= state ;
				default:
					state <= S0 ;
			endcase
		else
			state <= S0 ;
		
	// Logica de estados
	always @ ( posedge clk)
		case ( state )
			S0: begin
				rst_clk_n 		<= 0 ;
				rst_ult_n		<= 0 ;
				
				enableClk		<= 0 ;
				enable_fisico	<= 0 ;
			end S1: begin
				rst_clk_n 		<= 1 ;
				rst_ult_n		<= 1 ;
				
				enableClk		<= 1 ;
				enable_fisico	<= 1 ;
				busy <= 1 ;
			end S2: begin
				rst_clk_n 		<= 1 ;
				rst_ult_n		<= 1 ;
				
				enableClk		<= 1 ;			
				enable_fisico	<= 0 ;
				busy			<= 0 ;
			end default: begin
				rst_clk_n 		<= 0 ;
				rst_ult_n		<= 0 ;
				
				enableClk		<= 0 ;
				enable_fisico	<= 0 ;
				busy			<= 0 ;
			end
		endcase 
		
		
	// Modulos instanciados
	
	// Mide el tiempo total desde el inicio del iclo hasta el final
	clk_counter medidorDeTiempo ( 
		.clk (clk) , 
		.enable (enableClk) , 
		.rst_n (rst_clk_n) , 
		
		.clkValue(clkValue) 
		) ;
	
	// Mide la duración de la señal del módulo físico
	ultrasonic modulo ( 
		.clk (clk) , 
		.signal (signal) , 
		.rst_n (rst_ult_n) , 
		
		.value (value) , 
		.done (done_ult) 
		);
	
	// Controla el módulo físico
	control_fisico control_fisico (
		.clk(clk),
		.enable(enable_fisico) ,
		.clkValue(clkValue) ,
		
		.start(start)
	);

endmodule 
