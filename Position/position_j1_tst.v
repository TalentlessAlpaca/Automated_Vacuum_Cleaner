`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:27:41 12/05/2015
// Design Name:   position_peripheral
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/Position/position_j1_tst.v
// Project Name:  Position
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: position_peripheral
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module position_j1_tst;

	// Inputs
	reg clk;
	reg rst;
	reg SDA_in;
	reg int_o;
	reg clk_frame;
	reg [31:0] counter_count;
	reg cs;
	reg rd;
	reg wr;
	reg [4:0] addr;
	reg [15:0] d_in;

	// Outputs
	wire [15:0] d_out;
	wire SDA_oen;
	wire SDA_out;
	wire int_limit;
	wire int_en;
	wire counter_en;
	wire counter_rst;
	wire [31:0] clk_freq;
	wire SCL;
	
	wire SDA;
	assign SDA = SDA_oen? SDA_out : SDA_in;

	// Instantiate the Unit Under Test (UUT)
	position_peripheral uut (
		.clk(clk), 
		.rst(rst), 
		.SDA_in(SDA_in), 
		.int_o(int_o), 
		.clk_frame(clk_frame), 
		.counter_count(counter_count), 
		.cs(cs), 
		.rd(rd), 
		.wr(wr), 
		.addr(addr), 
		.d_in(d_in), 
		.d_out(d_out), 
		.SDA_oen(SDA_oen), 
		.SDA_out(SDA_out), 
		.SCL(SCL),
		.int_limit(int_limit), 
		.int_en(int_en), 
		.counter_en(counter_en), 
		.counter_rst(counter_rst), 
		.clk_freq(clk_freq)
	);
	
	wire [31:0] mcount;
	reg mcoun_en;
	reg mcoun_rst;
	reg clk_enable;
	
	clk_counter count(
		.clk(clk),
		.en(mcoun_en),
		.rst(mcoun_rst),
		.count(mcount)
	);
	
	clk_counter count2(
		.clk(clk),
		.en(counter_en),
		.rst(counter_rst),
		.count(counter_count)
	);
	
	clk_generator genCLK(
		.clk(clk),
		.en(clk_enable),
		.limit(clk_freq),
		.count(mcount),
		.clk_0(clk_frame)
	);
	
	clk_interruptor intGen(
		.clk(clk),
		.en(int_en),
		.limit(int_limit),
		.count(mcount),
		.int_0(int_o)
	);
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		SDA_in = 0;
		int_o = 0;
		clk_frame = 0;
		counter_count = 0;
		cs = 0;
		rd = 0;
		wr = 0;
		addr = 0;
		d_in = 0;
		
		mcoun_en  = 0;
		mcoun_rst = 1;
		clk_enable = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		mcoun_rst = 0;
		mcoun_en = 1;
		clk_enable = 1;
		// Add stimulus here
		#10;
		rd = 1;
		addr = 1;
		cs = 1;
		#50;
		while(d_out!=0)#10;
		rd = 0;
		addr = 0;
		cs = 0;
	end
	
	always #5 clk = !clk;
	
endmodule

