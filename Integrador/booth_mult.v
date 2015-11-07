`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:25:20 11/02/2015 
// Design Name: 
// Module Name:    booth_mult 
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
module booth_mult(
    input clk,
    input rst,
    input en,
    input [15:0] A,
    input [15:0] B,
    output reg busy,
    output reg [31:0] R
    );
	 
	 // Instances
	 wire [15:0] c_B;
	 comp cmp(.A(B),.C(c_B));
	 reg shf;
	 reg sh_en;
	 reg [32:0] accum;
	 reg [15:0] add_B;
	 wire [32:0] add_R;
	 wire [32:0] rsa_o;
	 rsa rightShift(.clk(clk),.en(sh_en),.shift(shf),.in(add_R),.out(rsa_o));
	 adder add(.A(accum),.B(add_B),.R(add_R));
	 // Internal Registers
	 reg[3:0] count;
	 reg[5:0] state;
	 // Initial Values
		initial begin
			busy 	<= 0;
			R 		<= 0;
			shf	<= 0;
			accum <= 0;
			add_B	<= 0;
			count <= 0;
			state <= 0;
		end
	 
	 // State Machine Encoding
	 localparam START = 5'd00,
					CHECK = 5'd01,
					SHIFT = 5'd02,
					INC 	= 5'd03,
					END 	= 5'd04;
	 
	 // Sequential
	 always@(posedge clk) begin
		if(rst) begin
			state <= START;
		end else begin
			case(state)
				START: begin
					count <= 4'h00;
					if(en)	state <= CHECK;
					else		state <= START;
				end
				CHECK: begin
					state <= SHIFT;
				end
				SHIFT: begin
					state <= INC;
				end
				INC: begin
					if(count == 4'hF) state <= START;
					else begin
						count <= count+1;
						state <= CHECK;
					end
				end
				default: begin
					state <= START;
				end
			endcase
		end
	 end
	 
	 // Combinational
	 always @(*) begin
		case(state)
			START: begin
				busy 	<= 0;
				R 		<= rsa_o[32:1];
				shf	<= 0;
				sh_en <= 0;
				accum[32:17] <= 0;
				accum[16:1] <= A;
				accum[0] <= 0;
				add_B	<= 0;
			end
			CHECK: begin
				sh_en <= 1;
				case(accum[1:0])
					0:begin
						busy 	<= 1;
						R 		<= R;
						shf	<= 1;
						accum <= accum;
						add_B	<= 0;
					end
					1:begin
						busy 	<= 1;
						R 		<= R;
						shf	<= 1;
						accum <= accum;
						add_B	<= B;
					end
					2:begin
						busy 	<= 1;
						R 		<= R;
						shf	<= 1;
						accum <= accum;
						add_B	<= c_B;
					end
					3:begin
						busy 	<= 1;
						R 		<= R;
						shf	<= 1;
						accum <= accum;
						add_B	<= 0;
					end
				endcase
			end
			SHIFT: begin
				busy 	<= 1;
				R 		<= 0;
				shf	<= 0;
				accum <= rsa_o;
				add_B	<= 0;
			end
			INC: begin
				busy 	<= 1;
				R 		<= 0;
				shf	<= 0;
				accum <= accum;
				add_B	<= 0;
			end
			default: begin
				busy 	<= 0;
				R 		<= 0;
				shf	<= 0;
				accum <= 0;
				add_B	<= 0;
			end
		endcase
	 end
	 
endmodule
