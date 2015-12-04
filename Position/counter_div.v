module counter_div (clk , rst, DEC, z);

  input clk;
  input rst;
  input DEC;
  output reg z;

  reg [6:0] cont=64;


always @(negedge clk) begin


  if (rst) 
   cont = 7'b1000000; //64
  else
     begin
      if (DEC) cont=cont-1;
      else cont=cont;
     end

 z = (cont==0) ? 1 : 0 ;


end

endmodule
