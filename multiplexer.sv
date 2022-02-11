module multiplexer(input logic cin, 
						input logic [3:0] S0, S1, 
						output logic [3:0] Sout);
	always_comb
	begin
		if (cin == 0)
		begin
		Sout = S0;
		end
		
		else
		begin
		Sout = S1;
		end	
	end	

endmodule
						