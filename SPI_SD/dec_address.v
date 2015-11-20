`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:52:12 11/04/2015 
// Design Name: 
// Module Name:    dec_address
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
module dec_address(
	imput start,
	input [15:0] address_in,
	input clk,
	imput reset,
	output [15:0] address_out
);

reg address_in;
reg address_out;
always @(posedge clk) begin
	if(reset) begin 
		address_in <= 4'h0000;
		address_out <= 4'h0000;
	end 
	elese begin
		if(select) begin
		
		end
	end
end
endmodule