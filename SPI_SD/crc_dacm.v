`timescale 1ns / 1ps

module CRC
	input							clk,
	input							reset,
	input [datawidth - 1:0]	crc_dat_i,
	input							init_crc,
	output [crcorder:0]		crc_dat_o,
	output reg					done
);

	// PARAMETROS LOCALES sin tilde de nuevo...

	localparam datawidth = 32;
	localparam divs = 5;
	localparam crcorder = 7;
	localparam crcpol = 8'b10001001;
	localparam OFF = 1'b0, INIT = 2'd1, CALC = 2'd2, END = 2'd3;

	reg[datawidth - 1:0] initdata;
	reg[crcorder:0] 		pol = crcpol, process;
	reg[divs - 1:0] 		counter;
	reg[1:0] 				state;
	
	assign crc_dat_o = process;
	assign done = state == END;
	
	initial state = OFF;
	initial counter = 5'd7;			//CRCORDER
	
	always @(posedge clk) begin
		if (reset) begin
			initdata <= 32'd0;
			pol <= 7'd0;
			process <= 7'd0;
			counter <= 0;
			state = OFF;
		end
		case (state)
			INIT:
				process = initdata[datawidth - 1: datawidth - 1 - crcorder];
				
			CALC:
				if (counter != 5'd31)		//DATAWIDTH
					begin
						if (process[crcorder] == 1)
							process <= process ^ pol;
						initdata = initdata << 1;
					end
				else
					begin
						process = process << 1;		
						state = END;
					end
				
			default:
				if (init_crc) begin
					state = INIT;
					initdata <= crc_dat_i;
				end
				
		endcase	
	end
	
	always @(negedge clk) begin
		case (state)
			INIT:
				begin
					initdata <= {process[datawidth - crcorder - 1:datawidth - 2*crcorder - 1], 6'b000000};			//CRCORDER
					state = CALC;
				end
				
			CALC:
					process <= {process[crcorder - 1:1], initdata[datawidth - 1]};
					
			END:
				state <= OFF;			
			
			default:
				begin
				end
		endcase
	end
endmodule