module fourbitCSA(input logic cin,
						input logic [3:0] A, B,
						output logic cout,
						output logic [3:0] Sout);
						
	logic cout0, cout1;
	logic [3:0] S0, S1;

	fourbitRippleAdder RA0(.A(A[3:0]), .B(B[3:0]), .cin(1'b0), .S(S0), .cout(cout0));
	fourbitRippleAdder RA1(.A(A[3:0]), .B(B[3:0]), .cin(1'b1), .S(S1), .cout(cout1));

	multiplexer M(.cin(cin), .S0(S0), .S1(S1), .Sout(Sout));

	always_comb
	begin
	cout= (cin&cout1)|cout0;
	end

endmodule

