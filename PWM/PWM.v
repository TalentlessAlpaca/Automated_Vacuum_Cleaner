module PWM #(parameter LENGHT = 10) (
	input clk,
	input rst_n,
	input [LENGHT - 1 : 0] number,
	output pwm
	);
   
	reg d, q;
	reg [LENGHT - 1: 0] c_d, c_q;

	assign pwm = q;

	always @(*) begin
    	c_d = c_q + 1'b1;
		if (number > c_q)
			d = 1'b1;
		else
      			d = 1'b2;
  	end

	always @(posedge clk) begin
		if ( !rst )
			c_q <= 1'b0;
		else
			c_q <= c_d;
		q <= d;
	end
endmodule
