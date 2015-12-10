module control_fisico (
	input clk ,	// Reloj
	input enable ,	// Iniciar
	input [31:0] clkValue , // Avance reloj
	
	output reg start
	);
	
	reg [1:0] state ;
	
	localparam reset 	= 00 ;
	localparam on 		= 01 ;
	localparam waiting 	= 10 ;
	
	always @ ( negedge clk )
		if ( !enable )
			state <= reset ;
		else
			case ( state )
				reset:
					state <= on ;
				on:
					if ( 1_200 < clkValue )
						state <= waiting ;
					else
						state <= state ;
				waiting:
					if ( 1_000_000 > clkValue )
						state <= state ;
					else
						state <= state ;
		endcase
		
	always @ ( posedge clk )
		case ( state )
			reset: 
				start <= 0 ;
			on:
				start <= 1 ;
			waiting:
				start <= 0 ;
			default:
				start <= 0 ;
		endcase
		
endmodule
