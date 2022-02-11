module lookahead(input logic cin, 
						input logic [3:0]P, G, 
						output logic cout,
						output logic [3:0] C,
						output logic PG, GG);
//logic [3:0]C;

always_comb
	begin
	C[0]=cin;
	C[1]=cin&P[0]|G[0];
	C[2]=cin&P[0]&P[1]|G[0]&P[1]|G[1];
	C[3]=cin&P[0]&P[1]&P[2]|G[0]&P[1]&P[2]|G[1]&P[2]|G[2];
	
	cout=cin&P[0]&P[1]&P[2]&P[3]|G[0]&P[1]&P[2]&P[3]|G[1]&P[2]&P[3]|G[2]&P[3]|G[3];
	
	GG=G[3]|G[2]&P[3]|G[1]&P[3]&P[2]|G[0]&P[3]&P[2]&P[1];
	PG=P[0]&P[1]&P[2]&P[3];
	end
						
endmodule
