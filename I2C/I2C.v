`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:28:55 10/15/2015 
// Design Name: 
// Module Name:    I2C 
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
module I2C(
    input clk,
    input rst_n,
    input en,
    input rw,
    input [6:0] addr,
	 input [7:0] reg_addr,
    input [15:0] data,
	 input burst,
    output reg busy,
	 output reg err,
	 output reg [15:0] data_o,
	 // I2C Specifics
	 inout sda,
	 output scl,
	 // For Simulation
	 output [4:0] state_o
    );
	 // Show state
	 assign state_o = state;
	 // I2C inout drive signals
	 reg a,	// Output Signal
		  b;  // Input Signal;
	 reg rrww; // Used to know the state of SDA in an specific moment. 1 = output, 0 = input
	 assign sda = rrww ? a : 1'bz; // Drives to high impedance if working as input
	 //assign data_out = b;
	 /*
	 /		b <= sda;  			// Readign SDA
	 /		a <= sh_data[0];	// Sending through SDA
	 */
	 
	 // Clock Generator sigals and instance
	 wire clk_out;
	 wire cGen_half;
	 wire cGen_en;
	 reg  cGen_rst_n;
	 reg cGen_fSt;
	 reg [15:0] cGen_lim;
	 clk_generator cGen(.clk(clk),.rst_n(cGen_rst_n),.en(cGen_en),.f_state(cGen_fSt),.half_t(cGen_half),.limit(cGen_lim),.clk_out(clk_out));
	 assign scl = clk_out;
	 // Shift Registers
	 reg [15:0] shift_data;
	 reg [15:0] shifted_data;
	 reg [3:0] shifts;
	 reg [3:0] shifts_dummy;
	 
	 // Conditions States
	 localparam start 		 = 0,
	 				stop  		 = 1,
					stop_s		 = 30,
					stop_w		 = 31,
	 				ack_r_wait 	 = 2,
					ack_r_read 	 = 3,
					ack_w_wait 	 = 4,
					ack_w_write  = 5,
	 				nack_w_wait  = 6,
					nack_w_write = 7;
	 // Shift Setup
	 localparam shift_Addr_RW 		= 8,
					shift_1byte_W 		= 9,
					shift_1byte_W_D 	= 10,
					shift_2byte_W 		= 11,
					shift_1byte_R 		= 12,
					shift_2byte_R 		= 13,
					shift_wait			= 14;
	 // Write States
	 localparam shift_hByte = 15,
	 				shift_lByte = 16;
	 // Read States
	 localparam read_hByte = 17,
	 				read_lByte = 18;
	 // Shift Process
	 localparam shift_w 	= 19, // Send bit
					wait_w	= 20,	// Increment shifts
					comp_w	= 21,
					shift_r	= 22,
					wait_r	= 23,
					comp_r	= 24;
	 // Other States
	 localparam reset	 = 25,
					idle 	 = 26,
					init 	 = 27,
					init2  = 28,
					err_st = 29;
					
	 // State Rgisters
	 reg [4:0] state;
	 reg [4:0] next_state;
	 reg [4:0] state_pointer1;
	 reg [4:0] state_pointer2;
	 reg pointing;
	 // Finite State Machines
	 always@(posedge clk) begin
		if(rst_n) 	state <= next_state;
		else			state <= reset;
	 end
	 
	 always@(*) begin
	 /////// OTHER ///////	
		case(state)
			 reset: begin
				// Regs
				a 				<= 1'bz;
				b 				<= sda;
				rrww 			<= 1;		// Writes 'Z' to SDA bus
				cGen_rst_n	<= 0;
				cGen_fSt 	<= 1;
				cGen_lim 	<= 0;
				// Outputs
				busy			<= 1;
				err			<= 1;
				data_o		<=  8'h0;
				
				shift_data 		<= 0;
				shifted_data	<= 0;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				next_state <= idle;
			 end
			 idle: begin
				// Regs
				a 				<= 1'bz;
				b 				<= sda;
				rrww 			<= 1;		// Writes 'Z' to SDA bus
				cGen_rst_n	<= 0;
				cGen_fSt 	<= 1;
				cGen_lim 	<= 16'd1000; // SCL frequency of 50kHz
				// Outputs
				busy			<= 0;
				err			<= 0;
				data_o		<=  8'h0;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				if(en)next_state <= init;
				else next_state <= idle;
			 end
			 init: begin
				// Regs
				a 				<= 1'bz;
				b 				<= sda;
				rrww 			<= 1;		// Writes 'Z' to SDA bus
				cGen_rst_n	<= 1;
				cGen_fSt 	<= 1;
				cGen_lim 	<= 16'd1000; // SCL frequency of 50kHz
				// Outputs
				busy			<= 0;
				err			<= 0;
				data_o		<=  8'h0;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				if(cGen_en)next_state <= init2;
				else next_state <= init;
			 end
			 init2: begin
				// Regs
				a 				<= 1'bz;
				b 				<= sda;
				rrww 			<= 1;		// Writes 'Z' to SDA bus
				cGen_rst_n	<= 1;
				cGen_fSt 	<= 1;
				cGen_lim 	<= 16'd1000; // SCL frequency of 50kHz
				// Outputs
				busy			<= 1;
				err			<= 0;
				data_o		<=  8'h0;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				if(cGen_half)next_state <= start;
				else next_state <= init2;
			 end
			 err_st: begin
				// Regs
				a 				<= 1'bz;
				b 				<= sda;
				rrww 			<= 1;		// Writes 'Z' to SDA bus
				cGen_rst_n	<= 0;
				cGen_fSt 	<= 1;
				cGen_lim 	<= 0;
				// Outputs
				busy			<= 0;
				err			<= 1;
				data_o		<=  8'h0;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				next_state <= err_st;
			 end
			 /////// Protocol ///////
			 	// Write Byte
			 shift_1byte_W: begin
				// Regs
				a 							<= 1'b0;
				b 							<= sda;
				rrww 						<= 1;
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data [15:8]		<= reg_addr;
				shifted_data		 	<= 16'h0;
				shifts					<= 0;
				shifts_dummy			<= 0;
				// Outputs
				busy			<= 1;
				err			<= 0;
				data_o		<= 8'h0;
				// Pointers
				
				state_pointer1 <= shift_1byte_W_D;
				state_pointer2 <= ack_r_wait;
				pointing			<= 1;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				if(cGen_half) next_state <= shift_w;
				else next_state <= shift_1byte_W;
			 end
			 shift_1byte_W_D: begin
				// Regs
				a 							<= 1'b0;
				b 							<= sda;
				rrww 						<= 1;
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data				<= data;
				shifted_data		 	<= 16'h0;
				shifts					<= 0;
				shifts_dummy			<= 0;
				// Outputs
				busy			<= 1;
				err			<= 0;
				data_o		<= 8'h0;
				// Pointers
				
				state_pointer1 <= stop;
				state_pointer2 <= ack_r_wait;
				pointing			<= 1;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				if(cGen_half)next_state <= shift_w;
			 end
			 	// Write 2 Bytes
			 shift_2byte_W: begin
			 
			 end
			 	// Read Byte
			 shift_1byte_R: begin
			 
			 end
			 	// Read 2 Bytes
			 shift_2byte_R: begin
			 
			 end
			 shift_wait: begin
				pointing <= 0;
				if(!clk_out) next_state <= state_pointer1;
			 end
			 /////// Shifting ///////
			 shift_Addr_RW: begin
				// Regs
				a 							<= 1'b0;
				b 							<= sda;
				rrww 						<= 1;		// Writes '0' to SDA bus
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data [15:9]		<= addr;
				shift_data [8]			<= rw;
				shifted_data		 	<= 16'h0;
				shifts					<= 0;
				shifts_dummy			<= 0;
				// Outputs
				busy			<= 1;
				err			<= 0;
				data_o		<= 8'h0;
				// Pointers
				if(rw) begin
					if(burst) 	state_pointer1 <= shift_2byte_R;
					else 			state_pointer1 <= shift_1byte_R;
					state_pointer2 <= ack_r_wait;
				end else begin
					if(burst) 	state_pointer1 <= shift_2byte_W;
					else 			state_pointer1 <= shift_1byte_W;
					state_pointer2 <= ack_r_wait;
				end
				pointing			<= 1;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				if(cGen_half) next_state <= shift_w;
				else next_state <= shift_Addr_RW;	
			 end
			 shift_w: begin
				// Regs
				a 							<= shift_data[15] ? 1'bz : 0;
				b 							<= sda;
				rrww 						<= 1;		// If shift_data[15] = 1, writes 'z'; else, writes 0
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data				<= shift_data;
				shifted_data		 	<= shift_data<<1;
				shifts					<= shifts;
				shifts_dummy			<= shifts+1;
				// Outputs
				busy			<= 1;
				err			<= 0;
				data_o		<= 8'h0;
				// Pointers
				state_pointer1 <= state_pointer1;
				state_pointer2 <= state_pointer2;
				pointing			<= pointing;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				if(clk_out) next_state <= wait_w;
				else next_state <= shift_w;
			 end
			 wait_w: begin
				// Regs
				a 							<= a;
				b 							<= sda;
				rrww 						<= 1;		// Keeps value of a in SDA
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data				<= shifted_data;
				shifted_data		 	<= shifted_data;
				shifts					<= shifts_dummy;
				shifts_dummy			<= shifts_dummy;
				// Outputs
				busy			<= 1;
				err			<= 0;
				data_o		<= 8'h0;
				// Pointers
				state_pointer1 <= state_pointer1;
				state_pointer2 <= state_pointer2;
				pointing			<= pointing;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				if(!clk_out) next_state <= comp_w;
				else next_state <= wait_w;
			 end
			 comp_w: begin
				// Regs
				a 							<= a;
				b 							<= sda;
				rrww 						<= 1;		// Keeps value of a in SDA
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data				<= shifted_data;
				shifted_data		 	<= shifted_data;
				shifts					<= shifts;
				shifts_dummy			<= shifts_dummy;
				// Outputs
				busy			<= 1;
				err			<= 0;
				data_o		<= 8'h0;
				// Pointers
				state_pointer1 <= state_pointer1;
				state_pointer2 <= state_pointer2;
				pointing			<= pointing;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				if(shifts < 8) begin
					if(cGen_half) 	next_state <= shift_w;
					else 				next_state <= comp_w;
				end
				else begin
					if(pointing)	next_state <= state_pointer2;
					else				next_state <= state_pointer1;
				end
			 end
			 /////// Conditions ///////
			 start: begin
				// Regs
				a 				<= 1'b0;
				b 				<= sda;
				rrww 			<= 1;		// Writes '0' to SDA bus
				cGen_rst_n	<= 1;
				cGen_fSt 	<= 1;
				cGen_lim 	<= 16'd1000; // SCL frequency of 50kHz
				// Outputs
				busy			<= 1;
				err			<= 0;
				data_o		<=  8'h0;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				if(!clk_out) next_state <= shift_Addr_RW;
				else next_state <= start;
			 end
			 stop: begin
				// Regs
				a 				<= 1'b0;
				b 				<= sda;
				rrww 			<= 1;		// Writes '0' to SDA bus
				cGen_rst_n	<= 1;
				cGen_fSt 	<= 1;
				cGen_lim 	<= 16'd1000; // SCL frequency of 50kHz
				// Outputs
				busy			<= 1;
				err			<= 0;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				if(clk_out) next_state <= stop_s;
				else next_state <= stop;
			 end
			 stop_s: begin
				// Regs
				a 				<= 1'b0;
				b 				<= sda;
				rrww 			<= 1;		// Writes '0' to SDA bus
				cGen_rst_n	<= 1;
				cGen_fSt 	<= 1;
				cGen_lim 	<= 16'd1000; // SCL frequency of 50kHz
				// Outputs
				busy			<= 1;
				err			<= 0;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				if(cGen_half) next_state <= stop_w;
				else next_state <= stop_s;
			 end
			 stop_w: begin
				// Regs
				a 				<= 1'bz;
				b 				<= sda;
				rrww 			<= 1;		// Writes 'z' to SDA bus
				cGen_rst_n	<= 0;
				cGen_fSt 	<= 1;
				cGen_lim 	<= 16'd1000; // SCL frequency of 50kHz
				// Outputs
				busy			<= 1;
				err			<= 0;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				next_state <= idle;
			 end
			 ack_r_wait: begin
				// Regs
				a 							<= 1'b1;
				b 							<= sda;
				rrww 						<= 1'b0;		// Sets SDA as input
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data				<= shifted_data;
				shifted_data		 	<= shifted_data;
				shifts					<= shifts;
				shifts_dummy			<= shifts_dummy;
				// Outputs
				busy			<= 1;
				err			<= 0;
				data_o		<= 8'h0;
				// Pointers
				state_pointer1 <= state_pointer1;
				state_pointer2 <= state_pointer2;
				pointing			<= 0;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				if(clk_out) next_state <= ack_r_read;
				else next_state <= ack_r_wait;
			 end
			 ack_r_read: begin
				// Regs
				a 							<= a;
				b 							<= sda;
				rrww 						<= 1'b0;		// Sets SDA as input
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data				<= shifted_data;
				shifted_data		 	<= shifted_data;
				shifts					<= shifts;
				shifts_dummy			<= shifts_dummy;
				// Outputs
				busy			<= 1;
				err			<= 0;
				data_o		<= 8'h0;
				// Pointers
				state_pointer1 <= state_pointer1;
				state_pointer2 <= shift_wait;
				pointing			<= pointing;
				/* wires/inputs
				/    clk_out
				/    cGen_half 
				/    cGen_en
				/	  en
				/	  rw
				/	  addr
				/	  reg_addr
				/	  data
				*/
				if(cGen_half) begin
					if(!b) begin
						next_state <= state_pointer2;
					end else 			next_state <= err_st;
				end
				else next_state <= ack_r_read;
			 end
			 ack_w_wait: begin
				
			 end
			 nack_w_wait: begin
				
			 end
		endcase
	end
	 
endmodule
