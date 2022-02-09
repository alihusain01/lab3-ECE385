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

4bitRippleAdder RA0(.x(A[3:0]), .y(B[3:0]), .z(c_in), .s(S[3:0]), .c(c1));
4bitRippleAdder RA1(.x(A[7:4]), .y(B[7:4]), .z(c1), .s(S[7:4]), .c(c2));
4bitRippleAdder RA2(.x(A[11:8]), .y(B[11:8]), .z(c2), .s(S[11:8]), .c(c3));
4bitRippleAdder RA3(.x(A[15:12]), .y(B[15:12]), .z(c3), .s(S[15:12]), .c(cout));
	  
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
