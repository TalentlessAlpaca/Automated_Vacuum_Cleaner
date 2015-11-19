module clk_generator(
    input clk,
    input en,
    input [31:0] limit,
    input [31:0] count,
    output reg clk_0
    );

	 reg [31:0] ndCount;
	 
	 initial clk_0 = 1'b0;
	 initial ndCount = 32'h00000000;
	 
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

endmodule

//test bench

module gen_clk_tst;

	// Inputs
	reg clk;
	reg rst;
	reg en_cnt;
	reg en;
	reg [31:0] limit;
	wire [31:0] count;

	// Outputs
	wire clk_0;

	// Instantiate the Unit Under Test (UUT)
	clk_generator uut (
		.clk(clk), 
		.en(en_cnt), 
		.limit(limit), 
		.count(count), 
		.clk_0(clk_0)
	);
	
	clk_counter counter(
		.clk(clk), 
		.en(en), 
		.rst(rst), 
		.count(count)
	);
	
	initial begin
		// Initialize Inputs
		clk = 0;
		rst = 1;
		en = 0;
		en_cnt = 0;
		limit = 0;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		// Add stimulus here
		limit = 32'h000000FF;
		#13;
		en_cnt = 1;
		#100;
		en = 1;
	end
   always #5 clk = ~clk;
endmodule
