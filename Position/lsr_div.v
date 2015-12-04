module lsr_div (clk , rst, DV_in, Result, INIT, SH, LDA, A);
  
  input clk;
  input rst;
  input [63:0] DV_in;
  input [63:0] Result;
  input INIT;
  input SH;
  input LDA;
  output reg [63:0] A;

reg [63:0] DV;

always @(negedge clk)  //verificar: ¿actualizacion de A antes de corrimiento?
  
  if(INIT || rst) begin
	A=0;
	DV= DV_in;
  end
  else begin

	  if(SH) begin
		{A,DV}={A,DV}<<1;
	  end
	  else begin
	  	if(LDA)
			A=Result;
 	 	else
			A=A;
	  end
  end
endmodule
