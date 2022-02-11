module testbench_CSA();
timeunit 10ns;	// Half clock cycle at 50 MHz
			// This is the amount of time represented by #1 
timeprecision 1ns;

logic  [15:0] A, B;
logic cin;
logic [15:0] S;
logic  cout;

select_adder SA(.A(A), .B(B), .cin(cin), .S(S), .cout(cout));


initial begin: TEST_VECTORS


A = 16'b0000000100000001;
B = 16'b0000001100000011;
cin = 1'b0;


	
end
endmodule
