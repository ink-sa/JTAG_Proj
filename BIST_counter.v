`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:32:07 12/23/2016 
// Design Name: 
// Module Name:    BIST_counter 
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
module BIST_counter(
    input clk,
    input res,
    input Incr_en,
    output reg [7:0] Counter = 0
    );
	
	always @ (posedge clk)
		if(res)
			Counter <= 0;
		else if(Incr_en)
				Counter <= Counter + 1;

endmodule
