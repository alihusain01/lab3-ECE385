module lookahead_adder (
	input  [15:0] A, B,
	input         cin,
	output [15:0] S,
	output        cout
);
    /* TODO
     *
     * Insert code here to implement a CLA adder.
     * Your code should be completly combinational (don't use always_ff or always_latch).
     * Feel free to create sub-modules or other files. */
	  
	  
	logic [3:0] P,G,C;
	logic temp1,temp2;

	fourbitCLAdder CL0(.A(A[3:0]), .B(B[3:0]), .cin(cin), .S(S[3:0]), .PG(P[0]), .GG(G[0]), .cout());	
	fourbitCLAdder CL1(.A(A[7:4]), .B(B[7:4]), .cin(C[1]), .S(S[7:4]),.PG(P[1]), .GG(G[1]), .cout());	
	fourbitCLAdder CL2(.A(A[11:8]), .B(B[11:8]), .cin(C[2]), .S(S[11:8]),.PG(P[2]), .GG(G[2]), .cout());	
	fourbitCLAdder CL3(.A(A[15:12]), .B(B[15:12]), .cin(C[3]), .S(S[15:12]),.PG(P[3]), .GG(G[3]), .cout());
	
	lookahead LA(.cin(cin), .P(P), .G(G), .cout(cout), .C(C), .PG(temp1), .GG(temp2));
	
//	module fourbitCLAdder(input logic[3:0] A, B, 
//								input logic cin,
//								output logic [3:0] S,
//								output logic PG,GG,  //added this
//								output logic cout);
	  
	  
	  
//logic c1, c2, c3;

//logic [3:0] PG,GG,C;
//
//fourbitCLAdder CLA0(.A(A[3:0]), .B(B[3:0]), .cin(C[0]), .S(S[3:0]), .cout(C[1]));
//fourbitCLAdder CLA1(.A(A[7:4]), .B(B[7:4]), .cin(C[1]), .S(S[7:4]), .cout(C[2]));
//fourbitCLAdder CLA2(.A(A[11:8]), .B(B[11:8]), .cin(C[2]), .S(S[11:8]), .cout(C[3]));
//fourbitCLAdder CLA3(.A(A[15:12]), .B(B[15:12]), .cin(C[3]), .S(S[15:12]), .cout(cout));

//module 4bitCLAdder(input logic[3:0] A, B, 
//								input logic cin,
//								output logic [3:0] S,
//								output logic cout);
//								
//	//logic c1, c2, c3;
//
//	logic [3:0] P,G,C
//	logic c1,c2,c3
//	
//	always_comb{
//	G=A&B;
//	P=A^B;
//	C[0]=cin;
//	C[1]=cin&P[0]|G[0];
//	C[2]=cin&P[0]&P[1]|G[0]&P[1]|G[1];
//	C[3]=cin&P[0]&P[1]&P[2]|G[0]&P[1]&P[2]|G[1]&P[2]|G[2];
//	}
//
//	full_adder FA0(.x(A[0]), .y(B[0]), .z(C[0]), .s(S[0]), .c(C[1]));
//	full_adder FA1(.x(A[1]), .y(B[1]), .z(C[1]), .s(S[1]), .c(C[2]));
//	full_adder FA2(.x(A[2]), .y(B[2]), .z(C[2]), .s(S[2]), .c(C[3]));
//	full_adder FA3(.x(A[3]), .y(B[3]), .z(C[3]), .s(S[3]), .c(cout));
// 
//endmodule


endmodule
