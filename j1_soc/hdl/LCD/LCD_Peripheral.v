`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:39:26 12/05/2015 
// Design Name: 
// Module Name:    LCD_Peripheral 
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
module LCD_Peripheral(clk , rst , d_in , cs , addr , rd , wr, e, rs, data, int_cnt, en_cnt, limit_cnt, d_out );
  
  input [15:0]d_in;
  input cs;
  input [3:0]addr; 
  input rd;
  input wr;
  output reg [15:0] d_out;
  
  input clk;
  input rst;
  input int_cnt;
  output en_cnt;
  output [15:0] limit_cnt;
  output rs; 
  output e;
  output [7:0] data;

//------------------------------------ regs and wires-------------------------------
	reg [10:0] s; 	//selector mux_4  and write registers
	reg init=0;
	reg en;
	reg reset;
	reg set;
	reg clear;
	reg off;
	reg on;
	reg entry_mode;
	reg cursor;
	reg w_char;
	reg [7:0] cursor_pos;
	reg [7:0] ascii_char;
	wire busy;
	
//------------------------------------ regs and wires-------------------------------




	always @(*) begin//------address_decoder------------------------------
		case (addr)
			
			4'h0:begin s = (cs && wr) ? 11'b00000000001 : 11'b00000000000 ;end // en
			4'h1:begin s = (cs && wr) ? 11'b00000000010 : 11'b00000000000 ;end // reset
			4'h2:begin s = (cs && wr) ? 11'b00000000100 : 11'b00000000000 ;end // set
			4'h3:begin s = (cs && wr) ? 11'b00000001000 : 11'b00000000000 ;end // off
			4'h4:begin s = (cs && wr) ? 11'b00000010000 : 11'b00000000000 ;end // on
			4'h5:begin s = (cs && wr) ? 11'b00000100000 : 11'b00000000000 ;end //entry_mode
			4'h6:begin s = (cs && wr) ? 11'b00001000000 : 11'b00000000000 ;end //cursor
			4'h7:begin s = (cs && wr) ? 11'b00010000000 : 11'b00000000000 ;end // w_char
			4'h8:begin s = (cs && wr) ? 11'b00100000000 : 11'b00000000000 ;end // cursor_pos
			4'h9:begin s = (cs && wr) ? 11'b01000000000 : 11'b00000000000 ;end // ascii_char
			
			4'hA:begin s = (cs && rd) ? 11'b10000000000 : 11'b00000000000 ;end // Busy
			
			default:begin s = 11'b00000000000 ; end
		endcase
	end//------------------address_decoder--------------------------------




	always @(negedge clk) begin//-------------------- escritura de registros 

		en			  	= (s[0]) ? d_in[0]   : en;
		reset		   = (s[1]) ? d_in[0]   : reset;
		set		   = (s[2]) ? d_in[0]   : set;
		off	      = (s[3]) ? d_in[0]   : off;
		on		      = (s[4]) ? d_in[0]   : on;
		entry_mode  = (s[5]) ? d_in[0]   : entry_mode;
		cursor	   = (s[6]) ? d_in[0]   : cursor;
		w_char      = (s[7]) ? d_in[0]   : w_char;
		cursor_pos  = (s[8]) ? d_in[7:0] : cursor_pos;
		ascii_char  = (s[9]) ? d_in[7:0] : ascii_char;

	end//------------------------------------------- escritura de registros




	always @(negedge clk) begin//-----------------------mux_4 :  multiplexa salidas del periferico
		
		d_out <= (s[10]) ? {15'h0 , busy} : 16'h0000;
		
	end//-----------------------------------------------mux_4



	LCD LCD_Driver (
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
		 .cursor_pos(cursor_pos), 
		 .ascii_char(ascii_char), 
		 .busy(busy), 
		 .int_cnt(int_cnt), 
		 .limit_cnt(limit_cnt), 
		 .en_cnt(en_cnt), 
		
		 .rs(rs), 
		 .e(e), 
		 .data(data)
		 );
	 
endmodule
