module peripheral_pwm (clk , rst , d_in , cs , addr , rd , wr, d_out );
  
	input clk;
	input rst;
	input [15:0]d_in;
	input cs;
	input [3:0]	addr; // 4 LSB from j1_io_addr
	input rd;
	input wr;
	output reg [2:0] d_out;

//------------------------------------ regs and wires-------------------------------

	reg [5:0] 	s; 	//selector mux_4  and write registers
	reg 		rst_n = 0;
	reg [9:0]	number_1;
	reg [9:0]	number_2;
	reg [9:0]	number_3;
	
	wire [2:0]	pwm;		//mult_32 output Regs
	
//------------------------------------ regs and wires-------------------------------

	always @(*) begin//------address_decoder------------------------------
		case (addr)
			4'h0:	
				begin s = (cs && wr) ? 6'b00001 : 6'b00000 ;end //rst_n
			4'h2:
				begin s = (cs && wr) ? 6'b00010 : 6'b00000 ;end //number_1	
			4'h4:
				begin s = (cs && wr) ? 6'b00100 : 6'b00000 ;end //number_2
			4'h6:
				begin s = (cs && wr) ? 6'b01000 : 6'b00000 ;end //number_3
				
			4'h8:
				begin s = (cs && rd) ? 6'b10000 : 6'b00000 ;end //pwm
			
			default:
				begin s = 6'b00 ; end
		endcase
	end//------------------address_decoder--------------------------------

	always @(negedge clk) begin 						// escritura de registros 
		rst_n 		<= ~s[0] ;		 					// (s[2]) ? d_in : init;	// Write Registers	
		number_1	<= (s[1]) ? d_in [9:0] : number_1 ;	// Write Registers
		number_2	<= (s[2]) ? d_in [9:0] : number_2 ;	// Write Registers
		number_3	<= (s[3]) ? d_in [9:0] : number_3 ;	// Write Registers
	end 												// escritura de registros

	always @(negedge clk) begin							// mux_4 :  multiplexa salidas del periferico
		if ( s[4] ) 
			d_out <= pwm ;
	end													// mux_4

	pwm pwm1 ( .clk(clk), .rst_n(rst_n), .number(number_1), pwm(pwm [0]) );
	pwm pwm2 ( .clk(clk), .rst_n(rst_n), .number(number_2), pwm(pwm [1]) );
	pwm pwm3 ( .clk(clk), .rst_n(rst_n), .number(number_3), pwm(pwm [2]) );
	
endmodule
