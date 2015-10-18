`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:30:14 18/15/2015 
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
begin module clk_generator_0(
    input clk,
	input en,
    input count,
    input [31:0] limit,
	input [31:0] count,
	output reg clk_0,
	);
	 
	 reg [31:0] nCount;
	 reg [31:0] nLimit;
	 	 
	 always@(posedge clk) begin
		nCount <= count+limit;
	 end

	 always@(posedge clk) begin
		if(en)begin
			if(count < nLimit-1) begin
			end
			else begin
				nLimit <= nCount;
				clk_0 <= !clk_0;
			end
		end
		else begin
			nLimit <= nCount;
		end
	end
	 
end module

begin module clk_generator_1(
    input clk,
	input en,
    input count,
    input [31:0] limit,
	input [31:0] count,
	output reg clk_1,
	);
	 
	 reg [31:0] n_Count;
	 reg [31:0] n_Limit;
	 	 
	 always@(posedge clk) begin
		n_Count <= count+limit;
	 end

	 always@(posedge clk) begin
		if(en)begin
			if(count < n_Limit-1) begin
			end
			else begin
				n_Limit <= n_Count;
				clk_1 <= !clk_1;
			end
		end
		else begin
			n_Limit <= n_Count;
		end
	end
	 
end module

begin module clk_generator_2(
    input clk,
	input en,
    input count,
    input [31:0] limit,
	input [31:0] count,
	output reg clk_2,
	);
	 
	 reg [31:0] nd_Count;
	 reg [31:0] nd_Limit;
	 	 
	 always@(posedge clk) begin
		ndCount <= count+limit;
	 end

	 always@(posedge clk) begin
		if(en)begin
			if(count < ndLimit-1) begin
			end
			else begin
				ndLimit <= ndCount;
				clk_2 <= !clk_2;
			end
		end
		else begin
			ndLimit <= ndCount;
		end
	end
	 
end module

begin module clk_interruptor_0(
    input clk,
	input en,
    input count,
    input [31:0] limit,
	input [31:0] count,
	output reg int_0,
	);
	 
	 reg [31:0] int_Count;
	 reg [31:0] int_Limit;
	 	 
	 always@(posedge clk) begin
		int_Count <= count+limit;
	 end

	 always@(posedge clk) begin
		if(en)begin
			if(count < int_Limit-1) begin
				int_0 <= 1'b0;
			end
			else begin
				int_Limit <= int_Count;
				int_0 <= 1'b1;
			end
		end
		else begin
			int_Limit <= int_Count;
		end
	end
	 
end module
