module PWM #(parameter L=10 ) (
	input clk,
	input rst_n,
	input [L-1 : 0] number,
	output pwm
	);
	
	reg [L-1:0] counter ;
	
	always @ ( posedge clk ) begin
		if ( rst_n ) begin
		        counter <= counter + 1'b1 ;
			if ( number > counter )
				pwm <= 1'b1 ;
			else 
				pwm <= 1'b0 ;
		end else begin
			counter 	<= 1'b0 ;
			pwm     	<= 1'b1 ;
		end
	end
	
endmodule
