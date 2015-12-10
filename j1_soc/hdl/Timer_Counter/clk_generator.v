`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:43 11/10/2015 
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
    input en,
	 input rst,
    input [31:0] limit,
    input [31:0] count,
    output reg clk_0,
	 output reg done
    );

	 reg [31:0] ndCount;
	 
	 initial clk_0 = 1'b0;
	 initial ndCount = 32'h00000000;
	 
	 always@(negedge clk) begin
		if(en) begin
			if(count > ndCount) begin // Compares if ndCount < count
			ndCount <= count + limit; // Updates ndValue
			clk_0 <= ~clk_0;          // Updates clk value
			end
			else begin
				ndCount <= ndCount; //  Keep ndCount value
				clk_0 <= clk_0;		// Keep clk_2 value
			end
		end
		else begin
			ndCount <= count+limit;
			clk_0 <= 1'b0;
		end
	 end

endmodule
