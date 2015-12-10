module div_64(clk , rst , init_in , A , B , Result , busy);
  
  input rst;
  input clk;
  input init_in;
  input [63:0]A;
  input [63:0]B;
  output [63:0] Result;
  output busy;


  wire INIT, SH, LDA;
  
  wire MSB;
  wire [63:0] Result_Sub;
  wire [63:0] Reg_A;

  wire DEC, z, DV0;

  
  lsr_div lsr_d ( .clk(clk) , .rst(0), .DV_in(A), .Result(Result_Sub), .INIT(INIT), .SH(SH), .LDA(LDA), .A(Reg_A) );
  subtractor sb ( .clk(clk) , .rst(rst), .in_A(Reg_A) , .in_B(B) , .MSB(MSB) , .Result(Result_Sub), .DV0(DV0) );
  counter_div ctr_dv ( .clk(clk) , .rst(INIT) , .DEC(DEC), .z(z) );
  control_div ctl_dv ( .clk(clk) , .rst(rst) , .start(init_in) , .MSB(MSB) , .z(z) , .INIT(INIT) , .SH(SH) , .DEC(DEC) , .LDA(LDA) , .BUSY(busy), .DV0(DV0) );
  final_result fr ( .clk(clk), .rst(INIT) , .DEC(DEC) , .MSB(MSB) , .Result(Result));
    
  

endmodule


