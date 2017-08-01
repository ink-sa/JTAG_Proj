`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:30 12/28/2016 
// Design Name: 
// Module Name:    Log_test_clk_generator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Log_test_clk_generator(
    input Update_DR,
    input Mode,
    input TCK,
    input From_BSC,
    output reg Test_clk
    );
	 
	 reg In = 0;
	 reg Out = 0;
	 wire tst_clk;
	 
	 always @(posedge TCK) begin
		In <= Update_DR;
		Out <= In;
	 end
	 
	 assign tst_clk = From_BSC & Out;
	 
	 always @(From_BSC or tst_clk or Mode) begin
		case(Mode)
			1'b0: Test_clk = From_BSC;
			1'b1: Test_clk = tst_clk;
			default: Test_clk = 1'bx;
		endcase
	 end
	 
	 


endmodule
