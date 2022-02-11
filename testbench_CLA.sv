module testbench_CLA();
timeunit 10ns;	// Half clock cycle at 50 MHz
			// This is the amount of time represented by #1 
timeprecision 1ns;

logic  [15:0] A, B;
logic cin;
logic [15:0] S;
logic  cout;
logic PG, GG;


lookahead_adder CLA(.A(A), .B(B), .cin(cin), .S(S), .cout(cout));


//module fourbitCLAdder(input logic[3:0] A, B, 
//								input logic cin,
//								output logic [3:0] S,
//								output logic PG,GG,  //added this
//								output logic cout);
								

initial begin: TEST_VECTORS


A = 16'b0000000100000001;
B = 16'b0000001100000011;
cin = 1'b0;


	
end
endmodule
