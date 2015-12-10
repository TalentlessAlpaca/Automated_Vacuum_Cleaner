module clk_counter(
    input clk,
    input enable ,
    input rst_n,
    output reg [31:0] clkNumber
    );
	 
	always @ ( posedge clk )
		if ( !rst_n )
			clkNumber <= 31'b0 ;
		else 
			if ( enable )
				clkNumber = clkNumber + 1 ;

endmodule 
