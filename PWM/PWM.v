module PWM2 #(parameter LENGHT = 10) (
	input clk,
	input rst_n,
	input [LENGHT - 1 : 0] number,
	output pwm
	);
   
	reg [LENGHT - 1: 0] counter ;

	always @ ( posedge ) begin
		if ( rst_n ) begin
			if ( number > counter )
				pwm <= 1'b1 ;
			else 
				pwm <= 1'b0 ;
		end
		else begin
			counter <= 1'b0 ;
			pwm     <= 1'b1 ;
		end
	end
	
	always @ ( negedge ) begin
		counter <= counter + 1'b1 ;
	end

	end
endmodule
