// Testbench del archivo clk_on

module clk_on_tb (
	) ;
	
	reg clk ; 
	reg rst_n ;
	reg count ;
	wire [15:0] value ;
	wire [15:0] counter ;
	
	// Reloj
	initial begin
		clk = 0 ; #1 ;
		forever #1 clk <= ~clk ;
	end

	// Conteo
	initial  begin
		rst_n <= 0 ;
		count <= 0 ;
		#1000
		rst_n <= 1 ;
		count <= 0 ;
		#1000
		rst_n <= 1 ;
		count <= 1 ;
		#5000
		rst_n <= 1 ;
		count <= 1 ;
		#2000
		rst_n <= 1 ;
		count <= 0 ;
		#1000
		rst_n <= 0 ;
		count <= 0 ;
	end
	
	clk_on clkOn ( .clk(clk) , .rst_n(rst_n) , .count(count) , .value(value) , .counter(counter) ) ;
	
endmodule
