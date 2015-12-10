`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:09 11/17/2015 
// Design Name: 
// Module Name:    I2C_Top 
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
module I2C_Top(
    input clk,
    input clk_frame,
    input rst,
    input en,
    input start,
    input stop,
    input ack_o,
    input rw,
    input [7:0] out_byte,
    output reg busy,
    output reg err,
    output reg [7:0] in_byte,
	 
	 output SCL,
	 input SDA_in,
	 output SDA_out,
	 output SDA_oen
    );
	 
	 /////////// Bit Controller Instantiation ////////////////////
	 reg en_bit, rw_bit, w_bit, start_cond, stop_cond;				//
	 wire busy_bit, r_bit;													//
	 bit_ctrl bit_controller (												//
    .clk(clk),																	//
    .clk_frame(clk_frame),													//
    .rst(rst),																	//
    .en(en_bit),																//
    .rw(rw_bit),																//
    .w_bit(w_bit),															//
    .start_cond(start_cond),												//
    .stop_cond(stop_cond),													//
    .r_bit(r_bit),															//
    .busy(busy_bit),															//
    .SCL(SCL),																	//
    .SDA_in(SDA_in),															//
	 .SDA_out(SDA_out),														//
	 .SDA_oen(SDA_oen)														//
    );																			//
	 /////////////////////////////////////////////////////////////
	 
	 //////// Internal Registers //////////////////
	 reg[7:0] shift_reg;									//
	 reg[4:0] state;										//
	 reg[3:0] i;											//
	 //////////////////////////////////////////////
	 
	 /////////////// FSM States ///////////////////
	 localparam reset 		= 0,						//
	 				idle			= 1,						//
	 				start_c		= 2,						//
					start_w		= 3,						//
	 				send_bit		= 4,						//
	 				wait_tx		= 5,						//
					wait_tx2		= 6,						//
					read_bit 	= 7,						//
					wait_rx		= 8,						//
					wait_rx2		= 9,						//
	 				stop_c		= 10,						//
					stop_w		= 11,						//
					read_ack 	= 12,						//
					read_ack2 	= 13,						//
					read_ack3 	= 14,						//
					write_ack 	= 15,						//
					write_ack2 	= 16,						//
					write_ack3 	= 17,						//
	 				error			= 18;						//
	 //////////////////////////////////////////////
	 
	 always@(posedge clk) begin
		if(rst)	 state <= reset;
		case(state)
			reset: begin
				i 			 <= 4'h0;
				
				state 	 <= idle;
			end
			
			idle: begin
				i 			 <= 4'h0;
				
				if(en) begin
					if(start) state <= start_c;
					else if(rw) state <= send_bit;
					else state <= read_bit;
				end
				else state 	 <= idle;
			end
			
			start_c: begin
				i 			 <= 4'h0;
				
				if(busy_bit) state 	 <= start_w;
				else 			 state 	 <= start_c;
			end
			
			start_w: begin
				i 			 <= 4'h0;
				
				if(busy_bit) state 	 <= start_w;
				else 			 state 	 <= send_bit;
			end
			
			send_bit: begin
				i 			 <= i;
				
				if(busy_bit) state 	 <= wait_tx;
				else 			 state 	 <= send_bit;
			end
			
			wait_tx: begin
				i 			 <= i+1;
				
				state 	 <= wait_tx2;
			end
			
			wait_tx2: begin
				i 			 <= i;
				
				if(busy_bit) 		state <= wait_tx2;
				else begin
					if(i == 4'h8) 	state <= read_ack;
					else 				state <= send_bit;
				end
			end
			
			read_bit: begin
				i 			 <= i;
				
				if(busy_bit) state 	 <= wait_rx;
				else 			 state 	 <= read_bit;
			end
			
			wait_rx: begin
				i 			 <= i+1;
				
				state 	 <= wait_rx2;
			end
			
			wait_rx2: begin
				i 			 <= i;
				
				if(busy_bit) 		state <= wait_rx2;
				else begin
					if(i == 4'h8) 	state <= write_ack;
					else 				state <= read_bit;
				end
			end
			
			stop_c: begin
				i 			 <= 4'h0;
				
				if(busy_bit) state 	 <= stop_w;
				else 			 state 	 <= stop_c;
			end
			
			stop_w: begin
				i 			 <= 4'h0;
				
				if(busy_bit) state 	 <= stop_w;
				else 			 state 	 <= idle;
			end
			
			read_ack: begin
				i 			 <= i;
				
				if(busy_bit) state 	 <= read_ack2;
				else 			 state 	 <= read_ack;
			end
			
			read_ack2: begin
				i 			 <= i;
				
				if(busy_bit) 		state <= read_ack2;
				else					state <= read_ack3;
			end
			
			read_ack3: begin
				i 			 <= i;
				
				if(r_bit == 0) begin
					if(stop) state <= stop_c;
					else		state <= idle;
				end
				else					state <= error;
			end
			
			write_ack: begin
				i 			 <= i;
				
				if(busy_bit) state 	 <= write_ack2;
				else 			 state 	 <= write_ack;
			end
			
			write_ack2: begin
				i 			 <= i;
				
				if(busy_bit) 		state <= write_ack2;
				else if(stop)		state <= stop_c;
				else					state <= idle;
			end
			
			error: begin
				i 			<= i;
				state 	<= error;
			end
			
			default: begin
				i 			 <= 4'h0;
				state 	 <= idle;
			end
		endcase
	 end
	 ///////////////////////////////////////////////////////////////////////////////////////////////
	 always@(negedge clk) begin
		case(state)
			reset: begin
				shift_reg <= 8'h00;
				in_byte <= 8'h00;
			end
			
			idle: begin
				shift_reg <= out_byte;
				in_byte <= in_byte;
			end
			
			start_c: begin
				shift_reg <= shift_reg;
				in_byte <= in_byte;
			end
			
			start_w: begin
				shift_reg <= shift_reg;
				in_byte <= in_byte;
			end
			
			send_bit: begin
				shift_reg <= shift_reg;
				in_byte <= in_byte;
			end
			
			wait_tx: begin
				shift_reg <= shift_reg << 1;
				in_byte <= in_byte;
			end
			
			wait_tx2: begin
				shift_reg <= shift_reg;
				in_byte <= in_byte;
			end
			
			read_bit: begin
				shift_reg[7:1] <= shift_reg[7:1];
				shift_reg[0] 	<= r_bit;
				in_byte <= in_byte;
			end
			
			wait_rx: begin
				shift_reg <= shift_reg << 1;
				in_byte <= in_byte;
			end
			
			wait_rx2: begin
				shift_reg <= shift_reg;
				in_byte <= in_byte;
			end
			
			stop_c: begin
				shift_reg <= shift_reg;
				in_byte <= in_byte;
			end
			
			stop_w: begin
				shift_reg <= shift_reg;
				in_byte <= in_byte;
			end
			
			read_ack: begin
				shift_reg <= shift_reg;
				in_byte <= in_byte;
			end
			
			read_ack2: begin
				shift_reg <= shift_reg;
				in_byte <= in_byte;
			end
			
			read_ack3: begin
				shift_reg <= shift_reg;
				in_byte <= in_byte;
			end
			
			write_ack: begin
				shift_reg[7:1] <= shift_reg[7:1];
				shift_reg[0] 	<= r_bit;
				in_byte <= in_byte;
			end
			
			write_ack2: begin
				shift_reg <= shift_reg;
				in_byte <= shift_reg;
			end
			
			error: begin
				shift_reg <= 8'hFF;
				in_byte <= 8'hFF;;
			end
			
			default: begin
				shift_reg <= 8'h00;
				in_byte <= 8'h00;
			end
		endcase
	 end
	 ///////////////////////////////////////////////////////////////////////////////////////////////
	 always@(*) begin
		case(state)
			reset: begin
				busy 			<= 1'b1;
				err 			<= 1'b1;
				en_bit 		<= 1'b0;
				rw_bit 		<= 1'b0;
				w_bit 		<= 1'b0;
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			idle: begin
				busy 			<= 1'b0;
				err 			<= 1'b0;
				en_bit 		<= 1'b0;
				rw_bit 		<= 1'b0;
				w_bit 		<= shift_reg[7];
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			start_c: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b1;
				rw_bit 		<= 1'b0;
				w_bit 		<= shift_reg[7];
				start_cond 	<= 1'b1;
				stop_cond 	<= 1'b0;
			end
			
			start_w: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b0;
				rw_bit 		<= 1'b0;
				w_bit 		<= shift_reg[7];
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			send_bit: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b1;
				rw_bit 		<= 1'b1;
				w_bit 		<= shift_reg[7];
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			wait_tx: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b0;
				rw_bit 		<= 1'b0;
				w_bit 		<= shift_reg[7];
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			wait_tx2: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b0;
				rw_bit 		<= 1'b0;
				w_bit 		<= shift_reg[7];
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			read_bit: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b1;
				rw_bit 		<= 1'b0;
				w_bit 		<= shift_reg[7];
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			wait_rx: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b0;
				rw_bit 		<= 1'b0;
				w_bit 		<= shift_reg[7];
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			wait_rx2: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b0;
				rw_bit 		<= 1'b0;
				w_bit 		<= shift_reg[7];
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			stop_c: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b1;
				rw_bit 		<= 1'b0;
				w_bit 		<= shift_reg[7];
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b1;
			end
			
			stop_w: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b0;
				rw_bit 		<= 1'b0;
				w_bit 		<= shift_reg[7];
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			read_ack: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b1;
				rw_bit 		<= 1'b0;
				w_bit 		<= shift_reg[7];
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			read_ack2: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b0;
				rw_bit 		<= 1'b0;
				w_bit 		<= shift_reg[7];
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			read_ack3: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b0;
				rw_bit 		<= 1'b0;
				w_bit 		<= shift_reg[7];
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			write_ack: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b1;
				rw_bit 		<= 1'b1;
				w_bit 		<= ack_o;
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			write_ack2: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b0;
				rw_bit 		<= 1'b0;
				w_bit 		<= ack_o;
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			error: begin
				busy 			<= 1'b0;
				err 			<= 1'b1;
				en_bit 		<= 1'b0;
				rw_bit 		<= 1'b0;
				w_bit 		<= 1'b0;
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
			
			default: begin
				busy 			<= 1'b1;
				err 			<= 1'b0;
				en_bit 		<= 1'b1;
				rw_bit 		<= 1'b1;
				w_bit 		<= ack_o;
				start_cond 	<= 1'b0;
				stop_cond 	<= 1'b0;
			end
		endcase
	 end
	 
endmodule
