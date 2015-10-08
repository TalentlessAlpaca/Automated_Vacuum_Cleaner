`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//    
//    Basic 32 bit Counter with Synchronous active low reset
//    
//    Author: Camilo Antonio Suárez Bolaños
//    Date:   10/04/2015
//    
//////////////////////////////////////////////////////////////////////////////////
module Counter(
    input clk,
    input rst,
    input en,
    output reg [31:0] count
    );
	 
	 initial count = 0;
	 
	 always @(posedge clk) begin
		if(!rst) count <= 0;
		else if(en) begin
			if(count == 32'hFFFFFFFF) count <= 0;
			else count <= count+1;
		end
	 end
	 
	 
endmodule
