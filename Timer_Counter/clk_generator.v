begin module clk_generator(
    input clk,
	input en,
    input [31:0] limit,
	input [31:0] count,
	output reg clk_0,
	);
	 
	 reg [31:0] nd_Count;
	 
	 initial clk_0 = 1'b0;
	 
	 always@(negedge clk) begin
		if(en) begin
			if(count > ndCount) begin // Compares if ndCount < count
			ndCount <= count + limit; // Updates ndValue
			clk_0 <= ~clk_0;          // Updates clk value
			end
			else begin
				ndCount <= ndCount; //  Keep ndCount value
				clk_0 <= clk_0;		// Keep clk_2 value
			end
		end
		else begin
			ndCount <= count+limit;
			clk_0 <= 1'b0;
		end
	 end
	 
end module
