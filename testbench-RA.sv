module testbench-RA();

timeunit 10ns;	// Half clock cycle at 50 MHz
			// This is the amount of time represented by #1 
timeprecision 1ns;

logic Clk = 0;
logic  [15:0] A, B;
logic cin;
logic [15:0] S;
logic  cout;

// Toggle the clock
// #1 means wait for a delay of 1 timeunit
always begin : CLOCK_GENERATION
#1 Clk = ~Clk;
end

initial begin: CLOCK_INITIALIZATION
    Clk = 0;
end 

ripple_adder ripple_adder0(.*);

initial begin:

cin = 0;
A = 16'b0000000011110000;
B = 16'b0000000000001111;

ripple_adder RA(.x(A[15:0]), .y(B[15:0]), .z(c_in), .s(S[15:0]), .c(cout));

if (S == 16'b0000000011111111)
	$display("S for Success!");  // Command line output in ModelSim
else
	$display("Error detected. Try again!");
end



endmodule;