`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:55:43 11/26/2015
// Design Name:   position_topModule
// Module Name:   C:/Users/Camilo/Documents/Xilinx_Workspace/Position/topPos_module_tst.v
// Project Name:  Position
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: position_topModule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module topPos_module_tst;

	// Inputs
	reg clk;
	reg rst;
	reg en;
	wire int_o;
	wire [15:0] counter_count;
	wire clk_frame;
	reg w_ram;
	reg w_ram_ref;
	reg [7:0] w_ram_address;
	reg [31:0] w_ram_data;
	reg SDA_in;

	// Outputs
	wire busy;
	wire [31:0] vX;
	wire [31:0] vY;
	wire [31:0] pX;
	wire [31:0] pY;
	wire [31:0] theta;
	wire [31:0] int_limit;
	wire int_en;
	wire counter_en;
	wire counter_rst;
	wire [31:0] clk_freq;
	wire SCL;
	wire SDA_oen;
	wire SDA_out;

	// Instantiate the Unit Under Test (UUT)
	position_topModule uut (
		.clk(clk), 
		.rst(rst), 
		.en(en),
		.busy(busy),
		.vX(vX), 
		.vY(vY), 
		.pX(pX), 
		.pY(pY), 
		.theta(theta), 
		.int_o(int_o), 
		.int_limit(int_limit), 
		.int_en(int_en), 
		.counter_count(counter_count), 
		.counter_en(counter_en), 
		.counter_rst(counter_rst), 
		.clk_frame(clk_frame), 
		.clk_freq(clk_freq), 
		.w_ram(w_ram), 
		.w_ram_ref(w_ram_ref), 
		.w_ram_address(w_ram_address), 
		.w_ram_data(w_ram_data), 
		.SCL(SCL), 
		.SDA_oen(SDA_oen), 
		.SDA_in(SDA_in), 
		.SDA_out(SDA_out)
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
	
	wire SDA;
	assign SDA = SDA_oen? SDA_out : SDA_in;
	
	reg [8:0] i;
	reg [15:0] ssin = -16'd140;
	reg [15:0] ccos;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		en = 0;
		w_ram = 0;
		w_ram_ref = 0;
		w_ram_address = 0;
		w_ram_data = 0;
		SDA_in = 1'bz;
		mcoun_en = 0;
		mcoun_rst = 1;
		clk_enable = 1;
		// Wait 100 ns for global reset to finish
		#2400;
		mcoun_en = 1;
		mcoun_rst = 0;
		#100;
		rst = 0;
		#2000;
		SDA_in = 1'b0;
		while(busy) #5;
		#100;
		for(i = 0; i <= 255; i = i+1) begin
			ssin = ssin+1;
			if(i == 0) 		begin ccos = 16'd8191; end
			else if(i == 45) 	begin ccos = 16'd8192; end
			else					begin ccos = ccos; end
			#3 w_ram_address = i[7:0];
			#20 w_ram_data = {ssin,ccos};
			#20 w_ram = 1;
			#20 w_ram = 0;
		end
		w_ram_data = 32'd0;
		#10;
		w_ram_ref = 1;
		#20;
		w_ram_ref = 0;
		#2000;
		en = 1;
		// Add stimulus here
		#1078350;
		SDA_in = 1'b1;
	end
	
	always #5 clk <= ~clk;
	
endmodule

