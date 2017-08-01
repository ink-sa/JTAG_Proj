`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:55:56 12/23/2016 
// Design Name: 
// Module Name:    BIST_Comparator 
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
module BIST_Comparator(
    input [3:0] From_Logic_Y,
    input [3:0] From_data_buf,
    output reg Error_flag
    );
	 
	 always @(*) begin
		if(From_Logic_Y == From_data_buf)
			Error_flag <= 0;
		else
			Error_flag <= 1;
	 end


endmodule
