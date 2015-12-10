`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:33:01 12/02/2015
// Design Name:   LCD
// Module Name:   C:/Users/Juan/Documents/Xilinx_Workspace/LCD/Test_LCD.v
// Project Name:  LCD
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LCD
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_LCD;

	// Inputs
	reg clk;
	reg rst;
	
	reg en;
	reg reset;
	reg set;
	reg clear;
	reg off;
	reg on;
	reg entry_mode;
	reg cursor;
	reg w_char;
	reg int_cnt;
	reg [7:0] ascii_char;
	reg [7:0] cursor_pos;
	

	// Outputs
	wire [15:0] limit_cnt;
	wire en_cnt;
	wire rs;
	wire e;
	wire [7:0] data;
	wire busy;

	// Instantiate the Unit Under Test (UUT)
	LCD uut (
		.clk(clk), 
		.rst(rst), 
		.en(en), 
		.reset(reset), 
		.set(set), 
		.clear(clear), 
		.off(off), 
		.on(on), 
		.entry_mode(entry_mode), 
		.cursor(cursor), 
		.w_char(w_char), 
		.int_cnt(int_cnt), 
		.limit_cnt(limit_cnt), 
		.en_cnt(en_cnt), 
		.rs(rs), 
		.e(e), 
		.data(data),
		.ascii_char(ascii_char),
		.cursor_pos(cursor_pos),
		.busy(busy)
	);

	initial begin
		// Initialize Inputs
		clk = 0; // Clok on 0 by default 
		rst = 1; // Its better for create a controlled start 
		en = 0;
		reset = 0;
		set = 0;
		clear = 0;
		off = 0;
		on = 0;
		entry_mode = 0;
		cursor = 0;
		w_char = 0;
		int_cnt = 0;
		ascii_char = 0;
		cursor_pos = 0;

		// Wait 100 ns for global reset to finish
		#100;
		rst = 0;
		#100;
        
		// Add stimulus here
		
		////////////////////////// Protocol Instructions //////////////////
		// 3 Resets //
		//1
		reset = 1;		
		while(busy == 0) #10;
		reset = 0;
		#100; // Change to 1ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		while(en_cnt == 0 ) #10;
		#300; // Change to 200ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		#50
		
		//2
		reset = 1;		
		while(busy == 0) #10;
		reset = 0;
		#100; // Change to 1ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		while(en_cnt == 0 ) #10;
		#300; // Change to 200ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		#50
		
		//3
		reset = 1;		
		while(busy == 0) #10;
		reset = 0;
		#100; // Change to 1ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		while(en_cnt == 0 ) #10;
		#300; // Change to 200ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		#50
		
		// Set Instruction //
	
		set = 1;		
		while(busy == 0) #10;
		set = 0;
		#100; // Change to 1ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		while(en_cnt == 0 ) #10;
		#300; // Change to 200ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		#50
		
		// Display Off //
	
		off = 1;		
		while(busy == 0) #10;
		off = 0;
		#100; // Change to 1ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		while(en_cnt == 0 ) #10;
		#300; // Change to 200ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		#50
		
		// Clear Instruction //
	
		clear = 1;		
		while(busy == 0) #10;
		clear = 0;
		#100; // Change to 1ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		while(en_cnt == 0 ) #10;
		#300; // Change to 200ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		#50
		
		// Entry Mode Instruction //
	
		entry_mode = 1;		
		while(busy == 0) #10;
		entry_mode = 0;
		#100; // Change to 1ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		while(en_cnt == 0 ) #10;
		#300; // Change to 200ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		#50
		
		// Display On //
	
		on	= 1;		
		while(busy == 0) #10;
		on = 0;
		#100; // Change to 1ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		while(en_cnt == 0 ) #10;
		#300; // Change to 200ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		#50
		
		// Write 2 line 1 row //
		cursor = 1;
		cursor_pos = 8'h40;
		while(busy == 0) #10;
		cursor = 0;
		#100; // Change to 1ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		while(en_cnt == 0 ) #10;
		#300; // Change to 200ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		#50
		
		// Write J Char //
		w_char = 1;
		ascii_char = "J";
		while(busy == 0) #10;
		w_char = 0;
		#100; // Change to 1ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		while(en_cnt == 0 ) #10;
		#300; // Change to 200ms
		int_cnt = 1;
		while(en_cnt == 1) #10;
		int_cnt = 0;
		#50
		

		#100;
		reset = 0;		
		
	end
	
	always #5 clk = !clk; // Set a Generic Delay only on Simulation (100MHz)
      
endmodule

