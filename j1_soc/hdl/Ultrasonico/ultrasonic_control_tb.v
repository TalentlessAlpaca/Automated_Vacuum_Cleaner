module ultrasonic_control_tb (
	) ;
	
	reg clk ;
	reg enable ;
	reg signal ;
	wire start ;
	wire [15:0] value ;

	initial begin
		clk = 0 ; 
		#5 ;
		forever #5 clk = ~clk ;
	end
	
	initial begin
			enable = 0 ;
			signal = 0 ;
		#100 ;
			enable = 1 ;
			signal = 0 ;
		#1_200 ;
			enable = 1 ;
			signal = 1 ;
		#100_000 ;
			enable = 1 ;
			signal = 0 ;
	end 
	
	ultrasonic_control DUT ( .clk(clk) , .enable(enable) , .signal(signal) , .start(start) , .value(value) ) ;
	
endmodule 
