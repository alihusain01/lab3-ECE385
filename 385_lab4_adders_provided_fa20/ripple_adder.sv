module ripple_adder
(
	input  [15:0] A, B,
	input         cin,
	output [15:0] S,
	output        cout
);

    /* TODO
     *
     * Insert code here to implement a ripple adder.
     * Your code should be completly combinational (don't use always_ff or always_latch).
     * Feel free to create sub-modules or other files. */
	  
logic c1, c2, c3;

fourbitRippleAdder RA0(.A(A[3:0]), .B(B[3:0]), .c_in(c_in), .S(S[3:0]), .c_out(c1));
fourbitRippleAdder RA1(.A(A[7:4]), .B(B[7:4]), .c_in(c1), .S(S[7:4]), .c_out(c2));
fourbitRippleAdder RA2(.A(A[11:8]), .B(B[11:8]), .c_in(c2), .S(S[11:8]), .c_out(c3));
fourbitRippleAdder RA3(.A(A[15:12]), .B(B[15:12]), .c_in(c3), .S(S[15:12]), .c_out(cout));
	  
//module 4bitRippleAdder (input logic[3:0] A, B, 
//								logic c_in,
//								output logic [3:0] S,
//								logic c_out);
//								
//logic c1, c2, c3;
//
//	full_adder FA0(.x(A[0]), .y(B[0]), .z(c_in), .s(S[0]), .c(c1));
//	full_adder FA1(.x(A[1]), .y(B[1]), .z(c1), .s(S[1]), .c(c2));
//	full_adder FA2(.x(A[2]), .y(B[2]), .z(c2), .s(S[2]), .c(c3));
//	full_adder FA3(.x(A[3]), .y(B[3]), .z(c3), .s(S[3]), .c(c_out));
//
//endmodule
     
endmodule
