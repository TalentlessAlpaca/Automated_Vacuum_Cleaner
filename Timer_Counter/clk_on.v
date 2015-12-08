// Modulo que cuenta el numer ode clks que la señal "Count" permanece encendida

module clk_on (
	input clk ,
	input rst_n ,
	input count ,
	output reg [15:0] value ,
	output reg [15:0] counter 
	) ;
	
	// Variables locales
	reg [1:0] state ;

	// Definicion de estados
	localparam S0 = 2'b00 ;
	localparam S1 = 2'b01 ;
	localparam S2 = 2'b10 ;
	
	// Logica de cambias de estados
	always @ ( negedge clk )
		if ( !rst_n ) 
			state <= S0 ;
		else
			case ( state )
				S0: 
					if ( count )
						state <= S1 ;
					else 
						state <= S0 ;
				S1:
					if ( !count )
						state <= S2 ;
					else
						state <= S1 ;
				S2:
					if ( !rst_n )
						state <= S0 ;
					else 
						state <= S2 ;
				default:
					state <= S0 ;
			endcase
	
	// Logica de estados
	always @ ( posedge clk )
		case ( state )
			S0: begin
				counter <= 0 ;
				value <= 0 ;
			end S1: begin
				counter <= counter + 1'b1 ;
				value <= 0 ;
			end S2: begin
				counter <= counter ;
				value <= counter ;
			end
		endcase
		
endmodule 
