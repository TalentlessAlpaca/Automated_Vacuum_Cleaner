module peripheral_crc_7(clk , rst , d_in , cs , addr , rd , wr, d_out );
  
	  input clk;
	  input rst;
	  input [15:0]d_in;
	  input cs;
	  input [3:0]addr; // 4 LSB from j1_io_addr
	  input rd;
	  input wr;
	  output reg [15:0]d_out;

//------------------------------------ regs and wires-------------------------------

	reg [4:0] s; 	//selector mux_4  and write registers
	
	reg [31:0] data_in=0;
	reg start=0;

	wire [6:0] data_out;
	wire done;


//------------------------------------ regs and wires-------------------------------




	always @(*) begin//------address_decoder------------------------------
		case (addr)
		
			4'h0:begin s = (cs && wr) ? 5'b00001 : 5'b00000 ;end //data_in[31:16]
			4'h2:begin s = (cs && wr) ? 5'b00010 : 5'b00000 ;end //data_in[15:0]
			4'h4:begin s = (cs && wr) ? 5'b00100 : 5'b00000 ;end //start

			4'h6:begin s = (cs && rd) ? 5'b01000 : 5'b00000 ;end //done
			4'h8:begin s = (cs && rd) ? 5'b10000 : 5'b00000 ;end //data_out

			default:begin s = 5'b00000 ; end
		endcase
	end//------------------address_decoder--------------------------------




	always @(negedge clk) begin//-------------------- escritura de registros 

		data_in[31:16] = (s[0]) ? d_in : data_in[31:16]; //Write Registers
		data_in[15:0] = (s[1]) ? d_in : data_in[15:0];
		start = s[2]; //Write Registers
	

	end//------------------------------------------- escritura de registros




	always @(negedge clk) begin//-----------------------mux_4 :  multiplexa salidas del periferico
		case (s[4:3])
			2'b01: d_out[0] = done ;
			2'b10: d_out[6:0]  = data_out ;
			default: d_out   = 0 ;
		endcase
	end//-----------------------------------------------mux_4



	crc_7 c_7 ( .clk(clk), .rst(rst), .data_in(data_in), .start(start), .data_out(data_out), .done(done) );


endmodule