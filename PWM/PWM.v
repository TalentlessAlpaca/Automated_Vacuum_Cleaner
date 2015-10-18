module PWM #(parameter CTR_LEN = 10) (
	input clk,
	input rst,
	input [CTR_LEN - 1 : 0] compare,
	output pwm
	);
   
	reg pwm_d, pwm_q;
	reg [CTR_LEN - 1: 0] c_d, c_q;

	assign pwm = pwm_q;

	always @(*) begin
    	c_d = c_q + 1'b1;
		if (compare > c_q)
			pwm_d = 1'b1;
		else
      		pwm_d = 1'b0;
  	end

	always @(posedge clk) begin
		if (rst)
			c_q <= 1'b0;
		else
			c_q <= c_d;
		pwm_q <= pwm_d;
	end
endmodule
