module clk_counter(
    input clk,
    input en,
    input rst,
    output reg [31:0] count
    );
	 
always@(posedge clk) begin
		if(rst) begin
			count <= 31'b0;
		end
		else if (en) begin
			count = count+1;
		end
	 end

endmodule

//test bench
module counter_tst;

	// Inputs
	reg clk;
	reg en;
	reg rst;

	// Outputs
	wire [31:0] counter;

	// Instantiate the Unit Under Test (UUT)
	clk_counter uut (
		.clk(clk), 
		.en(en), 
		.rst(rst), 
		.count(counter)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		en = 0;
		rst = 1;

		// Wait 100 ns for global reset to finish
		#100;
      rst = 0;
		// Add stimulus here
		#15 en = 1;
	end
   always #5 clk = ~clk;
endmodule