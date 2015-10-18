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
	 output reg scl,
	 // For Simulation
	 output [5:0] state_o
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
	 // Shift Registers
	 reg [15:0] shift_data;
	 reg [15:0] shifted_data;
	 reg [3:0] shifts;
	 reg [3:0] shifts_dummy;
	 
	 // Conditions States
	 localparam start 		 = 6'd0,
	 				stop  		 = 6'd1,
					stop_s		 = 6'd2,
					stop_w		 = 6'd3,
	 				ack_r_wait 	 = 6'd4,
					ack_r_read 	 = 6'd5,
					ack_w_wait 	 = 6'd6,
					ack_w_write  = 6'd7,
	 				nack_w_wait  = 6'd8,
					nack_w_write = 6'd9,
					nack_w_write2 = 6'd41;
	 // Shift Setup
	 localparam shift_Addr_RW 		= 6'd10,
					shift_1byte_W 		= 6'd11,
					shift_1byte_W_D 	= 6'd12,
					shift_2byte_W 		= 6'd13,
					shift_2byte_W_D 	= 6'd14,
					shift_2byte_W_D2 	= 6'd15,
					shift_1byte_R 		= 6'd16,
					shift_1byte_RS		= 6'd17,
					shift_1byte_Add_R	= 6'd18,
					shift_1byte_R_D 	= 6'd19,
					shift_2byte_R 		= 6'd20,
					shift_2byte_RS		= 6'd21,
					shift_2byte_Add_R	= 6'd22,
					shift_2byte_R_D 	= 6'd23,
					shift_2byte_R_D2 	= 6'd24,
					shift_wait			= 6'd25;
	 // Write States
	 localparam shift_hByte = 6'd26,
	 				shift_lByte = 6'd27;
	 // Read States
	 localparam read_hByte = 6'd28,
	 				read_lByte = 6'd29;
	 // Shift Process
	 localparam shift_w 	= 6'd30, // Send bit
					wait_w	= 6'd31,	// Increment shifts
					comp_w	= 6'd32,
					shift_r	= 6'd33,
					wait_r	= 6'd34,
					comp_r	= 6'd35;
	 // Other States
	 localparam reset	 = 6'd36,
					idle 	 = 6'd37,
					init 	 = 6'd38,
					init2  = 6'd39,
					err_st = 6'd40;
					
	 // State Rgisters
	 reg [5:0] state;
	 reg [5:0] next_state;
	 reg [5:0] state_pointer1;
	 reg [5:0] state_pointer2;
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
				rrww 			<= 1'b1;		// Writes 'Z' to SDA bus
				cGen_rst_n	<= 1'b0;
				cGen_fSt 	<= 1'b1;
				cGen_lim 	<= 1'b0;
				// Outputs
				busy			<= 1'b1;
				err			<= 1'b1;
				data_o		<= 16'h0;
				
				shift_data 		<= 16'h0;
				shifted_data	<= 16'h0;
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
				rrww 			<= 1'b1;		// Writes 'Z' to SDA bus
				cGen_rst_n	<= 1'b0;
				cGen_fSt 	<= 1'b1;
				cGen_lim 	<= 16'd1000; // SCL frequency of 50kHz
				// Outputs
				busy			<= 0;
				err			<= 0;
				data_o		<=  data_o;
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
				rrww 			<= 1'b1;		// Writes 'Z' to SDA bus
				cGen_rst_n	<= 1'b1;
				cGen_fSt 	<= 1'b1;
				cGen_lim 	<= 16'd1000; // SCL frequency of 50kHz
				// Outputs
				busy			<= 1'b0;
				err			<= 1'b0;
				data_o		<= 16'h0;
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
				rrww 			<= 1'b1;		// Writes 'Z' to SDA bus
				cGen_rst_n	<= 1'b1;
				cGen_fSt 	<= 1'b1;
				cGen_lim 	<= 16'd1000; // SCL frequency of 50kHz
				// Outputs
				busy			<= 1'b1;
				err			<= 1'b0;
				data_o		<= 16'h0;
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
				rrww 			<= 1'b1;		// Writes 'Z' to SDA bus
				cGen_rst_n	<= 1'b0;
				cGen_fSt 	<= 1'b1;
				cGen_lim 	<= 1'b0;
				// Outputs
				busy			<= 1'b0;
				err			<= 1'b1;
				data_o		<= 16'h0;
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
			 /////////////////////////////////////////// Protocol ///////////////////////////////////////////////////
			 	// Write Byte
			 shift_1byte_W: begin
				// Regs
				a 							<= 1'b0;
				b 							<= sda;
				rrww 						<= 1'b1;
				cGen_rst_n				<= 1'b1;
				cGen_fSt 				<= 1'b1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data [15:8]		<= reg_addr;
				shifted_data		 	<= 16'h0;
				shifts					<= 0;
				shifts_dummy			<= 0;
				// Outputs
				busy			<= 1'b1;
				err			<= 1'b0;
				data_o		<= 16'h0;
				// Pointers
				
				state_pointer1 <= shift_1byte_W_D;
				state_pointer2 <= ack_r_wait;
				pointing			<= 1'b1;
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
				rrww 						<= 1'b1;
				cGen_rst_n				<= 1'b1;
				cGen_fSt 				<= 1'b1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data				<= data;
				shifted_data		 	<= 16'h0;
				shifts					<= 0;
				shifts_dummy			<= 0;
				// Outputs
				busy			<= 1'b1;
				err			<= 1'b0;
				data_o		<= 16'h0;
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
				if(cGen_half) next_state <= shift_w;
				else next_state <= shift_1byte_W_D;
			 end
			 	// Write 2 Bytes
			 shift_2byte_W: begin
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
				
				state_pointer1 <= shift_2byte_W_D;
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
				else next_state <= shift_2byte_W;
			 end
			 shift_2byte_W_D: begin
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
				state_pointer1 <= shift_2byte_W_D2;
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
				else next_state <= shift_2byte_W_D;
			 end
			 shift_2byte_W_D2: begin
				// Regs
				a 							<= 1'b0;
				b 							<= sda;
				rrww 						<= 1;
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data				<= shift_data;
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
				if(cGen_half) next_state <= shift_w;
				else next_state <= shift_2byte_W_D2;
			 end
			 	// Read Byte
			 shift_1byte_R: begin
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
				state_pointer1 <= shift_1byte_RS;
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
				else next_state <= shift_1byte_R;
			 end
			 shift_1byte_RS: begin
				a 							<= 1'bz;
				b 							<= sda;
				rrww 						<= 1;
				state_pointer1 <= shift_1byte_RS;
				state_pointer2 <= shift_1byte_Add_R;
				pointing			<= 1;
				if(clk_out&&cGen_half)  next_state <= start;
				else 							next_state <= shift_1byte_RS;
			 end
			 shift_1byte_Add_R: begin
			 	// Regs
			 	a 							<= 1'b0;
			 	b 							<= sda;
			 	rrww 						<= 1;		// Writes '0' to SDA bus
			 	cGen_rst_n				<= 1;
			 	cGen_fSt 				<= 1;
			 	cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
			 	shift_data [15:9]		<= addr;
			 	shift_data [8]			<= 1;
			 	shifted_data		 	<= 16'h0;
			 	shifts					<= 0;
			 	shifts_dummy			<= 0;
			 	// Outputs
			 	busy			<= 1;
			 	err			<= 0;
			 	data_o		<= 8'h0;
			 	// Pointers
			 	 
			  	state_pointer1 <= shift_1byte_R_D;
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
			 	else next_state <= shift_1byte_Add_R;
			 end
			 shift_1byte_R_D: begin
				// Regs
				a 						<= 1'bz;
				b 						<= sda;
				rrww 					<= 0;
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data				<= 16'h0;
				shifted_data		 	<= 16'h0;
				shifts					<= 0;
				shifts_dummy			<= 0;
				// Outputs
				busy		<= 1;
				err			<= 0;
				data_o		<= 8'h0;
				// Pointers
				state_pointer1  <= stop;
				state_pointer2  <= nack_w_wait;
				pointing		<= 1;
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
				if(cGen_half) next_state <= shift_r;
				else next_state <= shift_1byte_R_D;
			 end		 
			 
			 	// Read 2 Bytes
			 shift_2byte_R: begin
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
				state_pointer1 <= shift_2byte_RS;
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
				else next_state <= shift_2byte_R;
			 end
			 shift_2byte_RS: begin
				a 							<= 1'bz;
				b 							<= sda;
				rrww 						<= 1;
				state_pointer1 <= shift_2byte_RS;
				state_pointer2 <= shift_2byte_Add_R;
				pointing			<= 1;
				if(clk_out&&cGen_half)  next_state <= start;
				else 							next_state <= shift_2byte_RS;
			 end
			 shift_2byte_Add_R: begin
			 	// Regs
			 	a 							<= 1'b0;
			 	b 							<= sda;
			 	rrww 						<= 1;		// Writes '0' to SDA bus
			 	cGen_rst_n				<= 1;
			 	cGen_fSt 				<= 1;
			 	cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
			 	shift_data [15:9]		<= addr;
			 	shift_data [8]			<= 1;
			 	shifted_data		 	<= 16'h0;
			 	shifts					<= 0;
			 	shifts_dummy			<= 0;
			 	// Outputs
			 	busy			<= 1;
			 	err			<= 0;
			 	data_o		<= 8'h0;
			 	// Pointers
			 	 
			  	state_pointer1 <= shift_2byte_R_D;
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
			 	else next_state <= shift_2byte_Add_R;
			 end
			 shift_2byte_R_D: begin
				// Regs
				a 						<= 1'bz;
				b 						<= sda;
				rrww 					<= 0;
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data				<= 16'h0;
				shifted_data		 	<= 16'h0;
				shifts					<= 0;
				shifts_dummy			<= 0;
				// Outputs
				busy		<= 1;
				err			<= 0;
				data_o		<= 8'h0;
				// Pointers
				state_pointer1  <= shift_2byte_R_D2;
				state_pointer2  <= ack_w_wait;
				pointing		<= 1;
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
				if(cGen_half) next_state <= shift_r;
				else next_state <= shift_2byte_R_D;
			 end

			 shift_2byte_R_D2: begin
				// Regs
				a 						<= 1'bz;
				b 						<= sda;
				rrww 					<= 0;
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data				<= shift_data;
				shifted_data		 	<= shifted_data;
				shifts					<= 0;
				shifts_dummy			<= 0;
				// Outputs
				busy		<= 1;
				err			<= 0;
				data_o		<= 8'h0;
				// Pointers
				state_pointer1  <= stop;
				state_pointer2  <= nack_w_wait;
				pointing		<= 1;
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
				if(cGen_half) next_state <= shift_r;
				else next_state <= shift_2byte_R_D2;
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
				shift_data [8]			<= 0;
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
				a 							<= shift_data[15] ? 1'bz : 1'b0;
				b 							<= sda;
				rrww 						<= 1'b1;		// If shift_data[15] = 1, writes 'z'; else, writes 0
				cGen_rst_n				<= 1'b1;
				cGen_fSt 				<= 1'b1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data				<= shift_data;
				shifted_data		 	<= shift_data<<1;
				shifts					<= shifts;
				shifts_dummy			<= shifts+1;
				// Outputs
				busy			<= 1'b1;
				err			<= 1'b0;
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
			 
			 shift_r: begin
				// Regs
				a 							<= 1'bz;
				b 							<= sda;
				rrww 						<= 1'b0;		// Sets SDA as input, it's value is stored in b
				cGen_rst_n				<= 1'b1;
				cGen_fSt 				<= 1'b1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data[7:1]		<= shift_data[7:1];
				shift_data[0]			<= b;
				shifted_data		 	<= shift_data<<1;
				shifts					<= shifts;
				shifts_dummy			<= shifts+1;
				// Outputs
				busy			<= 1'b1;
				err			<= 1'b0;
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
				if(clk_out&&cGen_half) next_state <= wait_r;
				else next_state <= shift_r;
			 end
			 wait_r: begin
				// Regs
				a 							<= a;
				b 							<= sda;
				rrww 						<= 1'b0;		// Keeps SDA as input
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				if(shifts_dummy < 8) begin
					shift_data				<= shifted_data;
					shifted_data		 	<= shifted_data;
				end
				else begin
					shift_data				<= shift_data;
					shifted_data		 	<= shifted_data;
				end
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
				if(!clk_out) next_state <= comp_r;
				else next_state <= wait_r;
			 end
			 comp_r: begin
				// Regs
				a 							<= a;
				b 							<= sda;
				rrww 						<= 1'b0;		// Keeps SDA as input
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data				<= shift_data;
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
					if(cGen_half) 	next_state <= shift_r;
					else 				next_state <= comp_r;
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
				if(!clk_out) begin
					if(rw) begin
						if(pointing) next_state <= state_pointer2;
						else next_state <= shift_Addr_RW;
					end
					else next_state <= shift_Addr_RW;
				end
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
				// Regs
				a 							<= 1'b0;
				b 							<= sda;
				rrww 						<= 1'b1;		// Sets SDA as output, writes 0
				cGen_rst_n				<= 1;
				cGen_fSt 				<= 1;
				cGen_lim 				<= 16'd1000; // SCL frequency of 50kHz
				shift_data				<= shifted_data;
				shifted_data 			<= shifted_data;
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
				if(clk_out) next_state <= ack_w_write;
				else next_state <= ack_w_wait;
			 end
			 ack_w_write: begin
				shift_data <= shift_data;
				shifted_data <= shifted_data;
				state_pointer2 <= shift_wait;
				if(cGen_half) next_state <= state_pointer2;
				else next_state <= ack_w_write;
			 end
			 
			 nack_w_wait: begin
				//shifted_data <= shift_data >> 1;
				if(cGen_half) next_state <= nack_w_write;
				else next_state <= nack_w_wait;
			 end
			 nack_w_write: begin
				a 							<= 1'bz;
				b 							<= sda;
				rrww 						<= 1'b1;		// Sets SDA as output, writes z
				/*shift_data <= shifted_data;
				shifted_data <= shifted_data;*/
				if(clk_out) next_state <= nack_w_write2;
				else next_state <= nack_w_write;
			 end
			 nack_w_write2: begin
				data_o <= shift_data;
				if(!clk_out) next_state <= stop;
				else next_state <= nack_w_write2;
			 end
		endcase
	end
	 
	 
	 always@(*) begin
		if(clk_out) scl <= 1'bz;
		else			scl <= 1'b0;
	 end
	 
endmodule
