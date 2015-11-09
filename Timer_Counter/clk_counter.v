begin module clk_counter(
    input clk,
	input en,
	input rst,
   	output reg [31:0] Count,
	);
	 
	 reg [31:0] Count;
	 	 	 
	 always@(posedge clk) begin
		if(rst) begin
			Count <= 31'b0;
		end
		else if (en) begin
			Count = Count+1;
		end
	 
end module