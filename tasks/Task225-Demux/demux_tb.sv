module demux_tb;
logic clk;
logic [7:0] yy;
logic [2:0] sel;

demux u1(yy, clk, sel);
logic expected[8] = {8'b00000001, 8'b00000010, 8'b00000100, 8'b00001000, 8'b00010000, 8'b00100000, 8'b01000000, 8'b10000000};

initial
begin
	sel = 0;
	clk = 0;
	for (int n = 0; n<7; n = n+1) begin
		sel = n;
		clk = 1;
		assert (yy == expected[n])
			$display("passed");
		else
			$error("failed");
		#10ps;
		clk = 0;
		#10ps;
	end
end
endmodule