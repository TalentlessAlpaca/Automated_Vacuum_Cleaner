module ultrasonic_control (
	input clk ,
	input enable ,
	input signal ,
	output reg start ,
	output [15:0] value
    ) ;
	
	reg [2:0] state ;
	reg enableClk ;
	reg rst_clk_n ;
	reg rst_ult_n ;
	
	wire [31:0] clkNumber ;
	wire done ;	
	
	// Definición de estados
	localparam S0 = 3'b000 ;
	localparam S1 = 3'b001 ;
	localparam S2 = 3'b010 ;
	localparam S3 = 3'b011 ;
	
	always @ ( negedge clk )
		if ( enable )
			case ( state )
				S0:
					state <= S1 ;
				S1:
					if ( 1_200 == clkNumber )
						state <= S2 ;
					else
						state <= S1 ;
				S2:	
					if ( 25_000_000 == clkNumber )
						state <= S0 ;
					else
						state <= S2 ;
				default:
					state <= S0 ;
			endcase
		else
			state <= S0 ;
		
	// Logica de estados
	always @ ( posedge clk)
		case ( state )
			S0: begin
				start 			<= 0 ;
				rst_clk_n 		<= 0 ;
				rst_ult_n		<= 0 ;
				enableClk		<= 0 ;
			end S1: begin
				start 			<= 1 ;
				rst_clk_n 		<= 1 ;
				rst_ult_n		<= 1 ;
				enableClk		<= 1 ;
			end S2: begin
				start 			<= 0 ;
				rst_clk_n 		<= 1 ;
				rst_ult_n		<= 1 ;
				enableClk		<= 1 ;				
			end default: begin
				start 			<= 0 ;
				rst_clk_n 		<= 0 ;
				rst_ult_n		<= 0 ;
				enableClk		<= 0 ;
			end
		endcase 
		
		
	// Modulos instanciados
	clk_counter medidorDeTiempo ( 
		.clk (clk) , 
		.enable (enableClk) , 
		.rst_n (rst_clk_n) , 
		.clkNumber(clkNumber) 
		) ;
		
	ultrasonic modulo ( 
		.clk (clk) , 
		.signal (signal) , 
		.rst_n (rst_ult_n) , 
		.value (value) , 
		.done (done) 
		);

endmodule 
