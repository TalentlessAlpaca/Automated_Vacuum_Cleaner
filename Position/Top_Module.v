`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//    
//    Exploratory Module used to learn to control the I2C driver
//
//    As this is only to characterize the FSM the module assumes
//    no connection will be accomplished.
//    
//////////////////////////////////////////////////////////////////////////////////
module Top_Module(
    input clk,
    input rst,
    output SDA,
    output SCL,
    output reg [7:0] LED,
	 output wire oClock
    );
	 
	 reg t_en;
	 wire clk_50;
	 wire [31:0] tim_out;
	 Counter count(.clk(clk),.rst(rst),.en(t_en),.count(tim_out));
	 
	 reg i2c_rst;
	 
	 assign clk_50 = tim_out[1];
	 reg i2c_en;
	 reg [6:0] i2c_addr;
	 wire i2c_rw;
	 reg [7:0] i2c_drw;
	 wire i2c_busy;
	 wire [7:0] i2c_drd;
	 wire i2c_err;
	 i2c_master I2C(.clk(clk_50),.reset_n(i2c_rst),.ena(i2c_en),.addr(i2c_addr),.rw(i2c_rw),.data_wr(i2c_drw),.busy(i2c_busy),.data_rd(i2c_drd),.ack_error(i2c_err),.sda(SDA),.scl(SCL));
	 
	 //assign i2c_addr = 7'd127; // Arduino's Address
	 assign i2c_rw = 0;   // Always Write
	 
	 assign oClock = tim_out[10];
	 
	 reg [7:0] Send1 = 8'hAA;
	 reg [7:0] Send2 = 1;
	 
	 reg [3:0] state = 0;
	 reg [3:0] nState = 0;
	 /*
	 localparam reset  = 0,
					wait_1 = 1,
					pSend1 = 2,
					pSend2 = 3,
					send   = 4,
					wait_2 = 5,
					err	 = 6;
	 */

	 localparam reset = 0,
					wait_1 = 1,
					wait_2 = 2,
					wait_3 = 3,
					wait_4 = 4,
					wait_for_ini = 5;
					
	 always@(*) begin
		if(!rst) begin
			nState <= reset;
			i2c_addr <= 7'd0;
			i2c_rst <= 0;
			i2c_en <= 0;
			t_en   <= 0;
			Send1 <= 0;
			LED[7:0] <= 8'hFF;
		end
		else begin
			case(state)
				reset: begin
					i2c_en <= 0;
					i2c_rst <= 0;
					t_en   <= 0;
					Send1 <= 0;
					i2c_addr <= 7'd127;
					LED[7:0] <= 8'hFF;
					nState <= wait_for_ini;
				end
				wait_for_ini: begin
					i2c_en <= 0;
					i2c_rst <= 1;
					t_en   <= 1;
					Send1 <= 0;
					i2c_addr <= 7'd127;
					LED[7:0] <= 8'hFF;
					if(!i2c_busy) nState <= wait_1;
					else nState <= wait_for_ini;
				end
				wait_1: begin
					i2c_en <= 1;
					i2c_rst <= 1;
					t_en   <= 1;
					i2c_drw <= Send1;
					i2c_addr <= 7'd127;
					LED[7:0] <= 8'h01;
					nState <= wait_2;
				end
				wait_2: begin
					i2c_en <= 1;
					i2c_rst <= 1;
					t_en   <= 1;
					i2c_drw <= Send1;
					i2c_addr <= 7'd127;
					LED[7:0] <= 8'h02;
					if(i2c_busy)	nState <= wait_3;
					else 				nState <= wait_2;
				end
				wait_3: begin
					i2c_en <= 0;
					i2c_rst <= 1;
					t_en   <= 1;
					i2c_drw <= Send1;
					i2c_addr <= 7'd127;
					LED[7:0] <= 8'h03;
					if(i2c_err) 	nState <= wait_4;
					else 				nState <= wait_3;
				end
				wait_4: begin
					i2c_en <= 0;
					i2c_rst <= 0;
					t_en   <= 1;
					i2c_drw <= Send1;
					i2c_addr <= 7'd0;
					LED[7:0] <= 8'h80;
					nState <= reset;
				end
			endcase
		end
	 end	 

	 always@ (posedge clk) begin
		state <= nState;
	 end
	 
	 
endmodule
