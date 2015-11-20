`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:10 11/04/2015 
// Design Name: 
// Module Name:    c_lectura 
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
module c_lectura(
input clk,
   	input rst,
	input start,
	input[15:0] data_in,
	imput [15:0] data_response,
	output[47:0] data_out,
  	output busy,
	imput crc;
	input crcdone;
	output ack,
	output cs
);

parameter c_lectura = 010001;  // comando de escritura 

assign start=cs;
	
       always @(posedge clk) begin 	  
			if (reset == 1'b1) begin
				ch <= 0;
				ack <= 0;	
				busy <=0;
				data out <= 3'h000;
       reset <=1’b0;
			end
			else begin
				if (start)
					busy <=1;
					
       data_out <= {0},{1},{c_lectura },{2´h00},{data_in},{xxxxxx//el crc aun no se construlle que se envia aqui?},{1};
					
       end
			crc instcrc( //falta colocar eltiempo qe tarda crc en dar la respuesta
						.ack(crcdone),
						.init_crc(1),
						.crc_dat_in(data_response[7:0])
						.crc_dat_o(crc)
					)


			end
			if (ack) begin	
       spi instspi(
					.miso(data_out),
					.cs(1),
					.mosi(data_response)
				)
				if (dataresponse[7:0]!==crc)
					reset <=1;
				end
			end
		end

endmodule
