`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:17:39 10/10/2015 
// Design Name: 
// Module Name:    Top_Multiplier 
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
module Top_Multiplier(
    input clk,
    input rst_n,
    input enable,
    input [15:0] A,
    input [15:0] B,
    output reg busy,
    output reg [31:0] R
    );
	 
	 // Internal Registers
	 reg[31:0] uv;		// Result
	 reg x_1;			// Last bit, before RSC
	 reg [15:0] x;		// X
	 reg [15:0] y;		// Y
	 wire [15:0] n_y;	//	-Y
	 wire [5:0] i;
	 reg i_stim;
	 reg i_rst;
	 //reg uv_stim;
	 wire [31:0] uv_shift;
	 reg [15:0] toSum;
	 wire [15:0] uv_sum;
	 reg [31:0] ax;
	 reg [15:0] b_uv;
	 // Intermediate Signals
	 wire [4:0] tran_a; // Number of transitions in A
	 wire [4:0] tran_b; // Number of transitions in B
	 wire comp_a_b;	  // A > B ?
	 //wire [31:0]RSC_X;
	 wire RSC_LSB_X;
	 reg tr_en;
	 // Instantiation
	 popCount_16b tA(.en(tr_en),.AA(A),.O(tran_a));
	 popCount_16b tB(.en(tr_en),.AA(B),.O(tran_b));
	 Comparator c_A_B(.A(tran_a),.B(tran_b),.G(comp_a_b));
	 Complement negY(.in(y),.out(n_y));
	 RSC rsc(.a(ax),.lsb_a(RSC_LSB_X),.o(uv_shift));
	 s_Adder uvAdd(.a(b_uv),.b(toSum),.r(uv_sum));
	 counter_6 cc(.clk(clk),.stim(i_stim),.rst(i_rst),.count(i));
	 //RSL uv_RLshift(.a(uv),.stim(uv_stim),.out(uv_shift));
	 // State Machine Codification
	 localparam 	reset	= 4'h0,
						idle	= 4'h1,
						i0		= 4'h2,
						ops	= 4'h3,
						uy		= 4'h4,
						uny	= 4'h5,
						uvrs	= 4'h6,
						xrs	= 4'h7,
						inc	= 4'h8;
	 // State Machine Regs
	 reg[3:0] state;
	 reg[3:0] next_state;
	 
	 initial state = 0;
	 initial next_state = 0;
	 
	 // OP
	 wire[1:0] op;
	 assign  op[1] = uv[0],
			 op[0] = x_1;
	 
	 //Secuential Block
	 always @(posedge clk) begin
		if(rst_n) state <= next_state;
		else    state <= reset;
	 end
	 
	 // Combinational Block
	  always @(*) begin
		case(state)
			reset: begin
				// Outputs
				busy 	<= 1;		// Busy
				R 	 	<= 0;			// Result
				// Internal Registers
				uv 	 	<= 0;	// Acumulator
				x_1  	<= 0;	// Last bit, before RSC
				x 	 	<= 0;	// X
				y 	 	<= 0;	// Y
				i_stim 	<= 0;	// Stimulus to increment i
				i_rst 	<= 0;	// i reset
				toSum 	<= 0;	// Y or -Y
				ax 		<= 0;	// To be Shifted
				tr_en 	<= 0;	// popCounts enable signal
				b_uv		<= 0;
				next_state <= idle;
			end
			idle: begin
				// Outputs
				busy 	<= 0;		// Busy
				R 	 	<= uv;		// Result
				// Internal Registers
				x_1  	<= 0;		// Last bit, before RSC
				x 	 	<= 0;		// X
				y 	 	<= 0;		// Y
				i_stim 	<= 0;		// Stimulus to increment i
				i_rst 	<= 0;		// i reset
				toSum 	<= 0;		// Y or -Y
				ax 		<= 0;		// To be Shifted
				tr_en 	<= 1;		// popCounts enable signal
				b_uv		<= 0;
				if (enable) next_state <= i0;
				else 		next_state <= idle;
			end
			i0: begin
				// Outputs
				busy 	<= 1;					// Busy
				R 	 	<= 0;					// Result
				// Internal Registers
				uv 	 	<= {16'h0,x};	// Acumulator
				x_1  	<= 0;					// Last bit, before RSC
				if(comp_a_b) begin
					x 	 	<= B;				// X
					y 	 	<= A;				// Y
				end else begin
					x 	 	<= A;				// X
					y 	 	<= B;				// Y
				end
				i_stim 	<= 0;				// Stimulus to increment i
				i_rst 	<= 1;				// i reset
				toSum 	<= 0;				// Y or -Y
				ax 		<= 0;				// To be Shifted
				b_uv		<= 0;
				tr_en 	<= 1;				// popCounts enable signal
				next_state <= ops;	
			end
			ops: begin
				// Outputs
				busy 	<= 1;			// Busy
				R 	 	<= 0;			// Result
				// Internal Registers
				i_stim 	<= 0;		// Stimulus to increment i
				i_rst 	<= 1;		// i reset
				tr_en 	<= 0;		// popCounts enable signal
				ax 		<= uv;
				case(op)
					0: next_state <= uvrs;
					1: next_state <= uy;
					2: next_state <= uny;
					3: next_state <= uvrs;
				endcase
			end
			uy: begin
				// Outputs
				busy 	<= 1;		// Busy
				R 	 	<= 0;			// Result
				// Internal Registers
				b_uv		<= uv[31:16];
				i_stim 	<= 0;	// Stimulus to increment i
				i_rst 	<= 1;	// i reset
				toSum 	<= y;	// Y or -Y
				ax 		<= {uv_sum,uv[15:0]};;	// To be Shifted
				tr_en 	<= 0;	// popCounts enable signal
				next_state <= uvrs;
			end
			uny: begin
				// Outputs
				busy 	<= 1;		// Busy
				R 	 	<= 0;			// Result
				// Internal Registers
				b_uv		<= uv[31:16];
				i_stim 	<= 0;	// Stimulus to increment i
				i_rst 	<= 1;	// i reset
				toSum 	<= n_y;	// Y or -Y
				ax 		<= {uv_sum,uv[15:0]};	// To be Shifted
				tr_en 	<= 0;	// popCounts enable signal
				next_state <= uvrs;
			end
			uvrs: begin
				// Outputs
				busy 	<= 1;			// Busy
				R 	 	<= 0;			// Result
				// Internal Registers
				//uv 		<= uv_sum;
				i_stim 	<= 0;	// Stimulus to increment i
				i_rst 	<= 1;	// i reset
				uv 		<= uv_shift;
				x_1 		<= RSC_LSB_X;
				tr_en 	<= 0;	// popCounts enable signal
				next_state <= xrs;
			end
			xrs: begin
				// Outputs
				busy 	<= 1;		// Busy
				R 	 	<= 0;			// Result
				// Internal Registers
				i_stim 	<= 1;	// Stimulus to increment i
				i_rst 	<= 1;	// i reset
				tr_en 	<= 0;	// popCounts enable signal
				next_state <= inc;
			end
			inc: begin
				if(i==5'd16) next_state <= idle;
				else next_state <= ops;
			end
		endcase
	  end
endmodule
