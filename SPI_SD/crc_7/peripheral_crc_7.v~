module peripheral_crc_7(clk , rst , d_in , cs , addr , rd , wr, d_out );
  	
	//entradas y salidas j1
	  input clk;
	  input rst;
	  input [15:0]d_in;
	  input cs;
	  input [3:0]addr; // 4 LSB from j1_io_addr
	  input rd;
	  input wr;
	  output reg [15:0]d_out;

//------------------------------------ regs and wires-------------------------------

	//registros modulo peripheral 	

	reg [3:0] s; 	//selector mux_4  and write registers
	
	reg [16:0] data_in=0;
	reg start=0;

	wire [6:0] data_out;
	wire done;


//------------------------------------ regs and wires-------------------------------




	always @(*) begin//------address_decoder------------------------------
		case (addr)
		   //se asignan direcciones 
			//direcciones de escritura
			4'h0:begin s = (cs && wr) ? 4'b0001 : 4'b0000 ;end //data_in
			4'h2:begin s = (cs && wr) ? 4'b0010 : 4'b0000 ;end //start

			//direcciones de lectura
			4'h4:begin s = (cs && rd) ? 4'b0100 : 4'b0000 ;end //done
			4'h6:begin s = (cs && rd) ? 4'b1000 : 4'b0000 ;end //data_out

			default:begin s = 4'b0000 ; end
		endcase
	end//------------------address_decoder--------------------------------




	always @(negedge clk) begin//-------------------- escritura de registros 

		data_in = (s[0]) ? d_in : data_in; //Write Registers
		start = s[1]; //Write Registers
	

	end//------------------------------------------- escritura de registros




	always @(negedge clk) begin//-----------------------mux_4 :  multiplexa salidas del periferico
		case (s[3:2])
			2'b01: d_out[0] = done ;
			2'b10: d_out[6:0]  = data_out ;
			default: d_out   = 0 ;
		endcase
	end//-----------------------------------------------mux_4



	crc_7 c_7 ( .clk(clk), .rst(rst), .data_in(data_in), .start(start), .data_out(data_out), .done(done) ); // se instancia modulo crc7


endmodule
