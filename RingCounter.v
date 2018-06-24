// Title: Verilog code for Ring Counter
// Programmer name: Ashish Ashok Gopal, 1702005, FY MTech
// Department: Department of Electronics Engineering
// Mentor: Prof. Arati Phadke
// Department: Department of Electronics Engineering
// Date: 02/12/2017

// ***************Program starts here*************************

module RingCounter(q_output,clk,clr);
	
	input clk,clr;
	output [3:0]q_output;
	reg [3:0]q_output;
  
	always @(posedge clk)
		if(clr==1)
			q_output<=4'b1000;
		else
			begin
				q_output[3] <= q_output[0];
				q_output[2] <= q_output[3];
				q_output[1] <= q_output[2];
				q_output[0] <= q_output[1];
			end
endmodule

// ****************Program ends here**************************