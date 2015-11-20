`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:52:12 11/04/2015 
// Design Name: 
// Module Name:    Top-SPI 
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
module top_spi(
	imput select,
	input [15:0] address,
	input [15:0] data_in,
	input clk,
	input read,
	imput write,
	imput reset,
	output data_out
);

reg data_out;
reg data_in;
reg address;
always @(posedge clk) begin
	if(reset) begin 
		data_out <= 4'h0000;
		data_in <= 4'h0000;
		addres <= 4´h0000;
		select <= 1'b0;
	end 
	elese begin
		if(select) begin
		
		end
	end
end
endmodule
