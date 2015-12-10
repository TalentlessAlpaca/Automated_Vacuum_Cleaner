`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:28 11/10/2015 
// Design Name: 
// Module Name:    clk_interruptor 
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
module clk_interruptor(
    input clk,
    input en,
    input [31:0] limit,
    input [31:0] count,
    output reg int_0
    );

	 reg [31:0] int_Count;
	 
	 always@(negedge clk) begin
		if(en) begin
			if (count < int_Count)begin
				int_0 <= 1'b0;
			end
			else begin
				int_0 <= 1'b1;
			end
			int_Count <= int_Count;
		end	
		else begin
			int_0 <= 1'b0;
			int_Count <= count+limit;
		end
	end
endmodule
