`timescale 1ns / 1ps

`define SIMULATION
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:55:11 12/07/2015
// Design Name:   Peripheral_clk_generator
// Module Name:   C:/WINDOWS/system32/Timer/Periph_gen_clk_tst.v
// Project Name:  Timer
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Peripheral_clk_generator
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Periph_int_clk_tst;

	// Inputs
	reg clk;
	reg rst;
	reg start;
	reg [15:0] d_in;
	reg cs;
	reg [3:0] addr;
	reg rd;
	reg wr;

	// Outputs
	wire [15:0] d_out;

	// Instantiate the Unit Under Test (UUT)
	Peripheral_clk_interruptor uut (
		.clk(clk), 
		.rst(rst), 
		.d_in(d_in), 
		.cs(cs), 
		.addr(addr), 
		.rd(rd), 
		.wr(wr), 
		.d_out(d_out)
	);

	parameter PERIOD          = 20;
   parameter real DUTY_CYCLE = 0.5;
   parameter OFFSET          = 0;
   reg [20:0] i;
   event reset_trigger;

	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		d_in = 16'd0035;
		cs = 1;
		start = 0;
		addr = 16'h0000;
		rd = 0;
		wr = 1;
	end
	
	initial  begin  // Process for clk
     #OFFSET;
     forever
       begin
         clk = 1'b0;
         #(PERIOD-(PERIOD*DUTY_CYCLE)) clk = 1'b1;
         #(PERIOD*DUTY_CYCLE);
       end
   end

   initial begin // Reset the system, Start the image capture process
      forever begin 
        @ (reset_trigger);
        @ (posedge clk);
        start = 0;
        @ (posedge clk);
        start = 1;

       for(i=0; i<2; i=i+1) begin
         @ (posedge clk);
       end
          start = 0;


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	for(i=0; i<4; i=i+1) begin
         @ (posedge clk);
       end

	d_in = 16'd0005;	//envio A
	addr = 16'h0000;
	cs=1; rd=0; wr=1;

       for(i=0; i<4; i=i+1) begin
         @ (posedge clk);
       end

	d_in = 16'd0002;	//envio B
	addr = 16'h0001;
	cs=1; rd=0; wr=1;

       for(i=0; i<4; i=i+1) begin
         @ (posedge clk);
       end

	d_in = 16'd0001;	//envio init
	addr = 16'h0002;
	cs=1; rd=0; wr=1;

       for(i=0; i<4; i=i+1) begin
         @ (posedge clk);
       end

	d_in = 16'd0000;	//recibo dato
	addr = 16'h0002;
	cs=0; rd=1; wr=0;


      end
   end
	 

   initial begin: TEST_CASE
     $dumpfile("peripheral_mult_TB.vcd");
     $dumpvars(1, uut);
	
     #10 -> reset_trigger;
     #((PERIOD*DUTY_CYCLE)*200) $finish;
   end
	
	
      
endmodule

