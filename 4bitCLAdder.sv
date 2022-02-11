module full_adder_PG (input logic x, y, z, 
						output s, P, G);
	assign s = x^y^z;
	//assign c = (x&y)|(y&z)|(x&z);
	
	assign P = x^y;
	assign G = x&y;

endmodule

module fourbitCLAdder(input logic[3:0] A, B, 
								input logic cin,
								output logic [3:0] S,
								output logic PG,GG,  //added this
								output logic cout);
								

	logic [3:0] P,G,C;

	full_adder_PG FA0(.x(A[0]), .y(B[0]), .z(C[0]), .s(S[0]), .P(P[0]), .G(G[0]));
	full_adder_PG FA1(.x(A[1]), .y(B[1]), .z(C[1]), .s(S[1]), .P(P[1]), .G(G[1]));
	full_adder_PG FA2(.x(A[2]), .y(B[2]), .z(C[2]), .s(S[2]), .P(P[2]), .G(G[2]));
	full_adder_PG FA3(.x(A[3]), .y(B[3]), .z(C[3]), .s(S[3]), .P(P[3]), .G(G[3]));
	
	lookahead LA(.cin(cin), .P(P), .G(G), .cout(cout), .C(C), .PG(PG), .GG(GG));
 
endmodule

	  

	//full_adder FA0(.x(A[0]), .y(B[0]), .z(c_in), .s(S[0]), .c(c1));
	//full_adder FA1(.x(A[1]), .y(B[1]), .z(c1), .s(S[1]), .c(c2));
	//full_adder FA2(.x(A[2]), .y(B[2]), .z(c2), .s(S[2]), .c(c3));
	//full_adder FA3(.x(A[3]), .y(B[3]), .z(c3), .s(S[3]), .c(c_out));