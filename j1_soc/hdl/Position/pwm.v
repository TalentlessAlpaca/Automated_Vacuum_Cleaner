`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:51 11/28/2015 
// Design Name: 
// Module Name:    pwm 
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
module PWM #(parameter L=10 ) (
	input clk,
	input rst_n,
	input [L-1 : 0] number,
	output reg pwm
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