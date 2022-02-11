module select_adder (
	input  [15:0] A, B,
	input         cin,
	output [15:0] S,
	output        cout
);

    /* TODO
     *
     * Insert code here to implement a CSA adder.
     * Your code should be completly combinational (don't use always_ff or always_latch).
     * Feel free to create sub-modules or other files. */
	  
	  logic[2:0] C;
	  
	  	fourbitRippleAdder RA0(.A(A[3:0]), .B(B[3:0]), .cin(cin), .S(S[3:0]), .cout(C[0]));
		
		fourbitCSA SA1(.cin(C[0]), .A(A[7:4]), .B(B[7:4]), .cout(C[1]), .Sout(S[7:4]));
		fourbitCSA SA2(.cin(C[1]), .A(A[11:8]), .B(B[11:8]), .cout(C[2]), .Sout(S[11:8]));
		fourbitCSA SA3(.cin(C[2]), .A(A[15:12]), .B(B[15:12]), .cout(cout), .Sout(S[15:12]));



endmodule
