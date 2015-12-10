// Editado 17 de Noviembre de 2015, en clase
// Sincronizacion salida (no hay desfase sck-mosi), se verifica funcionamiento correcto miso
// ADVERTENCIA = CPOL 0 CPHA 1 (VERIFICAR si es valido para la SD)

`timescale 1ms / 1ns

module spi_master (clk, rst, sssd_in, start, miso, data_in, mosi, sck, ss, sssd_out, data_out, busy, new_data);
	
	//inputs y outputs
	
	input clk;
	input rst;
	input sssd_in; 
	input start;
	input miso; //master input slave output
	input[7:0] data_in;
	output mosi; //master output slave input
	output sck;	//slave clk
	output ss;	//slave select 
	output sssd_out;
	output[7:0] data_out;
	output busy;
	output new_data;

	//parametros  
	  
	  parameter CLK_DIV = 3;		//Clock divisions (periodo clk*2³) 
	   
	  localparam STATE_SIZE = 2;            // cantidad de estados 2²
	  localparam IDLE = 2'd0,   WAIT_HALF = 2'd1,   TRANSFER = 2'd2;	//estados
	   
	  reg [STATE_SIZE-1:0] state_d, state_q;				//variables de estado d:proximo estado  y q: estado actual 
	   
	  reg [7:0] data_d, data_q;						//registro de proceso (trans-recep) 
	  reg [CLK_DIV-1:0] sck_d, sck_q;					//registro contador del sck  d y q
	  
	  reg mosi_d, mosi_q;							//registros mosi d y q
	  reg [2:0] ctr_d, ctr_q;						//registros contador de transferencia spi
	  reg new_data_d, new_data_q;						//registros new data d y q (avail-done)
	  reg [7:0] data_out_d, data_out_q;		//registros dato de salida (solo asignan a data_out despues de avail) 
	
	  assign sssd_out = sssd_in;	
	
	  assign mosi = mosi_d;							//asigna mosi estado proximo
	  assign sck = (~sck_q[CLK_DIV-1]) & (state_q == TRANSFER);	//si el con esta medio lleno y en estado de transferencia 
									//(cambio de polaridad negando todo)
	  assign busy = (state_q != IDLE);				//se esta ocupdo si no estado no es diponible
	  assign ss = !busy;						//slave select ~ocupado
	  assign data_out = data_out_q;					//asignar a data_out ---> dataout_q
	  assign new_data = new_data_q;					//asigna a new_data  ---> new_data_q
	   
	//bloque combinacional

	always @(*) begin
			 sck_d = sck_q;		//asignar registros actuales a registro proximo
			 data_d = data_q;		//asignar registros actuales a registro proximo
			 mosi_d = mosi_q;		//asignar registros actuales a registro proximo
			 ctr_d = ctr_q;		//asignar registros actuales a registro proximo
			 new_data_d = 1'b0;		//new data es 0 hasta haber terminado
			 data_out_d = data_out_q;	//asignar registros actuales a registro proximo
			 state_d = state_q;		//asignar registros actuales a registro proximo

		


	    case (state_q)
	      IDLE: begin		   //estado IDLE (reposo)
		sck_d = 4'b0;              // reset clock counter - se resetea contdor de reloj
		ctr_d = 3'b0;              // reset bit counter	- se resetea el contador de transfer
		if (start == 1'b1) begin   // if start command	- si start
		  data_d = data_in;        // copy data to send	- recibe el dato a enviar
		  state_d = WAIT_HALF;     // change state	- cambio de estado 
		end
	      end
	      WAIT_HALF: begin		   	       // estado WAIT_HALF (preparar el esclavo) "se selecciona el esclavo"
		sck_d = sck_q + 1'b1;                  // increment clock counter  - se incrementa el contador de reloj
		if (sck_q == {CLK_DIV-1{1'b1}}) begin  // if clock is half full (about to fall) - espera a que el reloj
						       // del esclavo este medio lleno
		  sck_d = 1'b0;                        // reset to 0 
		  state_d = TRANSFER;                  // change state -  cambio de estado
		end
	      end
	      TRANSFER: begin				//estado de transferencia
		sck_d = sck_q + 1'b1;                           // increment clock counter - se incrementa el contador del reloj
		if (sck_q == 4'b0000) begin                     // if clock counter is 0 - si contador de reloj es 0
		  mosi_d = data_q[7];                           // output the MSB of data - se coloca en mosi el bit mas significativo 
		end 
		else if (sck_q == {CLK_DIV-1{1'b1}}) begin  // else if it's half full (about to fall) -  si contador de reloj esta 
								//medio lleno ---> recibe :D
								// cambiar -1 para cambiar fase 
		  data_d = {data_q[6:0], miso};      //*********// read in data (shift in) - leer miso e insertar al reg por corrimiento  
		end 
		else if (sck_q == {CLK_DIV{1'b1}}) begin    // else if it's full (about to rise) - si esta lleno el contador de reloj
								// cambiar -1 para cambiar fase 
		  ctr_d = ctr_q + 1'b1;                         // increment bit counter - incrementa contador de transferencia
		  if (ctr_q == 3'b111) begin                    // if we are on the last bit - verifica si ya se lleno contador de reloj
		    state_d = IDLE;                             // change state - cambio de esado a reposo
		    data_out_d = data_q;                        // output data	- se envia coloca el dato en data_out_d
		    new_data_d = 1'b1;                          // signal data is valid - newdata(avail - done) en 1
		  end
		end
	      end
	    endcase
	  end

	//bloque secuencial 
	   
	  always @(posedge clk) begin
		//reset
		if (rst) begin
			ctr_q <= 3'b0;
			data_q <= 8'b0;
			sck_q <= 4'b0;
			mosi_q <= 1'b0;
			state_q <= IDLE;
			data_out_q <= 8'b0;
			new_data_q <= 1'b0;
	    	end 
		   else begin
		    // se renuevan datos (a dato actual se le asigna dato posterior para trabajar arriba)
		      ctr_q <= ctr_d;
		      data_q <= data_d;
		      sck_q <= sck_d;
		      mosi_q <= mosi_d;
		      state_q <= state_d;
		      data_out_q <= data_out_d;
		      new_data_q <= new_data_d;
		    end
	  end
	   
endmodule 
