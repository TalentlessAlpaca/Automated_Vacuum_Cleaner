`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:44:26 12/05/2015
// Design Name:   LCD_Peripheral
// Module Name:   C:/Users/Juan/Documents/Xilinx_Workspace/LCD/Periphera_Test.v
// Project Name:  LCD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LCD_Peripheral
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Periphera_Test;

	// Inputs
	reg clk;
	reg rst;
	reg [15:0] d_in;
	reg cs;
	reg [3:0] addr;
	reg rd;
	reg wr;
	wire int_cnt;

	// Outputs
	wire e;
	wire rs;
	wire [7:0] data;
	wire [15:0] d_out;
	wire en_cnt;
	wire [15:0] limit_cnt;
	
	wire [31:0] mcount;
	reg mcoun_en;
	reg mcoun_rst;
	
	clk_counter count(
		.clk(clk),
		.en(mcoun_en),
		.rst(mcoun_rst),
		.count(mcount)
	);
	
	clk_interruptor intGen(
		.clk(clk),
		.en(en_cnt),
		.limit({16'h0000,limit_cnt}),
		.count(mcount),
		.int_0(int_cnt)
	);

	// Instantiate the Unit Under Test (UUT)
	LCD_Peripheral uut (
		.clk(clk), 
		.rst(rst), 
		.d_in(d_in), 
		.cs(cs), 
		.addr(addr), 
		.rd(rd), 
		.wr(wr), 
		.e(e), 
		.rs(rs), 
		.data(data), 
		.int_cnt(int_cnt),
		.en_cnt(en_cnt),
		.limit_cnt(limit_cnt),
		.d_out(d_out)
	);
	
	reg putamierda;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		d_in = 0;
		cs = 0;
		addr = 0;
		rd = 0;
		wr = 0;
		mcoun_rst = 1;
		mcoun_en = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		mcoun_rst = 0;
		mcoun_en = 1;
		// Add stimulus here
		
		#100; // Set 'reset' 
		cs = 1;
		wr = 1;
		d_in = 1;
		addr = 1;
		
		#20;	// Set 'en'
		addr = 0;
		
		#100;
		putamierda = 1;
		
		#20;	// Is Module Busy?
		wr = 0;
		rd = 1;
		d_in = 0;
		addr = 10;
		#20;
		while(d_out == 0) #5;
		cs = 0;
		rd = 0;
		wr = 0;
		#20;
		addr = 0;
		cs = 1;
		wr = 1;
		d_in = 0;
		#20
		cs = 0;
		rd = 0;
		wr = 0;
		#20;
		addr = 10;
		cs =1;
		rd = 1;
		while(d_out != 0) #5;
		
	end
	
	always #5 clk = !clk;
	
endmodule

