module ultrasonic #( parameter N = 16 , CONSTANT = 20'd588 ) ( 
    input clk,
    input signal,
    input rst_n,
    output reg [N-1:0] value , 
    output reg done 
    );

    reg [1:0]	state ;
    reg [N-1:0] count_1 ;

    // El modulo tiene 3 estados, el primero mantiene los valores en cero y se llega a el por medio del rst_n
    // El segundo estado inicia cuando el ultrasónico recibe la señal del modulo fisico y cuenta la duración
    // El tercer estado inicia cuando la señal del físico se apaga, enviando un "Done" al controlador
    // El rst_n devuelve al estado inicia el módulo
   
    // States assignation 
    parameter S0 = 2'b00 ;
    parameter S1 = 2'b01 ;
    parameter S2 = 2'b10 ;

    // Nextstate logic
    always @ ( negedge clk ) 
        if ( ~rst_n )
            state <= S0 ;
        else
            case ( state ) 
                S0 : 
                    if ( signal )
                        state <= S1 ;
                    else 
                        state <= S0 ;
                S1 :
                    if ( ~signal )
                        state <= S2 ;
                    else
                        state <= S1 ;
            endcase

    // State logic 
    always @( posedge clk )
        case ( state ) 
            S0 : begin
                count_1 <= 0 ;
                value <= 0 ;
                done <= 0 ;
            end S1 : begin
                if ( CONSTANT == count_1 ) begin
                    count_1 <= 1 ;
                    value <= value + 1'b1 ;
                    done <= 0 ; 
                end else begin  
                    count_1 <= count_1 + 1'b1 ;
                    value <= value ;
                    done <= 0 ;
                end
            end S2 : begin
                count_1 <= 0 ;
                value <= value ;
                done <= 1 ;
            end
        endcase

endmodule
