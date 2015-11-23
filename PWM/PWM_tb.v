module PWM_tb (
    ) ;

    reg clk , rst_n ;
    reg [9:0] number ;
    wire pwm ;

    pwm dut (
        .clk ( clk ) ,
        .rst_n ( rst_n ) ,
        .number ( number ) ,
        .pwm  ( pwm ) 
        ) ;

    initial begin
        clk = 0 ;
        rst_n = 0 ;
        repeat ( 4 ) #5 clk = ~clk ;
        rst_n = 1 ;
        forever #5 clk = ~clk ;
    end

    initial begin
        number = 10'b10_000_000 ;
    end 

endmodule 
