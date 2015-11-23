module ultrasonico #( parameter N = 16 , A = 20'd588 ) ( // El valor de A se determina por el cociente 1 / velocidad del sonido (ajustando los ordenes de magnitud según la velocidad del reloj)
    input clk,
    input signal,
    input rst_n,
    output reg [N-1:0] value );

    reg [N-1:0] count_1 ;
    reg [N-1:0] count_2 ;

    always @( posedge clk )
        if ( rst_n ) begin
            if ( signal )
                if ( count_1 == A ) begin
                    count_1 <= 1'b1 ;
                    count_2 <= count_2 + 1'b1 ;
                end else begin
                    count_1 <= count_1 + 1'b1 ;
		end
        end else begin 
            count_1 <= 0 ;
            count_2 <= 0 ;
        end
   
    always @( signal )
        value = count_2 ;
endmodule 
