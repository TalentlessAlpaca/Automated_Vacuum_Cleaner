module Ultrasonico_tb ( 
    ) ;

    reg clk , signal , rst_n ;
    wire [15:0] value ;

    ultrasonic dut ( 
        .clk ( clk ) , 
        .signal ( signal ) , 
        .rst_n ( rst_n ) , 
        .value ( value )
        ) ;

    initial begin
    clk = 0 ;
    rst_n = 0 ;
    repeat ( 4 ) #5 clk = ~clk ;
    rst_n = 1 ;
    forever #5 clk = ~clk ; // Clk 
    end

    initial begin 
        signal = 0 ;
        @ ( posedge rst_n )
	signal = 1 ;
        #50_000 ;

        signal = 0 ; 
        #100_000 ;
        
        $finish ;
    end
endmodule 
