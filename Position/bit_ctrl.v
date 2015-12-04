`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:38:34 11/16/2015 
// Design Name: 
// Module Name:    bit_ctrl 
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
module bit_ctrl(
    input clk,
    input clk_frame,
    input rst,
    input en,
    input rw,
	 input w_bit,
    input start_cond,
    input stop_cond,
    output reg r_bit,
    output reg busy,
	 output reg SCL,
	 input SDA_in,
	 output reg SDA_out,
	 output reg SDA_oen
    );
	 
	 /*////////////////////////////////
	 * INOUT
	 *  - clk: FPGA's clpck
	 *  - clk_frame: Frame Clock, it is 4 times the frequency of the SCL bus
	 *  - rst: Reset Signal
	 *  - en: Enable Signal
	 *  - start_cond: If set, it will generate an START condition
	 *  - stop_cond: If set, it will generate an STOP condition
	 *  - w_bit: Bit to be written on SDA bus
	 *  - rw: 0 = Read, 1 = Write
	 *  - r_bit: Read bit on the SDA bus
	 * 
	//////////////////////////////////
	 * 
	 * BUS Driver
	 * SDA:
	 * 	SDA_in:	Input reading
	 *		SDA_out:	Output driver
	 *		SDA_oen:	Output enable
	 *
	//////////////////////////////////
	 *				|   |   |   |   |
	 * FRAME:	| A | B | C | D |
	 * SDA:		|<==|===|===|==>|
	 * SCL		|___|"""|"""|___|
	 *          |   |   |   |   |
	/*///////////////////////////////
	/*
	///////////// I2C Bus Driver/////////////
	wire SDA_in;									//
	reg SDA_out, SDA_oen;						//
	initial begin									//
		SDA_out 	= 1'bz;							//
		SDA_oen = 1'b0;							//
	end												//
	assign SDA = SDA_oen ? SDA_out : 1'bz;	//
	assign SDA_in = SDA;							//
	/////////////////////////////////////////
	*/
	/////////// Internal Registers //////////
	reg write_bit,write_bit_d;					//
	reg in_bit,in_bit_d;							//
	reg[4:0] state;								//
	reg[2:0] del_frame;							//
	reg en_st;										//
	reg SCL_d,SDA_out_d,SDA_oen_d;			//
	/////////////////////////////////////////
	
	/////////////// FSM States //////////////
	localparam 	start 	= 0,					//
					idle 		= 1,					//
					write_A	= 2,					//
					write_B	= 3,					//
					write_C	= 4,					//
					write_D	= 5,					//
					read_A	= 6,					//
					read_B	= 7,					//
					read_C	= 8,					//
					read_D	= 9,					//
					start_A	= 10,					//
					start_B	= 11,					//
					start_C	= 12,					//
					start_D	= 13,					//
					stop_A	= 14,					//
					stop_B	= 15,					//
					stop_C	= 16,					//
					stop_D	= 17;					//
	/////////////////////////////////////////
	
	always @(negedge clk) begin
		write_bit_d <= write_bit;
		in_bit_d <= in_bit;
		SCL_d <= SCL;
		SDA_out_d <= SDA_out;
		SDA_oen_d <= SDA_oen;
		
		del_frame[0] <= ~clk_frame;
		del_frame[2] <= ~del_frame[1];
	end
	
	always @(posedge clk) begin
		del_frame[1] <= ~del_frame[0];
		
		if(rst) state <= start;
		else begin
			case(state)
				start: begin
					state <= idle;
				end
				
				idle: begin
					if(en) begin
						if(start_cond) state <= start_A;
						else if(stop_cond) state <= stop_A;
						else if(rw) state <= write_A;
						else state <= read_A;
					end
					else state <= idle;
				end
				
				write_A: begin
					if(en_st) state <= write_B;
				end
				
				write_B: begin
					if(en_st) state <= write_C;
				end
				
				write_C: begin
					if(en_st) state <= write_D;
				end
				
				write_D: begin
					if(en_st) state <= idle;
				end
				
				read_A: begin
					if(en_st) state <= read_B;
				end
				
				read_B: begin
					if(en_st) state <= read_C;
				end
				
				read_C: begin
					if(en_st) state <= read_D;
				end
				
				read_D: begin
					if(en_st) state <= idle;
				end
				
				start_A: begin
					if(en_st) state <= start_B;
				end
				
				start_B: begin
					if(en_st) state <= start_C;
				end
				
				start_C: begin
					if(en_st) state <= start_D;
				end
				
				start_D: begin
					if(en_st) state <= idle;
				end
				
				stop_A: begin
					if(en_st) state <= stop_B;
				end
				
				stop_B: begin
					if(en_st) state <= stop_C;
				end
				
				stop_C: begin
					if(en_st) state <= stop_D;
				end
				
				stop_D: begin
					if(en_st) state <= idle;
				end
				
				default: begin
					state <=rst;
				end
			endcase
		end
	end
	
	always@(*) begin
		en_st <= clk_frame & del_frame[0];
		case(state)
			start: begin
				r_bit			<= 1'b0;	// Read Bit (Output)
				busy			<= 1'b1;	// Busy Signal (Output)
				SCL			<= 1'bz;	// SCL Bus (Output)
				SDA_out		<= 1'bz;	// Value of SDA Bus if Enable
				SDA_oen		<= 1'b0;	// SDA Bus Output Enable
				write_bit	<= 1'b0;	// write_bit (Internal Register)
				in_bit		<= 1'b0;	// in_bit (Internal Register)
			end
			
			idle: begin
				r_bit			<= in_bit;		// Read Bit (Output)
				busy			<= 1'b0;			// Busy Signal (Output)
				SCL			<= SCL_d;		// SCL Bus (Output)
				SDA_out		<= SDA_out_d;	// Value of SDA Bus if Enable
				SDA_oen		<= SDA_oen_d;	// SDA Bus Output Enable
				write_bit	<= w_bit;		// write_bit (Internal Register)
				in_bit		<= in_bit_d;	// in_bit (Internal Register)
			end
			
			write_A: begin
				r_bit			<= in_bit;								// Read Bit (Output)
				busy			<= 1'b1;									// Busy Signal (Output)
				SCL			<= 1'b0;									// SCL Bus (Output)
				SDA_out		<= write_bit ? 1'bz : 1'b0;		// Value of SDA Bus if Enable
				SDA_oen		<= 1'b1;									// SDA Bus Output Enable
				write_bit	<= write_bit_d;						// write_bit (Internal Register)
				in_bit		<= in_bit_d;							// in_bit (Internal Register)
			end
			
			write_B: begin
				r_bit			<= in_bit;								// Read Bit (Output)
				busy			<= 1'b1;									// Busy Signal (Output)
				SCL			<= 1'bz;									// SCL Bus (Output)
				SDA_out		<= write_bit ? 1'bz : 1'b0;		// Value of SDA Bus if Enable
				SDA_oen		<= 1'b1;									// SDA Bus Output Enable
				write_bit	<= write_bit_d;						// write_bit (Internal Register)
				in_bit		<= in_bit_d;							// in_bit (Internal Register)
			end
			
			write_C: begin
				r_bit			<= in_bit;								// Read Bit (Output)
				busy			<= 1'b1;									// Busy Signal (Output)
				SCL			<= 1'bz;									// SCL Bus (Output)
				SDA_out		<= write_bit ? 1'bz : 1'b0;		// Value of SDA Bus if Enable
				SDA_oen		<= 1'b1;									// SDA Bus Output Enable
				write_bit	<= write_bit_d;						// write_bit (Internal Register)
				in_bit		<= in_bit_d;							// in_bit (Internal Register)
			end
			
			write_D: begin
				r_bit			<= in_bit;								// Read Bit (Output)
				busy			<= 1'b1;									// Busy Signal (Output)
				SCL			<= 1'b0;									// SCL Bus (Output)
				SDA_out		<= write_bit ? 1'bz : 1'b0;		// Value of SDA Bus if Enable
				SDA_oen		<= 1'b1;									// SDA Bus Output Enable
				write_bit	<= write_bit_d;						// write_bit (Internal Register)
				in_bit		<= in_bit_d;							// in_bit (Internal Register)
			end
			
			read_A: begin
				r_bit			<= in_bit;			// Read Bit (Output)
				busy			<= 1'b1;				// Busy Signal (Output)
				SCL			<= 1'b0;				// SCL Bus (Output)
				SDA_out		<= 1'bz;				// Value of SDA Bus if Enable
				SDA_oen		<= 1'b0;				// SDA Bus Output Enable
				write_bit	<= write_bit_d;	// write_bit (Internal Register)
				in_bit		<= in_bit_d;		// in_bit (Internal Register)
			end
			
			read_B: begin
				r_bit			<= in_bit;			// Read Bit (Output)
				busy			<= 1'b1;				// Busy Signal (Output)
				SCL			<= 1'bz;				// SCL Bus (Output)
				SDA_out		<= 1'bz;				// Value of SDA Bus if Enable
				SDA_oen		<= 1'b0;				// SDA Bus Output Enable
				write_bit	<= write_bit_d;	// write_bit (Internal Register)
				in_bit		<= SDA_in;			// in_bit (Internal Register)
			end
			
			read_C: begin
				r_bit			<= in_bit;			// Read Bit (Output)
				busy			<= 1'b1;				// Busy Signal (Output)
				SCL			<= 1'bz;				// SCL Bus (Output)
				SDA_out		<= 1'bz;				// Value of SDA Bus if Enable
				SDA_oen		<= 1'b0;				// SDA Bus Output Enable
				write_bit	<= write_bit_d;	// write_bit (Internal Register)
				in_bit		<= in_bit_d;		// in_bit (Internal Register)
			end
			
			read_D: begin
				r_bit			<= in_bit;			// Read Bit (Output)
				busy			<= 1'b1;				// Busy Signal (Output)
				SCL			<= 1'b0;				// SCL Bus (Output)
				SDA_out		<= 1'bz;				// Value of SDA Bus if Enable
				SDA_oen		<= 1'b0;				// SDA Bus Output Enable
				write_bit	<= write_bit_d;	// write_bit (Internal Register)
				in_bit		<= in_bit_d;		// in_bit (Internal Register)
			end
			
			start_A: begin
				r_bit			<= 1'b0;				// Read Bit (Output)
				busy			<= 1'b1;				// Busy Signal (Output)
				SCL			<= SCL_d;				// SCL Bus (Output)
				SDA_out		<= 1'bz;				// Value of SDA Bus if Enable
				SDA_oen		<= 1'b1;				// SDA Bus Output Enable
				write_bit	<= 1'b0;				// write_bit (Internal Register)
				in_bit		<= 1'b0;				// in_bit (Internal Register)
			end
			
			start_B: begin
				r_bit			<= in_bit;			// Read Bit (Output)
				busy			<= 1'b1;				// Busy Signal (Output)
				SCL			<= 1'bz;				// SCL Bus (Output)
				SDA_out		<= 1'bz;				// Value of SDA Bus if Enable
				SDA_oen		<= 1'b1;				// SDA Bus Output Enable
				write_bit	<= write_bit_d;	// write_bit (Internal Register)
				in_bit		<= in_bit_d;		// in_bit (Internal Register)
			end
			
			start_C: begin
				r_bit			<= in_bit;			// Read Bit (Output)
				busy			<= 1'b1;				// Busy Signal (Output)
				SCL			<= 1'bz;				// SCL Bus (Output)
				SDA_out		<= 1'b0;				// Value of SDA Bus if Enable
				SDA_oen		<= 1'b1;				// SDA Bus Output Enable
				write_bit	<= write_bit_d;	// write_bit (Internal Register)
				in_bit		<= in_bit_d;		// in_bit (Internal Register)
			end
			
			start_D: begin
				r_bit			<= in_bit;			// Read Bit (Output)
				busy			<= 1'b1;				// Busy Signal (Output)
				SCL			<= 1'b0;				// SCL Bus (Output)
				SDA_out		<= 1'b0;				// Value of SDA Bus if Enable
				SDA_oen		<= 1'b1;				// SDA Bus Output Enable
				write_bit	<= write_bit_d;	// write_bit (Internal Register)
				in_bit		<= in_bit_d;		// in_bit (Internal Register)
			end
			
			stop_A: begin
				r_bit			<= 1'b0;				// Read Bit (Output)
				busy			<= 1'b1;				// Busy Signal (Output)
				SCL			<= 1'b0;				// SCL Bus (Output)
				SDA_out		<= 1'b0;				// Value of SDA Bus if Enable
				SDA_oen		<= 1'b1;				// SDA Bus Output Enable
				write_bit	<= 1'b0;				// write_bit (Internal Register)
				in_bit		<= 1'b0;				// in_bit (Internal Register)
			end
			
			stop_B: begin
				r_bit			<= in_bit;			// Read Bit (Output)
				busy			<= 1'b1;				// Busy Signal (Output)
				SCL			<= 1'bz;				// SCL Bus (Output)
				SDA_out		<= 1'b0;				// Value of SDA Bus if Enable
				SDA_oen		<= 1'b1;				// SDA Bus Output Enable
				write_bit	<= write_bit_d;	// write_bit (Internal Register)
				in_bit		<= in_bit_d;		// in_bit (Internal Register)
			end
			
			stop_C: begin
				r_bit			<= in_bit;			// Read Bit (Output)
				busy			<= 1'b1;				// Busy Signal (Output)
				SCL			<= 1'bz;				// SCL Bus (Output)
				SDA_out		<= 1'bz;				// Value of SDA Bus if Enable
				SDA_oen		<= 1'b1;				// SDA Bus Output Enable
				write_bit	<= write_bit_d;	// write_bit (Internal Register)
				in_bit		<= in_bit_d;		// in_bit (Internal Register)
			end
			
			stop_D: begin
				r_bit			<= in_bit;			// Read Bit (Output)
				busy			<= 1'b1;				// Busy Signal (Output)
				SCL			<= 1'bz;				// SCL Bus (Output)
				SDA_out		<= 1'bz;				// Value of SDA Bus if Enable
				SDA_oen		<= 1'b1;				// SDA Bus Output Enable
				write_bit	<= write_bit_d;	// write_bit (Internal Register)
				in_bit		<= in_bit_d;		// in_bit (Internal Register)
			end
			
			default: begin
				r_bit			<= 1'b0;	// Read Bit (Output)
				busy			<= 1'b1;	// Busy Signal (Output)
				SCL			<= 1'bz;	// SCL Bus (Output)
				SDA_out		<= 1'bz;	// Value of SDA Bus if Enable
				SDA_oen		<= 1'b0;	// SDA Bus Output Enable
				write_bit	<= 1'b0;	// write_bit (Internal Register)
				in_bit		<= 1'b0;	// in_bit (Internal Register)
			end
		endcase
	end
	
endmodule
