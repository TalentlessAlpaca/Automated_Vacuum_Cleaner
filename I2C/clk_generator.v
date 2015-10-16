`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:53:14 10/15/2015 
// Design Name: 
// Module Name:    clk_generator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clk_generator(
    input clk,
    input rst_n,
    input f_state,
    input [15:0] limit,
	 output reg half_t,
    output reg clk_out,
	 output reg en
    );
	 
	 reg[15:0] count;
	 initial count = 0;
	 
	 always@(posedge clk) begin
		if(rst_n)begin
			en <= 1;
			if(count < limit-1) count <= count+1;
			else begin
				count <= 16'h0;
				clk_out <= !clk_out;
			end
			if(count > (limit>>1)) half_t <= 1;
			else							half_t <= 0;
		end
		else begin 
			count <= 0;
			clk_out <= f_state;
			half_t <= 0;
			en <= 0;
		end
	 end
	 
endmodule
