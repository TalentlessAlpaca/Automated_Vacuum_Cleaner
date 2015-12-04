module control_div( clk , rst , start , MSB , z , INIT , SH , DEC , LDA , BUSY, DV0  );


 input clk;
 input rst;
 input start;
 input MSB;
 input z;

 output reg INIT;
 output reg DV0;
 output reg SH;
 output reg DEC;
 output reg LDA;
 output reg BUSY;


 parameter 	RESET			= 3'b000,
				IDLE			= 3'b001,
				START  		= 3'b010,
				SHIFT_DEC  	= 3'b011,
				CHECK 		= 3'b100,
				ADD  			= 3'b101,
				LOAD  		= 3'b110,
				END1  		= 3'b111;
 
 reg [2:0] state;
 
 initial begin
  INIT=1;
  DV0=0;
  SH=0;
  DEC=0;
  LDA=0;
  BUSY=1;
 end

reg [3:0] count;

always @(posedge clk) begin
    if (rst) begin
      state = RESET;
    end else begin
	 
		 case(state)
			RESET: begin
				state <= IDLE;
			end
			
			IDLE: begin
				if(start)
					state = START;
				else
					state = IDLE;
			end
			START: begin
				count=0;
				state = SHIFT_DEC;
			end
			
			SHIFT_DEC:
				state = CHECK;
			
			CHECK: begin
				if(z)
					state = IDLE;
				else begin 
				if (MSB==0)
					state = ADD;
				else
					state = SHIFT_DEC;
				end
			end
			
			ADD: state=LOAD;
			
			LOAD: begin
				if(z)
					state = IDLE;
				else
					state = SHIFT_DEC;
			end
			/*
			END1:begin
				count = count + 1;
				state = (count>9) ? START : END1 ; // hace falta de 10 ciclos de reloj, para que lea el done y luego cargue el resultado
			end
			*/
			default: state = START;
		endcase
   end
 end

always @(state) begin
	case(state)
		RESET:begin
			INIT=1;
			DV0=0;
			SH=0;
			DEC=0;
			LDA=0;
			BUSY=1;
		end
		
		IDLE:begin
			INIT=0;
			DV0=0;
			SH=0;
			DEC=0;
			LDA=0;
			BUSY=0;
		end
		
		START:begin
			INIT=1;
			DV0=0;
			SH=0;
			DEC=0;
			LDA=0;
			BUSY=1;
		end
		
		SHIFT_DEC:begin
			INIT=0;
			DV0=DV0;
			SH=1;
			DEC=1;
			LDA=0;
			BUSY=1;
		end
		
		CHECK:begin
			INIT=0;
			DV0=0;
			SH=0;
			DEC=0;
			LDA=0;
			BUSY=1;
		end
		
		ADD:begin
			INIT=0;
			DV0=1; // primero suma
			SH=0;
			DEC=0;
			LDA=0;
			BUSY=1;
		end
		
		LOAD:begin
			INIT=0;
			DV0=0;
			SH=0;
			DEC=0;
			LDA=1; // ahora carga el resultado
			BUSY=1;
		end
		
		END1:begin
			INIT=0;
			DV0=0;
			SH=0;
			DEC=0;
			LDA=0;
			BUSY=0;
		end
		
		default:begin
			INIT=1;
			DV0=0;
			SH=0;
			DEC=0;
			LDA=0;
			BUSY=1;
		end
	endcase
end

endmodule
