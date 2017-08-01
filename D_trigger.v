`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:43:15 10/18/2016 
// Design Name: 
// Module Name:    D_trigger 
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
module D_trigger(input clk,
					  input d,
					  output reg q = 0);

	always @(posedge clk)
		q <= d;
		
endmodule